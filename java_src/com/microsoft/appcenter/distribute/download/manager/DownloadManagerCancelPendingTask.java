package com.microsoft.appcenter.distribute.download.manager;

import android.os.AsyncTask;
/* loaded from: classes4.dex */
class DownloadManagerCancelPendingTask extends AsyncTask<Void, Void, Void> {
    private final long mDownloadId;
    private final DownloadManagerReleaseDownloader mDownloader;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DownloadManagerCancelPendingTask(DownloadManagerReleaseDownloader downloader, long downloadId) {
        this.mDownloader = downloader;
        this.mDownloadId = downloadId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Void doInBackground(Void... params) {
        if (isPending()) {
            this.mDownloader.clearDownloadId(this.mDownloadId);
            this.mDownloader.onDownloadError(new IllegalStateException("Failed to start downloading file due to timeout exception."));
            return null;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0025, code lost:
        if (r0.moveToFirst() != false) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isPending() {
        /*
            r6 = this;
            android.app.DownloadManager$Query r0 = new android.app.DownloadManager$Query
            r0.<init>()
            r1 = 1
            long[] r2 = new long[r1]
            long r3 = r6.mDownloadId
            r5 = 0
            r2[r5] = r3
            android.app.DownloadManager$Query r0 = r0.setFilterById(r2)
            android.app.DownloadManager$Query r0 = r0.setFilterByStatus(r1)
            com.microsoft.appcenter.distribute.download.manager.DownloadManagerReleaseDownloader r2 = r6.mDownloader
            android.app.DownloadManager r2 = r2.getDownloadManager()
            android.database.Cursor r0 = r2.query(r0)
            if (r0 == 0) goto L32
            boolean r2 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L28
            if (r2 == 0) goto L32
            goto L33
        L28:
            r1 = move-exception
            r0.close()     // Catch: java.lang.Throwable -> L2d
            goto L31
        L2d:
            r0 = move-exception
            r1.addSuppressed(r0)
        L31:
            throw r1
        L32:
            r1 = r5
        L33:
            if (r0 == 0) goto L38
            r0.close()
        L38:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.appcenter.distribute.download.manager.DownloadManagerCancelPendingTask.isPending():boolean");
    }
}
