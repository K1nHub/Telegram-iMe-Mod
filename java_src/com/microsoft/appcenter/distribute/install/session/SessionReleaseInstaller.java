package com.microsoft.appcenter.distribute.install.session;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInstaller;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import com.microsoft.appcenter.distribute.install.AbstractReleaseInstaller;
import com.microsoft.appcenter.distribute.install.ReleaseInstaller;
import com.microsoft.appcenter.distribute.install.ReleaseInstallerActivity;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.async.AppCenterConsumer;
import com.microsoft.appcenter.utils.async.AppCenterFuture;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4.dex */
public class SessionReleaseInstaller extends AbstractReleaseInstaller {
    private BroadcastReceiver mInstallStatusReceiver;
    private PackageInstaller.SessionCallback mSessionCallback;
    private int mSessionId;
    private boolean mUserConfirmationRequested;

    public String toString() {
        return "PackageInstaller";
    }

    public SessionReleaseInstaller(Context context, Handler installerHandler, ReleaseInstaller.Listener listener) {
        super(context, installerHandler, listener);
        this.mSessionId = -1;
    }

    private PackageInstaller getPackageInstaller() {
        return this.mContext.getPackageManager().getPackageInstaller();
    }

    @Override // com.microsoft.appcenter.distribute.install.ReleaseInstaller
    public void install(final Uri localUri) {
        registerListeners();
        post(new Runnable() { // from class: com.microsoft.appcenter.distribute.install.session.SessionReleaseInstaller.1
            @Override // java.lang.Runnable
            public void run() {
                SessionReleaseInstaller.this.abandonSession();
                SessionReleaseInstaller.this.startInstallSession(localUri);
            }
        });
    }

    @Override // com.microsoft.appcenter.distribute.install.AbstractReleaseInstaller, com.microsoft.appcenter.distribute.install.ReleaseInstaller
    public synchronized void clear() {
        super.clear();
        unregisterListeners();
        abandonSession();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void onInstallProgress(int sessionId) {
        if (this.mSessionId != sessionId) {
            return;
        }
        this.mUserConfirmationRequested = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void onInstallConfirmation(int sessionId, Intent confirmIntent) {
        if (this.mSessionId != sessionId) {
            return;
        }
        AppCenterLog.info("AppCenterDistribute", "Ask confirmation to install a new release.");
        this.mUserConfirmationRequested = true;
        AppCenterFuture<ReleaseInstallerActivity.Result> startActivityForResult = ReleaseInstallerActivity.startActivityForResult(this.mContext, confirmIntent);
        if (startActivityForResult == null) {
            return;
        }
        startActivityForResult.thenAccept(new AppCenterConsumer<ReleaseInstallerActivity.Result>() { // from class: com.microsoft.appcenter.distribute.install.session.SessionReleaseInstaller.2
            @Override // com.microsoft.appcenter.utils.async.AppCenterConsumer
            public void accept(ReleaseInstallerActivity.Result result) {
                SessionReleaseInstaller.this.cancelIfNoProgress();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void onInstallError(int sessionId, String message) {
        if (this.mSessionId != sessionId) {
            return;
        }
        this.mSessionId = -1;
        onError(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void onInstallCancel(int sessionId) {
        if (this.mSessionId != sessionId) {
            return;
        }
        this.mSessionId = -1;
        onCancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelIfNoProgress() {
        postDelayed(new Runnable() { // from class: com.microsoft.appcenter.distribute.install.session.SessionReleaseInstaller.3
            @Override // java.lang.Runnable
            public void run() {
                if (SessionReleaseInstaller.this.mUserConfirmationRequested) {
                    SessionReleaseInstaller.this.onCancel();
                }
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void startInstallSession(Uri localUri) {
        PackageInstaller.Session session = null;
        try {
            ParcelFileDescriptor openFileDescriptor = this.mContext.getContentResolver().openFileDescriptor(localUri, "r");
            try {
                PackageInstaller.Session createSession = createSession(openFileDescriptor);
                addFileToInstallSession(openFileDescriptor, createSession);
                createSession.commit(InstallStatusReceiver.getInstallStatusIntentSender(this.mContext, this.mSessionId));
                createSession.close();
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
            } catch (Throwable th) {
                if (openFileDescriptor != null) {
                    try {
                        openFileDescriptor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException | RuntimeException e) {
            if (0 != 0) {
                session.abandon();
            }
            onError("Cannot initiate PackageInstaller.Session", e);
        }
    }

    private static void addFileToInstallSession(ParcelFileDescriptor fileDescriptor, PackageInstaller.Session session) throws IOException {
        OutputStream openWrite = session.openWrite("AppCenterPackageInstallerStream", 0L, fileDescriptor.getStatSize());
        try {
            FileInputStream fileInputStream = new FileInputStream(fileDescriptor.getFileDescriptor());
            byte[] bArr = new byte[65536];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read < 0) {
                    break;
                }
                openWrite.write(bArr, 0, read);
            }
            session.fsync(openWrite);
            fileInputStream.close();
            if (openWrite != null) {
                openWrite.close();
            }
        } catch (Throwable th) {
            if (openWrite != null) {
                try {
                    openWrite.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private synchronized void registerListeners() {
        if (this.mInstallStatusReceiver == null) {
            AppCenterLog.debug("AppCenterDistribute", "Register receiver for installing a new release.");
            InstallStatusReceiver installStatusReceiver = new InstallStatusReceiver(this);
            this.mInstallStatusReceiver = installStatusReceiver;
            this.mContext.registerReceiver(installStatusReceiver, InstallStatusReceiver.getInstallerReceiverFilter());
        }
        if (this.mSessionCallback == null) {
            PackageInstaller packageInstaller = getPackageInstaller();
            PackageInstallerListener packageInstallerListener = new PackageInstallerListener(this);
            this.mSessionCallback = packageInstallerListener;
            packageInstaller.registerSessionCallback(packageInstallerListener);
        }
    }

    private synchronized void unregisterListeners() {
        if (this.mInstallStatusReceiver != null) {
            AppCenterLog.debug("AppCenterDistribute", "Unregister receiver for installing a new release.");
            this.mContext.unregisterReceiver(this.mInstallStatusReceiver);
            this.mInstallStatusReceiver = null;
        }
        if (this.mSessionCallback != null) {
            getPackageInstaller().unregisterSessionCallback(this.mSessionCallback);
            this.mSessionCallback = null;
        }
    }

    private PackageInstaller.Session createSession(ParcelFileDescriptor fileDescriptor) throws IOException {
        PackageInstaller packageInstaller = getPackageInstaller();
        PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
        sessionParams.setSize(fileDescriptor.getStatSize());
        sessionParams.setAppPackageName(this.mContext.getPackageName());
        int createSession = packageInstaller.createSession(sessionParams);
        this.mSessionId = createSession;
        try {
            return packageInstaller.openSession(createSession);
        } catch (IllegalStateException e) {
            AppCenterLog.warn("AppCenterDistribute", "Cannot open session, trying to cleanup previous ones.", e);
            cleanPreviousSessions();
            return packageInstaller.openSession(this.mSessionId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abandonSession() {
        if (this.mSessionId != -1) {
            AppCenterLog.debug("AppCenterDistribute", "Abandon PackageInstaller session.");
            getPackageInstaller().abandonSession(this.mSessionId);
            this.mSessionId = -1;
        }
    }

    private void cleanPreviousSessions() {
        PackageInstaller packageInstaller = getPackageInstaller();
        for (PackageInstaller.SessionInfo sessionInfo : getPackageInstaller().getMySessions()) {
            AppCenterLog.warn("AppCenterDistribute", "Abandon leaked session: " + sessionInfo.getSessionId());
            packageInstaller.abandonSession(sessionInfo.getSessionId());
        }
    }
}
