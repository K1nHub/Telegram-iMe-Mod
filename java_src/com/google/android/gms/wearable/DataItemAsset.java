package com.google.android.gms.wearable;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.util.VisibleForTesting;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@VisibleForTesting
/* loaded from: classes4.dex */
public interface DataItemAsset extends Freezable<DataItemAsset> {
    String getDataItemKey();

    String getId();
}
