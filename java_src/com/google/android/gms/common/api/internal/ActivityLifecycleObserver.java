package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: com.google.android.gms:play-services-base@@18.1.0 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class ActivityLifecycleObserver {
    @KeepForSdk
    /* renamed from: of */
    public static final ActivityLifecycleObserver m786of(Activity activity) {
        return new zab(zaa.zaa(activity));
    }

    @KeepForSdk
    public abstract ActivityLifecycleObserver onStopCallOnce(Runnable runnable);
}
