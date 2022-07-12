package proyecto;

import java.awt.Color;
import java.awt.Font;
import java.awt.font.TextAttribute;
import java.util.HashMap;
import java.util.Map;

import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;

public class ventas {

	JPanel ListadoG = new JPanel();
	JTable tabla ;
	JScrollPane scroll;
	Object[][] ventas = new Object[1000][6];
	public void ventana() {
			
			JLabel listGral = new JLabel();
			JLabel filtradoPor = new JLabel();
			JLabel filtrados = new JLabel();
			JLabel l1 = new JLabel();
			JLabel l2 = new JLabel();
			JLabel l3 = new JLabel();
			JLabel l4 = new JLabel();
			JTextField t1 = new JTextField();
			JTextField t2 = new JTextField();
			JTextField t3 = new JTextField();
			JTextField t4 = new JTextField();
			JButton apFiltro = new JButton();
			Font font = filtradoPor.getFont();
			Map<TextAttribute, Object> attributes = new HashMap<>(font.getAttributes());
			ListadoG.setBackground(Color.white);
			listGral.setText("Seleccionar Cliente");
			listGral.setFont(new Font("Serig", Font.BOLD, 15));
			listGral.setBounds(0, 0, 200, 30);
			ListadoG.add(listGral);
			
			filtradoPor.setText("Filtrar por:");
			filtradoPor.setFont(new Font("Serig", Font.PLAIN, 15));
			filtradoPor.setBounds(20, 30, 100, 30);
			attributes.put(TextAttribute.UNDERLINE, TextAttribute.UNDERLINE_ON);
			filtradoPor.setFont(font.deriveFont(attributes));
			ListadoG.add(filtradoPor);			
			
			l1.setText("No. Factura");
			l1.setFont(new Font("Serig", Font.PLAIN, 15));
			l1.setBounds(110, 30, 100, 30);
			ListadoG.add(l1);
			
			l2.setText("Nombre");
			l2.setFont(new Font("Serig", Font.PLAIN, 15));
			l2.setBounds(110, 80, 100, 30);
			ListadoG.add(l2);
			
			l3.setText("NIT");
			l3.setFont(new Font("Serig", Font.PLAIN, 15));
			l3.setBounds(460, 30, 100, 30);
			ListadoG.add(l3);
			
			l4.setText("Fecha");
			l4.setFont(new Font("Serig", Font.PLAIN, 15));
			l4.setBounds(460, 80, 100, 30);
			ListadoG.add(l4);
			
			filtrados.setText("Filtrados:");
			filtrados.setFont(new Font("Serig", Font.PLAIN, 15));
			filtrados.setBounds(20, 175, 100, 30);
			attributes.put(TextAttribute.UNDERLINE, TextAttribute.UNDERLINE_ON);
			filtrados.setFont(font.deriveFont(attributes));
			ListadoG.add(filtrados);			
			
			
			t1.setBounds(200, 30, 150, 30);
			t2.setBounds(200, 80, 150, 30);
			t3.setBounds(550, 30, 150, 30);
			t4.setBounds(550, 80, 150, 30);

			ListadoG.add(t1);
			ListadoG.add(t2);
			ListadoG.add(t3);
			ListadoG.add(t4);
			
			apFiltro.setText("Aplicar Filtro");
			apFiltro.setBounds(200, 125, 500, 30);
			ListadoG.add(apFiltro);
			
			ListadoG.setBounds(30, 30, 800, 600);
			ListadoG.setLayout(null);
			
	}
	
	private void tabla() throws ClassNotFoundException {
		String[] datos = { "No. Factura","NIT", "Nombre", "Fecha", "Total", "Acciones" };

	

		tabla = new JTable(ventas,datos);
		scroll = new JScrollPane(tabla);
		scroll.setBounds(50, 250, 700, 300);
	}

	public void ejecutar() throws ClassNotFoundException {
		ventana();
		tabla();
		
	}
}
