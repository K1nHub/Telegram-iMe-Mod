package com.fasterxml.jackson.databind.ser.std;
/* loaded from: classes.dex */
public abstract class NonTypedScalarSerializerBase<T> extends StdScalarSerializer<T> {
    /* JADX INFO: Access modifiers changed from: protected */
    public NonTypedScalarSerializerBase(Class<T> cls) {
        super(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NonTypedScalarSerializerBase(Class<?> cls, boolean z) {
        super(cls, z);
    }
}
