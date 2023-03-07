package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.io.Serializable;
/* loaded from: classes.dex */
public class BasicClassIntrospector extends ClassIntrospector implements Serializable {
    static {
        BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(String.class), AnnotatedClass.constructWithoutSuperTypes(String.class, null));
        Class cls = Boolean.TYPE;
        BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls), AnnotatedClass.constructWithoutSuperTypes(cls, null));
        Class cls2 = Integer.TYPE;
        BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls2), AnnotatedClass.constructWithoutSuperTypes(cls2, null));
        Class cls3 = Long.TYPE;
        BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(cls3), AnnotatedClass.constructWithoutSuperTypes(cls3, null));
        new BasicClassIntrospector();
    }

    public BasicClassIntrospector() {
        new LRUMap(16, 64);
    }
}
