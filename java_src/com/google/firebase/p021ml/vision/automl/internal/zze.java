package com.google.firebase.p021ml.vision.automl.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.google.firebase.ml.vision.automl.internal.zze */
/* loaded from: classes3.dex */
public final class zze implements Parcelable.Creator<zzf> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzf[] newArray(int i) {
        return new zzf[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzf createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String str = null;
        String str2 = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 1) {
                str = SafeParcelReader.createString(parcel, readHeader);
            } else if (fieldId == 2) {
                str2 = SafeParcelReader.createString(parcel, readHeader);
            } else if (fieldId == 3) {
                f = SafeParcelReader.readFloat(parcel, readHeader);
            } else {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzf(str, str2, f);
    }
}
