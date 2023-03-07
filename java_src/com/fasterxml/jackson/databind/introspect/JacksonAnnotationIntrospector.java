package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JacksonAnnotationsInside;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.ext.Java7Support;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.lang.annotation.Annotation;
/* loaded from: classes.dex */
public class JacksonAnnotationIntrospector extends AnnotationIntrospector {
    protected transient LRUMap<Class<?>, Boolean> _annotationsInside = new LRUMap<>(48, 48);

    static {
        try {
            Java7Support.instance();
        } catch (Throwable unused) {
        }
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector
    public boolean isAnnotationBundle(Annotation annotation) {
        Class<? extends Annotation> annotationType = annotation.annotationType();
        Boolean bool = this._annotationsInside.get(annotationType);
        if (bool == null) {
            bool = Boolean.valueOf(annotationType.getAnnotation(JacksonAnnotationsInside.class) != null);
            this._annotationsInside.putIfAbsent(annotationType, bool);
        }
        return bool.booleanValue();
    }
}
