package APIs;

import accessData.adminExistencias;
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
@Path("existencias")
public class Existencias {
    
    @GET
    @Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
    public List<modelo.Producto> list() {
        try {
            System.out.println(adminExistencias.getInstance().listarProductos().toString());
            return adminExistencias.getInstance().listarProductos();
        } catch (Exception ex) {
            System.out.println("Aqui hay un error");
            ExceptionsManager.SHOW_ERROR(ex.getMessage());
        }
        return adminExistencias.getInstance().listarProductos();
    }
    
    /**
     *
     * @param nomCod
     * @return
     */
    @GET
    @Path("{nomCod}")
    @Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
    public modelo.Producto consultaProducto(@PathParam("nomCod") String nomCod){
        try {
            System.out.println("Nombre:"+nomCod);
            System.out.println(adminExistencias.getInstance().getCantidad(nomCod));
            return adminExistencias.getInstance().getCantidad(nomCod);
        } catch (Exception ex) {
            System.out.println("Aqui hay un error");
            ExceptionsManager.SHOW_ERROR(ex.getMessage());
        }
        return adminExistencias.getInstance().getCantidad(nomCod);
    }
}
