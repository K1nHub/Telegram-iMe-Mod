package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
final class zztu extends zztx {
    private final int zzbow;
    private final int zzbox;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztu(byte[] bArr, int i, int i2) {
        super(bArr);
        zztn.zzc(i, i + i2, bArr.length);
        this.zzbow = i;
        this.zzbox = i2;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztx, com.google.android.gms.internal.firebase_ml.zztn
    public final byte zzcm(int i) {
        int size = size();
        if (((size - (i + 1)) | i) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(22);
                sb.append("Index < 0: ");
                sb.append(i);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Index > length: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(size);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        return this.bytes[this.zzbow + i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zztx, com.google.android.gms.internal.firebase_ml.zztn
    public final byte zzcn(int i) {
        return this.bytes[this.zzbow + i];
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztx, com.google.android.gms.internal.firebase_ml.zztn
    public final int size() {
        return this.zzbox;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztx
    protected final int zzqh() {
        return this.zzbow;
    }
}
