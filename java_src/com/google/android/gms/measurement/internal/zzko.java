package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.Preconditions;
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes4.dex */
final class zzko implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb = "_err";
    final /* synthetic */ Bundle zzc;
    final /* synthetic */ zzkp zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzko(zzkp zzkpVar, String str, String str2, Bundle bundle) {
        this.zzd = zzkpVar;
        this.zza = str;
        this.zzc = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza.zzE((zzat) Preconditions.checkNotNull(this.zzd.zza.zzv().zzz(this.zza, this.zzb, this.zzc, TtmlNode.TEXT_EMPHASIS_AUTO, this.zzd.zza.zzav().currentTimeMillis(), false, true)), this.zza);
    }
}
