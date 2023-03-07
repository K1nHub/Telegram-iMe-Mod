package com.fasterxml.jackson.databind.ser.std;
/* loaded from: classes.dex */
public class NumberSerializer extends StdScalarSerializer<Number> {
    static {
        new NumberSerializer(Number.class);
    }

    public NumberSerializer(Class<? extends Number> cls) {
        super(cls, false);
    }
}
