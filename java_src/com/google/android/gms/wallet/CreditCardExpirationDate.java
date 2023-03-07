package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "CreditCardExpirationDateCreator")
/* loaded from: classes3.dex */
public final class CreditCardExpirationDate extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CreditCardExpirationDate> CREATOR = new zzj();
    @SafeParcelable.Field(m789id = 1)
    int zza;
    @SafeParcelable.Field(m789id = 2)
    int zzb;

    CreditCardExpirationDate() {
    }

    public int getMonth() {
        return this.zza;
    }

    public int getYear() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public CreditCardExpirationDate(@SafeParcelable.Param(m788id = 1) int i, @SafeParcelable.Param(m788id = 2) int i2) {
        this.zza = i;
        this.zzb = i2;
    }
}
