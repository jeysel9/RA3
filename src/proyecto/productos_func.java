package proyecto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.swing.JOptionPane;

public class productos_func {
	PreparedStatement ps;
    ResultSet rs;
    conexion acceso = new conexion();
    Connection con= acceso.Conectar();    
    Productos p = new Productos();
    Object [][] listar;
    
    public void crear (String nombre, String descripcion, int cantidad, double precio) {
    	String sql = "insert into productos(nombre,descripcion,cantidad,precio)values(?,?,?,?)";
    	
    	try {
    		
            ps = con.prepareStatement(sql);
            ps.setString(1, nombre);
            ps.setString(2, descripcion);
            ps.setInt(3, cantidad);
            ps.setDouble(4, precio);
            ps.executeUpdate();
    	}
    	catch (Exception e) {
			System.out.println(e);
		}
    	
        
    }
    
    public void modificar(Productos s) {
    	String sql = "update productos set nombre=?, descripcion=?, cantidad=?, precio=? where codigo=?";
        
    	try {
    		
            ps = con.prepareStatement(sql);            
            ps.setString(1, s.getNombre());
            ps.setString(2, s.getDescripcion());
            ps.setInt(3, s.getCantidad());
            ps.setDouble(4, s.getPrecio());
            ps.setInt(5, s.getCodigo());
            ps.executeUpdate();
    	}
    	catch (Exception e) {
			System.out.println(e);
		}
    	
    }
    
    public void eliminar(int id) {
        String sql = "delete from productos where codigo=?";
        try {
           
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        	System.out.println(e);
        }
    }    
  public Productos buscar_producto(int id, int cantidad) {
    	
    	String sql = "select * from productos"; 
    	
        try {
            con = acceso.Conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {//nombre,descripcion,cantidad,precio
            	if(id == rs.getInt(1)) {            		
            		if(cantidad < rs.getInt(4)) {
            			p.setCodigo(rs.getInt(1));
                		p.setNombre(rs.getString(2));            		
                		p.setCantidad(rs.getInt(4));
                		p.setPrecio(rs.getDouble(5));
                		return p;
            		}else {
            			JOptionPane.showMessageDialog(null, "Cantidad solicitada mayor al inventario, se cuenta con:"+ rs.getInt(4));
            			break;
            		}            		
            	}
            	
            }
            
        } catch (Exception e) {        	
            System.out.println(e);
        }
        return null;
    	
    	
    	
    }
public Object[][] listar() {
    	
    	String sql = "select * from productos";  
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
            
            while (rs.next()) {            	//nombre,descripcion,cantidad,precio
            	listar[y][0] = rs.getInt(1);
            	listar[y][1] = rs.getString(2);
            	listar[y][2] = rs.getString(3);
            	listar[y][3] = rs.getInt(4);
            	listar[y][4] = rs.getDouble(5);
            	y++;            	
            }
        } catch (Exception e) {        	
            System.out.println(e);
        }
    	
    	return listar;
    }
}