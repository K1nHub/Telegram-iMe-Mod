package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "MaskedWalletCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class MaskedWallet extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<MaskedWallet> CREATOR = new zzt();
    @SafeParcelable.Field(m789id = 2)
    String zza;
    @SafeParcelable.Field(m789id = 3)
    String zzb;
    @SafeParcelable.Field(m789id = 4)
    String[] zzc;
    @SafeParcelable.Field(m789id = 5)
    String zzd;
    @SafeParcelable.Field(m789id = 6)
    zza zze;
    @SafeParcelable.Field(m789id = 7)
    zza zzf;
    @SafeParcelable.Field(m789id = 8)
    LoyaltyWalletObject[] zzg;
    @SafeParcelable.Field(m789id = 9)
    OfferWalletObject[] zzh;
    @SafeParcelable.Field(m789id = 10)
    UserAddress zzi;
    @SafeParcelable.Field(m789id = 11)
    UserAddress zzj;
    @SafeParcelable.Field(m789id = 12)
    InstrumentInfo[] zzk;

    private MaskedWallet() {
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeStringArray(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zze, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzf, i, false);
        SafeParcelWriter.writeTypedArray(parcel, 8, this.zzg, i, false);
        SafeParcelWriter.writeTypedArray(parcel, 9, this.zzh, i, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzi, i, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.zzj, i, false);
        SafeParcelWriter.writeTypedArray(parcel, 12, this.zzk, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public MaskedWallet(@SafeParcelable.Param(m788id = 2) String str, @SafeParcelable.Param(m788id = 3) String str2, @SafeParcelable.Param(m788id = 4) String[] strArr, @SafeParcelable.Param(m788id = 5) String str3, @SafeParcelable.Param(m788id = 6) zza zzaVar, @SafeParcelable.Param(m788id = 7) zza zzaVar2, @SafeParcelable.Param(m788id = 8) LoyaltyWalletObject[] loyaltyWalletObjectArr, @SafeParcelable.Param(m788id = 9) OfferWalletObject[] offerWalletObjectArr, @SafeParcelable.Param(m788id = 10) UserAddress userAddress, @SafeParcelable.Param(m788id = 11) UserAddress userAddress2, @SafeParcelable.Param(m788id = 12) InstrumentInfo[] instrumentInfoArr) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = strArr;
        this.zzd = str3;
        this.zze = zzaVar;
        this.zzf = zzaVar2;
        this.zzg = loyaltyWalletObjectArr;
        this.zzh = offerWalletObjectArr;
        this.zzi = userAddress;
        this.zzj = userAddress2;
        this.zzk = instrumentInfoArr;
    }
}
