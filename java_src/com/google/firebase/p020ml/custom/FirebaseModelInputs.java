package com.google.firebase.p020ml.custom;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzps;
import com.google.firebase.p020ml.common.FirebaseMLException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.firebase.ml.custom.FirebaseModelInputs */
/* loaded from: classes4.dex */
public final class FirebaseModelInputs {
    private final Object[] zzaxc;

    public final Object[] zzmu() {
        return this.zzaxc;
    }

    private FirebaseModelInputs(List<Object> list) {
        this.zzaxc = list.toArray(new Object[list.size()]);
    }

    /* renamed from: com.google.firebase.ml.custom.FirebaseModelInputs$Builder */
    /* loaded from: classes4.dex */
    public static class Builder {
        private List<Object> zzaxf = new ArrayList();

        public Builder add(Object obj) throws FirebaseMLException {
            Preconditions.checkNotNull(obj, "Please use a valid (non-null) ByteBuffer, array, or multidimensional array as input.");
            Preconditions.checkArgument(obj.getClass().isArray() || (obj instanceof ByteBuffer), "The input object should be ByteBuffer, array, or multidimensional array");
            boolean z = obj instanceof ByteBuffer;
            if (z) {
                Preconditions.checkNotNull(obj, "Input Object can not be null");
                if (z) {
                    ByteBuffer byteBuffer = (ByteBuffer) obj;
                    if (byteBuffer.order() != ByteOrder.nativeOrder()) {
                        throw new FirebaseMLException("Input Bytebuffers should use native order", 3);
                    }
                    if (!byteBuffer.isDirect()) {
                        throw new FirebaseMLException("Input ByteBuffer should be direct ByteBuffer", 3);
                    }
                } else {
                    throw new FirebaseMLException("Input Object should be a ByteBuffer", 3);
                }
            } else {
                if (obj.getClass().isArray()) {
                    zzps.zza(obj, zzps.zzn(obj), FirebaseModelDataType.zzm(obj));
                }
                return this;
            }
            this.zzaxf.add(obj);
            return this;
        }

        public FirebaseModelInputs build() {
            return new FirebaseModelInputs(this.zzaxf);
        }
    }
}
