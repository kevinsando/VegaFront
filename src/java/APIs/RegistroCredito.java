package APIs;

import accessData.adminCreditos;
import exceptions.ExceptionsManager;
import javax.ws.rs.Consumes;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author Kevin Sandoval
 */
@Path("registrocredito")
public class RegistroCredito {
    
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public boolean save(modelo.Credito object){
        try{
          return adminCreditos.getInstance().guardarCredito(object);
        } catch(Exception ex){
            ExceptionsManager.SHOW_ERROR(ex.getMessage());
        }
        return false;
    }
    
}
