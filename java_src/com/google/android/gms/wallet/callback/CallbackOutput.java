package com.google.android.gms.wallet.callback;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "CallbackOutputCreator")
/* loaded from: classes3.dex */
public class CallbackOutput extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CallbackOutput> CREATOR = new zzk();
    @SafeParcelable.Field(m789id = 1)
    int zza;
    @SafeParcelable.Field(m789id = 2)
    int zzb;
    @SafeParcelable.Field(m789id = 3)
    byte[] zzc;
    @SafeParcelable.Field(m789id = 4)
    String zzd;

    private CallbackOutput() {
    }

    public static zzj zza() {
        return new zzj(new CallbackOutput(), null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeByteArray(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public CallbackOutput(@SafeParcelable.Param(m788id = 1) int i, @SafeParcelable.Param(m788id = 2) int i2, @SafeParcelable.Param(m788id = 3) byte[] bArr, @SafeParcelable.Param(m788id = 4) String str) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = bArr;
        this.zzd = str;
    }
}
