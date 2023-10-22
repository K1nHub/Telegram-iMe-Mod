package com.microsoft.appcenter.distribute;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import com.microsoft.appcenter.distribute.install.ReleaseInstaller;
import com.microsoft.appcenter.distribute.install.intent.IntentReleaseInstaller;
import com.microsoft.appcenter.distribute.install.session.SessionReleaseInstaller;
import com.microsoft.appcenter.utils.AppCenterLog;
import java.util.Deque;
import java.util.LinkedList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class UpdateInstaller implements ReleaseInstaller, ReleaseInstaller.Listener {
    private boolean mCancelled;
    private ReleaseInstaller mCurrentInstaller = popNextInstaller();
    private final Deque<ReleaseInstaller> mInstallers;
    private Uri mLocalUri;
    private final ReleaseDetails mReleaseDetails;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UpdateInstaller(Context context, ReleaseDetails releaseDetails) {
        this.mReleaseDetails = releaseDetails;
        this.mInstallers = createInstallers(context);
    }

    private Deque<ReleaseInstaller> createInstallers(Context context) {
        Handler createInstallerHandler = createInstallerHandler();
        LinkedList linkedList = new LinkedList();
        linkedList.add(new SessionReleaseInstaller(context, createInstallerHandler, this));
        linkedList.add(new IntentReleaseInstaller(context, createInstallerHandler, this));
        return linkedList;
    }

    private ReleaseInstaller popNextInstaller() {
        if (this.mInstallers.size() == 0) {
            return null;
        }
        ReleaseInstaller pop = this.mInstallers.pop();
        AppCenterLog.debug("AppCenterDistribute", "Trying to install update via " + pop.toString() + ".");
        return pop;
    }

    @Override // com.microsoft.appcenter.distribute.install.ReleaseInstaller
    public synchronized void install(Uri localUri) {
        this.mCancelled = false;
        this.mLocalUri = localUri;
        ReleaseInstaller releaseInstaller = this.mCurrentInstaller;
        if (releaseInstaller != null) {
            releaseInstaller.install(localUri);
        }
    }

    public synchronized void resume() {
        if (this.mCancelled && this.mReleaseDetails.isMandatoryUpdate()) {
            Distribute.getInstance().showMandatoryDownloadReadyDialog(this.mReleaseDetails);
        }
    }

    @Override // com.microsoft.appcenter.distribute.install.ReleaseInstaller
    public synchronized void clear() {
        ReleaseInstaller releaseInstaller = this.mCurrentInstaller;
        if (releaseInstaller != null) {
            releaseInstaller.clear();
        }
    }

    @Override // com.microsoft.appcenter.distribute.install.ReleaseInstaller.Listener
    public synchronized void onError(String errorMessage) {
        if (isRecoverableError(errorMessage)) {
            this.mCurrentInstaller.clear();
            ReleaseInstaller popNextInstaller = popNextInstaller();
            this.mCurrentInstaller = popNextInstaller;
            if (popNextInstaller != null) {
                popNextInstaller.install(this.mLocalUri);
                return;
            }
        }
        Distribute.getInstance().showToast(R$string.appcenter_distribute_install_error);
        Distribute.getInstance().completeWorkflow(this.mReleaseDetails);
    }

    @Override // com.microsoft.appcenter.distribute.install.ReleaseInstaller.Listener
    public synchronized void onCancel() {
        this.mCancelled = true;
        if (this.mReleaseDetails.isMandatoryUpdate()) {
            Distribute.getInstance().showMandatoryDownloadReadyDialog(this.mReleaseDetails);
        } else {
            Distribute.getInstance().completeWorkflow(this.mReleaseDetails);
        }
    }

    private static Handler createInstallerHandler() {
        HandlerThread handlerThread = new HandlerThread("AppCenter.Installer");
        handlerThread.start();
        return new Handler(handlerThread.getLooper());
    }

    private static boolean isRecoverableError(String errorMessage) {
        return "INSTALL_FAILED_INTERNAL_ERROR: Permission Denied".equals(errorMessage);
    }
}
