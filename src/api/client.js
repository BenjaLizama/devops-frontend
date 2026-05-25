import axios from "axios";

const defaultHeaders = {
  "Content-Type": "application/json",
  Accept: "application/json",
};

export const ventaApi = axios.create({
  baseURL: import.meta.env.VITE_API_VENTA_BASE_URL,
  headers: {
    ...defaultHeaders,
  },
});

export const despachoApi = axios.create({
  baseURL: import.meta.env.VITE_API_DESPACHO_BASE_URL,
  headers: {
    ...defaultHeaders,
  },
});
