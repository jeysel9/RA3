package proyecto;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextField;

public class Modulo_vendedores {
	JFrame principal = new JFrame();
	JTabbedPane pestañas = new JTabbedPane();
	JPanel ventas = new JPanel();
	JPanel tablas = new JPanel();
	nuevaVenta n = new nuevaVenta();
	ventas v = new ventas();
	

	private void menu() throws ClassNotFoundException {
		// Frame datos
		principal.setTitle("Modulo Administrador");
		principal.setLocationRelativeTo(null);
		principal.setBounds(500, 150, 900, 700);
		principal.setVisible(true);
		JButton cerrar = new JButton("Cerrar Sesion");
		cerrar.setBackground(Color.red);
		cerrar.setForeground(Color.white);
		cerrar.setBounds(700, 630, 150, 20);

		// Funcion cerrar
		ActionListener funcion_cerrar = new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				inicio log = new inicio();
				log.ejecutar();
				principal.setVisible(false);
			}
		};

		// Acción del evento
		cerrar.addActionListener(funcion_cerrar);

		principal.add(cerrar);
		principal.add(pestañas);

		// colores de los paneles
		ventas.setBackground(Color.lightGray);
		tablas.setBackground(Color.lightGray);

		ventas.setLayout(null);
		tablas.setLayout(null);

		// agregamos los paneles
		pestañas.addTab("Ventas", ventas);
		pestañas.addTab("Tablas", tablas);
		
		v.ejecutar();
		tablas.add(v.ListadoG);
		v.ListadoG.add(v.scroll);
		
		n.ejecutar();
		ventas.add(n.filtro);
		ventas.add(n.ventas);
		
		
		principal.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}

	public void ejecutar() throws ClassNotFoundException {
		extracted();
	}

	private void extracted() throws ClassNotFoundException {
		menu();
	}

	public static void main(String[] args) throws ClassNotFoundException {
		Modulo_vendedores mv = new Modulo_vendedores();
		mv.ejecutar();

	}

}


	
