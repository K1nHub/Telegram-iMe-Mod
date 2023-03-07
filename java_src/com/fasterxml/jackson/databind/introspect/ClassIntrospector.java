package com.fasterxml.jackson.databind.introspect;
/* loaded from: classes.dex */
public abstract class ClassIntrospector {

    /* loaded from: classes.dex */
    public interface MixInResolver {
        Class<?> findMixInClassFor(Class<?> cls);
    }
}
