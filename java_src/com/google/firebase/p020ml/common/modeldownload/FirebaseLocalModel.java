package com.google.firebase.p020ml.common.modeldownload;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.internal.firebase_ml.zzor;
import com.google.android.gms.internal.firebase_ml.zzuu;
/* renamed from: com.google.firebase.ml.common.modeldownload.FirebaseLocalModel */
/* loaded from: classes3.dex */
public class FirebaseLocalModel {
    private final String zzauc;
    private final String zzawg;
    private final String zzawh;

    public final String getModelName() {
        return this.zzauc;
    }

    @KeepForSdk
    public String getFilePath() {
        return this.zzawg;
    }

    @KeepForSdk
    public String getAssetFilePath() {
        return this.zzawh;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof FirebaseLocalModel) {
            FirebaseLocalModel firebaseLocalModel = (FirebaseLocalModel) obj;
            return Objects.equal(this.zzauc, firebaseLocalModel.zzauc) && Objects.equal(this.zzawg, firebaseLocalModel.zzawg) && Objects.equal(this.zzawh, firebaseLocalModel.zzawh);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.zzauc, this.zzawg, this.zzawh);
    }

    public final zzlu.zzy zza(zzor zzorVar) {
        zzlu.zzx.zzc zzcVar;
        zzlu.zzy.zza zzjw = zzlu.zzy.zzjw();
        zzlu.zzx.zza zza = zzlu.zzx.zzju().zza(zzorVar.zzly());
        String str = this.zzawg;
        if (str == null) {
            str = this.zzawh;
        }
        zzlu.zzx.zza zzba = zza.zzba(str);
        if (this.zzawg != null) {
            zzcVar = zzlu.zzx.zzc.LOCAL;
        } else if (this.zzawh != null) {
            zzcVar = zzlu.zzx.zzc.APP_ASSET;
        } else {
            zzcVar = zzlu.zzx.zzc.SOURCE_UNKNOWN;
        }
        return (zzlu.zzy) ((zzuu) zzjw.zza(zzba.zza(zzcVar)).zzrq());
    }
}
