package APIs;

import accessData.adminExistencias;
import accessData.adminVendidos;
import exceptions.ExceptionsManager;
import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

/**
 *
 * @author Kevin Sandoval
 */

@Path("vendidos")
public class ProductosVendidos {
    
    @GET
    @Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
    public List<modelo.Producto> list() {
        try {
            adminVendidos av = new adminVendidos();
            System.out.println(av.listarProductos().toString());
            
            return av.listarProductos();
        } catch (Exception ex) {
            ExceptionsManager.SHOW_ERROR(ex.getMessage());
        }
        return null;
    }
}
