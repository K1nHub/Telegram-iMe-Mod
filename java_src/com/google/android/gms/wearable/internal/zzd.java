package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "AddListenerRequestCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();
    @SafeParcelable.Field(getter = "getListenerAsBinder", m775id = 2, type = "android.os.IBinder")
    public final zzfa zza;
    @SafeParcelable.Field(m775id = 3)
    public final IntentFilter[] zzb;
    @SafeParcelable.Field(m775id = 4)
    public final String zzc;
    @SafeParcelable.Field(m775id = 5)
    public final String zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzd(@SafeParcelable.Param(m774id = 2) IBinder iBinder, @SafeParcelable.Param(m774id = 3) IntentFilter[] intentFilterArr, @SafeParcelable.Param(m774id = 4) String str, @SafeParcelable.Param(m774id = 5) String str2) {
        if (iBinder != null) {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableListener");
            this.zza = queryLocalInterface instanceof zzfa ? (zzfa) queryLocalInterface : new zzey(iBinder);
        } else {
            this.zza = null;
        }
        this.zzb = intentFilterArr;
        this.zzc = str;
        this.zzd = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        zzfa zzfaVar = this.zza;
        SafeParcelWriter.writeIBinder(parcel, 2, zzfaVar == null ? null : zzfaVar.asBinder(), false);
        SafeParcelWriter.writeTypedArray(parcel, 3, this.zzb, i, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzd(zzit zzitVar) {
        this.zza = zzitVar;
        this.zzb = zzitVar.zzt();
        this.zzc = zzitVar.zzr();
        this.zzd = null;
    }
}
