package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzed {
    private static final com.google.android.play.core.internal.zzag zza = new com.google.android.play.core.internal.zzag("PackageStateCache");
    private final Context zzb;
    private int zzc = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzed(Context context) {
        this.zzb = context;
    }

    public final synchronized int zza() {
        if (this.zzc == -1) {
            try {
                this.zzc = this.zzb.getPackageManager().getPackageInfo(this.zzb.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException unused) {
                zza.zzb("The current version of the app could not be retrieved", new Object[0]);
            }
        }
        return this.zzc;
    }
}
