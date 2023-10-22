package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzbl extends zzu {
    final /* synthetic */ Uri zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzbq zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbl(zzbq zzbqVar, GoogleApiClient googleApiClient, Uri uri, boolean z) {
        super(googleApiClient);
        this.zzc = zzbqVar;
        this.zza = uri;
        this.zzb = z;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        String str;
        str = this.zzc.zza;
        ((zzim) anyClient).zzw(this, str, this.zza, this.zzb);
    }
}
