package com.google.firebase.dynamiclinks.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* loaded from: classes4.dex */
public class DynamicLinkUTMParams {
    public DynamicLinkUTMParams(DynamicLinkData dynamicLinkData) {
        initUTMParamsBundle(dynamicLinkData);
    }

    private static Bundle initUTMParamsBundle(DynamicLinkData dynamicLinkData) {
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3 = new Bundle();
        if (dynamicLinkData == null || dynamicLinkData.getExtensionBundle() == null || (bundle = dynamicLinkData.getExtensionBundle().getBundle("scionData")) == null || (bundle2 = bundle.getBundle("_cmp")) == null) {
            return bundle3;
        }
        checkAndAdd("medium", "utm_medium", bundle2, bundle3);
        checkAndAdd("source", "utm_source", bundle2, bundle3);
        checkAndAdd("campaign", "utm_campaign", bundle2, bundle3);
        return bundle3;
    }

    private static void checkAndAdd(String str, String str2, Bundle bundle, Bundle bundle2) {
        String string = bundle.getString(str);
        if (TextUtils.isEmpty(string)) {
            return;
        }
        bundle2.putString(str2, string);
    }
}
