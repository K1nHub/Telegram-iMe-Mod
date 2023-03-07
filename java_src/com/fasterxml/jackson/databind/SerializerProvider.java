package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.ser.SerializerCache;
import com.fasterxml.jackson.databind.ser.impl.FailingSerializer;
import com.fasterxml.jackson.databind.ser.impl.UnknownSerializer;
import com.fasterxml.jackson.databind.ser.std.NullSerializer;
/* loaded from: classes.dex */
public abstract class SerializerProvider extends DatabindContext {
    public static final JsonSerializer<Object> DEFAULT_NULL_KEY_SERIALIZER = new FailingSerializer("Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)");
    protected static final JsonSerializer<Object> DEFAULT_UNKNOWN_SERIALIZER = new UnknownSerializer();

    public SerializerProvider() {
        NullSerializer nullSerializer = NullSerializer.instance;
        new SerializerCache();
    }
}
