package szpak.marcin.management.app.model;

import javax.persistence.*;

@Entity
@Table(name = "systems", schema = "public")
public class System {
    @Id
    @SequenceGenerator(name = "systems_system_id_seq", sequenceName = "systems_system_id_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "systems_system_id_seq")
    @Column(updatable = false, name = "system_id")
    private int systemId;

    @Column(name = "system_name")
    private String systemName;

    @Column(name = "system_description")
    private String systemDescription;

    @Column(name = "technology_description")
    private String technologyDescription;

    @Column
    private String client;

    public void setSystemId(int systemId) {
        this.systemId = systemId;
    }

    public int getSystemId() {
        return systemId;
    }

    public String getSystemName() {
        return systemName;
    }

    public String getSystemDescription() {
        return systemDescription;
    }

    public String getTechnologyDescription() {
        return technologyDescription;
    }

    public String getClient() {
        return client;
    }

    public void setSystemName(String systemName) {
        this.systemName = systemName;
    }

    public void setSystemDescription(String systemDescription) {
        this.systemDescription = systemDescription;
    }

    public void setTechnologyDescription(String technologyDescription) {
        this.technologyDescription = technologyDescription;
    }

    public void setClient(String client) {
        this.client = client;
    }

    @Override
    public String toString() {
        return systemName;
    }
}
