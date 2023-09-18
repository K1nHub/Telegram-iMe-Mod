package com.google.android.gms.wearable;

import android.net.Uri;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@VisibleForTesting
/* loaded from: classes4.dex */
public interface DataItem extends Freezable<DataItem> {
    Map<String, DataItemAsset> getAssets();

    byte[] getData();

    Uri getUri();

    DataItem setData(byte[] bArr);
}
