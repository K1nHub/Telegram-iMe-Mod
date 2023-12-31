package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "PaymentCardRecognitionIntentRequestCreator")
/* loaded from: classes3.dex */
public class PaymentCardRecognitionIntentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PaymentCardRecognitionIntentRequest> CREATOR = new zzy();
    @SafeParcelable.Field(m1090id = 1)
    int zza;

    /* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
    /* loaded from: classes3.dex */
    public final class Builder {
        /* synthetic */ Builder(zzx zzxVar) {
        }

        public PaymentCardRecognitionIntentRequest build() {
            Preconditions.checkArgument(PaymentCardRecognitionIntentRequest.this.zza != 0, "The paymentCardRecognitionType is required when creating a PaymentCardRecognitionIntentRequest.");
            return PaymentCardRecognitionIntentRequest.this;
        }
    }

    PaymentCardRecognitionIntentRequest() {
    }

    public static Builder builder() {
        return new Builder(null);
    }

    public static PaymentCardRecognitionIntentRequest getDefaultInstance() {
        Builder builder = new Builder(null);
        PaymentCardRecognitionIntentRequest.this.zza = 1;
        return builder.build();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public PaymentCardRecognitionIntentRequest(@SafeParcelable.Param(m1089id = 1) int i) {
        this.zza = i;
    }
}
