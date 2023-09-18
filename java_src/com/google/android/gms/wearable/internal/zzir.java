package com.google.android.gms.wearable.internal;

import android.util.Log;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.wearable.MessageClient;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes4.dex */
final class zzir implements ListenerHolder.Notifier {
    public static final /* synthetic */ int zzc = 0;
    final /* synthetic */ zzfx zza;
    final /* synthetic */ zzev zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzir(zzfx zzfxVar, zzev zzevVar, byte[] bArr) {
        this.zza = zzfxVar;
        this.zzb = zzevVar;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(Object obj) {
        Task<byte[]> onRequest = ((MessageClient.RpcService) obj).onRequest(this.zza.getSourceNodeId(), this.zza.getPath(), this.zza.getData());
        if (onRequest == null) {
            zzit.zzx(this.zzb, false, null);
            return;
        }
        final zzev zzevVar = this.zzb;
        onRequest.addOnCompleteListener(new OnCompleteListener(null) { // from class: com.google.android.gms.wearable.internal.zziq
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                zzev zzevVar2 = zzev.this;
                if (task.isSuccessful()) {
                    zzit.zzx(zzevVar2, true, (byte[]) task.getResult());
                    return;
                }
                Log.e("WearableListenerStub", "Failed to resolve future, sending null response", task.getException());
                zzit.zzx(zzevVar2, false, null);
            }
        });
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
        Log.e("WearableListenerStub", "Failed to notify listener, sending null response");
        zzit.zzx(this.zzb, false, null);
    }
}
