package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* JADX WARN: Method from annotation default annotation not found: defaultImpl */
/* JADX WARN: Method from annotation default annotation not found: include */
/* JADX WARN: Method from annotation default annotation not found: property */
/* JADX WARN: Method from annotation default annotation not found: visible */
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonTypeInfo {

    /* renamed from: com.fasterxml.jackson.annotation.JsonTypeInfo$As */
    /* loaded from: classes.dex */
    public enum EnumC0457As {
        PROPERTY,
        WRAPPER_OBJECT,
        WRAPPER_ARRAY,
        EXTERNAL_PROPERTY,
        EXISTING_PROPERTY
    }
}
