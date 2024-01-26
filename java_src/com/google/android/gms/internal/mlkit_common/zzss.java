package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import android.content.res.Resources;
import androidx.core.p010os.ConfigurationCompat;
import androidx.core.p010os.LocaleListCompat;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.model.RemoteModel;
import com.google.mlkit.common.sdkinternal.CommonUtils;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.ModelType;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public final class zzss {
    private static zzaq zza;
    private static final zzat zzb = zzat.zzc("optional-module-barcode", "com.google.android.gms.vision.barcode");
    private final String zzc;
    private final String zzd;
    private final zzsk zze;
    private final SharedPrefManager zzf;
    private final Task zzg;
    private final Task zzh;
    private final String zzi;
    private final int zzj;
    private final Map zzk = new HashMap();
    private final Map zzl = new HashMap();

    public zzss(Context context, final SharedPrefManager sharedPrefManager, zzsk zzskVar, String str) {
        this.zzc = context.getPackageName();
        this.zzd = CommonUtils.getAppVersion(context);
        this.zzf = sharedPrefManager;
        this.zze = zzskVar;
        zztg.zza();
        this.zzi = str;
        this.zzg = MLTaskExecutor.getInstance().scheduleCallable(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.zzsp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzss.this.zza();
            }
        });
        MLTaskExecutor mLTaskExecutor = MLTaskExecutor.getInstance();
        sharedPrefManager.getClass();
        this.zzh = mLTaskExecutor.scheduleCallable(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.zzsq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return SharedPrefManager.this.getMlSdkInstanceId();
            }
        });
        zzat zzatVar = zzb;
        this.zzj = zzatVar.containsKey(str) ? DynamiteModule.getRemoteVersion(context, (String) zzatVar.get(str)) : -1;
    }

    private static synchronized zzaq zzh() {
        synchronized (zzss.class) {
            zzaq zzaqVar = zza;
            if (zzaqVar != null) {
                return zzaqVar;
            }
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            zzan zzanVar = new zzan();
            for (int i = 0; i < locales.size(); i++) {
                zzanVar.zzb(CommonUtils.languageTagFromLocale(locales.get(i)));
            }
            zzaq zzc = zzanVar.zzc();
            zza = zzc;
            return zzc;
        }
    }

    private final zzre zzi(String str, String str2) {
        String mlSdkInstanceId;
        zzre zzreVar = new zzre();
        zzreVar.zzb(this.zzc);
        zzreVar.zzc(this.zzd);
        zzreVar.zzh(zzh());
        zzreVar.zzg(Boolean.TRUE);
        zzreVar.zzl(str);
        zzreVar.zzj(str2);
        if (this.zzh.isSuccessful()) {
            mlSdkInstanceId = (String) this.zzh.getResult();
        } else {
            mlSdkInstanceId = this.zzf.getMlSdkInstanceId();
        }
        zzreVar.zzi(mlSdkInstanceId);
        zzreVar.zzd(10);
        zzreVar.zzk(Integer.valueOf(this.zzj));
        return zzreVar;
    }

    private final String zzj() {
        if (this.zzg.isSuccessful()) {
            return (String) this.zzg.getResult();
        }
        return LibraryVersion.getInstance().getVersion(this.zzi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String zza() throws Exception {
        return LibraryVersion.getInstance().getVersion(this.zzi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(zzsj zzsjVar, zzng zzngVar, String str) {
        zzsjVar.zza(zzngVar);
        zzsjVar.zzc(zzi(zzsjVar.zzd(), str));
        this.zze.zza(zzsjVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(zzsj zzsjVar, zzsu zzsuVar, RemoteModel remoteModel) {
        zzsjVar.zza(zzng.MODEL_DOWNLOAD);
        zzsjVar.zzc(zzi(zzsuVar.zze(), zzj()));
        zzsjVar.zzb(zzte.zza(remoteModel, this.zzf, zzsuVar));
        this.zze.zza(zzsjVar);
    }

    public final void zzd(final zzsj zzsjVar, final zzng zzngVar) {
        final String zzj = zzj();
        MLTaskExecutor.workerThreadExecutor().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_common.zzso
            @Override // java.lang.Runnable
            public final void run() {
                zzss.this.zzb(zzsjVar, zzngVar, zzj);
            }
        });
    }

    public final void zze(zzsj zzsjVar, RemoteModel remoteModel, boolean z, int i) {
        zzst zzh = zzsu.zzh();
        zzh.zzf(false);
        zzh.zzd(remoteModel.getModelType());
        zzh.zza(zznl.FAILED);
        zzh.zzb(zznf.DOWNLOAD_FAILED);
        zzh.zzc(i);
        zzg(zzsjVar, remoteModel, zzh.zzh());
    }

    public final void zzf(zzsj zzsjVar, RemoteModel remoteModel, zznf zznfVar, boolean z, ModelType modelType, zznl zznlVar) {
        zzst zzh = zzsu.zzh();
        zzh.zzf(z);
        zzh.zzd(modelType);
        zzh.zzb(zznfVar);
        zzh.zza(zznlVar);
        zzg(zzsjVar, remoteModel, zzh.zzh());
    }

    public final void zzg(final zzsj zzsjVar, final RemoteModel remoteModel, final zzsu zzsuVar) {
        MLTaskExecutor.workerThreadExecutor().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_common.zzsr
            @Override // java.lang.Runnable
            public final void run() {
                zzss.this.zzc(zzsjVar, zzsuVar, remoteModel);
            }
        });
    }
}
