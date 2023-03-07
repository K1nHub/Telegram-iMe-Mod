package com.google.firebase.p021ml.custom;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.p021ml.common.FirebaseMLException;
/* renamed from: com.google.firebase.ml.custom.FirebaseModelDataType */
/* loaded from: classes3.dex */
public final class FirebaseModelDataType {
    public static int zzm(Object obj) throws FirebaseMLException {
        Preconditions.checkNotNull(obj, "Input Object can not be null");
        Preconditions.checkArgument(obj.getClass().isArray(), "Input Object should be an array");
        Class<?> cls = obj.getClass();
        while (cls.isArray()) {
            cls = cls.getComponentType();
        }
        if (Float.TYPE.equals(cls)) {
            return 1;
        }
        if (Integer.TYPE.equals(cls)) {
            return 2;
        }
        if (Byte.TYPE.equals(cls)) {
            return 3;
        }
        if (Long.TYPE.equals(cls)) {
            return 4;
        }
        String valueOf = String.valueOf(cls.getCanonicalName());
        throw new FirebaseMLException(valueOf.length() != 0 ? "Not supported primitive type : ".concat(valueOf) : new String("Not supported primitive type : "), 3);
    }
}
