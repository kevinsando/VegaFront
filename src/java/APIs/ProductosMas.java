package APIs;

import accessData.adminVendidos;
import exceptions.ExceptionsManager;
import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

/**
 *
 * @author Kevin Sandoval
 */

@Path("productosmas")
public class ProductosMas {
    
    @GET
    @Path("{inicio}/{fin}")
    @Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
    public List<modelo.Producto> list(@PathParam("inicio") String inicio, @PathParam("fin") String fin) {
        try {
            System.out.println(adminVendidos.getInstance().listarMasVendidos(inicio, fin).toString());
            
            return adminVendidos.getInstance().listarMasVendidos(inicio, fin);
        } catch (Exception ex) {
            ExceptionsManager.SHOW_ERROR(ex.getMessage());
        }
        return adminVendidos.getInstance().listarMasVendidos(inicio, fin);
    }
}
