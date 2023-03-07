package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.wearable.ChannelApi;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzis implements ListenerHolder.Notifier {
    final /* synthetic */ zzbf zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzis(zzbf zzbfVar) {
        this.zza = zzbfVar;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* synthetic */ void notifyListener(Object obj) {
        this.zza.zza((ChannelApi.ChannelListener) obj);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
