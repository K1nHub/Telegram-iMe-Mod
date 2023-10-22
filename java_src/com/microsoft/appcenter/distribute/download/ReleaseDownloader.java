package com.microsoft.appcenter.distribute.download;

import android.net.Uri;
import com.microsoft.appcenter.distribute.ReleaseDetails;
/* loaded from: classes4.dex */
public interface ReleaseDownloader {

    /* loaded from: classes4.dex */
    public interface Listener {
        void onComplete(Uri localUri);

        void onError(String errorMessage);

        boolean onProgress(long currentSize, long totalSize);

        void onStart(long enqueueTime);
    }

    void cancel();

    ReleaseDetails getReleaseDetails();

    boolean isDownloading();

    void resume();
}
