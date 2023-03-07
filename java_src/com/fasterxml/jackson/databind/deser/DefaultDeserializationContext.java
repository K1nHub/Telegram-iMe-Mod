package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.DeserializationContext;
/* loaded from: classes.dex */
public abstract class DefaultDeserializationContext extends DeserializationContext {
    protected DefaultDeserializationContext(DeserializerFactory deserializerFactory, DeserializerCache deserializerCache) {
        super(deserializerFactory, deserializerCache);
    }

    /* loaded from: classes.dex */
    public static final class Impl extends DefaultDeserializationContext {
        public Impl(DeserializerFactory deserializerFactory) {
            super(deserializerFactory, null);
        }
    }
}
