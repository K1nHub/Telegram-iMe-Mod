package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collection;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "IsReadyToPayRequestCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class IsReadyToPayRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<IsReadyToPayRequest> CREATOR = new zzq();
    @SafeParcelable.Field(m775id = 2)
    ArrayList zza;
    @SafeParcelable.Field(m775id = 4)
    String zzb;
    @SafeParcelable.Field(m775id = 5)
    String zzc;
    @SafeParcelable.Field(m775id = 6)
    ArrayList zzd;
    @SafeParcelable.Field(m775id = 7)
    boolean zze;
    @SafeParcelable.Field(m775id = 8)
    String zzf;

    /* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
    @Deprecated
    /* loaded from: classes3.dex */
    public final class Builder {
        /* synthetic */ Builder(zzp zzpVar) {
        }

        public Builder addAllowedCardNetwork(int i) {
            IsReadyToPayRequest isReadyToPayRequest = IsReadyToPayRequest.this;
            if (isReadyToPayRequest.zza == null) {
                isReadyToPayRequest.zza = new ArrayList();
            }
            IsReadyToPayRequest.this.zza.add(Integer.valueOf(i));
            return this;
        }

        public Builder addAllowedCardNetworks(Collection<Integer> collection) {
            boolean z = false;
            if (collection != null && !collection.isEmpty()) {
                z = true;
            }
            Preconditions.checkArgument(z, "allowedCardNetworks can't be null or empty. If you want the defaults, leave it unset.");
            IsReadyToPayRequest isReadyToPayRequest = IsReadyToPayRequest.this;
            if (isReadyToPayRequest.zza == null) {
                isReadyToPayRequest.zza = new ArrayList();
            }
            IsReadyToPayRequest.this.zza.addAll(collection);
            return this;
        }

        public Builder addAllowedPaymentMethod(int i) {
            IsReadyToPayRequest isReadyToPayRequest = IsReadyToPayRequest.this;
            if (isReadyToPayRequest.zzd == null) {
                isReadyToPayRequest.zzd = new ArrayList();
            }
            IsReadyToPayRequest.this.zzd.add(Integer.valueOf(i));
            return this;
        }

        public Builder addAllowedPaymentMethods(Collection<Integer> collection) {
            boolean z = false;
            if (collection != null && !collection.isEmpty()) {
                z = true;
            }
            Preconditions.checkArgument(z, "allowedPaymentMethods can't be null or empty. If you want the default, leave it unset.");
            IsReadyToPayRequest isReadyToPayRequest = IsReadyToPayRequest.this;
            if (isReadyToPayRequest.zzd == null) {
                isReadyToPayRequest.zzd = new ArrayList();
            }
            IsReadyToPayRequest.this.zzd.addAll(collection);
            return this;
        }

        public IsReadyToPayRequest build() {
            return IsReadyToPayRequest.this;
        }

        public Builder setExistingPaymentMethodRequired(boolean z) {
            IsReadyToPayRequest.this.zze = z;
            return this;
        }
    }

    IsReadyToPayRequest() {
    }

    public static IsReadyToPayRequest fromJson(String str) {
        Builder newBuilder = newBuilder();
        IsReadyToPayRequest.this.zzf = (String) Preconditions.checkNotNull(str, "isReadyToPayRequestJson cannot be null!");
        return newBuilder.build();
    }

    @Deprecated
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @Deprecated
    public ArrayList<Integer> getAllowedCardNetworks() {
        return this.zza;
    }

    @Deprecated
    public ArrayList<Integer> getAllowedPaymentMethods() {
        return this.zzd;
    }

    @Deprecated
    public boolean isExistingPaymentMethodRequired() {
        return this.zze;
    }

    public String toJson() {
        return this.zzf;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeIntegerList(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzc, false);
        SafeParcelWriter.writeIntegerList(parcel, 6, this.zzd, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zze);
        SafeParcelWriter.writeString(parcel, 8, this.zzf, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public IsReadyToPayRequest(@SafeParcelable.Param(m774id = 2) ArrayList arrayList, @SafeParcelable.Param(m774id = 4) String str, @SafeParcelable.Param(m774id = 5) String str2, @SafeParcelable.Param(m774id = 6) ArrayList arrayList2, @SafeParcelable.Param(m774id = 7) boolean z, @SafeParcelable.Param(m774id = 8) String str3) {
        this.zza = arrayList;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = arrayList2;
        this.zze = z;
        this.zzf = str3;
    }
}
