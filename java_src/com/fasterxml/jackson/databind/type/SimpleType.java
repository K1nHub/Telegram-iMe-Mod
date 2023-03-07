package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
/* loaded from: classes.dex */
public class SimpleType extends TypeBase {
    /* JADX INFO: Access modifiers changed from: protected */
    public SimpleType(Class<?> cls) {
        this(cls, TypeBindings.emptyBindings(), null, null);
    }

    protected SimpleType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        this(cls, typeBindings, javaType, javaTypeArr, null, null, false);
    }

    protected SimpleType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, Object obj, Object obj2, boolean z) {
        super(cls, typeBindings, javaType, javaTypeArr, 0, obj, obj2, z);
    }

    public static SimpleType constructUnsafe(Class<?> cls) {
        return new SimpleType(cls, null, null, null, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    protected String buildCanonicalName() {
        StringBuilder sb = new StringBuilder();
        sb.append(this._class.getName());
        int size = this._bindings.size();
        if (size > 0) {
            sb.append('<');
            for (int i = 0; i < size; i++) {
                JavaType containedType = containedType(i);
                if (i > 0) {
                    sb.append(',');
                }
                sb.append(containedType.toCanonical());
            }
            sb.append('>');
        }
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        TypeBase._classSignature(this._class, sb, false);
        int size = this._bindings.size();
        if (size > 0) {
            sb.append('<');
            for (int i = 0; i < size; i++) {
                sb = containedType(i).getGenericSignature(sb);
            }
            sb.append('>');
        }
        sb.append(';');
        return sb;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("[simple type, class ");
        sb.append(buildCanonicalName());
        sb.append(']');
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == SimpleType.class) {
            SimpleType simpleType = (SimpleType) obj;
            if (simpleType._class != this._class) {
                return false;
            }
            return this._bindings.equals(simpleType._bindings);
        }
        return false;
    }
}
