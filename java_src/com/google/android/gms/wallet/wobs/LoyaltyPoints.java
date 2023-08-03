package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "LoyaltyPointsCreator")
@SafeParcelable.Reserved({1, 4})
/* loaded from: classes3.dex */
public final class LoyaltyPoints extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LoyaltyPoints> CREATOR = new zzj();
    @SafeParcelable.Field(m797id = 2)
    String zza;
    @SafeParcelable.Field(m797id = 3)
    LoyaltyPointsBalance zzb;
    @SafeParcelable.Field(m797id = 5)
    @Deprecated
    TimeInterval zzc;

    /* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
    /* loaded from: classes3.dex */
    public final class Builder {
        /* synthetic */ Builder(zzg zzgVar) {
        }

        public LoyaltyPoints build() {
            return LoyaltyPoints.this;
        }

        public Builder setBalance(LoyaltyPointsBalance loyaltyPointsBalance) {
            LoyaltyPoints.this.zzb = loyaltyPointsBalance;
            return this;
        }

        public Builder setLabel(String str) {
            LoyaltyPoints.this.zza = str;
            return this;
        }

        @Deprecated
        public Builder setType(String str) {
            return this;
        }

        @Deprecated
        public Builder setValidTimeInterval(TimeInterval timeInterval) {
            LoyaltyPoints.this.zzc = timeInterval;
            return this;
        }
    }

    LoyaltyPoints() {
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public LoyaltyPointsBalance getBalance() {
        return this.zzb;
    }

    public String getLabel() {
        return this.zza;
    }

    @Deprecated
    public String getType() {
        return "";
    }

    @Deprecated
    public TimeInterval getValidTimeInterval() {
        return this.zzc;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzb, i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzc, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public LoyaltyPoints(@SafeParcelable.Param(m796id = 2) String str, @SafeParcelable.Param(m796id = 3) LoyaltyPointsBalance loyaltyPointsBalance, @SafeParcelable.Param(m796id = 5) TimeInterval timeInterval) {
        this.zza = str;
        this.zzb = loyaltyPointsBalance;
        this.zzc = timeInterval;
    }
}
