package com.google.android.gms.internal.mlkit_common;

import java.util.Arrays;
import java.util.Objects;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public final class zzan extends zzak {
    public zzan() {
        super(4);
    }

    public final zzaq zzc() {
        this.zzc = true;
        return zzaq.zzg(this.zza, this.zzb);
    }

    public final zzan zzb(Object obj) {
        Objects.requireNonNull(obj);
        int i = this.zzb + 1;
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (length < i) {
            this.zza = Arrays.copyOf(objArr, zzal.zza(length, i));
            this.zzc = false;
        } else if (this.zzc) {
            this.zza = (Object[]) objArr.clone();
            this.zzc = false;
        }
        Object[] objArr2 = this.zza;
        int i2 = this.zzb;
        this.zzb = i2 + 1;
        objArr2[i2] = obj;
        return this;
    }
}
