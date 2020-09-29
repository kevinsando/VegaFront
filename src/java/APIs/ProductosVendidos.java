package APIs;

import accessData.adminExistencias;
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

@Path("vendidos")
public class ProductosVendidos {
    
    @GET
    @Path("{inicio}/{fin}")
    @Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
    public List<modelo.Producto> list(@PathParam("inicio") String inicio, @PathParam("fin") String fin) {
        try {
            System.out.println(adminVendidos.getInstance().listarVendidos(inicio, fin).toString());
            
            return adminVendidos.getInstance().listarVendidos(inicio, fin);
        } catch (Exception ex) {
            ExceptionsManager.SHOW_ERROR(ex.getMessage());
        }
        return adminVendidos.getInstance().listarVendidos(inicio, fin);
    }
}
