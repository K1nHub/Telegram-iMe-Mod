package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig;
/* loaded from: classes.dex */
public class BeanSerializerFactory extends BasicSerializerFactory {
    public static final BeanSerializerFactory instance = new BeanSerializerFactory(null);

    protected BeanSerializerFactory(SerializerFactoryConfig serializerFactoryConfig) {
        super(serializerFactoryConfig);
    }
}
