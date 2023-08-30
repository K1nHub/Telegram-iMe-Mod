package com.google.android.gms.fido.sourcedevice;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
@SafeParcelable.Class(creator = "SourceStartDirectTransferOptionsCreator")
/* loaded from: classes.dex */
public class SourceStartDirectTransferOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final int CALLER_TYPE_BROWSER = 2;
    public static final int CALLER_TYPE_UNKNOWN = 0;
    public static final Parcelable.Creator<SourceStartDirectTransferOptions> CREATOR = new zzb();
    @SafeParcelable.Field(defaultValueUnchecked = "SourceStartDirectTransferOptions.CALLER_TYPE_UNKNOWN", getter = "getCallerType", m797id = 1)
    private int zza;
    @SafeParcelable.Field(defaultValueUnchecked = "false", getter = "getIsUserPresenceVerified", m797id = 2)
    private boolean zzb;
    @SafeParcelable.Field(defaultValueUnchecked = "null", getter = "getAccountListForAuthentication", m797id = 3)
    private List zzc;
    @SafeParcelable.Field(defaultValueUnchecked = "false", getter = "getIsUserVerified", m797id = 4)
    private boolean zzd;
    @SafeParcelable.Field(defaultValueUnchecked = "null", getter = "getUserVerificationOrigin", m797id = 5)
    private String zze;

    public SourceStartDirectTransferOptions(int i) {
        this.zza = i;
        this.zzb = false;
        this.zzd = false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzb);
        SafeParcelWriter.writeTypedList(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzd);
        SafeParcelWriter.writeString(parcel, 5, this.zze, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public SourceStartDirectTransferOptions(@SafeParcelable.Param(m796id = 1) int i, @SafeParcelable.Param(m796id = 2) boolean z, @SafeParcelable.Param(m796id = 3) List list, @SafeParcelable.Param(m796id = 4) boolean z2, @SafeParcelable.Param(m796id = 5) String str) {
        this.zza = i;
        this.zzb = z;
        this.zzc = list;
        this.zzd = z2;
        this.zze = str;
    }
}
