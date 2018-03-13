package szpak.marcin.management.app.service;

import szpak.marcin.management.app.dao.SystemDaoImp;
import szpak.marcin.management.app.model.System;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class SystemService {
    private SystemDaoImp systemDaoImp;

    @Autowired
    public SystemService(SystemDaoImp systemDaoImp) {
        this.systemDaoImp = systemDaoImp;

    }

    @Transactional
    public System createSystem(String systemName, String systemDescription, String technologyDescription, String client) {
        System system = new System();
        system.setSystemName(systemName);
        system.setSystemDescription(systemDescription);
        system.setTechnologyDescription(technologyDescription);
        system.setClient(client);
        systemDaoImp.add(system);
        return system;
    }

    @Transactional
    public System editSystem(Integer systemId, String systemName, String systemDescription, String technologyDescription, String client) {
        System system = systemDaoImp.getSystem(systemId);
        system.setSystemName(systemName);
        system.setSystemDescription(systemDescription);
        system.setTechnologyDescription(technologyDescription);
        system.setClient(client);
        systemDaoImp.editSystem(system);
        return system;
    }

    @Transactional(readOnly = true)
    public List<System> allSystems() {
        return systemDaoImp.listSystem();
    }

    @Transactional
    public void deleteSystem(Integer systemId) {
        systemDaoImp.deleteSystem(systemId);
    }

    @Transactional
    public System findSystemByName(String systemName) {
        return systemDaoImp.findSystem(systemName);
    }

    @Transactional
    public List<System> findSystem(String systemName, String systemDescription, String technologyDescription, String client) {
        return systemDaoImp.findSystem(systemName, systemDescription, technologyDescription, client);
    }

    @Transactional
    public System getSystem(Integer systemId) {
        return systemDaoImp.getSystem(systemId);
    }
}
