package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.type.ResolvedType;
import java.io.Serializable;
import java.lang.reflect.Type;
/* loaded from: classes.dex */
public abstract class JavaType extends ResolvedType implements Serializable, Type {
    protected final Class<?> _class;
    protected final int _hash;
    protected final Object _typeHandler;
    protected final Object _valueHandler;

    public abstract boolean equals(Object obj);

    public abstract StringBuilder getGenericSignature(StringBuilder sb);

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType(Class<?> cls, int i, Object obj, Object obj2, boolean z) {
        this._class = cls;
        this._hash = cls.getName().hashCode() + i;
        this._valueHandler = obj;
        this._typeHandler = obj2;
    }

    public final Class<?> getRawClass() {
        return this._class;
    }

    public String getGenericSignature() {
        StringBuilder sb = new StringBuilder(40);
        getGenericSignature(sb);
        return sb.toString();
    }

    public final int hashCode() {
        return this._hash;
    }
}
