package szpak.marcin.management.app.model;

public enum Settlement {
    MONTHLY(0), QUARTERLY(1), ANNUAL(2);

    int enumId;

    Settlement(int enumId) {
        this.enumId = enumId;
    }

    @Override
    public String toString() {
        if (enumId == 0) {
            return "MONTHLY";
        } else if (enumId == 1) {
            return "QUARTERLY";
        } else {
            return "ANNUAL";
        }
    }
}

