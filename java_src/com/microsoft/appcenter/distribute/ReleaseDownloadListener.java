package com.microsoft.appcenter.distribute;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.net.Uri;
import com.microsoft.appcenter.distribute.download.ReleaseDownloader;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.HandlerUtils;
import java.text.NumberFormat;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class ReleaseDownloadListener implements ReleaseDownloader.Listener {
    private final Context mContext;
    private ProgressDialog mProgressDialog;
    private final ReleaseDetails mReleaseDetails;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReleaseDownloadListener(Context context, ReleaseDetails releaseDetails) {
        this.mContext = context;
        this.mReleaseDetails = releaseDetails;
    }

    @Override // com.microsoft.appcenter.distribute.download.ReleaseDownloader.Listener
    public void onStart(final long enqueueTime) {
        AppCenterLog.debug("AppCenterDistribute", String.format(Locale.ENGLISH, "Start download %s (%d) update.", this.mReleaseDetails.getShortVersion(), Integer.valueOf(this.mReleaseDetails.getVersion())));
        HandlerUtils.runOnUiThread(new Runnable() { // from class: com.microsoft.appcenter.distribute.ReleaseDownloadListener.1
            @Override // java.lang.Runnable
            public void run() {
                Distribute.getInstance().setDownloading(ReleaseDownloadListener.this.mReleaseDetails, enqueueTime);
            }
        });
    }

    @Override // com.microsoft.appcenter.distribute.download.ReleaseDownloader.Listener
    public synchronized boolean onProgress(final long currentSize, final long totalSize) {
        AppCenterLog.verbose("AppCenterDistribute", String.format(Locale.ENGLISH, "Downloading %s (%d) update: %d KiB / %d KiB", this.mReleaseDetails.getShortVersion(), Integer.valueOf(this.mReleaseDetails.getVersion()), Long.valueOf(currentSize / 1024), Long.valueOf(totalSize / 1024)));
        HandlerUtils.runOnUiThread(new Runnable() { // from class: com.microsoft.appcenter.distribute.ReleaseDownloadListener.2
            @Override // java.lang.Runnable
            public void run() {
                ReleaseDownloadListener.this.updateProgressDialog(currentSize, totalSize);
            }
        });
        return this.mProgressDialog != null;
    }

    @Override // com.microsoft.appcenter.distribute.download.ReleaseDownloader.Listener
    public void onComplete(final Uri localUri) {
        HandlerUtils.runOnUiThread(new Runnable() { // from class: com.microsoft.appcenter.distribute.ReleaseDownloadListener.3
            @Override // java.lang.Runnable
            public void run() {
                Distribute.getInstance().setInstalling(ReleaseDownloadListener.this.mReleaseDetails, localUri);
            }
        });
    }

    @Override // com.microsoft.appcenter.distribute.download.ReleaseDownloader.Listener
    public void onError(String errorMessage) {
        AppCenterLog.error("AppCenterDistribute", String.format(Locale.ENGLISH, "Failed to download %s (%d) update: %s", this.mReleaseDetails.getShortVersion(), Integer.valueOf(this.mReleaseDetails.getVersion()), errorMessage));
        HandlerUtils.runOnUiThread(new Runnable() { // from class: com.microsoft.appcenter.distribute.ReleaseDownloadListener.4
            @Override // java.lang.Runnable
            public void run() {
                Distribute.getInstance().showToast(R$string.appcenter_distribute_downloading_error);
                Distribute.getInstance().completeWorkflow(ReleaseDownloadListener.this.mReleaseDetails);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ProgressDialog showDownloadProgress(Activity foregroundActivity) {
        if (this.mReleaseDetails.isMandatoryUpdate()) {
            ProgressDialog progressDialog = new ProgressDialog(foregroundActivity);
            this.mProgressDialog = progressDialog;
            progressDialog.setTitle(R$string.appcenter_distribute_downloading_update);
            this.mProgressDialog.setCancelable(false);
            this.mProgressDialog.setProgressStyle(1);
            this.mProgressDialog.setIndeterminate(true);
            this.mProgressDialog.setProgressNumberFormat(null);
            this.mProgressDialog.setProgressPercentFormat(null);
            return this.mProgressDialog;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void hideProgressDialog() {
        final ProgressDialog progressDialog = this.mProgressDialog;
        if (progressDialog != null) {
            this.mProgressDialog = null;
            HandlerUtils.runOnUiThread(new Runnable(this) { // from class: com.microsoft.appcenter.distribute.ReleaseDownloadListener.5
                @Override // java.lang.Runnable
                public void run() {
                    progressDialog.cancel();
                }
            });
            HandlerUtils.getMainHandler().removeCallbacksAndMessages("Distribute.handler_token_check_progress");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void updateProgressDialog(final long currentSize, final long totalSize) {
        ProgressDialog progressDialog = this.mProgressDialog;
        if (progressDialog != null && totalSize >= 0) {
            if (progressDialog.isIndeterminate()) {
                this.mProgressDialog.setProgressPercentFormat(NumberFormat.getPercentInstance());
                this.mProgressDialog.setProgressNumberFormat(this.mContext.getString(R$string.appcenter_distribute_download_progress_number_format));
                this.mProgressDialog.setIndeterminate(false);
                this.mProgressDialog.setMax((int) (totalSize / 1048576));
            }
            this.mProgressDialog.setProgress((int) (currentSize / 1048576));
        }
    }
}
