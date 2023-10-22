package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzdh implements DataItem {
    private final Uri zza;
    private final byte[] zzb;
    private final Map zzc;

    public zzdh(DataItem dataItem) {
        this.zza = dataItem.getUri();
        this.zzb = dataItem.getData();
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, DataItemAsset> entry : dataItem.getAssets().entrySet()) {
            if (entry.getKey() != null) {
                hashMap.put(entry.getKey(), entry.getValue().freeze());
            }
        }
        this.zzc = Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ DataItem freeze() {
        return this;
    }

    @Override // com.google.android.gms.wearable.DataItem
    public final Map<String, DataItemAsset> getAssets() {
        return this.zzc;
    }

    @Override // com.google.android.gms.wearable.DataItem
    public final byte[] getData() {
        return this.zzb;
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
    public final DataItem setData(byte[] bArr) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        boolean isLoggable = Log.isLoggable("DataItem", 3);
        StringBuilder sb = new StringBuilder("DataItemEntity{ ");
        sb.append("uri=".concat(String.valueOf(this.zza)));
        byte[] bArr = this.zzb;
        sb.append(", dataSz=".concat((bArr == null ? "null" : Integer.valueOf(bArr.length)).toString()));
        int size = this.zzc.size();
        sb.append(", numAssets=" + size);
        if (isLoggable && !this.zzc.isEmpty()) {
            sb.append(", assets=[");
            String str = "";
            for (Map.Entry entry : this.zzc.entrySet()) {
                String id = ((DataItemAsset) entry.getValue()).getId();
                sb.append(str + ((String) entry.getKey()) + ": " + id);
                str = ", ";
            }
            sb.append("]");
        }
        sb.append(" }");
        return sb.toString();
    }
}
