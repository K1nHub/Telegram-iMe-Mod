package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.databind.ser.std.StdSerializer;
/* loaded from: classes.dex */
public class FailingSerializer extends StdSerializer<Object> {
    public FailingSerializer(String str) {
        super(Object.class);
    }
}
