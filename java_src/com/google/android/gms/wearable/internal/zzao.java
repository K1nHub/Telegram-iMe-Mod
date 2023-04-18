package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.CapabilityInfo;
import com.google.android.gms.wearable.Node;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "CapabilityInfoParcelableCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzao extends AbstractSafeParcelable implements CapabilityInfo {
    public static final Parcelable.Creator<zzao> CREATOR = new zzap();
    @SafeParcelable.Field(getter = "getName", m775id = 2)
    private final String zzb;
    @SafeParcelable.Field(getter = "getNodeParcelables", m775id = 3)
    private final List zzc;
    private final Object zza = new Object();
    private Set zzd = null;

    @SafeParcelable.Constructor
    public zzao(@SafeParcelable.Param(m774id = 2) String str, @SafeParcelable.Param(m774id = 3) List list) {
        this.zzb = str;
        this.zzc = list;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzao.class != obj.getClass()) {
            return false;
        }
        zzao zzaoVar = (zzao) obj;
        String str = this.zzb;
        if (str == null ? zzaoVar.zzb == null : str.equals(zzaoVar.zzb)) {
            List list = this.zzc;
            return list == null ? zzaoVar.zzc == null : list.equals(zzaoVar.zzc);
        }
        return false;
    }

    @Override // com.google.android.gms.wearable.CapabilityInfo
    public final String getName() {
        return this.zzb;
    }

    @Override // com.google.android.gms.wearable.CapabilityInfo
    public final Set<Node> getNodes() {
        Set<Node> set;
        synchronized (this.zza) {
            if (this.zzd == null) {
                this.zzd = new HashSet(this.zzc);
            }
            set = this.zzd;
        }
        return set;
    }

    public final int hashCode() {
        String str = this.zzb;
        int hashCode = ((str != null ? str.hashCode() : 0) + 31) * 31;
        List list = this.zzc;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        String str = this.zzb;
        String valueOf = String.valueOf(this.zzc);
        return "CapabilityInfo{" + str + ", " + valueOf + "}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
