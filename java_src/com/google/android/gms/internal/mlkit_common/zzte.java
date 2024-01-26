package com.google.android.gms.internal.mlkit_common;

import android.os.SystemClock;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.mlkit.common.model.RemoteModel;
import com.google.mlkit.common.sdkinternal.ModelType;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public final class zzte {
    private static final GmsLogger zza = new GmsLogger("RemoteModelUtils", "");

    public static zznn zza(RemoteModel remoteModel, SharedPrefManager sharedPrefManager, zzsu zzsuVar) {
        zznp zznpVar;
        ModelType zzb = zzsuVar.zzb();
        String modelHash = remoteModel.getModelHash();
        zznt zzntVar = new zznt();
        zzno zznoVar = new zzno();
        zznoVar.zzc(remoteModel.getModelNameForBackend());
        zznoVar.zzd(zznq.CLOUD);
        zznoVar.zza(zzaf.zzb(modelHash));
        int ordinal = zzb.ordinal();
        if (ordinal == 2) {
            zznpVar = zznp.BASE_TRANSLATE;
        } else if (ordinal == 4) {
            zznpVar = zznp.CUSTOM;
        } else if (ordinal == 5) {
            zznpVar = zznp.BASE_DIGITAL_INK;
        } else {
            zznpVar = zznp.TYPE_UNKNOWN;
        }
        zznoVar.zzb(zznpVar);
        zzntVar.zzb(zznoVar.zzg());
        zznw zzc = zzntVar.zzc();
        zznk zznkVar = new zznk();
        zznkVar.zzd(zzsuVar.zzc());
        zznkVar.zzc(zzsuVar.zzd());
        zznkVar.zzb(Long.valueOf(zzsuVar.zza()));
        zznkVar.zzf(zzc);
        if (zzsuVar.zzg()) {
            long modelDownloadBeginTimeMs = sharedPrefManager.getModelDownloadBeginTimeMs(remoteModel);
            if (modelDownloadBeginTimeMs == 0) {
                zza.m1092w("RemoteModelUtils", "Model downloaded without its beginning time recorded.");
            } else {
                long modelFirstUseTimeMs = sharedPrefManager.getModelFirstUseTimeMs(remoteModel);
                if (modelFirstUseTimeMs == 0) {
                    modelFirstUseTimeMs = SystemClock.elapsedRealtime();
                    sharedPrefManager.setModelFirstUseTimeMs(remoteModel, modelFirstUseTimeMs);
                }
                zznkVar.zzg(Long.valueOf(modelFirstUseTimeMs - modelDownloadBeginTimeMs));
            }
        }
        if (zzsuVar.zzf()) {
            long modelDownloadBeginTimeMs2 = sharedPrefManager.getModelDownloadBeginTimeMs(remoteModel);
            if (modelDownloadBeginTimeMs2 == 0) {
                zza.m1092w("RemoteModelUtils", "Model downloaded without its beginning time recorded.");
            } else {
                zznkVar.zze(Long.valueOf(SystemClock.elapsedRealtime() - modelDownloadBeginTimeMs2));
            }
        }
        return zznkVar.zzi();
    }
}
