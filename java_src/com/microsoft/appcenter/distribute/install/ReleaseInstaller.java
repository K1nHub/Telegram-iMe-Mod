package com.microsoft.appcenter.distribute.install;

import android.net.Uri;
/* loaded from: classes4.dex */
public interface ReleaseInstaller {

    /* loaded from: classes4.dex */
    public interface Listener {
        void onCancel();

        void onError(String errorMessage);
    }

    void clear();

    void install(Uri localUri);
}
