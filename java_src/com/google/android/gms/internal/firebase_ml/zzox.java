package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.firebase.p021ml.common.modeldownload.FirebaseModelDownloadConditions;
import com.google.firebase.p021ml.common.modeldownload.FirebaseRemoteModel;
/* loaded from: classes.dex */
public final class zzox {
    public static zzlu.zzy zza(FirebaseRemoteModel firebaseRemoteModel, zzor zzorVar) {
        String modelHash = firebaseRemoteModel.getModelHash();
        zzlu.zzx.zzb zzly = zzorVar.zzly();
        zzlu.zzy.zza zzb = zzlu.zzy.zzjw().zza(zza(firebaseRemoteModel.getInitialDownloadConditions())).zzb(zza(firebaseRemoteModel.getUpdatesDownloadConditions()));
        zzlu.zzx.zza zza = zzlu.zzx.zzju().zzaz(firebaseRemoteModel.getModelNameForBackend()).zza(zzlu.zzx.zzc.CLOUD);
        if (modelHash == null) {
            modelHash = "";
        }
        return (zzlu.zzy) ((zzuu) zzb.zza(zza.zzbb(modelHash).zza(zzly)).zzt(firebaseRemoteModel.isModelUpdatesEnabled()).zzrq());
    }

    private static zzlu.zzy.zzb zza(FirebaseModelDownloadConditions firebaseModelDownloadConditions) {
        return (zzlu.zzy.zzb) ((zzuu) zzlu.zzy.zzb.zzjz().zzv(firebaseModelDownloadConditions.isChargingRequired()).zzx(firebaseModelDownloadConditions.isDeviceIdleRequired()).zzw(firebaseModelDownloadConditions.isWifiRequired()).zzrq());
    }
}
