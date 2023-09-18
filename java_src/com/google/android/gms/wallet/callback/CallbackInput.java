package com.google.android.gms.wallet.callback;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "CallbackInputCreator")
/* loaded from: classes4.dex */
public class CallbackInput extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CallbackInput> CREATOR = new zzh();
    @SafeParcelable.Field(m797id = 1)
    int zza;
    @SafeParcelable.Field(m797id = 2)
    byte[] zzb;

    /* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
    /* loaded from: classes4.dex */
    public final class Builder {
        /* synthetic */ Builder(zzg zzgVar) {
        }

        public CallbackInput build() {
            return CallbackInput.this;
        }

        public Builder setCallbackType(int i) {
            CallbackInput.this.zza = i;
            return this;
        }

        public Builder setRequestBytes(byte[] bArr) {
            CallbackInput.this.zzb = bArr;
            return this;
        }
    }

    private CallbackInput() {
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public <T extends AbstractSafeParcelable> T deserializeRequest(Parcelable.Creator<T> creator) {
        byte[] bArr = this.zzb;
        if (bArr == null) {
            return null;
        }
        return (T) SafeParcelableSerializer.deserializeFromBytes(bArr, creator);
    }

    public int getCallbackType() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeByteArray(parcel, 2, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public CallbackInput(@SafeParcelable.Param(m796id = 1) int i, @SafeParcelable.Param(m796id = 2) byte[] bArr) {
        this.zza = i;
        this.zzb = bArr;
    }
}
