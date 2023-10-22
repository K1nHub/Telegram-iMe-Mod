package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@VisibleForTesting
@SafeParcelable.Class(creator = "DataItemParcelableCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzdi extends AbstractSafeParcelable implements DataItem {
    public static final Parcelable.Creator<zzdi> CREATOR = new zzdj();
    @SafeParcelable.Field(getter = "getUri", m1089id = 2)
    private final Uri zza;
    @SafeParcelable.Field(getter = "getAssetsInternal", m1089id = 4, type = "android.os.Bundle")
    private final Map zzb;
    @SafeParcelable.Field(getter = "getData", m1089id = 5)
    private byte[] zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzdi(@SafeParcelable.Param(m1088id = 2) Uri uri, @SafeParcelable.Param(m1088id = 4) Bundle bundle, @SafeParcelable.Param(m1088id = 5) byte[] bArr) {
        this.zza = uri;
        HashMap hashMap = new HashMap();
        bundle.setClassLoader((ClassLoader) Preconditions.checkNotNull(DataItemAssetParcelable.class.getClassLoader()));
        for (String str : bundle.keySet()) {
            hashMap.put(str, (DataItemAssetParcelable) Preconditions.checkNotNull(bundle.getParcelable(str)));
        }
        this.zzb = hashMap;
        this.zzc = bArr;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ DataItem freeze() {
        return this;
    }

    @Override // com.google.android.gms.wearable.DataItem
    public final Map<String, DataItemAsset> getAssets() {
        return this.zzb;
    }

    @Override // com.google.android.gms.wearable.DataItem
    @VisibleForTesting
    public final byte[] getData() {
        return this.zzc;
    }

    @Override // com.google.android.gms.wearable.DataItem
    public final Uri getUri() {
        return this.zza;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.wearable.DataItem
    public final /* synthetic */ DataItem setData(byte[] bArr) {
        this.zzc = bArr;
        return this;
    }

    public final String toString() {
        boolean isLoggable = Log.isLoggable("DataItem", 3);
        StringBuilder sb = new StringBuilder("DataItemParcelable[");
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        byte[] bArr = this.zzc;
        sb.append(",dataSz=".concat((bArr == null ? "null" : Integer.valueOf(bArr.length)).toString()));
        int size = this.zzb.size();
        sb.append(", numAssets=" + size);
        sb.append(", uri=".concat(String.valueOf(this.zza)));
        if (!isLoggable) {
            sb.append("]");
            return sb.toString();
        }
        sb.append("]\n  assets: ");
        for (String str : this.zzb.keySet()) {
            String valueOf = String.valueOf(this.zzb.get(str));
            sb.append("\n    " + str + ": " + valueOf);
        }
        sb.append("\n  ]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zza, i, false);
        Bundle bundle = new Bundle();
        bundle.setClassLoader((ClassLoader) Preconditions.checkNotNull(DataItemAssetParcelable.class.getClassLoader()));
        for (Map.Entry entry : this.zzb.entrySet()) {
            bundle.putParcelable((String) entry.getKey(), new DataItemAssetParcelable((DataItemAsset) entry.getValue()));
        }
        SafeParcelWriter.writeBundle(parcel, 4, bundle, false);
        SafeParcelWriter.writeByteArray(parcel, 5, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
