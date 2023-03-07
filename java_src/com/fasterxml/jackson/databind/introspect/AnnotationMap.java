package com.fasterxml.jackson.databind.introspect;

import java.lang.annotation.Annotation;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class AnnotationMap {
    protected HashMap<Class<?>, Annotation> _annotations;

    public boolean addIfNotPresent(Annotation annotation) {
        HashMap<Class<?>, Annotation> hashMap = this._annotations;
        if (hashMap == null || !hashMap.containsKey(annotation.annotationType())) {
            _add(annotation);
            return true;
        }
        return false;
    }

    public String toString() {
        HashMap<Class<?>, Annotation> hashMap = this._annotations;
        return hashMap == null ? "[null]" : hashMap.toString();
    }

    protected final boolean _add(Annotation annotation) {
        if (this._annotations == null) {
            this._annotations = new HashMap<>();
        }
        Annotation put = this._annotations.put(annotation.annotationType(), annotation);
        return put == null || !put.equals(annotation);
    }
}
