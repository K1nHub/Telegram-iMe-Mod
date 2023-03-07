package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "CardInfoCreator")
/* loaded from: classes3.dex */
public final class CardInfo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CardInfo> CREATOR = new zze();
    @SafeParcelable.Field(m789id = 1)
    String zza;
    @SafeParcelable.Field(m789id = 2)
    String zzb;
    @SafeParcelable.Field(m789id = 3)
    String zzc;
    @SafeParcelable.Field(m789id = 4)
    int zzd;
    @SafeParcelable.Field(m789id = 5)
    UserAddress zze;

    private CardInfo() {
    }

    public UserAddress getBillingAddress() {
        return this.zze;
    }

    public int getCardClass() {
        int i = this.zzd;
        if (i == 1 || i == 2 || i == 3) {
            return i;
        }
        return 0;
    }

    public String getCardDescription() {
        return this.zza;
    }

    public String getCardDetails() {
        return this.zzc;
    }

    public String getCardNetwork() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zze, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public CardInfo(@SafeParcelable.Param(m788id = 1) String str, @SafeParcelable.Param(m788id = 2) String str2, @SafeParcelable.Param(m788id = 3) String str3, @SafeParcelable.Param(m788id = 4) int i, @SafeParcelable.Param(m788id = 5) UserAddress userAddress) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = i;
        this.zze = userAddress;
    }
}
