package proyecto;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;

import com.itextpdf.text.DocumentException;

public class Menu_Principal {
	 JFrame menuP = new JFrame();
	 JTabbedPane pestañas = new JTabbedPane();//para pestañas 
	  //pañeles para las pestañas 
	 JPanel sucursales = new JPanel();
	 JPanel clientes  = new JPanel();
	 JPanel vendedores = new JPanel();
	 JPanel productos = new JPanel();
	 
	 Sucursales_Menu sm = new Sucursales_Menu();
	 producto_Menu pm = new producto_Menu();
	 clientes_Menu cm = new clientes_Menu();
	 vendedores_Menu vm = new vendedores_Menu();
	 
	 public void valores_iniciales() throws ClassNotFoundException {
		 //cosas del frame
		 menuP.setTitle("Modulo Administrador");
		 menuP.setBounds(500,300,900,700);
		 menuP.setLocationRelativeTo(null);
		 menuP.setVisible(true);
		 JButton cerrarSesion = new JButton("Cerrar Sesion");
		 cerrarSesion.setBackground(Color.red);
		 cerrarSesion.setForeground(Color.white);
		 cerrarSesion.setBounds(700, 0, 150, 20);
		 
		 ActionListener funcion_Cerar_Sesion = new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent e) {
					inicio login = new inicio();
					login.ejecutar();
					menuP.setVisible(false);
				}
			};
		 cerrarSesion.addActionListener(funcion_Cerar_Sesion);
		
		 menuP.add(cerrarSesion);
		 menuP.add(pestañas);
		 
		 /*acá se llama a todo lo que la clase menu sucursales , producto,
		  * cliente y  vendedor que sea publico */
		 

		 //agregando color a las pestañas
		 sucursales.setBackground(Color.lightGray);
		 productos.setBackground(Color.lightGray);
		 clientes.setBackground(Color.lightGray);
		 vendedores.setBackground(Color.lightGray);
		 
		 
		 //setLayout acomoda 
		 sucursales.setLayout(null);
		 productos.setLayout(null);
		 clientes.setLayout(null);
		 vendedores.setLayout(null);
		
		 
		 //de sucursales menu le agrego el boton desde el menu principal
		 // en la pestaña que corresponda
		 //SE ESTAN AGREGANDO LOS BOTOES EN CADA UNA DE LAS PESTAÑAS 
		 sm.ejecutar();
		 sucursales.add(sm.crear);
		 sucursales.add(sm.carga);
		 sucursales.add(sm.eliminar);
		 sucursales.add(sm.actualizar);
		 sucursales.add(sm.pdf);
		 
		 pm.ejecutar();
		 productos.add(pm.crear);
		 productos.add(pm.carga);
		 productos.add(pm.eliminar);
		 productos.add(pm.actualizar);
		 productos.add(pm.pdf);
		 
		 cm.ejecutar();
		 clientes.add(cm.crear);
		 clientes.add(cm.carga);
		 clientes.add(cm.eliminar);
		 clientes.add(cm.actualizar);
		 clientes.add(cm.pdf);
		 
		 vm.ejecutar();
		 vendedores.add(vm.crear);
		 vendedores.add(vm.carga);
		 vendedores.add(vm.eliminar);
		 vendedores.add(vm.actualizar);
		 vendedores.add(vm.pdf);
		 
		 //agregar el scroll para que aparezca la tabla y el scroll
		 sucursales.add(sm.scroll);
		 productos.add(pm.scroll);
		 clientes.add(cm.scroll);
		 vendedores.add(vm.scroll);
		 
		 //agregando las pestañas con sus nombres
		 pestañas.addTab("sucursales", sucursales);
		 pestañas.addTab("productos", productos);
		 pestañas.addTab("clientes", clientes);
		 pestañas.addTab("vendedores", vendedores);
		
		 menuP.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		 
	 }
	 public void ejecutar() throws ClassNotFoundException {
		 valores_iniciales();
	 }
	 public static void main(String[] args) throws ClassNotFoundException {
		Menu_Principal mp = new Menu_Principal();
		mp.ejecutar();
	}
	
}
