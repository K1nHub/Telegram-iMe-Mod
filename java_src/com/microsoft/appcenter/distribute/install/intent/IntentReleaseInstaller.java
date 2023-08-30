package com.microsoft.appcenter.distribute.install.intent;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.microsoft.appcenter.distribute.install.AbstractReleaseInstaller;
import com.microsoft.appcenter.distribute.install.ReleaseInstaller;
import com.microsoft.appcenter.distribute.install.ReleaseInstallerActivity;
import com.microsoft.appcenter.utils.async.AppCenterConsumer;
import com.microsoft.appcenter.utils.async.AppCenterFuture;
/* loaded from: classes4.dex */
public class IntentReleaseInstaller extends AbstractReleaseInstaller {
    public String toString() {
        return "ACTION_INSTALL_PACKAGE";
    }

    public IntentReleaseInstaller(Context context, Handler installerHandler, ReleaseInstaller.Listener listener) {
        super(context, installerHandler, listener);
    }

    @Override // com.microsoft.appcenter.distribute.install.ReleaseInstaller
    public void install(Uri localUri) {
        Intent installIntent = getInstallIntent(localUri);
        if (installIntent.resolveActivity(this.mContext.getPackageManager()) == null) {
            onError("Cannot resolve install intent for " + localUri);
            return;
        }
        AppCenterFuture<ReleaseInstallerActivity.Result> startActivityForResult = ReleaseInstallerActivity.startActivityForResult(this.mContext, installIntent);
        if (startActivityForResult == null) {
            return;
        }
        startActivityForResult.thenAccept(new AppCenterConsumer<ReleaseInstallerActivity.Result>() { // from class: com.microsoft.appcenter.distribute.install.intent.IntentReleaseInstaller.1
            @Override // com.microsoft.appcenter.utils.async.AppCenterConsumer
            public void accept(ReleaseInstallerActivity.Result result) {
                int i = result.code;
                if (i == 1) {
                    IntentReleaseInstaller.this.onError("Install failed");
                } else if (i == 0) {
                    IntentReleaseInstaller.this.onCancel();
                }
            }
        });
    }

    protected static Intent getInstallIntent(Uri fileUri) {
        Intent intent = new Intent("android.intent.action.INSTALL_PACKAGE");
        intent.setData(fileUri);
        intent.addFlags(1);
        intent.putExtra("android.intent.extra.RETURN_RESULT", true);
        return intent;
    }
}
