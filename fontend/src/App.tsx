import { useNavigate, useRoutes } from 'react-router-dom'
import router, { routesError } from 'src/router'
import AdapterDateFns from '@mui/lab/AdapterDateFns'
import LocalizationProvider from '@mui/lab/LocalizationProvider'
import { CssBaseline } from '@mui/material'
import ThemeProvider from './theme/ThemeProvider'
import { useCallback, useEffect, useMemo, useState } from 'react'
import { axiosClient } from 'src/api/axiosClient'

import { authActions } from "src/features/auth/authSlice"

import User from "src/models/User";
import userApi from 'src/api/userAPI'
import { useAppDispatch } from './app/hooks'
import loginSocket from './api/socket/loginSocket'
import AuthSocket from './api/socket/authSocket'
import socket from './models/socket'
import serverAPI from './api/Server'

function App() {
	//Kiểm tra trạng thái của server
	let path = ''
	const navigate = useNavigate()
	const nextPage = useCallback(() => navigate(path, { replace: true }), [path])
	const dispatch = useAppDispatch()

	//Nếu server mở thì tiến hành kiểm tra token và tiến hành đăng nhập luôn
	useEffect(() => {
		async function checkServer() {
			await serverAPI.status().then((res) => {
				if (location.pathname === '/error' || location.pathname === '/error/') {
					path = '/home'
					nextPage()
				}
			}).catch(() => {
				path = '/error'
				nextPage()

			})

			//Tiến hành kiểm tra token
			const token = localStorage.getItem('token')
			//Token có tồn tại

			if (token) {
				//Đang tiến hành đăng nhâp
				dispatch(authActions.currentlyLogged())

				const action = await AuthSocket.token(token)
				//Đăng nhập thành công
				if (action.data) {
					const data: User = action.data
					dispatch(authActions.loginSuccess(data))
					// loginSocket.login(data.token)
					// console.log(action.data)
				} else {
					dispatch(authActions.loginFail())
				}
			}
		}
		checkServer()
	}, [])

	useEffect(() => {
		socket.on('request_logout', () => {
			dispatch(authActions.requestLogout())
		})
	}, [])

	const content = useRoutes(router)

	return (
		<ThemeProvider>
			<LocalizationProvider dateAdapter={AdapterDateFns}>
				<CssBaseline />
				{content}
			</LocalizationProvider>
		</ThemeProvider>
	)
}
export default App;
