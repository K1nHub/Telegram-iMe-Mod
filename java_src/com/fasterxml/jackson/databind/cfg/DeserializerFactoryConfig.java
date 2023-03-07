package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.databind.AbstractTypeResolver;
import com.fasterxml.jackson.databind.deser.BeanDeserializerModifier;
import com.fasterxml.jackson.databind.deser.Deserializers;
import com.fasterxml.jackson.databind.deser.KeyDeserializers;
import com.fasterxml.jackson.databind.deser.ValueInstantiators;
import com.fasterxml.jackson.databind.deser.std.StdKeyDeserializers;
import java.io.Serializable;
/* loaded from: classes.dex */
public class DeserializerFactoryConfig implements Serializable {
    protected static final Deserializers[] NO_DESERIALIZERS = new Deserializers[0];
    protected static final BeanDeserializerModifier[] NO_MODIFIERS = new BeanDeserializerModifier[0];
    protected static final AbstractTypeResolver[] NO_ABSTRACT_TYPE_RESOLVERS = new AbstractTypeResolver[0];
    protected static final ValueInstantiators[] NO_VALUE_INSTANTIATORS = new ValueInstantiators[0];
    protected static final KeyDeserializers[] DEFAULT_KEY_DESERIALIZERS = {new StdKeyDeserializers()};

    public DeserializerFactoryConfig() {
        this(null, null, null, null, null);
    }

    protected DeserializerFactoryConfig(Deserializers[] deserializersArr, KeyDeserializers[] keyDeserializersArr, BeanDeserializerModifier[] beanDeserializerModifierArr, AbstractTypeResolver[] abstractTypeResolverArr, ValueInstantiators[] valueInstantiatorsArr) {
    }
}
