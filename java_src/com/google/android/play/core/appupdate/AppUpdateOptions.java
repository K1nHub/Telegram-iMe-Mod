package com.google.android.play.core.appupdate;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public abstract class AppUpdateOptions {

    /* compiled from: com.google.android.play:core@@1.10.2 */
    /* loaded from: classes3.dex */
    public static abstract class Builder {
        public abstract AppUpdateOptions build();

        public abstract Builder setAllowAssetPackDeletion(boolean z);
    }

    public static AppUpdateOptions defaultOptions(int i) {
        return newBuilder(i).build();
    }

    public static Builder newBuilder(int i) {
        zzu zzuVar = new zzu();
        zzuVar.setAppUpdateType(i);
        zzuVar.setAllowAssetPackDeletion(false);
        return zzuVar;
    }

    public abstract boolean allowAssetPackDeletion();

    public abstract int appUpdateType();
}
