package proyecto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class clientes_func {
	PreparedStatement ps;
    ResultSet rs;
    conexion acceso = new conexion();
    Connection con= acceso.Conectar();  
    Object [][] listar;
    
    public void crear (String nombre, int nit, String correo, String genero) {
    	String sql = "insert into clientes(nombre,nit,correo,genero)values(?,?,?,?)";
    	
    	try {
    		
            ps = con.prepareStatement(sql);
            ps.setString(1, nombre);
            ps.setInt(2, nit);
            ps.setString(3, correo);
            ps.setString(4, genero);
            ps.executeUpdate();
    	}
    	catch (Exception e) {
			System.out.println(e);
		}
    	
        
    }
    
    public void modificar(Clientes c) {
    	String sql = "update clientes set nombre=?, nit=?, correo=?, genero=? where codigo=?";
        
    	try {
    		
            ps = con.prepareStatement(sql);            
            ps.setString(1, c.getNombre());
            ps.setInt(2, c.getNit());
            ps.setString(3, c.getCorreo());
            ps.setString(4, c.getGenero());
            ps.setInt(5, c.getCodigo());
            ps.executeUpdate();
    	}
    	catch (Exception e) {
			System.out.println(e);
		}
    	
    }
    
    public void eliminar(int id) {
        String sql = "delete from clientes where codigo=?";
        try {
        	
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        	System.out.println(e);
        }
    }    
 public Object[][] listar() {
    	
    	String sql = "select * from clientes";  
    	int filas = 0;
    	
        try {
            con = acceso.Conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {
            	filas++;
            	
            }
            
            listar = new Object[filas][5];
            int y =0;
            con = acceso.Conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            //nombre=?, nit=?, correo=?, genero=?
            while (rs.next()) {            	
            	listar[y][0] = rs.getInt(1);
            	listar[y][1] = rs.getString(2);
            	listar[y][2] = rs.getInt(3);
            	listar[y][3] = rs.getString(4);
            	listar[y][4] = rs.getString(5);
            	y++;            	
            }
        } catch (Exception e) {        	
            System.out.println(e);
        }
    	
    	return listar;
    
}


public static void main(String[] args) {
	clientes_func cf = new clientes_func();
	
}
}