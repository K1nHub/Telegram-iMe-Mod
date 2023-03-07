package com.fasterxml.jackson.databind.ser.std;

import java.util.UUID;
/* loaded from: classes.dex */
public class UUIDSerializer extends StdScalarSerializer<UUID> {
    static {
        "0123456789abcdef".toCharArray();
    }

    public UUIDSerializer() {
        super(UUID.class);
    }
}
