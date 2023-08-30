package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.icing.zzbp;
import com.google.firebase.appindexing.Action;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
@SafeParcelable.Class(creator = "ActionImplCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class zzc extends AbstractSafeParcelable implements Action {
    public static final Parcelable.Creator<zzc> CREATOR = new zzd();
    @SafeParcelable.Field(getter = "getActionType", m797id = 1)
    private final String zza;
    @SafeParcelable.Field(getter = "getObjectName", m797id = 2)
    private final String zzb;
    @SafeParcelable.Field(getter = "getObjectUrl", m797id = 3)
    private final String zzc;
    @SafeParcelable.Field(getter = "getObjectSameAs", m797id = 4)
    private final String zzd;
    @SafeParcelable.Field(getter = "getMetadata", m797id = 5)
    private final zzb zze;
    @SafeParcelable.Field(getter = "getActionStatus", m797id = 6)
    private final String zzf;
    @SafeParcelable.Field(getter = "getPropertyBundle", m797id = 7)
    private final Bundle zzg;

    @SafeParcelable.Constructor
    public zzc(@SafeParcelable.Param(m796id = 1) String str, @SafeParcelable.Param(m796id = 2) String str2, @SafeParcelable.Param(m796id = 3) String str3, @SafeParcelable.Param(m796id = 4) String str4, @SafeParcelable.Param(m796id = 5) zzb zzbVar, @SafeParcelable.Param(m796id = 6) String str5, @SafeParcelable.Param(m796id = 7) Bundle bundle) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = zzbVar;
        this.zzf = str5;
        if (bundle != null) {
            this.zzg = bundle;
        } else {
            this.zzg = Bundle.EMPTY;
        }
        ClassLoader classLoader = zzc.class.getClassLoader();
        zzbp.zza(classLoader);
        this.zzg.setClassLoader(classLoader);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ActionImpl { { actionType: '");
        sb.append(this.zza);
        sb.append("' } { objectName: '");
        sb.append(this.zzb);
        sb.append("' } { objectUrl: '");
        sb.append(this.zzc);
        sb.append("' } ");
        if (this.zzd != null) {
            sb.append("{ objectSameAs: '");
            sb.append(this.zzd);
            sb.append("' } ");
        }
        if (this.zze != null) {
            sb.append("{ metadata: '");
            sb.append(this.zze.toString());
            sb.append("' } ");
        }
        if (this.zzf != null) {
            sb.append("{ actionStatus: '");
            sb.append(this.zzf);
            sb.append("' } ");
        }
        if (!this.zzg.isEmpty()) {
            sb.append("{ ");
            sb.append(this.zzg);
            sb.append(" } ");
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zze, i, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzf, false);
        SafeParcelWriter.writeBundle(parcel, 7, this.zzg, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzb zza() {
        return this.zze;
    }
}
