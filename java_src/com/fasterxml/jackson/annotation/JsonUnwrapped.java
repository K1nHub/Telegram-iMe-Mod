package com.fasterxml.jackson.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* JADX WARN: Method from annotation default annotation not found: enabled */
/* JADX WARN: Method from annotation default annotation not found: prefix */
/* JADX WARN: Method from annotation default annotation not found: suffix */
@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonUnwrapped {
}
