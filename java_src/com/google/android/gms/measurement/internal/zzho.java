package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzho implements zzky {
    final /* synthetic */ zzia zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzho(zzia zziaVar) {
        this.zza = zziaVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzky
    public final void zza(String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            this.zza.zzF(TtmlNode.TEXT_EMPHASIS_AUTO, "_err", bundle, str);
        } else {
            this.zza.zzD(TtmlNode.TEXT_EMPHASIS_AUTO, "_err", bundle);
        }
    }
}
