package com.google.android.gms.wallet.callback;

import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
/* loaded from: classes4.dex */
final class zzf implements OnCompleteListener {
    private final OnCompleteListener zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(OnCompleteListener onCompleteListener) {
        this.zza = onCompleteListener;
    }

    @Override // com.google.android.gms.wallet.callback.OnCompleteListener
    /* renamed from: zza */
    public final synchronized void complete(PaymentDataRequestUpdate paymentDataRequestUpdate) {
        OnCompleteListener onCompleteListener = this.zza;
        zzj zza = CallbackOutput.zza();
        CallbackOutput callbackOutput = zza.zza;
        callbackOutput.zza = 2;
        callbackOutput.zzb = 1;
        byte[] serializeToBytes = SafeParcelableSerializer.serializeToBytes(paymentDataRequestUpdate);
        CallbackOutput callbackOutput2 = zza.zza;
        callbackOutput2.zzc = serializeToBytes;
        onCompleteListener.complete(callbackOutput2);
    }
}
