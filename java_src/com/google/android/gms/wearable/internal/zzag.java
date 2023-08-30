package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.CapabilityApi;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzag extends zzu {
    private CapabilityApi.CapabilityListener zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzag(GoogleApiClient googleApiClient, CapabilityApi.CapabilityListener capabilityListener, zzaf zzafVar) {
        super(googleApiClient);
        this.zza = capabilityListener;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        this.zza = null;
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzim) anyClient).zzx(this, this.zza);
        this.zza = null;
    }
}
