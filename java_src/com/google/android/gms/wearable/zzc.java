package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes4.dex */
public final class zzc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        byte[] bArr = null;
        String str = null;
        ParcelFileDescriptor parcelFileDescriptor = null;
        Uri uri = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 2) {
                bArr = SafeParcelReader.createByteArray(parcel, readHeader);
            } else if (fieldId == 3) {
                str = SafeParcelReader.createString(parcel, readHeader);
            } else if (fieldId == 4) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.createParcelable(parcel, readHeader, ParcelFileDescriptor.CREATOR);
            } else if (fieldId == 5) {
                uri = (Uri) SafeParcelReader.createParcelable(parcel, readHeader, Uri.CREATOR);
            } else {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new Asset(bArr, str, parcelFileDescriptor, uri);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new Asset[i];
    }
}
