package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "FullWalletCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class FullWallet extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<FullWallet> CREATOR = new zzl();
    @SafeParcelable.Field(m797id = 2)
    String zza;
    @SafeParcelable.Field(m797id = 3)
    String zzb;
    @SafeParcelable.Field(m797id = 4)
    zzaj zzc;
    @SafeParcelable.Field(m797id = 5)
    String zzd;
    @SafeParcelable.Field(m797id = 6)
    zza zze;
    @SafeParcelable.Field(m797id = 7)
    zza zzf;
    @SafeParcelable.Field(m797id = 8)
    String[] zzg;
    @SafeParcelable.Field(m797id = 9)
    UserAddress zzh;
    @SafeParcelable.Field(m797id = 10)
    UserAddress zzi;
    @SafeParcelable.Field(m797id = 11)
    InstrumentInfo[] zzj;
    @SafeParcelable.Field(m797id = 12)
    PaymentMethodToken zzk;

    private FullWallet() {
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzc, i, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zze, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzf, i, false);
        SafeParcelWriter.writeStringArray(parcel, 8, this.zzg, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.zzh, i, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzi, i, false);
        SafeParcelWriter.writeTypedArray(parcel, 11, this.zzj, i, false);
        SafeParcelWriter.writeParcelable(parcel, 12, this.zzk, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public FullWallet(@SafeParcelable.Param(m796id = 2) String str, @SafeParcelable.Param(m796id = 3) String str2, @SafeParcelable.Param(m796id = 4) zzaj zzajVar, @SafeParcelable.Param(m796id = 5) String str3, @SafeParcelable.Param(m796id = 6) zza zzaVar, @SafeParcelable.Param(m796id = 7) zza zzaVar2, @SafeParcelable.Param(m796id = 8) String[] strArr, @SafeParcelable.Param(m796id = 9) UserAddress userAddress, @SafeParcelable.Param(m796id = 10) UserAddress userAddress2, @SafeParcelable.Param(m796id = 11) InstrumentInfo[] instrumentInfoArr, @SafeParcelable.Param(m796id = 12) PaymentMethodToken paymentMethodToken) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzajVar;
        this.zzd = str3;
        this.zze = zzaVar;
        this.zzf = zzaVar2;
        this.zzg = strArr;
        this.zzh = userAddress;
        this.zzi = userAddress2;
        this.zzj = instrumentInfoArr;
        this.zzk = paymentMethodToken;
    }
}
