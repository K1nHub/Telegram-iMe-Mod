package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class AnnotatedClass extends Annotated {
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final Class<?> _class;
    protected final ClassIntrospector.MixInResolver _mixInResolver;
    protected final Class<?> _primaryMixIn;
    protected final List<JavaType> _superTypes;

    private AnnotatedClass(JavaType javaType, Class<?> cls, TypeBindings typeBindings, List<JavaType> list, AnnotationIntrospector annotationIntrospector, ClassIntrospector.MixInResolver mixInResolver, TypeFactory typeFactory) {
        this._class = cls;
        this._superTypes = list;
        this._annotationIntrospector = annotationIntrospector;
        this._mixInResolver = mixInResolver;
        this._primaryMixIn = mixInResolver == null ? null : mixInResolver.findMixInClassFor(cls);
        _resolveClassAnnotations();
    }

    public static AnnotatedClass constructWithoutSuperTypes(Class<?> cls, MapperConfig<?> mapperConfig) {
        if (mapperConfig == null) {
            return new AnnotatedClass(null, cls, TypeBindings.emptyBindings(), Collections.emptyList(), null, null, null);
        }
        return new AnnotatedClass(null, cls, TypeBindings.emptyBindings(), Collections.emptyList(), mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null, mapperConfig, mapperConfig.getTypeFactory());
    }

    private AnnotationMap _resolveClassAnnotations() {
        AnnotationMap annotationMap = new AnnotationMap();
        if (this._annotationIntrospector != null) {
            Class<?> cls = this._primaryMixIn;
            if (cls != null) {
                _addClassMixIns(annotationMap, this._class, cls);
            }
            _addAnnotationsIfNotPresent(annotationMap, ClassUtil.findClassAnnotations(this._class));
            for (JavaType javaType : this._superTypes) {
                _addClassMixIns(annotationMap, javaType);
                _addAnnotationsIfNotPresent(annotationMap, ClassUtil.findClassAnnotations(javaType.getRawClass()));
            }
            _addClassMixIns(annotationMap, Object.class);
        }
        return annotationMap;
    }

    protected void _addClassMixIns(AnnotationMap annotationMap, JavaType javaType) {
        if (this._mixInResolver != null) {
            Class<?> rawClass = javaType.getRawClass();
            _addClassMixIns(annotationMap, rawClass, this._mixInResolver.findMixInClassFor(rawClass));
        }
    }

    protected void _addClassMixIns(AnnotationMap annotationMap, Class<?> cls) {
        ClassIntrospector.MixInResolver mixInResolver = this._mixInResolver;
        if (mixInResolver != null) {
            _addClassMixIns(annotationMap, cls, mixInResolver.findMixInClassFor(cls));
        }
    }

    protected void _addClassMixIns(AnnotationMap annotationMap, Class<?> cls, Class<?> cls2) {
        if (cls2 == null) {
            return;
        }
        _addAnnotationsIfNotPresent(annotationMap, ClassUtil.findClassAnnotations(cls2));
        for (Class<?> cls3 : ClassUtil.findSuperClasses(cls2, cls, false)) {
            _addAnnotationsIfNotPresent(annotationMap, ClassUtil.findClassAnnotations(cls3));
        }
    }

    private AnnotationMap _addAnnotationsIfNotPresent(AnnotationMap annotationMap, Annotation[] annotationArr) {
        if (annotationArr != null) {
            List<Annotation> list = null;
            for (Annotation annotation : annotationArr) {
                if (annotationMap.addIfNotPresent(annotation) && _isAnnotationBundle(annotation)) {
                    list = _addFromBundle(annotation, list);
                }
            }
            if (list != null) {
                _addAnnotationsIfNotPresent(annotationMap, (Annotation[]) list.toArray(new Annotation[list.size()]));
            }
        }
        return annotationMap;
    }

    private List<Annotation> _addFromBundle(Annotation annotation, List<Annotation> list) {
        Annotation[] findClassAnnotations;
        for (Annotation annotation2 : ClassUtil.findClassAnnotations(annotation.annotationType())) {
            if (!(annotation2 instanceof Target) && !(annotation2 instanceof Retention)) {
                if (list == null) {
                    list = new ArrayList<>();
                }
                list.add(annotation2);
            }
        }
        return list;
    }

    private final boolean _isAnnotationBundle(Annotation annotation) {
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        return annotationIntrospector != null && annotationIntrospector.isAnnotationBundle(annotation);
    }

    public String toString() {
        return "[AnnotedClass " + this._class.getName() + "]";
    }

    public int hashCode() {
        return this._class.getName().hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass() == AnnotatedClass.class && ((AnnotatedClass) obj)._class == this._class;
    }
}
