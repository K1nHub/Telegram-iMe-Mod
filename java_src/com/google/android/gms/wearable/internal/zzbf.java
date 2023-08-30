package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.ChannelApi;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "ChannelEventParcelableCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzbf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbf> CREATOR = new zzbg();
    @SafeParcelable.Field(m797id = 2)
    final zzbq zza;
    @SafeParcelable.Field(m797id = 3)
    final int zzb;
    @SafeParcelable.Field(m797id = 4)
    final int zzc;
    @SafeParcelable.Field(m797id = 5)
    final int zzd;

    @SafeParcelable.Constructor
    public zzbf(@SafeParcelable.Param(m796id = 2) zzbq zzbqVar, @SafeParcelable.Param(m796id = 3) int i, @SafeParcelable.Param(m796id = 4) int i2, @SafeParcelable.Param(m796id = 5) int i3) {
        this.zza = zzbqVar;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
    }

    public final String toString() {
        String str;
        String str2;
        String valueOf = String.valueOf(this.zza);
        int i = this.zzb;
        if (i == 1) {
            str = "CHANNEL_OPENED";
        } else if (i == 2) {
            str = "CHANNEL_CLOSED";
        } else if (i != 3) {
            str = i != 4 ? Integer.toString(i) : "OUTPUT_CLOSED";
        } else {
            str = "INPUT_CLOSED";
        }
        int i2 = this.zzc;
        if (i2 == 0) {
            str2 = "CLOSE_REASON_NORMAL";
        } else if (i2 == 1) {
            str2 = "CLOSE_REASON_DISCONNECTED";
        } else if (i2 != 2) {
            str2 = i2 != 3 ? Integer.toString(i2) : "CLOSE_REASON_LOCAL_CLOSE";
        } else {
            str2 = "CLOSE_REASON_REMOTE_CLOSE";
        }
        int i3 = this.zzd;
        return "ChannelEventParcelable[, channel=" + valueOf + ", type=" + str + ", closeReason=" + str2 + ", appErrorCode=" + i3 + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zza, i, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeInt(parcel, 5, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final void zza(ChannelApi.ChannelListener channelListener) {
        int i = this.zzb;
        if (i == 1) {
            channelListener.onChannelOpened(this.zza);
        } else if (i == 2) {
            channelListener.onChannelClosed(this.zza, this.zzc, this.zzd);
        } else if (i == 3) {
            channelListener.onInputClosed(this.zza, this.zzc, this.zzd);
        } else if (i == 4) {
            channelListener.onOutputClosed(this.zza, this.zzc, this.zzd);
        } else {
            Log.w("ChannelEventParcelable", "Unknown type: " + i);
        }
    }
}
