package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
@KeepForSdk
@SafeParcelable.Class(creator = "GetServiceRequestCreator")
@SafeParcelable.Reserved({9})
/* loaded from: classes.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzm();
    static final Scope[] zza = new Scope[0];
    static final Feature[] zzb = new Feature[0];
    @SafeParcelable.VersionField(m794id = 1)
    final int zzc;
    @SafeParcelable.Field(m797id = 2)
    final int zzd;
    @SafeParcelable.Field(m797id = 3)
    int zze;
    @SafeParcelable.Field(m797id = 4)
    String zzf;
    @SafeParcelable.Field(m797id = 5)
    IBinder zzg;
    @SafeParcelable.Field(defaultValueUnchecked = "GetServiceRequest.EMPTY_SCOPES", m797id = 6)
    Scope[] zzh;
    @SafeParcelable.Field(defaultValueUnchecked = "new android.os.Bundle()", m797id = 7)
    Bundle zzi;
    @SafeParcelable.Field(m797id = 8)
    Account zzj;
    @SafeParcelable.Field(defaultValueUnchecked = "GetServiceRequest.EMPTY_FEATURES", m797id = 10)
    Feature[] zzk;
    @SafeParcelable.Field(defaultValueUnchecked = "GetServiceRequest.EMPTY_FEATURES", m797id = 11)
    Feature[] zzl;
    @SafeParcelable.Field(m797id = 12)
    boolean zzm;
    @SafeParcelable.Field(defaultValue = SessionDescription.SUPPORTED_SDP_VERSION, m797id = 13)
    int zzn;
    @SafeParcelable.Field(getter = "isRequestingTelemetryConfiguration", m797id = 14)
    boolean zzo;
    @SafeParcelable.Field(getter = "getAttributionTag", m797id = 15)
    private String zzp;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GetServiceRequest(@SafeParcelable.Param(m796id = 1) int i, @SafeParcelable.Param(m796id = 2) int i2, @SafeParcelable.Param(m796id = 3) int i3, @SafeParcelable.Param(m796id = 4) String str, @SafeParcelable.Param(m796id = 5) IBinder iBinder, @SafeParcelable.Param(m796id = 6) Scope[] scopeArr, @SafeParcelable.Param(m796id = 7) Bundle bundle, @SafeParcelable.Param(m796id = 8) Account account, @SafeParcelable.Param(m796id = 10) Feature[] featureArr, @SafeParcelable.Param(m796id = 11) Feature[] featureArr2, @SafeParcelable.Param(m796id = 12) boolean z, @SafeParcelable.Param(m796id = 13) int i4, @SafeParcelable.Param(m796id = 14) boolean z2, @SafeParcelable.Param(m796id = 15) String str2) {
        scopeArr = scopeArr == null ? zza : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        featureArr = featureArr == null ? zzb : featureArr;
        featureArr2 = featureArr2 == null ? zzb : featureArr2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        if ("com.google.android.gms".equals(str)) {
            this.zzf = "com.google.android.gms";
        } else {
            this.zzf = str;
        }
        if (i < 2) {
            this.zzj = iBinder != null ? AccountAccessor.getAccountBinderSafe(IAccountAccessor.Stub.asInterface(iBinder)) : null;
        } else {
            this.zzg = iBinder;
            this.zzj = account;
        }
        this.zzh = scopeArr;
        this.zzi = bundle;
        this.zzk = featureArr;
        this.zzl = featureArr2;
        this.zzm = z;
        this.zzn = i4;
        this.zzo = z2;
        this.zzp = str2;
    }

    @KeepForSdk
    public Bundle getExtraArgs() {
        return this.zzi;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }

    public final String zza() {
        return this.zzp;
    }
}
