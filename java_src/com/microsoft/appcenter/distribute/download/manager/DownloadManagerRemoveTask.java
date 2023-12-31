package com.microsoft.appcenter.distribute.download.manager;

import android.app.DownloadManager;
import android.content.Context;
import android.os.AsyncTask;
/* loaded from: classes4.dex */
class DownloadManagerRemoveTask extends AsyncTask<Void, Void, Void> {
    private final Context mContext;
    private final long mDownloadId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DownloadManagerRemoveTask(Context context, long downloadId) {
        this.mContext = context;
        this.mDownloadId = downloadId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Void doInBackground(Void... params) {
        ((DownloadManager) this.mContext.getSystemService("download")).remove(this.mDownloadId);
        return null;
    }
}
