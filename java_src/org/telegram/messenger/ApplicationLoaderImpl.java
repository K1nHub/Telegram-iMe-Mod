package org.telegram.messenger;

import Components.UpdateAppAlertDialog;
import Components.UpdateLayout;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.core.content.FileProvider;
import com.google.gson.Gson;
import com.iMe.fork.models.Changelog;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.microsoft.appcenter.AppCenter;
import com.microsoft.appcenter.distribute.Distribute;
import com.microsoft.appcenter.distribute.DistributeConstants;
import com.microsoft.appcenter.distribute.DistributeListener;
import com.microsoft.appcenter.distribute.ReleaseDetails;
import com.microsoft.appcenter.utils.storage.SharedPreferencesManager;
import java.io.File;
import java.lang.reflect.Field;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.IUpdateLayout;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$TL_document;
import org.telegram.tgnet.TLRPC$TL_help_appUpdate;
/* loaded from: classes4.dex */
public class ApplicationLoaderImpl extends ApplicationLoader implements DistributeListener {
    private static long lastUpdateCheckTime;
    private UpdateAppAlertDialog appUpdateDialog;
    private AlertDialog checkAppUpdateDialog;

    @Override // org.telegram.messenger.ApplicationLoader
    protected void appCenterLogInternal(Throwable th) {
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected boolean isStandalone() {
        return true;
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected void logDualCameraInternal(boolean z, boolean z2) {
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected String onGetApplicationId() {
        return "com.iMe.android.web";
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected int onGetVersionCode() {
        return 1020009;
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected String onGetVersionName() {
        return "10.2.0";
    }

    @Override // org.telegram.messenger.ApplicationLoader
    public boolean showUpdateAppPopup(Context context, TLRPC$TL_help_appUpdate tLRPC$TL_help_appUpdate, final int i, final IUpdateLayout iUpdateLayout) {
        UpdateAppAlertDialog updateAppAlertDialog = this.appUpdateDialog;
        if (updateAppAlertDialog != null && updateAppAlertDialog.isShowing()) {
            this.appUpdateDialog.updateUI();
            return true;
        }
        UpdateAppAlertDialog updateAppAlertDialog2 = new UpdateAppAlertDialog(context, SharedConfig.pendingAppUpdate, i);
        this.appUpdateDialog = updateAppAlertDialog2;
        iUpdateLayout.moveToDialog(i, updateAppAlertDialog2.getSheetContainer());
        this.appUpdateDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.messenger.ApplicationLoaderImpl$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                IUpdateLayout.this.moveToSideMenu(i);
            }
        });
        this.appUpdateDialog.show();
        return true;
    }

    @Override // org.telegram.messenger.ApplicationLoader
    public void dismissAppUpdateDialog() {
        UpdateAppAlertDialog updateAppAlertDialog = this.appUpdateDialog;
        if (updateAppAlertDialog != null) {
            updateAppAlertDialog.dismiss();
        }
    }

    @Override // org.telegram.messenger.ApplicationLoader
    public void dismissCheckAppUpdateDialog() {
        AlertDialog alertDialog = this.checkAppUpdateDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    @Override // org.telegram.messenger.ApplicationLoader
    public IUpdateLayout takeUpdateLayout(Activity activity, ViewGroup viewGroup, ViewGroup viewGroup2) {
        return new UpdateLayout(activity, viewGroup, viewGroup2);
    }

    @Override // com.microsoft.appcenter.distribute.DistributeListener
    public boolean onReleaseAvailable(Activity activity, ReleaseDetails releaseDetails) {
        Locale locale;
        SharedConfig.lastUpdateCheckTime = System.currentTimeMillis();
        SharedConfig.saveConfig();
        Distribute.notifyUpdateAction(-2);
        if (ApplicationLoader.isCheckForUpdateCanceled) {
            ApplicationLoader.isCheckForUpdateCanceled = false;
            return true;
        } else if (LaunchActivity.instance == null) {
            return true;
        } else {
            Changelog changelog = (Changelog) new Gson().fromJson(releaseDetails.getReleaseNotes(), (Class<Object>) Changelog.class);
            if (changelog == null) {
                changelog = new Changelog();
            }
            final TLRPC$TL_help_appUpdate tLRPC$TL_help_appUpdate = new TLRPC$TL_help_appUpdate();
            tLRPC$TL_help_appUpdate.version = releaseDetails.getShortVersion();
            TLRPC$TL_document tLRPC$TL_document = new TLRPC$TL_document();
            tLRPC$TL_help_appUpdate.document = tLRPC$TL_document;
            tLRPC$TL_document.file_reference = new byte[0];
            tLRPC$TL_document.mime_type = "application/vnd.android.package-archive";
            tLRPC$TL_document.size = releaseDetails.getSize();
            tLRPC$TL_help_appUpdate.url = releaseDetails.getDownloadUrl().toString();
            tLRPC$TL_help_appUpdate.document.date = (int) TimeUnit.MILLISECONDS.toSeconds(changelog.currentDate);
            if (Build.VERSION.SDK_INT >= 24) {
                locale = activity.getResources().getConfiguration().getLocales().get(0);
            } else {
                locale = activity.getResources().getConfiguration().locale;
            }
            if (locale != null && (new Locale("ru").getLanguage().equals(locale.getLanguage()) || new Locale("uk").getLanguage().equals(locale.getLanguage()) || new Locale("be").getLanguage().equals(locale.getLanguage()))) {
                tLRPC$TL_help_appUpdate.text = changelog.ruChangelog;
            } else {
                tLRPC$TL_help_appUpdate.text = changelog.enChangelog;
            }
            if (tLRPC$TL_help_appUpdate.text == null) {
                tLRPC$TL_help_appUpdate.text = "";
            }
            MediaDataController.getInstance(UserConfig.selectedAccount).loadSticker(changelog.stickerPackName, changelog.stickerIndex, new Callbacks$Callback1() { // from class: org.telegram.messenger.ApplicationLoaderImpl$$ExternalSyntheticLambda2
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    ApplicationLoaderImpl.lambda$onReleaseAvailable$1(TLRPC$TL_help_appUpdate.this, (TLRPC$Document) obj);
                }
            });
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onReleaseAvailable$1(TLRPC$TL_help_appUpdate tLRPC$TL_help_appUpdate, TLRPC$Document tLRPC$Document) {
        if (ApplicationLoader.isCheckForUpdateCanceled) {
            ApplicationLoader.isCheckForUpdateCanceled = false;
            return;
        }
        tLRPC$TL_help_appUpdate.flags = 6;
        if (tLRPC$Document != null) {
            tLRPC$TL_help_appUpdate.flags = 6 | 8;
        }
        tLRPC$TL_help_appUpdate.sticker = tLRPC$Document;
        boolean isAppUpdateAvailable = SharedConfig.isAppUpdateAvailable();
        boolean z = isAppUpdateAvailable && !SharedConfig.pendingAppUpdate.version.equals(tLRPC$TL_help_appUpdate.version);
        boolean z2 = ApplicationLoader.isCheckForUpdateInProgress;
        ApplicationLoader.isCheckForUpdateCanceled = false;
        ApplicationLoader.isCheckForUpdateInProgress = false;
        if (SharedConfig.setNewAppVersionAvailable(tLRPC$TL_help_appUpdate)) {
            if (!isAppUpdateAvailable || z) {
                LaunchActivity launchActivity = LaunchActivity.instance;
                if (launchActivity != null) {
                    launchActivity.showAppUpdateDialog();
                }
            } else if (z2) {
                ImageLoader.getInstance().loadHttpFile(SharedConfig.pendingAppUpdate.url, null, 0);
            }
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.appUpdateAvailable, new Object[0]);
    }

    @Override // com.microsoft.appcenter.distribute.DistributeListener
    public void onNoReleaseAvailable(Activity activity) {
        if (ApplicationLoader.isCheckForUpdateCanceled) {
            ApplicationLoader.isCheckForUpdateCanceled = false;
        } else if (LaunchActivity.instance == null) {
        } else {
            SharedConfig.lastUpdateCheckTime = System.currentTimeMillis();
            SharedConfig.pendingAppUpdate = null;
            SharedConfig.saveConfig();
            ApplicationLoader.isCheckForUpdateCanceled = false;
            if (ApplicationLoader.isCheckForUpdateInProgress) {
                ApplicationLoader.isCheckForUpdateInProgress = false;
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 6, LocaleController.getString((int) com.iMe.android.web.R.string.app_update_not_found));
                dismissAppUpdateDialog();
            }
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.appUpdateAvailable, new Object[0]);
        }
    }

    private void clearPostponeStatus() {
        try {
            Field declaredField = DistributeConstants.class.getDeclaredField("PREFERENCE_KEY_POSTPONE_TIME");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(DistributeConstants.class);
            if (obj != null) {
                SharedPreferencesManager.initialize(ApplicationLoader.applicationContext);
                SharedPreferencesManager.remove(obj.toString());
            }
        } catch (Throwable unused) {
        }
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected void startAppCenterInternal(Activity activity) {
        try {
            Distribute.setEnabledForDebuggableBuild(true);
            if (TextUtils.isEmpty(BuildConfig.APP_CENTER_HASH)) {
                throw new RuntimeException("App Center hash is empty. add to local.properties field APP_CENTER_HASH_PRIVATE and APP_CENTER_HASH_PUBLIC");
            }
            Distribute.disableAutomaticCheckForUpdate();
            Distribute.setListener(this);
            AppCenter.start(activity.getApplication(), BuildConfig.APP_CENTER_HASH, Distribute.class);
            AppCenter.setUserId("uid=" + UserConfig.getInstance(UserConfig.selectedAccount).clientUserId);
        } catch (Throwable th) {
            FileLog.m99e(th);
        }
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected void checkForUpdatesInternal(boolean z) {
        try {
            lastUpdateCheckTime = SystemClock.elapsedRealtime();
            if (LaunchActivity.instance == null) {
                return;
            }
            if (z) {
                ApplicationLoader.isCheckForUpdateInProgress = true;
                AlertDialog alertDialog = new AlertDialog(LaunchActivity.instance, 3);
                this.checkAppUpdateDialog = alertDialog;
                alertDialog.setCanCancel(true);
                this.checkAppUpdateDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.messenger.ApplicationLoaderImpl$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        ApplicationLoaderImpl.lambda$checkForUpdatesInternal$2(dialogInterface);
                    }
                });
                this.checkAppUpdateDialog.show();
            }
            clearPostponeStatus();
            Distribute.checkForUpdate();
        } catch (Throwable th) {
            FileLog.m99e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkForUpdatesInternal$2(DialogInterface dialogInterface) {
        ApplicationLoader.isCheckForUpdateCanceled = true;
        ApplicationLoader.isCheckForUpdateInProgress = false;
    }

    @Override // org.telegram.messenger.ApplicationLoader
    public boolean checkApkInstallPermissions(Context context) {
        if (Build.VERSION.SDK_INT < 26 || ApplicationLoader.applicationContext.getPackageManager().canRequestPackageInstalls()) {
            return true;
        }
        AlertsCreator.createApkRestrictedDialog(context, null).show();
        return false;
    }

    @Override // org.telegram.messenger.ApplicationLoader
    public boolean openApkInstall(Activity activity, TLRPC$Document tLRPC$Document) {
        boolean z = false;
        try {
            FileLoader.getAttachFileName(tLRPC$Document);
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(tLRPC$Document, true);
            z = pathToAttach.exists();
            if (z) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setFlags(1);
                if (Build.VERSION.SDK_INT >= 24) {
                    intent.setDataAndType(FileProvider.getUriForFile(activity, ApplicationLoader.getApplicationId() + ".provider", pathToAttach), "application/vnd.android.package-archive");
                } else {
                    intent.setDataAndType(Uri.fromFile(pathToAttach), "application/vnd.android.package-archive");
                }
                try {
                    activity.startActivityForResult(intent, 500);
                } catch (Exception e) {
                    FileLog.m99e(e);
                }
            }
        } catch (Exception e2) {
            FileLog.m99e(e2);
        }
        return z;
    }
}
