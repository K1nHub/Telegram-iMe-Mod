package com.microsoft.appcenter.distribute.install.session;

import android.content.pm.PackageInstaller;
import com.microsoft.appcenter.utils.AppCenterLog;
/* loaded from: classes4.dex */
public class PackageInstallerListener extends PackageInstaller.SessionCallback {
    private final SessionReleaseInstaller mInstaller;

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public void onActiveChanged(int sessionId, boolean active) {
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public void onBadgingChanged(int sessionId) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PackageInstallerListener(SessionReleaseInstaller installer) {
        this.mInstaller = installer;
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public void onCreated(int sessionId) {
        AppCenterLog.verbose("AppCenterDistribute", "The install session was created. sessionId=" + sessionId);
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public void onProgressChanged(int sessionId, float progress) {
        AppCenterLog.verbose("AppCenterDistribute", "Installation progress: " + ((int) (progress * 100.0f)) + "%. sessionId=" + sessionId);
        this.mInstaller.onInstallProgress(sessionId);
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public void onFinished(int sessionId, boolean success) {
        AppCenterLog.verbose("AppCenterDistribute", "The installation has been finished. sessionId=" + sessionId + ", success=" + success);
    }
}
