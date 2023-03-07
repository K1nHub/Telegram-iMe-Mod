package com.fasterxml.jackson.databind.ser.std;

import java.text.DateFormat;
/* loaded from: classes.dex */
public abstract class DateTimeSerializerBase<T> extends StdScalarSerializer<T> {
    /* JADX INFO: Access modifiers changed from: protected */
    public DateTimeSerializerBase(Class<T> cls, Boolean bool, DateFormat dateFormat) {
        super(cls);
    }
}
