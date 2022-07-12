package proyecto;

import java.awt.Color;
import java.awt.Desktop;
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

import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;

import org.json.simple.parser.ParseException;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;


public class clientes_Menu implements Serializable{
	// botones
	JButton crear = new JButton();
	JButton carga = new JButton();
	JButton actualizar = new JButton();
	JButton eliminar = new JButton();
	JButton pdf = new JButton();
	JButton guardar = new JButton();
	clientes_func cf = new clientes_func();

	// matriz
	Object[][] clientes ;
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
		//JLabel l1 = new JLabel();
		JLabel l2 = new JLabel();
		JLabel l3 = new JLabel();
		JLabel l4 = new JLabel();
		JLabel l5 = new JLabel();
		//JTextField t1 = new JTextField();
		JTextField t2 = new JTextField();
		JTextField t3 = new JTextField();
		JTextField t4 = new JTextField();
		JTextField t5 = new JTextField();

		/*l1.setText("CODIGO");
		l1.setFont(new Font("Serig", Font.PLAIN, 15));
		l1.setBounds(50, 100, 100, 80);
		panelCrear.add(l1);*/

		l2.setText("NOMBRE");
		l2.setFont(new Font("Serig", Font.PLAIN, 15));
		l2.setBounds(50, 80, 180, 80);
		panelCrear.add(l2);

		l3.setText("NIT");
		l3.setFont(new Font("Serig", Font.PLAIN, 15));
		l3.setBounds(50, 180, 100, 80);
		panelCrear.add(l3);

		l4.setText("CORREO");
		l4.setFont(new Font("Serig", Font.PLAIN, 15));
		l4.setBounds(50, 280, 180, 80);
		panelCrear.add(l4);

		l5.setText("GÉNERO");
		l5.setFont(new Font("Serig", Font.PLAIN, 15));
		l5.setBounds(50, 380, 180, 80);
		panelCrear.add(l5);

		ventana_crear.setTitle("Crear Nuevo Producto ");
		ventana_crear.setBounds(500, 150, 600, 700);
		ventana_crear.setLocationRelativeTo(null);
		ventana_crear.setVisible(true);
		panelCrear.setBackground(Color.lightGray);
		ventana_crear.add(panelCrear);

		// textfield
	//	t1.setBounds(250, 100, 200, 40);
		t2.setBounds(250, 100, 200, 40);
		t3.setBounds(250, 200, 200, 40);
		t4.setBounds(250, 300, 200, 40);
		t5.setBounds(250, 400, 200, 40);

	//	panelCrear.add(t1);
		panelCrear.add(t2);
		panelCrear.add(t3);
		panelCrear.add(t4);
		panelCrear.add(t5);

		guardar.setText("GUARDAR");
		guardar.setBounds(200, 480, 130, 70);
		panelCrear.add(guardar);

		ActionListener funcion_Guardar = new ActionListener() {
			@Override
		
			public void actionPerformed(ActionEvent e) {
				cf.crear(t2.getText(),  Integer.parseInt(t3.getText()), t4.getText(), t5.getText());		
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
		
		JTextField t1 = new JTextField();
		JTextField t2 = new JTextField();
		JTextField t3 = new JTextField();
		JTextField t4 = new JTextField();
		JTextField t5 = new JTextField();

		l1.setText("CODIGO");
		l1.setFont(new Font("Serig", Font.PLAIN, 15));
		l1.setBounds(50, 100, 100, 80);
		panelActualizar.add(l1);

		l2.setText("NOMBRE");
		l2.setFont(new Font("Serig", Font.PLAIN, 15));
		l2.setBounds(50, 200, 180, 80);
		panelActualizar.add(l2);

		l3.setText("NIT");
		l3.setFont(new Font("Serig", Font.PLAIN, 15));
		l3.setBounds(50, 300, 100, 80);
		panelActualizar.add(l3);

		l4.setText("CORREO");
		l4.setFont(new Font("Serig", Font.PLAIN, 15));
		l4.setBounds(50, 400, 180, 80);
		panelActualizar.add(l4);

		l5.setText("GÉNERO");
		l5.setFont(new Font("Serig", Font.PLAIN, 15));
		l5.setBounds(50, 500, 180, 80);
		panelActualizar.add(l5);

		ventana_actualizar.setTitle("Actualizar Productos");
		ventana_actualizar.setBounds(500, 150, 600, 700);
		ventana_actualizar.setLocationRelativeTo(null);
		ventana_actualizar.setVisible(true);
		panelActualizar.setBackground(Color.lightGray);
		ventana_actualizar.add(panelActualizar);

		// textfield
		t1.setBounds(250, 100, 200, 40);
		t2.setBounds(250, 200, 200, 40);
		t3.setBounds(250, 300, 200, 40);
		t4.setBounds(250, 400, 200, 40);
		t5.setBounds(250, 500, 200, 40);
		
		//se debe convertir a string porque son Object
		//de diferentes formas y funcionan todas
		t1.setText(clientes[seleccionar][0].toString());
		t2.setText(clientes[seleccionar][1].toString());
		t3.setText(clientes[seleccionar][2].toString());
		t4.setText(clientes[seleccionar][3].toString());
		t5.setText(clientes[seleccionar][4].toString());
	
		t1.setEnabled(false); 
		
		panelActualizar.add(t1);
		panelActualizar.add(t2);
		panelActualizar.add(t3);
		panelActualizar.add(t4);
		panelActualizar.add(t5);

		guardar.setText("GUARDAR");
		guardar.setBounds(200, 600, 130, 70);
		panelActualizar.add(guardar);

		ActionListener funcion_Guardar = new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				Clientes objeto = new Clientes();
				objeto.setCodigo(Integer.parseInt(t1.getText()));
				objeto.setNombre(t2.getText());
				objeto.setNit(Integer.parseInt(t3.getText()));
				objeto.setCorreo(t4.getText());
				objeto.setGenero(t5.getText());
				
				
				cf.modificar(objeto);
				
					}
		};

		guardar.addActionListener(funcion_Guardar);

	
		}else {
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

	private void carga_masiva() throws FileNotFoundException, IOException, ParseException {
		String archivo_retorno = leerArchivo();

		JsonParser parse = new JsonParser();
		JsonArray matriz = parse.parse(archivo_retorno).getAsJsonArray();

		for (int i = 0; i < matriz.size(); i++) {
			JsonObject objeto = matriz.get(i).getAsJsonObject();
			
			cf.crear(objeto.get("nombre").getAsString(), objeto.get("nit").getAsInt(), objeto.get("correo").getAsString(), objeto.get("genero").getAsString());
			
		}
	}

	private void generar_pdf() throws FileNotFoundException, DocumentException {



		FileOutputStream gen = new FileOutputStream("Clientes.pdf");
		Document documento = new Document();



		PdfWriter.getInstance(documento, gen);
		documento.open();



		Paragraph parrafo = new Paragraph("Clientes");
		parrafo.setAlignment(1);
		documento.add(parrafo);
		documento.add(new Paragraph("\n"));



		for (int i = 0; i < clientes.length; i++) {



		if (clientes[i][0] == null) {
		break;
		} else {
		documento.add(new Paragraph("Código: " + clientes[i][0] + " " + "Nombre: " + clientes[i][1] + " "
		+ "Nit: " + clientes[i][2] + " " + "Correo: " + clientes[i][3] + " " + "Genero: "
		+ clientes[i][4]));
		documento.add(new Paragraph("\n\n"));
		}



		}
		documento.close();
		JOptionPane.showMessageDialog(null, "El archivo se creo correctamente");
		try {
		File sucursales_doc = new File("Clientes.pdf");
		Desktop.getDesktop().open(sucursales_doc);
		} catch (Exception e) {
		}
		}
	
	private void tabla() throws ClassNotFoundException {/*Código, Nombre, NIT, Correo y Género.*/
		String[] datos = { "Codigo", "Nombre", "NIT", "Correo", "Género" };

		// cargar archivo
		try {

			ObjectInputStream recuperar = new ObjectInputStream(new FileInputStream("tabla_clientes.dat"));

			clientes = (Object[][]) recuperar.readObject();
			recuperar.close();

		}

		catch (IOException e) {
		}

		tabla = new JTable(clientes, datos);
		scroll = new JScrollPane(tabla);
		scroll.setBounds(10, 10, 500, 600);
	
	}

//////////////////ELIMINAR	
	private void eliminar() {
		int posicion = tabla.getSelectedRow();

		if (posicion != -1) {
			cf.eliminar(Integer.parseInt(clientes[posicion][0].toString()));
			

		} else {
			JOptionPane.showMessageDialog(null, "Debe selecionar una Fila");
		}
		tabla.repaint();
		scroll.repaint();
	}

	public void ejecutar() throws ClassNotFoundException {
		botones();
		tabla();

	}

}


