package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.BaseImplementation;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
class zzhn extends zza {
    private BaseImplementation.ResultHolder zza;

    public zzhn(BaseImplementation.ResultHolder resultHolder) {
        this.zza = resultHolder;
    }

    public final void zzI(Object obj) {
        BaseImplementation.ResultHolder resultHolder = this.zza;
        if (resultHolder != null) {
            resultHolder.setResult(obj);
            this.zza = null;
        }
    }
}
