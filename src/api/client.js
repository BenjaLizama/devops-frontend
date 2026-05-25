import axios from "axios";

const defaultHeaders = {
  "Content-Type": "application/json",
  Accept: "application/json",
};

export const ventaApi = axios.create({
  baseURL: "",
  headers: {
    ...defaultHeaders,
  },
});

export const despachoApi = axios.create({
  baseURL: "",
  headers: {
    ...defaultHeaders,
  },
});
