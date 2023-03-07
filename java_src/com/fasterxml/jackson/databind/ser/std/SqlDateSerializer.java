package com.fasterxml.jackson.databind.ser.std;

import java.sql.Date;
/* loaded from: classes.dex */
public class SqlDateSerializer extends DateTimeSerializerBase<Date> {
    public SqlDateSerializer() {
        this(Boolean.FALSE);
    }

    protected SqlDateSerializer(Boolean bool) {
        super(Date.class, bool, null);
    }
}
