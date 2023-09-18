package com.google.android.gms.wallet;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "PaymentCardRecognitionIntentResponseCreator")
/* loaded from: classes4.dex */
public class PaymentCardRecognitionIntentResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PaymentCardRecognitionIntentResponse> CREATOR = new zzz();
    @SafeParcelable.Field(m797id = 1)
    PendingIntent zza;

    PaymentCardRecognitionIntentResponse() {
    }

    public PendingIntent getPaymentCardRecognitionPendingIntent() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.zza, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public PaymentCardRecognitionIntentResponse(@SafeParcelable.Param(m796id = 1) PendingIntent pendingIntent) {
        this.zza = pendingIntent;
    }
}
