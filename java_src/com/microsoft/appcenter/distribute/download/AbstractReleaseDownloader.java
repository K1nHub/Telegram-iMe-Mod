package com.microsoft.appcenter.distribute.download;

import android.content.Context;
import com.microsoft.appcenter.distribute.ReleaseDetails;
import com.microsoft.appcenter.distribute.download.ReleaseDownloader;
/* loaded from: classes4.dex */
public abstract class AbstractReleaseDownloader implements ReleaseDownloader {
    protected boolean mCompleted;
    protected final Context mContext;
    protected final ReleaseDownloader.Listener mListener;
    protected final ReleaseDetails mReleaseDetails;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractReleaseDownloader(Context context, ReleaseDetails releaseDetails, ReleaseDownloader.Listener listener) {
        this.mContext = context;
        this.mReleaseDetails = releaseDetails;
        this.mListener = listener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isCompleted() {
        return this.mCompleted;
    }

    @Override // com.microsoft.appcenter.distribute.download.ReleaseDownloader
    public ReleaseDetails getReleaseDetails() {
        return this.mReleaseDetails;
    }

    @Override // com.microsoft.appcenter.distribute.download.ReleaseDownloader
    public void cancel() {
        this.mCompleted = true;
    }
}
