package com.microsoft.appcenter.distribute;

import android.app.Activity;
/* loaded from: classes4.dex */
public interface DistributeListener {
    void onNoReleaseAvailable(Activity activity);

    boolean onReleaseAvailable(Activity activity, ReleaseDetails releaseDetails);
}
