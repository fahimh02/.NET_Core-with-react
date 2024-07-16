

ASPNET Crud
This repository hosts a web application to manage products and categories using React.js on the frontend and ASP.NET Core 6 on the backend. Includes JWT authentication with role-based access control for administrators and regular users.

Repository Structure
Zocoapi

Zocoapi.server: Backend built with .NET 6.0, C#, SQL SERVER.
ZocoFrontend

Root frontend project built with Vite, React, and TypeScript.
Facility
Zocoapi
Go to the folder:

CD Zocoapi
Install dependencies: Make sure you have .NET 6.0 installed.

cd Zocoapi.server
dotnet restore
dotnet build
Database configuration:

Execute the content of SCRIPT SQL.txt that is at the root of this repository in your SQL SERVER
Environment configuration:

cd Zocoapi.server
Configure the appsettings.json and enter your URL of your SQL Server database
Run the application:

dotnet run
The application will be available at http://localhost:3000.

ZocoFrontend
Go to the folder:

cd ZocoFrontend
Install dependencies: Make sure you have Node.js and npm installed.

npm install
Compile and run the development server:

npm run dev
The development server will be available at http://localhost:5173.



