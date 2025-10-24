const express = require('express');
const db = require('./config/db');
const bcrypt = require('bcrypt');

const app = express();
app.use(express.json());

app.post("/register", async (req, res) => {
    const { nombre_apellido, cedula, correo, contraseña, telefono, direccion, rol_id } = req.body;
    const fecha_registro = new Date().toISOString().split('T')[0];

    try {
        const hashedPassword = await bcrypt.hash(contraseña, 10);
        const query = `INSERT INTO empleados (nombre_apellido, cedula, correo, contraseña, telefono, direccion, rol_id, fecha_registro) VALUES (?, ?, ?, ?, ?, ?, ?, ?)`;

        db.query(query, [nombre_apellido, cedula, correo, hashedPassword, telefono, direccion, rol_id, fecha_registro], (err, result) => {
            if (err) {
                console.error(err);
                return res.status(500).json({ message: "Error al registrar usuario" });
            }
            res.json({ message: "Usuario registrado exitosamente" });
        });

    } catch (error) {
        res.status(500).json({ message: "Error en el servidor" });
    }
});

app.listen(3000, () => console.log("Servidor corriendo en http://localhost:3000"));
