package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.profileinstaller.ProfileInstaller;
/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if ("androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
            ProfileInstaller.writeProfile(context, ProfileInstallReceiver$$ExternalSyntheticLambda0.INSTANCE, new ResultDiagnostics(), true);
        } else if ("androidx.profileinstaller.action.SKIP_FILE".equals(action)) {
            String string = intent.getExtras().getString("EXTRA_SKIP_FILE_OPERATION");
            if ("WRITE_SKIP_FILE".equals(string)) {
                ProfileInstaller.writeSkipFile(context, ProfileInstallReceiver$$ExternalSyntheticLambda0.INSTANCE, new ResultDiagnostics());
            } else if ("DELETE_SKIP_FILE".equals(string)) {
                ProfileInstaller.deleteSkipFile(context, ProfileInstallReceiver$$ExternalSyntheticLambda0.INSTANCE, new ResultDiagnostics());
            }
        }
    }

    /* loaded from: classes.dex */
    class ResultDiagnostics implements ProfileInstaller.DiagnosticsCallback {
        ResultDiagnostics() {
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onResultReceived(int i, Object obj) {
            ProfileInstaller.LOG_DIAGNOSTICS.onResultReceived(i, obj);
            ProfileInstallReceiver.this.setResultCode(i);
        }
    }
}
