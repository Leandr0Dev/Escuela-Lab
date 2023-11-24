import { useState } from "react";
import { Link } from "react-router-dom"

export const NuevoAlumno = () => {
    const [nuevoAlumno, setNuevoAlumno] = useState({
      nombre: undefined ,
      apellido: undefined,
      dni:undefined,
      fechaNacimiento: undefined,
      direccion:undefined,
      nomCompletoTutor:undefined,
      numeroTutor:undefined ,
      direccionTutor:undefined

    })

    const subirAlumno = async () =>{
        const res = await fetch("http://localhost:4000/alumno", {
          method:"POST",
          headers: {"Content-Type" : "application/json"},
          body: JSON.stringify({alumno: nuevoAlumno,}),
        });
        if (res.ok) {
          alert("Alumno creado");
        } else{
          alert("Fallo al crear alumno nuevo")
          console.log("Fallo al crear alumno nuevo");
        }
      }
    return (
        <>      
      <div className="d-flex align-items-center justify-content-center ">
      <label className="display-6  label-buscar ">Agregar Alumno</label>
      
      </div>
            <form onSubmit={subirAlumno}>
                <div className="row">
                    <div className="col">
                        <label htmlFor="nombre">Nombre</label>
                        <input type="text"
                        className="form-control"
                        value={nuevoAlumno.nombre}
                        onChange={(e)=>{setNuevoAlumno({...nuevoAlumno, nombre:e.target.value})}}
                        />
                    </div>
                    <div className="col">
                        <label htmlFor="apellido">Apellido</label>
                        <input type="text"
                        className="form-control"
                        value={nuevoAlumno.apellido}
                        onChange={(e)=>{setNuevoAlumno({...nuevoAlumno, apellido:e.target.value})}}
                        />
                    </div>
                </div>
                <div className="form-group">
                    <label htmlFor="dni">DNI</label>
                    <input
                    className="form-control"
                    value={nuevoAlumno.dni}
                    onChange={(e)=>{setNuevoAlumno({...nuevoAlumno, dni:e.target.value})}}
                    />
                </div>
                <div className="form-group">
                    <label htmlFor="FechaNacimiento">Fecha de Nacimiento</label>
                    <input type="date"
                    className="form-control"
                    value={nuevoAlumno.fechaNacimiento}
                    onChange={(e)=>{setNuevoAlumno({...nuevoAlumno, fechaNacimiento:e.target.value})}}
                    />
                </div>
                <div className="form-group">
                    <label htmlFor="direccion">Dirección</label>
                    <input type="text"
                    className="form-control"
                    value={nuevoAlumno.direccion}
                    onChange={(e)=>{setNuevoAlumno({...nuevoAlumno, direccion:e.target.value})}}
                    />
                </div>
                <div className="form-group">
                    <label htmlFor="nomComTutor">Nombre completo del Tutor</label>
                    <input type="text"
                    className="form-control"
                    value={nuevoAlumno.nomCompletoTutor}
                    onChange={(e)=>{setNuevoAlumno({...nuevoAlumno, nomCompletoTutor:e.target.value})}}
                    />
                </div>
                <div className="form-group">
                    <label htmlFor="numTutor">Número del tutor</label>
                    <input type="text"
                    className="form-control"
                    value={nuevoAlumno.numeroTutor}
                    onChange={(e)=>{setNuevoAlumno({...nuevoAlumno, numeroTutor:e.target.value})}}
                    />
                </div>
                <div className="form-group">
                    <label htmlFor="direTutor">Dirección del tutor</label>
                    <input type="text"
                    className="form-control"
                    value={nuevoAlumno.direccionTutor}
                    onChange={(e)=>{setNuevoAlumno({...nuevoAlumno, direccionTutor:e.target.value})}}
                    />
                </div>
                <div className="form-group" ><button disabled={!nuevoAlumno.nombre ||
                    !nuevoAlumno.apellido  ||
                    !nuevoAlumno.dni  ||
                    !nuevoAlumno.direccion  ||
                    !nuevoAlumno.fechaNacimiento  ||
                    !nuevoAlumno.nomCompletoTutor ||
                    !nuevoAlumno.numeroTutor ||
                    !nuevoAlumno.direccionTutor} type="submit" className="form-control btn" >Agregar</button>
                </div>    
            </form>
            
        </>
    )
}