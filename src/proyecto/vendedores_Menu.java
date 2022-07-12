package proyecto;

import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.awt.*;

import javax.swing.*;
import java.io.Serializable;
import org.json.simple.parser.ParseException;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class vendedores_Menu implements Serializable {

	// botones
	JButton crear = new JButton();
	JButton carga = new JButton();
	JButton actualizar = new JButton();
	JButton eliminar = new JButton();
	JButton pdf = new JButton();
	JButton guardar = new JButton();
	vendedores_func vf = new vendedores_func();
	
	// matriz
	Object[][] vendedores ;

	int suma = 0;

	// variable a utilizar
	String ruta = "datos.txt";

	// tabla y complemento
	JTable tabla = new JTable();
	JScrollPane scroll = new JScrollPane();

	private void botones() {
/////// boton Crear
		crear.setText("Crear");
		crear.setBounds(550, 50, 130, 70);
		// Funcion para boton crear
		ActionListener funcion_crear = new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				crear();
			}
		};
		// Acción del evento
		crear.addActionListener(funcion_crear);

/////// boton Carga Masiva
		carga.setText("Carga Masiva");
		carga.setBounds(700, 50, 130, 70);
		ActionListener funcion_carga = new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {

				try {
					carga_masiva();
				} catch (IOException | ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}

			}
		};
		carga.addActionListener(funcion_carga);

///////  boton Actualizar
		actualizar.setText("Actualizar");
		actualizar.setBounds(550, 120, 130, 70);
		ActionListener funcion_Actualizar = new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				actualizar();
			}
		};
		actualizar.addActionListener(funcion_Actualizar);
/////// boton Eliminar
		eliminar.setText("Eliminar");
		eliminar.setBounds(700, 120, 130, 70);
		ActionListener funcion_Eliminar = new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				eliminar();
			}
		};
		eliminar.addActionListener(funcion_Eliminar);
/////// boton PDF
		pdf.setText("PDF");
		pdf.setBounds(550, 190, 280, 70);
		ActionListener funcion_PDF = new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					generar_pdf();
				} catch (FileNotFoundException | DocumentException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		};
		pdf.addActionListener(funcion_PDF);
	}

	/////////////// CREANDO FUNCION QUE HABILITA LA VENTANA PARA CREAR
	private void crear() {
		JFrame ventana_crear = new JFrame();
		JPanel panelCrear = new JPanel();
		panelCrear.setLayout(null);
		
	//	JLabel l1 = new JLabel();
		JLabel l2 = new JLabel();
		JLabel l3 = new JLabel();
		JLabel l4 = new JLabel();
		JLabel l5 = new JLabel();
		JLabel l6 = new JLabel();
		//JTextField t1 = new JTextField();
		JTextField t2 = new JTextField();
		JTextField t3 = new JTextField();
		JTextField t4 = new JTextField();
		JTextField t5 = new JTextField();
		JPasswordField t6= new JPasswordField();

	/*	l1.setText("CODIGO");
		l1.setFont(new Font("Serig", Font.PLAIN, 15));
		l1.setBounds(50,60, 100, 80);
		panelCrear.add(l1);*/

		l2.setText("NOMBRE");
		l2.setFont(new Font("Serig", Font.PLAIN, 15));
		l2.setBounds(50, 60, 180, 80);
		panelCrear.add(l2);

		l3.setText("CAJA");
		l3.setFont(new Font("Serig", Font.PLAIN, 15));
		l3.setBounds(50, 130, 100, 80);
		panelCrear.add(l3);

		l4.setText("VENTAS");
		l4.setFont(new Font("Serig", Font.PLAIN, 15));
		l4.setBounds(50, 200, 180, 80);
		panelCrear.add(l4);

		l5.setText("GÉNERO");
		l5.setFont(new Font("Serig", Font.PLAIN, 15));
		l5.setBounds(50, 270, 180, 80);
		panelCrear.add(l5);

		l6.setText("PASSWORD");
		l6.setFont(new Font("Serig", Font.PLAIN, 15));
		l6.setBounds(50, 340, 180, 80);
		panelCrear.add(l6);

		ventana_crear.setTitle("Nuevo Vendedor ");
		ventana_crear.setBounds(500, 150, 600, 700);
		ventana_crear.setLocationRelativeTo(null);
		ventana_crear.setVisible(true);
		panelCrear.setBackground(Color.gray);
		ventana_crear.add(panelCrear);

		// textfield
	//	t1.setBounds(250, 80, 200, 40);
		t2.setBounds(250, 80, 200, 40);
		t3.setBounds(250, 150, 200, 40);
		t4.setBounds(250, 220, 200, 40);
		t5.setBounds(250, 290, 200, 40);
		t6.setBounds(250, 360, 200, 40);

	//	panelCrear.add(t1);
		panelCrear.add(t2);
		panelCrear.add(t3);
		panelCrear.add(t4);
		panelCrear.add(t5);
		panelCrear.add(t6);

		guardar.setText("GUARDAR");
		guardar.setBounds(200, 480, 130, 70);
		panelCrear.add(guardar);

		ActionListener funcion_Guardar = new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				vf.crear(t2.getText(), Integer.parseInt(t3.getText()), Integer.parseInt(t4.getText()),  t5.getText(), t6.getText());
				crear.setVisible(false);
				
			}
		};

		guardar.addActionListener(funcion_Guardar);

	}

	private void actualizar() {

		int seleccionar = tabla.getSelectedRow();
		if (seleccionar != -1) {	

			JFrame ventana_actualizar = new JFrame();
			JPanel panelActualizar = new JPanel();
			panelActualizar.setLayout(null);
			
			JLabel l1 = new JLabel();
			JLabel l2 = new JLabel();
			JLabel l3 = new JLabel();
			JLabel l4 = new JLabel();
			JLabel l5 = new JLabel();
			JLabel l6 = new JLabel();
			
			JTextField t1 = new JTextField();
			JTextField t2 = new JTextField();
			JTextField t3 = new JTextField();
			JTextField t4 = new JTextField();
			JTextField t5 = new JTextField();
			JPasswordField t6= new JPasswordField();

			l1.setText("CODIGO");
			l1.setFont(new Font("Serig", Font.PLAIN, 15));
			l1.setBounds(50,60, 100, 80);
			panelActualizar.add(l1);

			l2.setText("NOMBRE");
			l2.setFont(new Font("Serig", Font.PLAIN, 15));
			l2.setBounds(50, 130, 180, 80);
			panelActualizar.add(l2);

			l3.setText("CAJA");
			l3.setFont(new Font("Serig", Font.PLAIN, 15));
			l3.setBounds(50, 200, 100, 80);
			panelActualizar.add(l3);

			l4.setText("VENTAS");
			l4.setFont(new Font("Serig", Font.PLAIN, 15));
			l4.setBounds(50, 270, 180, 80);
			panelActualizar.add(l4);

			l5.setText("GÉNERO");
			l5.setFont(new Font("Serig", Font.PLAIN, 15));
			l5.setBounds(50, 340, 180, 80);
			panelActualizar.add(l5);

			l6.setText("PASSWORD");
			l6.setFont(new Font("Serig", Font.PLAIN, 15));
			l6.setBounds(50, 410, 180, 80);
			panelActualizar.add(l6);

			ventana_actualizar.setTitle("Actualizar Vendedor ");
			ventana_actualizar.setBounds(500, 150, 700, 700);
			ventana_actualizar.setLocationRelativeTo(null);
			
			ventana_actualizar.setVisible(true);
			panelActualizar.setBackground(Color.gray);
			ventana_actualizar.add(panelActualizar);

			// textfield
			t1.setBounds(250, 80, 200, 40);
			t2.setBounds(250, 150, 200, 40);
			t3.setBounds(250, 220, 200, 40);
			t4.setBounds(250, 290, 200, 40);
			t5.setBounds(250, 360, 200, 40);
			t6.setBounds(250, 430, 200, 40);

			
			t1.setText(vendedores[seleccionar][0].toString());
			t2.setText(vendedores[seleccionar][1].toString());
			t3.setText(vendedores[seleccionar][2].toString());
			t4.setText(vendedores[seleccionar][3].toString());
			t5.setText(vendedores[seleccionar][4].toString());
			t6.setText(vendedores[seleccionar][5].toString());
			
			t1.setEnabled(false); 

			panelActualizar.add(t1);
			panelActualizar.add(t2);
			panelActualizar.add(t3);
			panelActualizar.add(t4);
			panelActualizar.add(t5);
			panelActualizar.add(t6);

			guardar.setText("GUARDAR");
			guardar.setBounds(200, 600, 130, 70);
			panelActualizar.add(guardar);

			ActionListener funcion_Guardar = new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent e) {
					Vendedores objeto = new Vendedores();
					objeto.setCodigo(Integer.parseInt(t1.getText()));
					objeto.setNombre(t2.getText());
					objeto.setCaja(Integer.parseInt(t3.getText()));
					objeto.setVentas(Integer.parseInt(t4.getText()));
					objeto.setGenero(t5.getText());
					objeto.setPassword(t5.getText());
					
					vf.modificar(objeto);
				}
			};

			guardar.addActionListener(funcion_Guardar);

		} else {
			JOptionPane.showMessageDialog(null, "Debe seleccionar una fila");

		}
		tabla.clearSelection(); // deseleccionar la fila
	}

	private String leerArchivo() {

		JPanel c1 = new JPanel();
		JFileChooser fc = new JFileChooser();
		int op = fc.showOpenDialog(c1);
		String content = "";
		if (op == JFileChooser.APPROVE_OPTION) {

			File pRuta = fc.getSelectedFile();
			String ruta = pRuta.getAbsolutePath();
			File archivo = null;
			FileReader fr = null;
			BufferedReader br = null;

			try {
				archivo = new File(ruta);
				fr = new FileReader(archivo);
				br = new BufferedReader(fr);
				String linea = "";

				while ((linea = br.readLine()) != null) {

					content += linea + "\n";
				}
				return content;

			} catch (FileNotFoundException ex) {
				String resp = (String) JOptionPane.showInputDialog(null, "No se encontro el archivo");
			} catch (IOException ex) {
				String resp = (String) JOptionPane.showInputDialog(null, "No se pudo abrir el archivo");
			} finally {
				try {
					if (null != fr) {
						fr.close();
					}
				} catch (Exception e2) {
					String resp = (String) JOptionPane.showInputDialog(null, "No se encontro el archivo");
					return "";
				}

			}
			return content;

		}
		return null;
	}
	/*	String archivo_retorno = leerArchivo();

		JsonParser parse = new JsonParser();
		JsonArray matriz = parse.parse(archivo_retorno).getAsJsonArray();

		for (int i = 0; i < matriz.size(); i++) {
			JsonObject objeto = matriz.get(i).getAsJsonObject();
			
			cf.crear(objeto.get("nombre").getAsString(), objeto.get("nit").getAsInt(), objeto.get("correo").getAsString(), objeto.get("genero").getAsString());
			*/

	private void carga_masiva() throws FileNotFoundException, IOException, ParseException {
		String archivo_retorno = leerArchivo();

		JsonParser parse = new JsonParser();
		JsonArray matriz = parse.parse(archivo_retorno).getAsJsonArray();

		for (int i = 0; i < matriz.size(); i++) {
			JsonObject objeto = matriz.get(i).getAsJsonObject();
			
			vf.crear(objeto.get("nombre").getAsString(),  objeto.get("caja").getAsInt(),  objeto.get("ventas").getAsInt(),
					objeto.get("genero").getAsString(),objeto.get("password").getAsString());
			
		}
	}

	private void generar_pdf() throws FileNotFoundException, DocumentException {

		FileOutputStream gen = new FileOutputStream("Vendedores.pdf");
		Document documento = new Document();

		PdfWriter.getInstance(documento, gen);
		documento.open();

		Paragraph parrafo = new Paragraph("Vendedores");
		parrafo.setAlignment(1);
		documento.add(parrafo);
		documento.add(new Paragraph("\n"));

		for (int i = 0; i < vendedores.length; i++) {

			if (vendedores[i][0] == null) {
				break;
			} else {
				documento.add(new Paragraph("Código: " + vendedores[i][0] + " " + "Nombre: " + vendedores[i][1] + " "
						+ "Caja: " + vendedores[i][2] + " " + "Correo: " + vendedores[i][3] + " " + "Genero: "
						+ vendedores[i][4]+ "Password: "+ vendedores[i][5]));
				documento.add(new Paragraph("\n\n"));
			}

		}
		documento.close();
		JOptionPane.showMessageDialog(null, "El archivo se creo correctamente");
		try {
			File vendedores_doc = new File("vendedores.pdf");
			Desktop.getDesktop().open(vendedores_doc);
		} catch (Exception e) {
		}
	}

	private void tabla() throws ClassNotFoundException {
		
		String[] data = { "Codigo", "Nombre", "Caja", "Ventas", "Género", };

		// cargar archivo
		try {

			ObjectInputStream recuperar = new ObjectInputStream(new FileInputStream("tabla_vendedores.dat"));

			vendedores = (Object[][]) recuperar.readObject();
			recuperar.close();

		}

		catch (IOException e) {
		}

		tabla = new JTable(vendedores, data);
		scroll = new JScrollPane(tabla);
		scroll.setBounds(10, 10, 500, 600);
		scroll.setBounds(10, 10, 500, 600);
	}

//////////////////ELIMINAR	
	private void eliminar() {
		int posicion = tabla.getSelectedRow();
		if (posicion != -1) {
			for (int i = posicion; i < vendedores.length; i++) {
				if (i == 399) {
					vendedores[i][0] = vendedores[i + 1][0];
					vendedores[i][1] = vendedores[i + 1][1];
					vendedores[i][2] = vendedores[i + 1][2];
					vendedores[i][3] = vendedores[i + 1][3];
					vendedores[i][4] = vendedores[i + 1][4];
					vendedores[i][5] = vendedores[i + 1][5];

				} else if (vendedores[i][0] != null) {
					vendedores[i][0] = vendedores[i + 1][0];
					vendedores[i][1] = vendedores[i + 1][1];
					vendedores[i][2] = vendedores[i + 1][2];
					vendedores[i][3] = vendedores[i + 1][3];
					vendedores[i][4] = vendedores[i + 1][4];
					vendedores[i][5] = vendedores[i + 1][5];

				}
			}
			try {
				ObjectOutputStream tabla = new ObjectOutputStream(new FileOutputStream("tabla_Vendedores.dat"));
				tabla.writeObject(vendedores);
				tabla.close();
			} catch (IOException s) {
			}

		} else {
			JOptionPane.showMessageDialog(null, "Debe seleccionar una fila");

		}
		tabla.clearSelection(); 
	}

	public void ejecutar() throws ClassNotFoundException {
		botones();
		tabla();

	}

}
