package com.fasterxml.jackson.databind.ser.std;
/* loaded from: classes.dex */
public class ToStringSerializer extends StdSerializer<Object> {
    public static final ToStringSerializer instance = new ToStringSerializer();

    public ToStringSerializer() {
        super(Object.class);
    }
}
