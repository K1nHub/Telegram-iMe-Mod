package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "LoyaltyPointsBalanceCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class LoyaltyPointsBalance extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LoyaltyPointsBalance> CREATOR = new zzi();
    @SafeParcelable.Field(m1090id = 2)
    int zza;
    @SafeParcelable.Field(m1090id = 3)
    String zzb;
    @SafeParcelable.Field(m1090id = 4)
    double zzc;
    @SafeParcelable.Field(m1090id = 5)
    String zzd;
    @SafeParcelable.Field(m1090id = 6)
    long zze;
    @SafeParcelable.Field(defaultValueUnchecked = "com.google.android.gms.wallet.wobs.LoyaltyPointsBalance.Type.UNDEFINED", m1090id = 7)
    int zzf;

    /* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
    /* loaded from: classes3.dex */
    public final class Builder {
        /* synthetic */ Builder(zzh zzhVar) {
        }

        public LoyaltyPointsBalance build() {
            return LoyaltyPointsBalance.this;
        }

        public Builder setDouble(double d) {
            LoyaltyPointsBalance loyaltyPointsBalance = LoyaltyPointsBalance.this;
            loyaltyPointsBalance.zzc = d;
            loyaltyPointsBalance.zzf = 2;
            return this;
        }

        public Builder setInt(int i) {
            LoyaltyPointsBalance loyaltyPointsBalance = LoyaltyPointsBalance.this;
            loyaltyPointsBalance.zza = i;
            loyaltyPointsBalance.zzf = 0;
            return this;
        }

        public Builder setMoney(String str, long j) {
            LoyaltyPointsBalance loyaltyPointsBalance = LoyaltyPointsBalance.this;
            loyaltyPointsBalance.zzd = str;
            loyaltyPointsBalance.zze = j;
            loyaltyPointsBalance.zzf = 3;
            return this;
        }

        public Builder setString(String str) {
            LoyaltyPointsBalance loyaltyPointsBalance = LoyaltyPointsBalance.this;
            loyaltyPointsBalance.zzb = str;
            loyaltyPointsBalance.zzf = 1;
            return this;
        }
    }

    /* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
    /* loaded from: classes3.dex */
    public interface Type {
        public static final int DOUBLE = 2;
        public static final int INT = 0;
        public static final int MONEY = 3;
        public static final int STRING = 1;
        public static final int UNDEFINED = -1;
    }

    LoyaltyPointsBalance() {
        this.zzf = -1;
        this.zza = -1;
        this.zzc = -1.0d;
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public String getCurrencyCode() {
        return this.zzd;
    }

    public long getCurrencyMicros() {
        return this.zze;
    }

    public double getDouble() {
        return this.zzc;
    }

    public int getInt() {
        return this.zza;
    }

    public String getString() {
        return this.zzb;
    }

    public int getType() {
        return this.zzf;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeDouble(parcel, 4, this.zzc);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.writeLong(parcel, 6, this.zze);
        SafeParcelWriter.writeInt(parcel, 7, this.zzf);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public LoyaltyPointsBalance(@SafeParcelable.Param(m1089id = 2) int i, @SafeParcelable.Param(m1089id = 3) String str, @SafeParcelable.Param(m1089id = 4) double d, @SafeParcelable.Param(m1089id = 5) String str2, @SafeParcelable.Param(m1089id = 6) long j, @SafeParcelable.Param(m1089id = 7) int i2) {
        this.zza = i;
        this.zzb = str;
        this.zzc = d;
        this.zzd = str2;
        this.zze = j;
        this.zzf = i2;
    }
}
