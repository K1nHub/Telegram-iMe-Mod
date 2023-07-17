package com.microsoft.appcenter.distribute.install;

import android.content.Context;
import android.os.Handler;
import com.microsoft.appcenter.distribute.install.ReleaseInstaller;
import com.microsoft.appcenter.utils.AppCenterLog;
/* loaded from: classes4.dex */
public abstract class AbstractReleaseInstaller implements ReleaseInstaller {
    protected final Context mContext;
    private final Handler mInstallerHandler;
    private final ReleaseInstaller.Listener mListener;

    @Override // com.microsoft.appcenter.distribute.install.ReleaseInstaller
    public void clear() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractReleaseInstaller(Context context, Handler installerHandler, ReleaseInstaller.Listener listener) {
        this.mContext = context;
        this.mInstallerHandler = installerHandler;
        this.mListener = listener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void post(Runnable runnable) {
        this.mInstallerHandler.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void postDelayed(Runnable runnable, long delayMillis) {
        this.mInstallerHandler.postDelayed(runnable, delayMillis);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onError(String message) {
        AppCenterLog.error("AppCenterDistribute", "Failed to install a new release: " + message);
        this.mListener.onError(message);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onError(String errorMessage, Throwable throwable) {
        AppCenterLog.error("AppCenterDistribute", "Failed to install a new release: " + errorMessage, throwable);
        this.mListener.onError(errorMessage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCancel() {
        AppCenterLog.debug("AppCenterDistribute", "Installation cancelled.");
        this.mListener.onCancel();
    }
}
