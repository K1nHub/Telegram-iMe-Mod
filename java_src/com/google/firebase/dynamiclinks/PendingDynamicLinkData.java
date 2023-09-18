package com.google.firebase.dynamiclinks;

import android.net.Uri;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.dynamiclinks.internal.DynamicLinkData;
import com.google.firebase.dynamiclinks.internal.DynamicLinkUTMParams;
/* loaded from: classes4.dex */
public class PendingDynamicLinkData {
    private final DynamicLinkData dynamicLinkData;

    @VisibleForTesting
    @KeepForSdk
    public PendingDynamicLinkData(DynamicLinkData dynamicLinkData) {
        if (dynamicLinkData == null) {
            this.dynamicLinkData = null;
            return;
        }
        if (dynamicLinkData.getClickTimestamp() == 0) {
            dynamicLinkData.setClickTimestamp(DefaultClock.getInstance().currentTimeMillis());
        }
        this.dynamicLinkData = dynamicLinkData;
        new DynamicLinkUTMParams(dynamicLinkData);
    }

    public Uri getLink() {
        String deepLink;
        DynamicLinkData dynamicLinkData = this.dynamicLinkData;
        if (dynamicLinkData == null || (deepLink = dynamicLinkData.getDeepLink()) == null) {
            return null;
        }
        return Uri.parse(deepLink);
    }
}
