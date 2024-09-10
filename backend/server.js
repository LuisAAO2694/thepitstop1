const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const fs = require("fs");
const session = require("express-session");


const corsOptions = {
  origin: '*', //http://localhost:3000
  methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
  credentials: true,  // Agrega esta línea
  optionsSuccessStatus: 204,
  allowedHeaders: ['Content-Type', 'Authorization'], // Añade 'Authorization' a los encabezados permitidos
};

const app = express()
app.use(cors(corsOptions));
app.use(express.json());
app.use(session({
  secret: 'your-secret-key',
  resave: true,
  saveUninitialized: false,
}));

// Agrega la función aquí
app.use(function(req, res, next) {
  if (req.session.userId) {
    // Si el usuario está autenticado, no permitir el almacenamiento en caché
    res.set('Cache-Control', 'no-store');
  }
  next();
});


const db = mysql.createConnection({
  host: "localhost", //IP 
  user: "root",
  password: "",
  database: "ThePitstop"
})

// const db = mysql.createConnection({
//   host: "sql3.freesqldatabase.com", //IP 
//   port: 3306,
//   user: "sql3700236",
//   password: "xPP9s3Bmkv",
//   database: "sql3700236"
// })

app.post('/ThePitstop', (req, res) => {
  const sql = "INSERT INTO `login` (`teamName`, `email`, `password`) VALUES (?)";
  const values = [
    req.body.teamName,
    req.body.email,
    req.body.password
  ]
  db.query(sql, [values], (err, data) => {
    if (err) {
      console.error(err);
      return res.json("Error en el servidor");
    }
    return res.json(data);
  });
})

app.post('/login', (req, res) => {
  const sql = "SELECT * FROM `login` WHERE `email` = ? AND `password` = ?";
  db.query(sql, [req.body.email, req.body.password], (err, data) => {
    if (err) {
      console.error(err);
      return res.json("Error en el servidor");
    }

    if (data.length > 0) {
      // Imprime el ID del usuario en la consola
      console.log("ID del usuario:", data[0].id);
      // Puedes almacenar el ID del usuario en la sesión
      req.session.userId = data[0].id;
      return res.json("Success");
    } else {
      return res.json({ status: "Fail", message: "No existe el registro" });
    }
    // ESTO ES PARA RECUPERAR EL USUARRIO QUE ESTA INGRESANDO PD(NOS AYUDARA EN LA PARTE DE NOTAS/BITACORA)
    /*
    if (data.length > 0) {
      // Imprime el ID del usuario en la consola
      console.log("ID del usuario:", data[0].id);
      // Puedes almacenar el ID del usuario en la sesión
      req.session.userId = data[0].id;
      return res.json("Success");
    } else {
      return res.json({ status: "Fail", message: "No existe el registro" });
    }
    */
  });
})


app.get('/forgotpassword/:email', (req, res) => {
  const email = req.params.email;

  // Realiza la consulta a la base de datos
  db.query('SELECT `password` FROM `login` WHERE `email` = ?', [email], (error, results) => {
    if (error) {
      console.error(error);
      return res.status(500).json({ status: "Fail", message: "Error en el servidor" });
    }

    if (results.length > 0) {
      const password = results[0].password;

      // Crea y escribe el archivo .txt
      fs.writeFile('contrasena.txt', password, (err) => {
        if (err) {
          console.error(err);
          return res.status(500).json({ status: "Fail", message: "Error al crear el archivo" });
        }

        // Envía el archivo como respuesta para su descarga
        res.download('contrasena.txt', (err) => {
          if (err) {
            console.error(err);
            return res.status(500).json({ status: "Fail", message: "Error al descargar el archivo" });
          }

          // Elimina el archivo después de la descarga
          fs.unlink('contrasena.txt', (err) => {
            if (err) {
              console.error(err);
              return res.status(500).json({ status: "Fail", message: "Error al eliminar el archivo" });
            }
          });
        });
      });
    } else {
      // Si no se encuentra el correo, devuelve un mensaje personalizado
      res.status(404).json({ status: "Fail", message: "No existe el registro" });
    }
  });
});

//------------------------------------------------------------------------

app.get('/registry/:email', (req, res) => {
  const email = req.params.email;

  // Realiza la consulta a la base de datos
  db.query('SELECT `id` FROM `login` WHERE `email` = ?', [email], (error, results) => {
    if (error) {
      console.error(error);
      return res.status(500).json({ status: "Fail", message: "Error en el servidor" });
    }

    if (results.length > 0) {
      //const password = results[0].password;
      const userId = results[0].id;

      // Crea y escribe el archivo .txt
      fs.writeFile('contrasena.txt', userId.toString(), (err) => {
        if (err) {
          console.error(err);
          return res.status(500).json({ status: "Fail", message: "Error al crear el archivo" });
        }

        // Envía el archivo como respuesta para su descarga
        res.download('contrasena.txt', (err) => {
          if (err) {
            console.error(err);
            return res.status(500).json({ status: "Fail", message: "Error al descargar el archivo" });
          }

          // Elimina el archivo después de la descarga
          fs.unlink('contrasena.txt', (err) => {
            if (err) {
              console.error(err);
              return res.status(500).json({ status: "Fail", message: "Error al eliminar el archivo" });
            }
          });
        });
      });
    } else {
      // Si no se encuentra el correo, devuelve un mensaje personalizado
      res.status(404).json({ status: "Fail", message: "No existe el registro" });
    }
  });
});

//------------------------------------------------------------------------

app.get('/bitacora', (req, res) => {
  const sql = "SELECT * FROM `bitacora`";
  db.query(sql, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  })
})

app.post('/crearnota', (req, res) => {
  console.log("Petición recibida");
  console.log("Datos recibidos:", req.body);
  const sql = "INSERT INTO `bitacora` (`titulo`, `informacion`, `idlogin`) VALUES (?)";
  const values = [
    req.body.titulo,
    req.body.informacion,
    req.body.idlogin
  ];
  console.log("Ejecutando consulta:", sql, values);
  db.query(sql, [values], (err, data) => {
    if (err) {
      console.error("Error al insertar:", err);
      return res.json(err);
    }
    console.log("Datos insertados correctamente");
    return res.json("created");
  });
});

app.get('/actnota/:id', (req, res) => {
  const id = req.params.id;
  const sql = "SELECT * FROM `bitacora` WHERE id = ?";

  db.query(sql, [id], (err, data) => {
    if (err) {
      console.error("Error al obtener los datos:", err);
      return res.status(500).json({ error: 'Error al obtener los datos' });
    }

    if (data.length === 0) {
      return res.status(404).json({ error: 'Nota no encontrada' });
    }

    return res.json(data[0]);
  });
});

app.put('/actnota/:id', (req, res) => {
  console.log("Petición recibida");
  console.log("Datos recibidos:", req.body);

  const sql = "UPDATE `bitacora` SET `titulo` = ?, `informacion` = ? WHERE id = ?";
  const id = req.params.id;
  const values = [
    req.body.titulo,
    req.body.informacion,
    id
  ];

  console.log("Ejecutando consulta:", sql, values);

  db.query(sql, values, (err, data) => {
    if (err) {
      console.error("Error al actualizar:", err);
      return res.status(500).json({ error: 'Error al actualizar la nota' });
    }

    console.log("Nota actualizada correctamente");
    return res.json("updated");
  });
});

app.delete('/delete/:id', (req, res) => {
  const sql = "DELETE FROM `bitacora` WHERE `bitacora`.`id` = ?"; 
  const id = req.params.id;
  db.query(sql, [id], (err, data) => {
    if (err) return res.json(err);
    return res.json("deleted");
  });
});

app.get('/checkid/:idlogin', (req, res) => {
  const idlogin = req.params.idlogin;

  // Realiza la consulta a la base de datos
  db.query('SELECT COUNT(*) AS count FROM `login` WHERE `id` = ?', [idlogin], (error, results) => {
    if (error) {
      console.error(error);
      return res.status(500).json({ exists: false, error: "Error en el servidor" });
    }

    const count = results[0].count;

    // Devuelve si el idlogin existe o no en la base de datos
    return res.json({ exists: count > 0 });
  });
});


//-Simulacion-------------------------------------------------------------
app.post('/simulation', (req, res) => {
  // Obtener los resultados del cuerpo de la solicitud
  const {rendimientoSinAfectacion, rendimientoLluvia, rendimientoCalor,
    rendimientoFrio, cargaAerodinamica, momentoAerodinamico, downforce,
    momentoAerodinamico2, alturaSuspension, rigidezSuspension, potencia,
    rendimientoTermico, relacionTransmision, potenciaFrenado,
    distanciaFrenado} = req.body;

  // Realizar la inserción en la base de datos
  const sql = "INSERT INTO `simulacion` (`fecha`, `rendimiento`, `rendimiento_Lluvia`, `rendimiento_Calor`, `rendimiento_Frio`, `carga_A`, `momento_A`, `downforce`, `momento_A2`, `altura_S`, `rigidez_S`, `potencia`, `rendimiento_T`, `relacion_T`, `potencia_F`, `distancia_F`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
  // const sql = "INSERT INTO `simulacion` (`carga_A`, `momento_A`, `downforce`, `momento_A2`, `altura_S`, `rigidez_S`, `potencia`, `rendimiento_T`, `relacion_T`, `potencia_F`, `distancia_F`, `fecha`, `puntaje_simulacion`, `rendimiento`, `rendimiento_Lluvia`, `rendimiento_Calor`, `rendimiento_Frio`) VALUES (?,?,?,?,?,?,?,?,?,?,?) ";
  const values = [new Date(), rendimientoSinAfectacion, rendimientoLluvia, rendimientoCalor,
    rendimientoFrio, cargaAerodinamica, momentoAerodinamico, downforce,
    momentoAerodinamico2, alturaSuspension, rigidezSuspension, potencia,
    rendimientoTermico, relacionTransmision, potenciaFrenado,
    distanciaFrenado];
  db.query(sql, values, (err, result) => {
      if (err) {
          console.error("Error al insertar resultados:", err);
          return res.status(500).json({ error: "Error al insertar resultados en la base de datos" });
      } else {
          console.log("Resultados insertados correctamente en la tabla 'resultados'");
          return res.json({ message: "Resultados insertados correctamente en la base de datos" });
      }
  });
});
//------------------------------------------------------------------------

//-AnalyticsView----------------------------------------------------------
app.get('/simulacionVista', (req, res) => {
  // Realiza la consulta a la base de datos para obtener los datos de simulación
  const sql = "SELECT * FROM `simulacion`";
  db.query(sql, (err, data) => {
    if (err) {
      console.error("Error al obtener los datos de simulación:", err);
      return res.status(500).json({ error: "Error al obtener los datos de simulación de la base de datos" });
    } else {
      // Devuelve los datos de simulación como respuesta
      return res.json(data);
    }
  });
});

//------------------------------------------------------------------------
//-Encuestas--------------------------------------------------------------
app.post('/guardarEncuesta', (req, res) => {
  const puntajeTotal = req.body.puntajeTotal;
// Calcular el rango y porcentaje según el puntaje total
let puntos_text;
const puntajeMaximo = 54; // Puntaje máximo posible
const porcentaje = (puntajeTotal / puntajeMaximo) * 100;

if (puntajeTotal >= 31 && puntajeTotal <= 54) {
  puntos_text = 'Bueno';
} else if (puntajeTotal >= 21 && puntajeTotal <= 30) {
  puntos_text = 'Regular';
} else if (puntajeTotal >= 0 && puntajeTotal <= 20){
  puntos_text = 'Malo';
}

// Guardar los datos en la base de datos
db.query('INSERT INTO encuesta (puntaje_total, puntos_text, porcentaje_p) VALUES (?, ?, ?)', [puntajeTotal, puntos_text, porcentaje], (err, result) => {
  if (err) {
    console.error('Error al guardar datos de la encuesta:', err);
    res.status(500).json({ error: 'Error al guardar datos de la encuesta' });
  } else {
    console.log('Datos de la encuesta guardados en la base de datos');
    res.json({ message: 'Datos de la encuesta guardados correctamente' });
  }
});
});
//------------------------------------------------------------------------
//-Recomendaciones-----------------------------------------------------------------------
app.get('/historicosSimulacion', (req, res) => {
  // Realiza la consulta a la base de datos para obtener los datos de simulación
  const sql = "SELECT * FROM `datos_simulacion`";
  db.query(sql, (err, data) => {
    if (err) {
      console.error("Error al obtener los datos de simulación:", err);
      return res.status(500).json({ error: "Error al obtener los datos de simulación de la base de datos" });
    } else {
      // Devuelve los datos de simulación como respuesta
      return res.json(data);
    }
  });
});
//------------------------------------------------------------------------
//-Historial-----------------------------------------------------------------------
app.get('/historialSimulaciones', (req, res) => {
  // Realiza la consulta a la base de datos para obtener los datos de simulación
  const sql = "SELECT * FROM `simulacion`";
  db.query(sql, (err, data) => {
    if (err) {
      console.error("Error al obtener los datos de simulación:", err);
      return res.status(500).json({ error: "Error al obtener los datos de simulación de la base de datos" });
    } else {
      // Devuelve los datos de simulación como respuesta
      return res.json(data);
    }
  });
});

app.listen(8081, () => {
  console.log("listening")
})

// app.listen(8081, '0.0.0.0', () => {
//   console.log("listening");
// });
