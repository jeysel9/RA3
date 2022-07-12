package proyecto;

import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.*;

import javax.swing.*;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;



public class inicio {
	//atributos
		JFrame inicio = new JFrame();
		JPanel panel = new JPanel();
		JLabel label1 = new JLabel();
		JLabel label2 = new JLabel();
		JTextField campoTexto1 = new JTextField();
		JPasswordField campoTexto2= new JPasswordField();//contraseña
		JButton boton = new JButton();
		
		Object [][] vendedores =new Object [400][0];
		
		//metodo ventana (JFrame) y panel (JPanel)
		public void frame() {
	/////////////// FRAME(ventana)
			inicio.setTitle("Login");
			//inicio.setSize(200,150); es mejor usar el setBounds
			//x,y,ancho,alto
			inicio.setBounds(500,300,500,500);
			inicio.setLocationRelativeTo(null);
			inicio.setVisible(true);
			
		    
	//////////////// PANEL 
			panel.setBackground(Color.lightGray);
			panel.setBounds(500,300,500,500);
			panel.setLayout(null);
			//para agregar algo al frame es de esta forma:
			inicio.add(panel);
			inicio.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			etiquetas();
			boton();
			
		}
		//metodo de  etiquetas(LABEL) y campos de texto(JTextFiel)
		public void etiquetas() {
	/////////////////LABELS
			label1.setText("USUARIO");
			label1.setFont(new Font("Serig", Font.PLAIN,15));
			label1.setBounds(50,100,100,80);
			panel.add(label1);
			
			label2.setText("CONTRASEÑA");
			label2.setFont(new Font("Serig", Font.PLAIN,15));
			label2.setBounds(50,230,180,80);
			panel.add(label2);
			
	///////////////TextField
			campoTexto1.setBounds(200,115,200,40);
			campoTexto2.setBounds(200,245,200,40);
			
			panel.add(campoTexto1);
			panel.add(campoTexto2);
		}
		public void boton() {
			boton.setText("INGRESAR");
			boton.setBounds(200,360,100,40);
			panel.add(boton);
			

	/////////////Funcionalidad 
			ActionListener ingresar = new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent e) {
					
					// cargar archivo
					try {

						ObjectInputStream recuperar = new ObjectInputStream(new FileInputStream("tabla_vendedores.dat"));

						vendedores = (Object[][]) recuperar.readObject();
						recuperar.close();

					}
					
					catch (IOException o) {
					} catch (ClassNotFoundException e1) {
						e1.printStackTrace();
					}

					if (campoTexto1.getText().equals("Admin") && campoTexto2.getText().equals("Admin")) {
						JOptionPane.showMessageDialog(null, "Bienvenido");
						
						inicio.setVisible(false);
						Menu_Principal mp = new Menu_Principal();
						
						try {
							mp.ejecutar();
							
						} catch (ClassNotFoundException e1) {
							e1.printStackTrace();
						}
						
					}
					
					
					else {
						Boolean acceso = false;
						for (int i = 0; i < vendedores.length; i++) {
							if(campoTexto1.getText().equals(vendedores[i][1]) && campoTexto2.getText().equals(vendedores[i][5])) {
								acceso = true;
								break;
								
							}
						}
						if (acceso == true) {
							JOptionPane.showMessageDialog(null, "Bienvenido");
							Modulo_vendedores modV = new Modulo_vendedores();
							
							try {
								modV.ejecutar();
							} catch (ClassNotFoundException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
						}else {
							JOptionPane.showMessageDialog(null, "Usuario Equivocado o no existente");
						}
					}

				}
			};
			//accion de evento
			boton.addActionListener(ingresar);
		}
		
		
		public void ejecutar() {
			frame();
			etiquetas();
			boton();
		}
		
		public static void main(String[] args) {
			inicio p1 = new inicio();
			p1.frame();
			

		}
	}
