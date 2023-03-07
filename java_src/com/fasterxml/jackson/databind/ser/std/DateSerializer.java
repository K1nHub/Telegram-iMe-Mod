package com.fasterxml.jackson.databind.ser.std;

import java.text.DateFormat;
import java.util.Date;
/* loaded from: classes.dex */
public class DateSerializer extends DateTimeSerializerBase<Date> {
    public static final DateSerializer instance = new DateSerializer();

    public DateSerializer() {
        this(null, null);
    }

    public DateSerializer(Boolean bool, DateFormat dateFormat) {
        super(Date.class, bool, dateFormat);
    }
}
