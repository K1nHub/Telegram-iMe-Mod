package com.google.android.play.core.appupdate;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.play.core.common.PlayCoreVersion;
import com.google.android.play.core.install.InstallException;
import com.google.android.play.core.internal.zzag;
import com.google.android.play.core.internal.zzan;
import com.google.android.play.core.internal.zzas;
import com.google.android.play.core.internal.zzce;
import com.google.android.play.core.internal.zzch;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzq {
    private static final zzag zzb = new zzag("AppUpdateService");
    private static final Intent zzc = new Intent("com.google.android.play.core.install.BIND_UPDATE_SERVICE").setPackage("com.android.vending");
    zzas<com.google.android.play.core.internal.zzp> zza;
    private final String zzd;
    private final Context zze;
    private final zzs zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(Context context, zzs zzsVar) {
        this.zzd = context.getPackageName();
        this.zze = context;
        this.zzf = zzsVar;
        if (zzch.zzb(context)) {
            this.zza = new zzas<>(zzce.zza(context), zzb, "AppUpdateService", zzc, new zzan() { // from class: com.google.android.play.core.appupdate.zzk
                @Override // com.google.android.play.core.internal.zzan
                public final Object zza(IBinder iBinder) {
                    return com.google.android.play.core.internal.zzo.zzb(iBinder);
                }
            }, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Bundle zzb(zzq zzqVar, String str) {
        Integer num;
        Bundle bundle = new Bundle();
        bundle.putAll(zzi());
        bundle.putString("package.name", str);
        try {
            num = Integer.valueOf(zzqVar.zze.getPackageManager().getPackageInfo(zzqVar.zze.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException unused) {
            zzb.zzb("The current version of the app could not be retrieved", new Object[0]);
            num = null;
        }
        if (num != null) {
            bundle.putInt("app.version.code", num.intValue());
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle zzi() {
        Bundle bundle = new Bundle();
        bundle.putAll(PlayCoreVersion.zza("app_update"));
        bundle.putInt("playcore.version.code", 11002);
        return bundle;
    }

    private static <T> Task<T> zzj() {
        zzb.zzb("onError(%d)", -9);
        return Tasks.zza(new InstallException(-9));
    }

    public final Task<Void> zzf(String str) {
        if (this.zza == null) {
            return zzj();
        }
        zzb.zzd("completeUpdate(%s)", str);
        com.google.android.play.core.tasks.zzi<?> zziVar = new com.google.android.play.core.tasks.zzi<>();
        this.zza.zzq(new zzm(this, zziVar, zziVar, str), zziVar);
        return zziVar.zza();
    }

    public final Task<AppUpdateInfo> zzg(String str) {
        if (this.zza == null) {
            return zzj();
        }
        zzb.zzd("requestUpdateInfo(%s)", str);
        com.google.android.play.core.tasks.zzi<?> zziVar = new com.google.android.play.core.tasks.zzi<>();
        this.zza.zzq(new zzl(this, zziVar, str, zziVar), zziVar);
        return zziVar.zza();
    }
}
