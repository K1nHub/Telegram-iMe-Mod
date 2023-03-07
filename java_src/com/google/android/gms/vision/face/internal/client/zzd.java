package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
/* loaded from: classes3.dex */
public final class zzd implements Parcelable.Creator<FaceParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FaceParcel[] newArray(int i) {
        return new FaceParcel[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FaceParcel createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        LandmarkParcel[] landmarkParcelArr = null;
        zza[] zzaVarArr = null;
        int i = 0;
        int i2 = 0;
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        float f5 = Float.MAX_VALUE;
        float f6 = Float.MAX_VALUE;
        float f7 = Float.MAX_VALUE;
        float f8 = BitmapDescriptorFactory.HUE_RED;
        float f9 = BitmapDescriptorFactory.HUE_RED;
        float f10 = BitmapDescriptorFactory.HUE_RED;
        float f11 = -1.0f;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 1:
                    i = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 2:
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 3:
                    f = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case 4:
                    f2 = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case 5:
                    f3 = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case 6:
                    f4 = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case 7:
                    f5 = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case 8:
                    f6 = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case 9:
                    landmarkParcelArr = (LandmarkParcel[]) SafeParcelReader.createTypedArray(parcel, readHeader, LandmarkParcel.CREATOR);
                    break;
                case 10:
                    f8 = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case 11:
                    f9 = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case 12:
                    f10 = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case 13:
                    zzaVarArr = (zza[]) SafeParcelReader.createTypedArray(parcel, readHeader, zza.CREATOR);
                    break;
                case 14:
                    f7 = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case 15:
                    f11 = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new FaceParcel(i, i2, f, f2, f3, f4, f5, f6, f7, landmarkParcelArr, f8, f9, f10, zzaVarArr, f11);
    }
}
