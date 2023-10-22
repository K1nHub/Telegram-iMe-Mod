package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.wearable.ChannelApi;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzbn implements zzb {
    final /* synthetic */ String zza;
    final /* synthetic */ IntentFilter[] zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbn(String str, IntentFilter[] intentFilterArr) {
        this.zza = str;
        this.zzb = intentFilterArr;
    }

    @Override // com.google.android.gms.wearable.internal.zzb
    public final /* bridge */ /* synthetic */ void zza(zzim zzimVar, BaseImplementation.ResultHolder resultHolder, Object obj, ListenerHolder listenerHolder) throws RemoteException {
        zzimVar.zzq(resultHolder, (ChannelApi.ChannelListener) obj, listenerHolder, this.zza, this.zzb);
    }
}
