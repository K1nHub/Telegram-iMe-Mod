package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-base@@18.1.0 */
@ShowFirstParty
@SafeParcelable.Class(creator = "FieldMappingDictionaryEntryCreator")
/* loaded from: classes.dex */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new zap();
    @SafeParcelable.VersionField(m1087id = 1)
    final int zaa;
    @SafeParcelable.Field(m1090id = 2)
    final String zab;
    @SafeParcelable.Field(m1090id = 3)
    final ArrayList zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zal(@SafeParcelable.Param(m1089id = 1) int i, @SafeParcelable.Param(m1089id = 2) String str, @SafeParcelable.Param(m1089id = 3) ArrayList arrayList) {
        this.zaa = i;
        this.zab = str;
        this.zac = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeString(parcel, 2, this.zab, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.zac, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zal(String str, Map map) {
        ArrayList arrayList;
        this.zaa = 1;
        this.zab = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (String str2 : map.keySet()) {
                arrayList.add(new zam(str2, (FastJsonResponse.Field) map.get(str2)));
            }
        }
        this.zac = arrayList;
    }
}
