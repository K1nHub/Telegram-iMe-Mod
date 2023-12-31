package com.google.android.play.core.assetpacks;

import android.content.ComponentName;
import android.content.Context;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzs implements com.google.android.play.core.internal.zzcs<Object> {
    private final com.google.android.play.core.internal.zzcs<zzl> zza;
    private final com.google.android.play.core.internal.zzcs<Context> zzb;

    public zzs(com.google.android.play.core.internal.zzcs<zzl> zzcsVar, com.google.android.play.core.internal.zzcs<Context> zzcsVar2) {
        this.zza = zzcsVar;
        this.zzb = zzcsVar2;
    }

    @Override // com.google.android.play.core.internal.zzcs
    public final /* bridge */ /* synthetic */ Object zza() {
        zzl zza = this.zza.zza();
        Context zzb = ((zzu) this.zzb).zzb();
        zzl zzlVar = zza;
        com.google.android.play.core.internal.zzcd.zza(zzb.getPackageManager(), new ComponentName(zzb.getPackageName(), "com.google.android.play.core.assetpacks.AssetPackExtractionService"), 4);
        com.google.android.play.core.internal.zzcd.zza(zzb.getPackageManager(), new ComponentName(zzb.getPackageName(), "com.google.android.play.core.assetpacks.ExtractionForegroundService"), 4);
        com.google.android.play.core.internal.zzcr.zza(zzlVar);
        return zzlVar;
    }
}
