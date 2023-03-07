package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zztx extends zzty {
    protected final byte[] bytes;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztx(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.bytes = bArr;
    }

    protected int zzqh() {
        return 0;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztn
    public byte zzcm(int i) {
        return this.bytes[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zztn
    public byte zzcn(int i) {
        return this.bytes[i];
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztn
    public int size() {
        return this.bytes.length;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztn
    public final zztn zzg(int i, int i2) {
        int zzc = zztn.zzc(0, i2, size());
        if (zzc == 0) {
            return zztn.zzbos;
        }
        return new zztu(this.bytes, zzqh(), zzc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_ml.zztn
    public final void zza(zzto zztoVar) throws IOException {
        zztoVar.zzc(this.bytes, zzqh(), size());
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztn
    protected final String zzb(Charset charset) {
        return new String(this.bytes, zzqh(), size(), charset);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztn
    public final boolean zzqf() {
        int zzqh = zzqh();
        return zzxv.zzf(this.bytes, zzqh, size() + zzqh);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztn
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zztn) && size() == ((zztn) obj).size()) {
            if (size() == 0) {
                return true;
            }
            if (obj instanceof zztx) {
                zztx zztxVar = (zztx) obj;
                int zzqg = zzqg();
                int zzqg2 = zztxVar.zzqg();
                if (zzqg == 0 || zzqg2 == 0 || zzqg == zzqg2) {
                    return zza(zztxVar, 0, size());
                }
                return false;
            }
            return obj.equals(this);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzty
    final boolean zza(zztn zztnVar, int i, int i2) {
        if (i2 > zztnVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > zztnVar.size()) {
            int size2 = zztnVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (zztnVar instanceof zztx) {
            zztx zztxVar = (zztx) zztnVar;
            byte[] bArr = this.bytes;
            byte[] bArr2 = zztxVar.bytes;
            int zzqh = zzqh() + i2;
            int zzqh2 = zzqh();
            int zzqh3 = zztxVar.zzqh();
            while (zzqh2 < zzqh) {
                if (bArr[zzqh2] != bArr2[zzqh3]) {
                    return false;
                }
                zzqh2++;
                zzqh3++;
            }
            return true;
        } else {
            return zztnVar.zzg(0, i2).equals(zzg(0, i2));
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztn
    protected final int zzb(int i, int i2, int i3) {
        return zzuw.zza(i, this.bytes, zzqh(), i3);
    }
}
