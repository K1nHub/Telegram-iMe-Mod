package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: com.google.android.gms:play-services-base@@18.1.0 */
@SafeParcelable.Class(creator = "ModuleAvailabilityResponseCreator")
/* loaded from: classes.dex */
public class ModuleAvailabilityResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ModuleAvailabilityResponse> CREATOR = new zaa();
    @SafeParcelable.Field(getter = "areModulesAvailable", m1090id = 1)
    private final boolean zaa;
    @SafeParcelable.Field(getter = "getAvailabilityStatus", m1090id = 2)
    private final int zab;

    /* compiled from: com.google.android.gms:play-services-base@@18.1.0 */
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes.dex */
    public @interface AvailabilityStatus {
        public static final int STATUS_ALREADY_AVAILABLE = 0;
        public static final int STATUS_READY_TO_DOWNLOAD = 1;
        public static final int STATUS_UNKNOWN_MODULE = 2;
    }

    @SafeParcelable.Constructor
    @KeepForSdk
    public ModuleAvailabilityResponse(@SafeParcelable.Param(m1089id = 1) boolean z, @SafeParcelable.Param(m1089id = 2) int i) {
        this.zaa = z;
        this.zab = i;
    }

    public boolean areModulesAvailable() {
        return this.zaa;
    }

    @AvailabilityStatus
    public int getAvailabilityStatus() {
        return this.zab;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, areModulesAvailable());
        SafeParcelWriter.writeInt(parcel, 2, getAvailabilityStatus());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
