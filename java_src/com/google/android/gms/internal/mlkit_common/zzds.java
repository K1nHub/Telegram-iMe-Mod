package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import android.content.res.Resources;
import androidx.core.p010os.ConfigurationCompat;
import androidx.core.p010os.LocaleListCompat;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.internal.mlkit_common.zzav;
import com.google.android.gms.tasks.Task;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.Dependency;
import com.google.mlkit.common.sdkinternal.CommonUtils;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public final class zzds {
    public static final Component<?> zza = Component.builder(zzds.class).add(Dependency.required(Context.class)).add(Dependency.required(SharedPrefManager.class)).add(Dependency.required(zza.class)).factory(zzdv.zza).build();
    private static List<String> zzb = null;
    private static boolean zzk = true;
    private static boolean zzl = true;
    private final String zzc;
    private final String zzd;
    private final zza zze;
    private final SharedPrefManager zzf;
    private final Task<String> zzh;
    private final Map<zzbg, Long> zzi = new HashMap();
    private final Map<zzbg, Object> zzj = new HashMap();
    private final Task<String> zzg = MLTaskExecutor.getInstance().scheduleCallable(zzdr.zza);

    /* compiled from: com.google.mlkit:common@@17.0.0 */
    /* loaded from: classes.dex */
    public interface zza {
        void zza(zzav.zzad zzadVar);
    }

    private zzds(Context context, SharedPrefManager sharedPrefManager, zza zzaVar) {
        this.zzc = context.getPackageName();
        this.zzd = CommonUtils.getAppVersion(context);
        this.zzf = sharedPrefManager;
        this.zze = zzaVar;
        MLTaskExecutor mLTaskExecutor = MLTaskExecutor.getInstance();
        sharedPrefManager.getClass();
        this.zzh = mLTaskExecutor.scheduleCallable(zzdu.zza(sharedPrefManager));
    }

    public final void zza(final zzav.zzad.zza zzaVar, final zzbg zzbgVar) {
        MLTaskExecutor.workerThreadExecutor().execute(new Runnable(this, zzaVar, zzbgVar) { // from class: com.google.android.gms.internal.mlkit_common.zzdt
            private final zzds zza;
            private final zzav.zzad.zza zzb;
            private final zzbg zzc;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = zzaVar;
                this.zzc = zzbgVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzb(this.zzb, this.zzc);
            }
        });
    }

    private static synchronized List<String> zzb() {
        synchronized (zzds.class) {
            List<String> list = zzb;
            if (list != null) {
                return list;
            }
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            zzb = new ArrayList(locales.size());
            for (int i = 0; i < locales.size(); i++) {
                zzb.add(CommonUtils.languageTagFromLocale(locales.get(i)));
            }
            return zzb;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(zzav.zzad.zza zzaVar, zzbg zzbgVar) {
        String version;
        String mlSdkInstanceId;
        String zza2 = zzaVar.zza().zza();
        zzav.zzbh.zza zzb2 = zzav.zzbh.zzb().zza(this.zzc).zzb(this.zzd).zzd(("NA".equals(zza2) || "".equals(zza2)) ? "NA" : "NA").zza(zzb()).zzb(true);
        if (this.zzg.isSuccessful()) {
            version = this.zzg.getResult();
        } else {
            version = LibraryVersion.getInstance().getVersion("common");
        }
        zzav.zzbh.zza zzc = zzb2.zzc(version);
        if (zzl) {
            if (this.zzh.isSuccessful()) {
                mlSdkInstanceId = this.zzh.getResult();
            } else {
                mlSdkInstanceId = this.zzf.getMlSdkInstanceId();
            }
            zzc.zze(mlSdkInstanceId);
        }
        zzaVar.zza(zzbgVar).zza(zzc);
        this.zze.zza((zzav.zzad) ((zzfq) zzaVar.zzg()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ zzds zza(ComponentContainer componentContainer) {
        return new zzds((Context) componentContainer.get(Context.class), (SharedPrefManager) componentContainer.get(SharedPrefManager.class), (zza) componentContainer.get(zza.class));
    }
}
