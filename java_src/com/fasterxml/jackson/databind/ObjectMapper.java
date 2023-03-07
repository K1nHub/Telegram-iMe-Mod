package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.ConfigOverrides;
import com.fasterxml.jackson.databind.deser.BeanDeserializerFactory;
import com.fasterxml.jackson.databind.deser.DefaultDeserializationContext;
import com.fasterxml.jackson.databind.introspect.BasicClassIntrospector;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.impl.StdSubtypeResolver;
import com.fasterxml.jackson.databind.ser.BeanSerializerFactory;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.io.Serializable;
import java.util.Locale;
import p034j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class ObjectMapper extends ObjectCodec implements Serializable {
    protected static final AnnotationIntrospector DEFAULT_ANNOTATION_INTROSPECTOR;
    protected static final BaseSettings DEFAULT_BASE;
    protected static final VisibilityChecker<?> STD_VISIBILITY_CHECKER;
    protected DeserializationConfig _deserializationConfig;
    protected final JsonFactory _jsonFactory;
    protected SerializationConfig _serializationConfig;
    protected SubtypeResolver _subtypeResolver;

    static {
        SimpleType.constructUnsafe(JsonNode.class);
        JacksonAnnotationIntrospector jacksonAnnotationIntrospector = new JacksonAnnotationIntrospector();
        DEFAULT_ANNOTATION_INTROSPECTOR = jacksonAnnotationIntrospector;
        VisibilityChecker.Std defaultInstance = VisibilityChecker.Std.defaultInstance();
        STD_VISIBILITY_CHECKER = defaultInstance;
        DEFAULT_BASE = new BaseSettings(null, jacksonAnnotationIntrospector, defaultInstance, null, TypeFactory.defaultInstance(), null, StdDateFormat.instance, null, Locale.getDefault(), null, Base64Variants.getDefaultVariant());
    }

    public ObjectMapper() {
        this(null, null, null);
    }

    public ObjectMapper(JsonFactory jsonFactory) {
        this(jsonFactory, null, null);
    }

    public ObjectMapper(JsonFactory jsonFactory, DefaultSerializerProvider defaultSerializerProvider, DefaultDeserializationContext defaultDeserializationContext) {
        new ConcurrentHashMap(64, 0.6f, 2);
        if (jsonFactory == null) {
            this._jsonFactory = new MappingJsonFactory(this);
        } else {
            this._jsonFactory = jsonFactory;
            if (jsonFactory.getCodec() == null) {
                jsonFactory.setCodec(this);
            }
        }
        this._subtypeResolver = new StdSubtypeResolver();
        RootNameLookup rootNameLookup = new RootNameLookup();
        TypeFactory.defaultInstance();
        SimpleMixInResolver simpleMixInResolver = new SimpleMixInResolver(null);
        BaseSettings withClassIntrospector = DEFAULT_BASE.withClassIntrospector(defaultClassIntrospector());
        ConfigOverrides configOverrides = new ConfigOverrides();
        this._serializationConfig = new SerializationConfig(withClassIntrospector, this._subtypeResolver, simpleMixInResolver, rootNameLookup, configOverrides);
        this._deserializationConfig = new DeserializationConfig(withClassIntrospector, this._subtypeResolver, simpleMixInResolver, rootNameLookup, configOverrides);
        boolean requiresPropertyOrdering = this._jsonFactory.requiresPropertyOrdering();
        SerializationConfig serializationConfig = this._serializationConfig;
        MapperFeature mapperFeature = MapperFeature.SORT_PROPERTIES_ALPHABETICALLY;
        if (serializationConfig.isEnabled(mapperFeature) ^ requiresPropertyOrdering) {
            configure(mapperFeature, requiresPropertyOrdering);
        }
        if (defaultSerializerProvider == null) {
            new DefaultSerializerProvider.Impl();
        }
        if (defaultDeserializationContext == null) {
            new DefaultDeserializationContext.Impl(BeanDeserializerFactory.instance);
        }
        BeanSerializerFactory beanSerializerFactory = BeanSerializerFactory.instance;
    }

    protected ClassIntrospector defaultClassIntrospector() {
        return new BasicClassIntrospector();
    }

    public ObjectMapper configure(MapperFeature mapperFeature, boolean z) {
        this._serializationConfig = z ? this._serializationConfig.with(mapperFeature) : this._serializationConfig.without(mapperFeature);
        this._deserializationConfig = z ? this._deserializationConfig.with(mapperFeature) : this._deserializationConfig.without(mapperFeature);
        return this;
    }

    public ObjectMapper configure(DeserializationFeature deserializationFeature, boolean z) {
        this._deserializationConfig = z ? this._deserializationConfig.with(deserializationFeature) : this._deserializationConfig.without(deserializationFeature);
        return this;
    }

    public ObjectMapper configure(JsonParser.Feature feature, boolean z) {
        this._jsonFactory.configure(feature, z);
        return this;
    }
}
