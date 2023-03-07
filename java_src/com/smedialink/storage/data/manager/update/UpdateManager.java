package com.smedialink.storage.data.manager.update;

import android.app.Activity;
import android.content.IntentSender;
import com.google.android.play.core.appupdate.AppUpdateInfo;
import com.google.android.play.core.appupdate.AppUpdateManager;
import com.google.android.play.core.appupdate.AppUpdateManagerFactory;
import com.google.android.play.core.install.InstallState;
import com.google.android.play.core.install.InstallStateUpdatedListener;
import com.google.android.play.core.tasks.OnSuccessListener;
import com.google.android.play.core.tasks.Task;
import com.smedialink.storage.R$string;
import com.smedialink.storage.data.locale.prefs.model.RequestAppUpdateMetadata;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.domain.gateway.ActionGateway;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.storage.PreferenceHelper;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;
/* compiled from: UpdateManager.kt */
/* loaded from: classes3.dex */
public final class UpdateManager {
    private final ActionGateway actionGateway;
    private final Task<AppUpdateInfo> appUpdateInfoTask;
    private final AppUpdateManager appUpdateManager;
    private FlexibleUpdateDownloadListener flexibleUpdateDownloadListener;
    private final InstallStateUpdatedListener listener;
    private final WeakReference<Activity> mActivityWeakReference;
    private int mode;
    private final PreferenceHelper preferenceHelper;
    private final ResourceManager resourceManager;
    private final TelegramGateway telegramGateway;

    /* compiled from: UpdateManager.kt */
    /* loaded from: classes3.dex */
    public interface FlexibleUpdateDownloadListener {
        void onDownloadProgress(long j, long j2);
    }

    static {
        new Companion(null);
    }

    public UpdateManager(Activity activity, ActionGateway actionGateway, ResourceManager resourceManager, PreferenceHelper preferenceHelper, TelegramGateway telegramGateway) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(actionGateway, "actionGateway");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.actionGateway = actionGateway;
        this.resourceManager = resourceManager;
        this.preferenceHelper = preferenceHelper;
        this.telegramGateway = telegramGateway;
        this.mActivityWeakReference = new WeakReference<>(activity);
        AppUpdateManager create = AppUpdateManagerFactory.create(activity);
        Intrinsics.checkNotNullExpressionValue(create, "create(activity)");
        this.appUpdateManager = create;
        Task<AppUpdateInfo> appUpdateInfo = create.getAppUpdateInfo();
        Intrinsics.checkNotNullExpressionValue(appUpdateInfo, "appUpdateManager.appUpdateInfo");
        this.appUpdateInfoTask = appUpdateInfo;
        this.listener = new InstallStateUpdatedListener() { // from class: com.smedialink.storage.data.manager.update.UpdateManager$$ExternalSyntheticLambda0
            @Override // com.google.android.play.core.listener.StateUpdatedListener
            public final void onStateUpdate(InstallState installState) {
                UpdateManager.m1330listener$lambda0(UpdateManager.this, installState);
            }
        };
    }

    private final Activity getActivity() {
        return this.mActivityWeakReference.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: listener$lambda-0  reason: not valid java name */
    public static final void m1330listener$lambda0(UpdateManager this$0, InstallState installState) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(installState, "installState");
        if (installState.installStatus() == 2) {
            long bytesDownloaded = installState.bytesDownloaded();
            long j = installState.totalBytesToDownload();
            FlexibleUpdateDownloadListener flexibleUpdateDownloadListener = this$0.flexibleUpdateDownloadListener;
            if (flexibleUpdateDownloadListener != null) {
                Intrinsics.checkNotNull(flexibleUpdateDownloadListener);
                flexibleUpdateDownloadListener.onDownloadProgress(bytesDownloaded, j);
            }
        }
        if (installState.installStatus() == 11) {
            Timber.m7d("An update has been downloaded", new Object[0]);
            this$0.popupSnackbarForCompleteUpdate();
        }
    }

    public final void onResume() {
        continueUpdate();
    }

    public final void onDestroy() {
        unregisterListener();
    }

    public final void start() {
        if (this.mode == 0) {
            setUpListener();
        }
        checkUpdate();
    }

    private final boolean isNeedUpdate() {
        RequestAppUpdateMetadata requestAppUpdateMetadata = this.preferenceHelper.getRequestAppUpdateMetadata();
        if (!requestAppUpdateMetadata.isAnyRequestsBefore()) {
            updateLastUpdateMetadata(false, false);
            return true;
        }
        if (!(requestAppUpdateMetadata.getVersion().length() > 0) || Intrinsics.areEqual(requestAppUpdateMetadata.getVersion(), this.telegramGateway.getAppVersion())) {
            return DateExtKt.isDayAgo(requestAppUpdateMetadata.getLastRequestTime()) && Intrinsics.areEqual(requestAppUpdateMetadata.getVersion(), this.telegramGateway.getAppVersion()) && requestAppUpdateMetadata.getCount() < 2;
        }
        updateLastUpdateMetadata(false, true);
        return true;
    }

    private final void checkUpdate() {
        Timber.m7d("Checking for updates", new Object[0]);
        this.appUpdateInfoTask.addOnSuccessListener(new OnSuccessListener() { // from class: com.smedialink.storage.data.manager.update.UpdateManager$$ExternalSyntheticLambda2
            @Override // com.google.android.play.core.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                UpdateManager.m1327checkUpdate$lambda3(UpdateManager.this, (AppUpdateInfo) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkUpdate$lambda-3  reason: not valid java name */
    public static final void m1327checkUpdate$lambda3(UpdateManager this$0, AppUpdateInfo appUpdateInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(appUpdateInfo, "appUpdateInfo");
        if (appUpdateInfo.updateAvailability() == 2 && appUpdateInfo.isUpdateTypeAllowed(this$0.mode)) {
            Timber.m7d("Update available", new Object[0]);
            if (this$0.isNeedUpdate()) {
                this$0.startUpdate(appUpdateInfo);
                return;
            }
            return;
        }
        Timber.m7d("No Update available", new Object[0]);
    }

    private final void startUpdate(AppUpdateInfo appUpdateInfo) {
        try {
            Timber.m7d("Starting update", new Object[0]);
            AppUpdateManager appUpdateManager = this.appUpdateManager;
            int i = this.mode;
            Activity activity = getActivity();
            Intrinsics.checkNotNull(activity);
            appUpdateManager.startUpdateFlowForResult(appUpdateInfo, i, activity, 777);
            updateLastUpdateMetadata(true, false);
        } catch (IntentSender.SendIntentException e) {
            Timber.m6d(e);
        }
    }

    private final void updateLastUpdateMetadata(boolean z, boolean z2) {
        RequestAppUpdateMetadata requestAppUpdateMetadata = this.preferenceHelper.getRequestAppUpdateMetadata();
        requestAppUpdateMetadata.setLastRequestTime(DateExtKt.now());
        requestAppUpdateMetadata.setVersion(this.telegramGateway.getAppVersion());
        if (z) {
            requestAppUpdateMetadata.setCount(requestAppUpdateMetadata.getCount() + 1);
        }
        if (z2) {
            requestAppUpdateMetadata.setCount(0);
        }
        this.preferenceHelper.setRequestAppUpdateMetadata(requestAppUpdateMetadata);
    }

    private final void setUpListener() {
        this.appUpdateManager.registerListener(this.listener);
    }

    private final void continueUpdate() {
        if (this.mode == 0) {
            continueUpdateForFlexible();
        } else {
            continueUpdateForImmediate();
        }
    }

    private final void continueUpdateForFlexible() {
        this.appUpdateManager.getAppUpdateInfo().addOnSuccessListener(new OnSuccessListener() { // from class: com.smedialink.storage.data.manager.update.UpdateManager$$ExternalSyntheticLambda3
            @Override // com.google.android.play.core.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                UpdateManager.m1328continueUpdateForFlexible$lambda5(UpdateManager.this, (AppUpdateInfo) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continueUpdateForFlexible$lambda-5  reason: not valid java name */
    public static final void m1328continueUpdateForFlexible$lambda5(UpdateManager this$0, AppUpdateInfo appUpdateInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(appUpdateInfo, "appUpdateInfo");
        if (appUpdateInfo.installStatus() == 11) {
            Timber.m7d("An update has been downloaded", new Object[0]);
            this$0.popupSnackbarForCompleteUpdate();
        }
    }

    private final void continueUpdateForImmediate() {
        this.appUpdateManager.getAppUpdateInfo().addOnSuccessListener(new OnSuccessListener() { // from class: com.smedialink.storage.data.manager.update.UpdateManager$$ExternalSyntheticLambda1
            @Override // com.google.android.play.core.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                UpdateManager.m1329continueUpdateForImmediate$lambda6(UpdateManager.this, (AppUpdateInfo) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continueUpdateForImmediate$lambda-6  reason: not valid java name */
    public static final void m1329continueUpdateForImmediate$lambda6(UpdateManager this$0, AppUpdateInfo appUpdateInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(appUpdateInfo, "appUpdateInfo");
        if (appUpdateInfo.updateAvailability() == 3) {
            try {
                AppUpdateManager appUpdateManager = this$0.appUpdateManager;
                int i = this$0.mode;
                Activity activity = this$0.getActivity();
                Intrinsics.checkNotNull(activity);
                appUpdateManager.startUpdateFlowForResult(appUpdateInfo, i, activity, 777);
            } catch (IntentSender.SendIntentException e) {
                Timber.m6d(e);
            }
        }
    }

    private final void popupSnackbarForCompleteUpdate() {
        ActionGateway actionGateway = this.actionGateway;
        Activity activity = getActivity();
        Intrinsics.checkNotNull(activity);
        actionGateway.showInfinitySnackBar(activity, this.resourceManager.getString(R$string.in_app_update_snackbar_message), this.resourceManager.getString(R$string.in_app_update_snackbar_action), new UpdateManager$popupSnackbarForCompleteUpdate$1(this));
    }

    private final void unregisterListener() {
        InstallStateUpdatedListener installStateUpdatedListener;
        AppUpdateManager appUpdateManager = this.appUpdateManager;
        if (appUpdateManager == null || (installStateUpdatedListener = this.listener) == null) {
            return;
        }
        appUpdateManager.unregisterListener(installStateUpdatedListener);
        Timber.m7d("Unregistered the install state listener", new Object[0]);
    }

    /* compiled from: UpdateManager.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
