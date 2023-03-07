package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: com.google.android.gms:play-services-location@@21.0.1 */
/* loaded from: classes.dex */
public final /* synthetic */ class zzav implements RemoteCall {
    public static final /* synthetic */ zzav zza = new zzav();

    private /* synthetic */ zzav() {
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        ((zzda) obj).zzr((TaskCompletionSource) obj2);
    }
}
