package szpak.marcin.management.app.dao;

import szpak.marcin.management.app.model.System;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.TypedQuery;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class SystemDaoImp implements SystemDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void add(System system) {
        sessionFactory.getCurrentSession().save(system);
    }

    @Override
    public List<System> listSystem() {
        @SuppressWarnings("unchecked")
        TypedQuery<System> query = sessionFactory.getCurrentSession().createQuery("from System");
        return query.getResultList();
    }

    @Override
    public void deleteSystem(Integer systemId) {
        System systemToDelete = (System) sessionFactory.getCurrentSession().load(System.class, systemId);
        sessionFactory.getCurrentSession().delete(systemToDelete);
    }

    public List<System> findSystem(String systemName, String systemDescription, String technologyDescription, String client) {
        Map<String, Object> parameters = new HashMap<>();
        String query = "from System o where 1=1";
        if (systemName != null && !"".equals(systemName)) {
            query += " and (o.systemName = :systemName)";
            parameters.put("systemName", systemName);
        }
        if (systemDescription != null && !"".equals(systemDescription)) {
            query += " and (o.systemDescription = :systemDescription)";
            parameters.put("systemDescription", systemDescription);
        }
        if (technologyDescription != null && !"".equals(technologyDescription)) {
            query += " and (o.technologyDescription = :technologyDescription)";
            parameters.put("technologyDescription", technologyDescription);
        }
        if (client != null && !"".equals(client)) {
            query += " and (o.client = :client)";
            parameters.put("client", client);
        }

        Query hql = sessionFactory.getCurrentSession()
                .createQuery(query);

        for (Map.Entry<String, Object> entry : parameters.entrySet()) {
            hql.setParameter(entry.getKey(), entry.getValue());
        }
        return hql.list();


    }

    @Override
    public void editSystem(System system) {
        sessionFactory.getCurrentSession().update(system);

    }

    public System getSystem(Integer systemId) {
        System thatSystem = (System) sessionFactory.getCurrentSession().get(System.class, systemId);
        return thatSystem;
    }

    @Override
    public System findSystem(String name) {
        System thatSystem = (System) sessionFactory.getCurrentSession()
                .createQuery("from System s where s.systemName = :systemName")
                .setParameter("systemName", name)
                .list().get(0);
        return thatSystem;
    }
}
