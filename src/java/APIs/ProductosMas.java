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
    @Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
    public List<modelo.Vendido> list() {
        try {
            System.out.println(adminVendidos.getInstance().listarMasVendidos().toString());
            
            return adminVendidos.getInstance().listarMasVendidos();
        } catch (Exception ex) {
            ExceptionsManager.SHOW_ERROR(ex.getMessage());
        }
        return adminVendidos.getInstance().listarMasVendidos();
    }
}
