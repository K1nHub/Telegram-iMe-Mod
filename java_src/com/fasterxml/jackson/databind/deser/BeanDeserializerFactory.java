package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
/* loaded from: classes.dex */
public class BeanDeserializerFactory extends BasicDeserializerFactory {
    public static final BeanDeserializerFactory instance = new BeanDeserializerFactory(new DeserializerFactoryConfig());

    public BeanDeserializerFactory(DeserializerFactoryConfig deserializerFactoryConfig) {
        super(deserializerFactoryConfig);
    }
}
