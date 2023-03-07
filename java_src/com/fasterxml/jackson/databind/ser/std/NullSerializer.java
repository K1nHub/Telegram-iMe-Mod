package com.fasterxml.jackson.databind.ser.std;
/* loaded from: classes.dex */
public class NullSerializer extends StdSerializer<Object> {
    public static final NullSerializer instance = new NullSerializer();

    private NullSerializer() {
        super(Object.class);
    }
}
