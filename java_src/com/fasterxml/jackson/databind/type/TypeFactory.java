package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.io.Serializable;
/* loaded from: classes.dex */
public final class TypeFactory implements Serializable {
    private static final Class<?> CLS_BOOL;
    private static final Class<?> CLS_CLASS;
    private static final Class<?> CLS_COMPARABLE;
    private static final Class<?> CLS_ENUM;
    private static final Class<?> CLS_INT;
    private static final Class<?> CLS_LONG;
    private static final Class<?> CLS_OBJECT;
    private static final Class<?> CLS_STRING;
    protected static final TypeFactory instance = new TypeFactory();

    static {
        TypeBindings.emptyBindings();
        CLS_STRING = String.class;
        CLS_OBJECT = Object.class;
        CLS_COMPARABLE = Comparable.class;
        CLS_CLASS = Class.class;
        CLS_ENUM = Enum.class;
        Class<?> cls = Boolean.TYPE;
        CLS_BOOL = cls;
        Class<?> cls2 = Integer.TYPE;
        CLS_INT = cls2;
        Class<?> cls3 = Long.TYPE;
        CLS_LONG = cls3;
        new SimpleType(cls);
        new SimpleType(cls2);
        new SimpleType(cls3);
        new SimpleType(String.class);
        new SimpleType(Object.class);
        new SimpleType(Comparable.class);
        new SimpleType(Enum.class);
        new SimpleType(Class.class);
    }

    private TypeFactory() {
        this(null);
    }

    protected TypeFactory(LRUMap<Object, JavaType> lRUMap) {
        if (lRUMap == null) {
            new LRUMap(16, 200);
        }
        new TypeParser(this);
    }

    public static TypeFactory defaultInstance() {
        return instance;
    }
}
