package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public class AppUpdateInfo {
    private final int zzc;
    private final int zzd;
    private final long zzi;
    private final long zzj;
    private final PendingIntent zzk;
    private final PendingIntent zzl;
    private final PendingIntent zzm;
    private final PendingIntent zzn;
    private boolean zzo = false;

    private AppUpdateInfo(String str, int i, int i2, int i3, Integer num, int i4, long j, long j2, long j3, long j4, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3, PendingIntent pendingIntent4) {
        this.zzc = i2;
        this.zzd = i3;
        this.zzi = j3;
        this.zzj = j4;
        this.zzk = pendingIntent;
        this.zzl = pendingIntent2;
        this.zzm = pendingIntent3;
        this.zzn = pendingIntent4;
    }

    public static AppUpdateInfo zzb(String str, int i, int i2, int i3, Integer num, int i4, long j, long j2, long j3, long j4, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3, PendingIntent pendingIntent4) {
        return new AppUpdateInfo(str, i, i2, i3, num, i4, j, j2, j3, j4, pendingIntent, pendingIntent2, pendingIntent3, pendingIntent4);
    }

    private final boolean zze(AppUpdateOptions appUpdateOptions) {
        return appUpdateOptions.allowAssetPackDeletion() && this.zzi <= this.zzj;
    }

    public int installStatus() {
        return this.zzd;
    }

    public boolean isUpdateTypeAllowed(int i) {
        return zza(AppUpdateOptions.defaultOptions(i)) != null;
    }

    public int updateAvailability() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final PendingIntent zza(AppUpdateOptions appUpdateOptions) {
        if (appUpdateOptions.appUpdateType() == 0) {
            PendingIntent pendingIntent = this.zzl;
            if (pendingIntent != null) {
                return pendingIntent;
            }
            if (zze(appUpdateOptions)) {
                return this.zzn;
            }
            return null;
        }
        if (appUpdateOptions.appUpdateType() == 1) {
            PendingIntent pendingIntent2 = this.zzk;
            if (pendingIntent2 != null) {
                return pendingIntent2;
            }
            if (zze(appUpdateOptions)) {
                return this.zzm;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc() {
        this.zzo = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzd() {
        return this.zzo;
    }

    public boolean isUpdateTypeAllowed(AppUpdateOptions appUpdateOptions) {
        return zza(appUpdateOptions) != null;
    }
}
