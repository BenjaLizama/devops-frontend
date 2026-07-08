# DevOps Frontend - React + Vite

## Descripción

Este proyecto corresponde al frontend del sistema DevOps basado en microservicios.

La aplicación fue desarrollada utilizando React y Vite, permitiendo consumir las APIs REST de los microservicios de:

* Ventas
* Despachos

El frontend proporciona una interfaz moderna y rápida para interactuar con los servicios backend.

---

# Tecnologías Utilizadas

* React 18
* Vite
* React Router DOM
* Axios
* React Hook Form
* TailwindCSS
* SweetAlert2
* ESLint

---

# Estructura del Proyecto

```text
src/
│
├── components/       # Componentes reutilizables
├── pages/            # Vistas principales
├── routes/           # Configuración de rutas
├── services/         # Consumo de APIs
├── assets/           # Recursos estáticos
├── App.jsx           # Componente principal
└── main.jsx          # Punto de entrada
```

---

# Requisitos

Antes de ejecutar el proyecto necesitas tener instalado:

* Node.js 18+
* npm o pnpm
* Git

---

# Instalación

## 1. Clonar el repositorio

```bash
git clone <URL_DEL_REPOSITORIO>
cd devops-frontend
```

---

## 2. Instalar dependencias

Con npm:

```bash
npm install
```

O con pnpm:

```bash
pnpm install
```

---

# Ejecutar el Proyecto

## Modo desarrollo

```bash
npm run dev
```

La aplicación estará disponible en:

```http
http://localhost:5173
```

---

# Build de Producción

```bash
npm run build
```

Esto generará la carpeta:

```text
dist/
```

---

# Vista Previa de Producción

```bash
npm run preview
```

---

# Scripts Disponibles

| Script          | Descripción                      |
| --------------- | -------------------------------- |
| npm run dev     | Inicia el servidor de desarrollo |
| npm run build   | Genera build de producción       |
| npm run preview | Vista previa del build           |
| npm run lint    | Ejecuta ESLint                   |

---

# Dependencias Principales

| Librería         | Uso                         |
| ---------------- | --------------------------- |
| React Router DOM | Manejo de rutas             |
| Axios            | Consumo de APIs REST        |
| React Hook Form  | Manejo de formularios       |
| SweetAlert2      | Alertas y modales           |
| TailwindCSS      | Estilos y diseño responsivo |

---

# Integración con Backend

El frontend consume APIs REST de los microservicios backend.

Ejemplo de endpoints:

```http
http://localhost:8080/api/v1/despachos
http://localhost:8081/api/v1/ventas
```

---

# Variables de Entorno

Puedes crear un archivo `.env` para configurar URLs del backend:

```env
VITE_API_DESPACHO=http://localhost:8080
VITE_API_VENTA=http://localhost:8081
```

---

# Docker

Para crear una imagen Docker del frontend:

```bash
docker build -t devops-frontend .
```

Ejecutar contenedor:

```bash
docker run -p 5173:5173 devops-frontend
```

---

# ESLint

El proyecto utiliza ESLint para mantener buenas prácticas y calidad de código.

Ejecutar análisis:

```bash
npm run lint
```

---

# Características

* Interfaz moderna con React
* Navegación SPA
* Formularios reactivos
* Consumo de APIs REST
* Arquitectura modular
* Estilos responsivos
* Configuración rápida con Vite

---

# Autor

Frontend desarrollado utilizando React + Vite como parte de una arquitectura basada en microservicios y prácticas DevOps.
