package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.List;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
final class zzao extends zzal<List<String>> {
    final /* synthetic */ zzaw zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzao(zzaw zzawVar, com.google.android.play.core.tasks.zzi<List<String>> zziVar) {
        super(zzawVar, zziVar);
        this.zzc = zzawVar;
    }

    @Override // com.google.android.play.core.assetpacks.zzal, com.google.android.play.core.internal.zzw
    public final void zzg(List<Bundle> list) {
        super.zzg(list);
        this.zza.zze(zzaw.zzw(this.zzc, list));
    }
}
