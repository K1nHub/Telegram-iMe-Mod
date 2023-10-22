package com.microsoft.appcenter.distribute.download.manager;

import android.app.DownloadManager;
import android.net.Uri;
import android.os.AsyncTask;
import com.microsoft.appcenter.distribute.ReleaseDetails;
import com.microsoft.appcenter.utils.AppCenterLog;
/* loaded from: classes4.dex */
class DownloadManagerRequestTask extends AsyncTask<Void, Void, Void> {
    private final DownloadManagerReleaseDownloader mDownloader;
    private final String mTitle;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DownloadManagerRequestTask(DownloadManagerReleaseDownloader downloader, String title) {
        this.mDownloader = downloader;
        this.mTitle = title;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Void doInBackground(Void... params) {
        ReleaseDetails releaseDetails = this.mDownloader.getReleaseDetails();
        Uri downloadUrl = releaseDetails.getDownloadUrl();
        AppCenterLog.debug("AppCenterDistribute", "Start downloading new release from " + downloadUrl);
        DownloadManager downloadManager = this.mDownloader.getDownloadManager();
        DownloadManager.Request createRequest = createRequest(downloadUrl);
        createRequest.setTitle(String.format(this.mTitle, releaseDetails.getShortVersion(), Integer.valueOf(releaseDetails.getVersion())));
        if (releaseDetails.isMandatoryUpdate()) {
            createRequest.setNotificationVisibility(2);
            createRequest.setVisibleInDownloadsUi(false);
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            long enqueue = downloadManager.enqueue(createRequest);
            if (isCancelled()) {
                return null;
            }
            this.mDownloader.onDownloadStarted(enqueue, currentTimeMillis);
            return null;
        } catch (IllegalArgumentException e) {
            this.mDownloader.onDownloadError(new IllegalStateException("Failed to start download: Download Manager is disabled.", e));
            return null;
        }
    }

    DownloadManager.Request createRequest(Uri Uri) {
        return new DownloadManager.Request(Uri);
    }
}
