package org.telegram.messenger;

import android.app.Activity;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.iMe.fork.models.Changelog;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.microsoft.appcenter.AppCenter;
import com.microsoft.appcenter.distribute.Distribute;
import com.microsoft.appcenter.distribute.DistributeConstants;
import com.microsoft.appcenter.distribute.DistributeListener;
import com.microsoft.appcenter.distribute.ReleaseDetails;
import com.microsoft.appcenter.utils.storage.SharedPreferencesManager;
import java.lang.reflect.Field;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.telegram.messenger.ApplicationLoaderImpl;
import org.telegram.messenger.MessagesStorage;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$TL_document;
import org.telegram.tgnet.TLRPC$TL_help_appUpdate;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
/* loaded from: classes4.dex */
public class ApplicationLoaderImpl extends ApplicationLoader {
    private static long lastUpdateCheckTime;

    @Override // org.telegram.messenger.ApplicationLoader
    protected void appCenterLogInternal(Throwable th) {
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
        return 970409;
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected String onGetVersionName() {
        return "9.7.4";
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
            Distribute.setListener(new C33451());
            AppCenter.start(activity.getApplication(), BuildConfig.APP_CENTER_HASH, Distribute.class);
            AppCenter.setUserId("uid=" + UserConfig.getInstance(UserConfig.selectedAccount).clientUserId);
        } catch (Throwable th) {
            FileLog.m67e(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.ApplicationLoaderImpl$1 */
    /* loaded from: classes4.dex */
    public class C33451 implements DistributeListener {
        C33451() {
        }

        @Override // com.microsoft.appcenter.distribute.DistributeListener
        public boolean onReleaseAvailable(final Activity activity, ReleaseDetails releaseDetails) {
            Locale locale;
            SharedConfig.lastUpdateCheckTime = System.currentTimeMillis();
            SharedConfig.saveConfig();
            Distribute.notifyUpdateAction(-2);
            if (ApplicationLoader.isCheckForUpdateCanceled) {
                ApplicationLoader.isCheckForUpdateCanceled = false;
                return true;
            } else if (activity instanceof LaunchActivity) {
                Changelog changelog = (Changelog) new Gson().fromJson(releaseDetails.getReleaseNotes(), (Class<Object>) Changelog.class);
                final TLRPC$TL_help_appUpdate tLRPC$TL_help_appUpdate = new TLRPC$TL_help_appUpdate();
                tLRPC$TL_help_appUpdate.version = releaseDetails.getShortVersion();
                TLRPC$TL_document tLRPC$TL_document = new TLRPC$TL_document();
                tLRPC$TL_help_appUpdate.document = tLRPC$TL_document;
                tLRPC$TL_document.file_reference = new byte[0];
                tLRPC$TL_document.mime_type = "application/vnd.android.package-archive";
                tLRPC$TL_document.size = releaseDetails.getSize();
                tLRPC$TL_help_appUpdate.url = releaseDetails.getDownloadUrl().toString();
                if (changelog != null) {
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
                }
                if (tLRPC$TL_help_appUpdate.text == null) {
                    tLRPC$TL_help_appUpdate.text = "";
                }
                loadSticker(changelog, new Callbacks$Callback1() { // from class: org.telegram.messenger.ApplicationLoaderImpl$1$$ExternalSyntheticLambda0
                    @Override // com.iMe.fork.utils.Callbacks$Callback1
                    public final void invoke(Object obj) {
                        ApplicationLoaderImpl.C33451.lambda$onReleaseAvailable$0(TLRPC$TL_help_appUpdate.this, activity, (TLRPC$Document) obj);
                    }
                });
                return true;
            } else {
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onReleaseAvailable$0(TLRPC$TL_help_appUpdate tLRPC$TL_help_appUpdate, Activity activity, TLRPC$Document tLRPC$Document) {
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
                    ((LaunchActivity) activity).showAppUpdateDialog();
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
            } else if (activity instanceof LaunchActivity) {
                SharedConfig.lastUpdateCheckTime = System.currentTimeMillis();
                SharedConfig.pendingAppUpdate = null;
                SharedConfig.saveConfig();
                ApplicationLoader.isCheckForUpdateCanceled = false;
                if (ApplicationLoader.isCheckForUpdateInProgress) {
                    ApplicationLoader.isCheckForUpdateInProgress = false;
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 6, LocaleController.getString((int) com.iMe.android.web.R.string.app_update_not_found));
                    ((LaunchActivity) activity).dismissUpdateAppDialog();
                }
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.appUpdateAvailable, new Object[0]);
            }
        }

        private void loadSticker(final Changelog changelog, final Callbacks$Callback1<TLRPC$Document> callbacks$Callback1) {
            TLRPC$Document tLRPC$Document = null;
            if (changelog == null || UserConfig.getActivatedAccountsCount() == 0) {
                callbacks$Callback1.invoke(null);
                return;
            }
            TLRPC$TL_messages_stickerSet stickerSetByName = MediaDataController.getInstance(UserConfig.selectedAccount).getStickerSetByName(changelog.stickerPackName);
            if (stickerSetByName == null) {
                stickerSetByName = MediaDataController.getInstance(UserConfig.selectedAccount).getStickerSetByEmojiOrName(changelog.stickerPackName);
            }
            if (stickerSetByName != null) {
                int size = stickerSetByName.documents.size();
                int i = changelog.stickerIndex;
                if (size > i) {
                    tLRPC$Document = stickerSetByName.documents.get(i);
                }
            }
            if (stickerSetByName != null && tLRPC$Document != null) {
                callbacks$Callback1.invoke(tLRPC$Document);
            } else {
                MediaDataController.getInstance(UserConfig.selectedAccount).loadStickersByEmojiOrName(changelog.stickerPackName, false, stickerSetByName == null, new MessagesStorage.BooleanCallback() { // from class: org.telegram.messenger.ApplicationLoaderImpl$1$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
                    public final void run(boolean z) {
                        ApplicationLoaderImpl.C33451.this.lambda$loadSticker$1(changelog, callbacks$Callback1, z);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadSticker$1(Changelog changelog, Callbacks$Callback1 callbacks$Callback1, boolean z) {
            if (z) {
                loadSticker(changelog, callbacks$Callback1);
            } else {
                callbacks$Callback1.invoke(null);
            }
        }
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected void checkForUpdatesInternal() {
        try {
            lastUpdateCheckTime = SystemClock.elapsedRealtime();
            clearPostponeStatus();
            Distribute.checkForUpdate();
        } catch (Throwable th) {
            FileLog.m67e(th);
        }
    }
}
