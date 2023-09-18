package com.google.android.gms.vision.label.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4.dex */
public final class zzh implements Parcelable.Creator<LabelOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LabelOptions[] newArray(int i) {
        return new LabelOptions[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LabelOptions createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i = 0;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            if (SafeParcelReader.getFieldId(readHeader) == 2) {
                i = SafeParcelReader.readInt(parcel, readHeader);
            } else {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new LabelOptions(i);
    }
}
