package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-base@@18.1.0 */
@KeepForSdk
@SafeParcelable.Class(creator = "ClientIdentityCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class ClientIdentity extends AbstractSafeParcelable {
    @KeepForSdk
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new zaa();
    @KeepForSdk
    @SafeParcelable.Field(defaultValueUnchecked = "null", m1090id = 2)
    public final String packageName;
    @KeepForSdk
    @SafeParcelable.Field(defaultValueUnchecked = SessionDescription.SUPPORTED_SDP_VERSION, m1090id = 1)
    public final int uid;

    @SafeParcelable.Constructor
    public ClientIdentity(@SafeParcelable.Param(m1089id = 1) int i, @SafeParcelable.Param(m1089id = 2) String str) {
        this.uid = i;
        this.packageName = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ClientIdentity) {
            ClientIdentity clientIdentity = (ClientIdentity) obj;
            return clientIdentity.uid == this.uid && Objects.equal(clientIdentity.packageName, this.packageName);
        }
        return false;
    }

    public final int hashCode() {
        return this.uid;
    }

    public final String toString() {
        int i = this.uid;
        String str = this.packageName;
        return i + ":" + str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.uid);
        SafeParcelWriter.writeString(parcel, 2, this.packageName, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
