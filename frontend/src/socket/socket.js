import { io } from "socket.io-client";
import { API_BASE } from "../api/api";

const SOCKET_URL = API_BASE;

// Single shared socket instance
export const socket = io(SOCKET_URL, {
  transports: ["websocket", "polling"],
  autoConnect: true,
});

// Join the user's private room
export function joinUserRoom(userId) {
  if (!socket.connected) socket.connect();
  socket.emit("join_user_room", userId);
}

// Leave user room
export function leaveUserRoom(userId) {
  socket.emit("leave_user_room", userId);
}

// Generic event handlers
export function on(event, callback) {
  socket.on(event, callback);
}

export function off(event, callback) {
  socket.off(event, callback);
}

export function emit(event, payload) {
  socket.emit(event, payload);
}

export default socket;