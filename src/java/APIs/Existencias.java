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
@Path("existencias")
public class Existencias {
    
    @GET
    @Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
    public List<modelo.Producto> list() {
        System.out.println("API");
        try {
            System.out.println(adminExistencias.getInstance().listarProductos().toString());
            
            return adminExistencias.getInstance().listarProductos();
        } catch (Exception ex) {
            System.out.println("Aqui hay un error");
            ExceptionsManager.SHOW_ERROR(ex.getMessage());
        }
        return null;
    }
}
