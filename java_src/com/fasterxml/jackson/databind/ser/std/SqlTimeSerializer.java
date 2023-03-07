package com.fasterxml.jackson.databind.ser.std;

import java.sql.Time;
/* loaded from: classes.dex */
public class SqlTimeSerializer extends StdScalarSerializer<Time> {
    public SqlTimeSerializer() {
        super(Time.class);
    }
}
