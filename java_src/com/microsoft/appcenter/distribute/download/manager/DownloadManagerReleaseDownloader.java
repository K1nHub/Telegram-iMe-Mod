package com.microsoft.appcenter.distribute.download.manager;

import android.app.DownloadManager;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import com.microsoft.appcenter.distribute.R$string;
import com.microsoft.appcenter.distribute.ReleaseDetails;
import com.microsoft.appcenter.distribute.download.AbstractReleaseDownloader;
import com.microsoft.appcenter.distribute.download.ReleaseDownloader;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.AsyncTaskUtils;
import com.microsoft.appcenter.utils.HandlerUtils;
import com.microsoft.appcenter.utils.storage.SharedPreferencesManager;
import java.io.IOException;
/* loaded from: classes4.dex */
public class DownloadManagerReleaseDownloader extends AbstractReleaseDownloader {
    private long mDownloadId;
    private DownloadManagerRequestTask mRequestTask;
    private DownloadManagerUpdateTask mUpdateTask;

    public DownloadManagerReleaseDownloader(Context context, ReleaseDetails releaseDetails, ReleaseDownloader.Listener listener) {
        super(context, releaseDetails, listener);
        this.mDownloadId = -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DownloadManager getDownloadManager() {
        return (DownloadManager) this.mContext.getSystemService("download");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long getDownloadId() {
        if (this.mDownloadId == -1) {
            this.mDownloadId = SharedPreferencesManager.getLong("Distribute.download_id", -1L);
        }
        return this.mDownloadId;
    }

    private synchronized void setDownloadId(long downloadId) {
        this.mDownloadId = downloadId;
        if (downloadId != -1) {
            SharedPreferencesManager.putLong("Distribute.download_id", downloadId);
        } else {
            SharedPreferencesManager.remove("Distribute.download_id");
        }
    }

    @Override // com.microsoft.appcenter.distribute.download.ReleaseDownloader
    public synchronized boolean isDownloading() {
        return this.mDownloadId != -1;
    }

    @Override // com.microsoft.appcenter.distribute.download.ReleaseDownloader
    public synchronized void resume() {
        this.mCompleted = false;
        update();
    }

    @Override // com.microsoft.appcenter.distribute.download.AbstractReleaseDownloader, com.microsoft.appcenter.distribute.download.ReleaseDownloader
    public synchronized void cancel() {
        super.cancel();
        DownloadManagerRequestTask downloadManagerRequestTask = this.mRequestTask;
        if (downloadManagerRequestTask != null) {
            downloadManagerRequestTask.cancel(true);
            this.mRequestTask = null;
        }
        DownloadManagerUpdateTask downloadManagerUpdateTask = this.mUpdateTask;
        if (downloadManagerUpdateTask != null) {
            downloadManagerUpdateTask.cancel(true);
            this.mUpdateTask = null;
        }
        long downloadId = getDownloadId();
        if (downloadId != -1) {
            remove(downloadId);
            setDownloadId(-1L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void clearDownloadId(long downloadId) {
        if (downloadId == getDownloadId()) {
            remove(downloadId);
            setDownloadId(-1L);
        }
    }

    private synchronized void request() {
        if (isCompleted()) {
            return;
        }
        if (this.mRequestTask != null) {
            AppCenterLog.debug("AppCenterDistribute", "Downloading is already in progress.");
        } else {
            this.mRequestTask = (DownloadManagerRequestTask) AsyncTaskUtils.execute("AppCenterDistribute", new DownloadManagerRequestTask(this, this.mContext.getString(R$string.appcenter_distribute_downloading_version)), new Void[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void update() {
        if (isCompleted()) {
            return;
        }
        this.mUpdateTask = (DownloadManagerUpdateTask) AsyncTaskUtils.execute("AppCenterDistribute", new DownloadManagerUpdateTask(this), new Void[0]);
    }

    private void remove(long downloadId) {
        AppCenterLog.debug("AppCenterDistribute", "Removing download and notification id=" + downloadId);
        AsyncTaskUtils.execute("AppCenterDistribute", new DownloadManagerRemoveTask(this.mContext, downloadId), new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelPendingDownload(long downloadId) {
        if (isCompleted()) {
            return;
        }
        AsyncTaskUtils.execute("AppCenterDistribute", new DownloadManagerCancelPendingTask(this, downloadId), new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void onStart() {
        request();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void onDownloadStarted(final long downloadId, long enqueueTime) {
        if (isCompleted()) {
            return;
        }
        setDownloadId(downloadId);
        this.mListener.onStart(enqueueTime);
        if (this.mReleaseDetails.isMandatoryUpdate()) {
            update();
        }
        HandlerUtils.getMainHandler().postDelayed(new Runnable() { // from class: com.microsoft.appcenter.distribute.download.manager.DownloadManagerReleaseDownloader.1
            @Override // java.lang.Runnable
            public void run() {
                DownloadManagerReleaseDownloader.this.cancelPendingDownload(downloadId);
            }
        }, 10000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void onDownloadProgress(Cursor cursor) {
        if (isCompleted()) {
            return;
        }
        long j = cursor.getLong(cursor.getColumnIndexOrThrow("total_size"));
        if (this.mListener.onProgress(cursor.getLong(cursor.getColumnIndexOrThrow("bytes_so_far")), j)) {
            HandlerUtils.getMainHandler().postAtTime(new Runnable() { // from class: com.microsoft.appcenter.distribute.download.manager.DownloadManagerReleaseDownloader.2
                @Override // java.lang.Runnable
                public void run() {
                    DownloadManagerReleaseDownloader.this.update();
                }
            }, "Distribute.handler_token_check_progress", SystemClock.uptimeMillis() + 500);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void onDownloadComplete() {
        if (isCompleted()) {
            return;
        }
        this.mCompleted = true;
        if (!isDownloadedFileValid()) {
            this.mListener.onError("Downloaded package file is invalid.");
            return;
        }
        AppCenterLog.debug("AppCenterDistribute", "Download was successful for id=" + this.mDownloadId);
        Uri uriForDownloadedFile = getDownloadManager().getUriForDownloadedFile(this.mDownloadId);
        if (uriForDownloadedFile != null) {
            this.mListener.onComplete(uriForDownloadedFile);
        } else {
            this.mListener.onError("Downloaded file not found.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void onDownloadError(RuntimeException e) {
        if (isCompleted()) {
            return;
        }
        this.mCompleted = true;
        AppCenterLog.error("AppCenterDistribute", "Failed to download update id=" + this.mDownloadId, e);
        this.mListener.onError(e.getMessage());
    }

    private boolean isDownloadedFileValid() {
        try {
            ParcelFileDescriptor openDownloadedFile = getDownloadManager().openDownloadedFile(this.mDownloadId);
            boolean z = openDownloadedFile.getStatSize() == this.mReleaseDetails.getSize();
            openDownloadedFile.close();
            return z;
        } catch (IOException e) {
            AppCenterLog.error("AppCenterDistribute", "Cannot open downloaded file for id=" + this.mDownloadId, e);
            return false;
        }
    }
}
