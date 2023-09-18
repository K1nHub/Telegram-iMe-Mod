package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.lang.ref.WeakReference;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes4.dex */
final class zzfd extends zzhn {
    private final WeakReference zza;
    private final WeakReference zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfd(Map map, Object obj, BaseImplementation.ResultHolder resultHolder) {
        super(resultHolder);
        this.zza = new WeakReference(map);
        this.zzb = new WeakReference(obj);
    }

    @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzex
    public final void zzG(Status status) {
        Map map = (Map) this.zza.get();
        Object obj = this.zzb.get();
        if (!status.getStatus().isSuccess() && map != null && obj != null) {
            synchronized (map) {
                zzit zzitVar = (zzit) map.remove(obj);
                if (zzitVar != null) {
                    zzitVar.zzs();
                }
            }
        }
        zzI(status);
    }
}
