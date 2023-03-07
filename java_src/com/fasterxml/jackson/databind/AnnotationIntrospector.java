package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector;
import java.io.Serializable;
import java.lang.annotation.Annotation;
/* loaded from: classes.dex */
public abstract class AnnotationIntrospector implements Serializable {
    public boolean isAnnotationBundle(Annotation annotation) {
        return false;
    }

    public static AnnotationIntrospector nopInstance() {
        return NopAnnotationIntrospector.instance;
    }
}
