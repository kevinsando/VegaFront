package APIs;

import accessData.adminExistencias;
import exceptions.ExceptionsManager;
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
            adminExistencias a = (adminExistencias) adminExistencias.getInstance();
            System.out.println(a.listarProductos().toString());
            
            return a.listarProductos();
        } catch (Exception ex) {
            ExceptionsManager.SHOW_ERROR(ex.getMessage());
        }
        return null;
    }
}
