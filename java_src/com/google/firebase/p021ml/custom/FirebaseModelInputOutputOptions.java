package com.google.firebase.p021ml.custom;

import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzpp;
import com.google.firebase.p021ml.common.FirebaseMLException;
import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* renamed from: com.google.firebase.ml.custom.FirebaseModelInputOutputOptions */
/* loaded from: classes3.dex */
public final class FirebaseModelInputOutputOptions {
    private final SparseArray<zzpp> zzaxa;
    private final SparseArray<zzpp> zzaxb;

    private FirebaseModelInputOutputOptions(SparseArray<zzpp> sparseArray, SparseArray<zzpp> sparseArray2) throws FirebaseMLException {
        Preconditions.checkNotNull(sparseArray, "Input formats can not be null");
        Preconditions.checkNotNull(sparseArray2, "Output formats can not be null");
        int size = sparseArray.size();
        if (size == 0) {
            throw new FirebaseMLException("Model input data formats must be specified and cannot be empty.", 3);
        }
        for (int i = 0; i < size; i++) {
            int keyAt = sparseArray.keyAt(i);
            if (keyAt < 0 || keyAt >= size) {
                throw new FirebaseMLException(String.format(Locale.US, "Model input index (%d) is outside range [0, %d]", Integer.valueOf(keyAt), Integer.valueOf(size - 1)), 11);
            }
        }
        this.zzaxa = sparseArray;
        if (sparseArray2.size() == 0) {
            throw new FirebaseMLException("Model output data formats must be specified and cannot be empty.", 3);
        }
        this.zzaxb = sparseArray2;
    }

    /* renamed from: com.google.firebase.ml.custom.FirebaseModelInputOutputOptions$Builder */
    /* loaded from: classes3.dex */
    public static class Builder {
        private SparseArray<zzpp> zzaxa = new SparseArray<>();
        private SparseArray<zzpp> zzaxb = new SparseArray<>();

        public Builder setInputFormat(int i, int i2, int[] iArr) {
            StringBuilder sb = new StringBuilder(51);
            sb.append("Input dimension can not be null, index: ");
            sb.append(i);
            Preconditions.checkNotNull(iArr, sb.toString());
            this.zzaxa.put(i, new zzpp(i2, iArr));
            return this;
        }

        public Builder setOutputFormat(int i, int i2, int[] iArr) {
            StringBuilder sb = new StringBuilder(52);
            sb.append("Output dimension can not be null, index: ");
            sb.append(i);
            Preconditions.checkNotNull(iArr, sb.toString());
            this.zzaxb.put(i, new zzpp(i2, iArr));
            return this;
        }

        public FirebaseModelInputOutputOptions build() throws FirebaseMLException {
            return new FirebaseModelInputOutputOptions(this.zzaxa, this.zzaxb);
        }
    }

    public final SparseArray<zzpp> zzmr() {
        return this.zzaxa;
    }

    public final SparseArray<zzpp> zzms() {
        return this.zzaxb;
    }

    public final Map<Integer, Object> zzmt() throws FirebaseMLException {
        Class cls;
        int size = this.zzaxb.size();
        HashMap hashMap = new HashMap(size);
        for (int i = 0; i < size; i++) {
            int keyAt = this.zzaxb.keyAt(i);
            int type = this.zzaxb.get(keyAt).getType();
            if (type == 1) {
                cls = Float.TYPE;
            } else if (type == 2) {
                cls = Integer.TYPE;
            } else if (type == 3) {
                cls = Byte.TYPE;
            } else if (type == 4) {
                cls = Long.TYPE;
            } else {
                StringBuilder sb = new StringBuilder(36);
                sb.append("Not supported data type: ");
                sb.append(type);
                throw new FirebaseMLException(sb.toString(), 3);
            }
            hashMap.put(Integer.valueOf(keyAt), Array.newInstance(cls, this.zzaxb.get(keyAt).zzmy()));
        }
        return hashMap;
    }
}
