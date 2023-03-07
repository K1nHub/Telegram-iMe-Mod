package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.BaseImplementation;
import java.util.List;
import java.util.concurrent.FutureTask;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzid extends zzhn {
    private final List zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzid(BaseImplementation.ResultHolder resultHolder, List list) {
        super(resultHolder);
        this.zza = list;
    }

    @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzex
    public final void zzC(zzgu zzguVar) {
        zzI(new zzcq(zzhf.zza(zzguVar.zza), zzguVar.zzb));
        if (zzguVar.zza != 0) {
            for (FutureTask futureTask : this.zza) {
                futureTask.cancel(true);
            }
        }
    }
}
