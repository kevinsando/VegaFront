package APIs;

import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

/**
 *
 * @author Kevin Sandoval
 */

@Path("ExistenciaProductos")
public class ExistenciaProductos {
    
    @GET
    @Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
    public List<modelo.Producto> list() {
        try {
            System.out.println(adminProductos.getInstance().listarProductos().toString());
            
            return adminProductos.getInstance().listarProductos();
        } catch (Exception ex) {
            MyException.SHOW_ERROR(ex.getMessage());
        }
        return null;
    }
}
