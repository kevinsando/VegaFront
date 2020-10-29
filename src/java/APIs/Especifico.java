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
@Path("especifico")
public class Especifico{
    
    /**
     *
     * @param nomCod
     * @return
     */
    @GET
    @Path("{nomCod}")
    @Produces(javax.ws.rs.core.MediaType.APPLICATION_JSON)
    public modelo.Producto list(@PathParam("nomCod") String nomCod){
        try {
            System.out.println("API:"+adminExistencias.getInstance().getCantidad(nomCod));
            return adminExistencias.getInstance().getCantidad(nomCod);
        } catch (Exception ex) {
            System.out.println("Aqui hay un error");
            ExceptionsManager.SHOW_ERROR(ex.getMessage());
        }
        return adminExistencias.getInstance().getCantidad(nomCod);
    }
}