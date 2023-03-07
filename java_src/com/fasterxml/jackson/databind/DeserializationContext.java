package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.deser.DeserializerCache;
import com.fasterxml.jackson.databind.deser.DeserializerFactory;
import java.io.Serializable;
/* loaded from: classes.dex */
public abstract class DeserializationContext extends DatabindContext implements Serializable {
    /* JADX INFO: Access modifiers changed from: protected */
    public DeserializationContext(DeserializerFactory deserializerFactory, DeserializerCache deserializerCache) {
        if (deserializerFactory == null) {
            throw new IllegalArgumentException("Can not pass null DeserializerFactory");
        }
        if (deserializerCache == null) {
            new DeserializerCache();
        }
    }
}
