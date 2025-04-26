Algoritmo creacionEventosYAsistencias
	
    Definir lista_eventos Como Cadena;
    Definir lista_asistencias Como Cadena;
    Definir opcion Como Entero;
	
    lista_eventos <- "";
    lista_asistencias <- "";
	
    Repetir
        Escribir "=== Menú ===";
        Escribir "1. Crear Evento";
        Escribir "2. Registrar Asistencia";
        Escribir "3. Ver Eventos";
        Escribir "4. Ver Asistencias";
        Escribir "5. Salir";
        Escribir "Seleccione una opción:";
        Leer opcion;
		
        Segun opcion Hacer
			
            1:
                Definir nombre, fecha, lugar Como Cadena;
                Escribir "Ingrese nombre del evento:";
                Leer nombre;
                Escribir "Ingrese fecha del evento:";
                Leer fecha;
                Escribir "Ingrese lugar del evento:";
                Leer lugar;
				
                lista_eventos <- lista_eventos + nombre + " | " + fecha + " | " + lugar;
                Escribir "Evento creado exitosamente.";
				
            2:
                Definir nombre_asistente Como Cadena;
                Escribir "Ingrese nombre del asistente:";
                Leer nombre_asistente;
				
                lista_asistencias <- lista_asistencias + nombre_asistente;
                Escribir "Asistencia registrada exitosamente.";
				
            3:
                Escribir "=== Lista de Eventos ===";
                Si lista_eventos <> "" Entonces
                    Escribir lista_eventos;
                Sino
                    Escribir "No hay eventos registrados.";
                FinSi
				
            4:
                Escribir "=== Lista de Asistencias ===";
                Si lista_asistencias <> "" Entonces
                    Escribir lista_asistencias;
                Sino
                    Escribir "No hay asistencias registradas.";
                FinSi
				
            5:
                Escribir "Saliendo del programa...";
				
            De Otro Modo:
                Escribir "Opción no válida.";
				
        FinSegun
		
    Hasta Que opcion = 5
	
FinAlgoritmo
