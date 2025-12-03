package org.parking.parkinglot.ejb;

import com.parking.parkinglot.common.CarDto;
import com.parking.parkinglot.common.UserDto;
import jakarta.ejb.EJBException;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import org.example.parkinglot.entities.User;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@Stateless
public class UserBean {
    private static final Logger log =  Logger.getLogger(UserBean.class.getName());

    @PersistenceContext
    private EntityManager entityManager;
    public List<UserDto> findAllUsers() {
        log.info("findAllUsers");
        try{
            TypedQuery<User> typedQuery = entityManager.createQuery("SELECT u FROM User u", User.class);
            List<User> users = typedQuery.getResultList();
            return copyUsersToDto(users);
        }catch (Exception ex){
            throw new EJBException(ex);
        }
    }

    private List<UserDto> copyUsersToDto(List<User> users){
        List<UserDto> dtos = new ArrayList<>();

        for(User user : users){
            UserDto dto = new UserDto(user.getId(), user.getUsername(), user.getPassword(), user.getEmail());
            dtos.add(dto);
        }
        return dtos;
    }
}
