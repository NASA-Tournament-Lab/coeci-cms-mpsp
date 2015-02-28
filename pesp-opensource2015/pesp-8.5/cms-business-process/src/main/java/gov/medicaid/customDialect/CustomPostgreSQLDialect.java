package gov.medicaid.customDialect;

import org.hibernate.dialect.PostgreSQLDialect;

import java.sql.Types;

/**
 * Created with IntelliJ IDEA.
 * User: pascal
 * Date: 1/14/15
 * Time: 6:45 PM
 * To change this template use File | Settings | File Templates.
 */
public class CustomPostgreSQLDialect extends PostgreSQLDialect {
    public CustomPostgreSQLDialect() {
        super();

        registerColumnType(Types.BLOB, "bytea");
    }
}
