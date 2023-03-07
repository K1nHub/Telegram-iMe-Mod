package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class BasicBeanDescription extends BeanDescription {
    protected final MapperConfig<?> _config;
    protected List<Object> _properties;

    protected BasicBeanDescription(MapperConfig<?> mapperConfig, JavaType javaType, AnnotatedClass annotatedClass, List<Object> list) {
        super(javaType);
        this._config = mapperConfig;
        if (mapperConfig != null) {
            mapperConfig.getAnnotationIntrospector();
        }
        this._properties = list;
    }

    public static BasicBeanDescription forOtherUse(MapperConfig<?> mapperConfig, JavaType javaType, AnnotatedClass annotatedClass) {
        return new BasicBeanDescription(mapperConfig, javaType, annotatedClass, Collections.emptyList());
    }
}
