package tran_minh_tuyen.model;

import org.jdbi.v3.core.Jdbi;

public abstract class AbBean {

    public abstract boolean insert(Jdbi db);
    public abstract boolean delete(Jdbi db);
    public abstract boolean update(Jdbi db);

}
