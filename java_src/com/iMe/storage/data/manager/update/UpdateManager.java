package com.iMe.storage.data.manager.update;

import android.app.Activity;
import android.content.IntentSender;
import com.google.android.play.core.appupdate.AppUpdateInfo;
import com.google.android.play.core.appupdate.AppUpdateManager;
import com.google.android.play.core.appupdate.AppUpdateManagerFactory;
import com.google.android.play.core.install.InstallState;
import com.google.android.play.core.install.InstallStateUpdatedListener;
import com.google.android.play.core.tasks.OnSuccessListener;
import com.google.android.play.core.tasks.Task;
import com.iMe.storage.R$string;
import com.iMe.storage.data.locale.prefs.model.RequestAppUpdateMetadata;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.gateway.ActionGateway;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
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
        this.listener = new InstallStateUpdatedListener() { // from class: com.iMe.storage.data.manager.update.UpdateManager$$ExternalSyntheticLambda0
            @Override // com.google.android.play.core.listener.StateUpdatedListener
            public final void onStateUpdate(InstallState installState) {
                UpdateManager.listener$lambda$0(UpdateManager.this, installState);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Activity getActivity() {
        return this.mActivityWeakReference.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void listener$lambda$0(UpdateManager this$0, InstallState installState) {
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
            Timber.m9d("An update has been downloaded", new Object[0]);
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

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isNeedUpdate() {
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
        Timber.m9d("Checking for updates", new Object[0]);
        Task<AppUpdateInfo> task = this.appUpdateInfoTask;
        final Function1<AppUpdateInfo, Unit> function1 = new Function1<AppUpdateInfo, Unit>() { // from class: com.iMe.storage.data.manager.update.UpdateManager$checkUpdate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppUpdateInfo appUpdateInfo) {
                invoke2(appUpdateInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(AppUpdateInfo appUpdateInfo) {
                int i;
                boolean isNeedUpdate;
                Intrinsics.checkNotNullParameter(appUpdateInfo, "appUpdateInfo");
                if (appUpdateInfo.updateAvailability() == 2) {
                    i = UpdateManager.this.mode;
                    if (appUpdateInfo.isUpdateTypeAllowed(i)) {
                        Timber.m9d("Update available", new Object[0]);
                        isNeedUpdate = UpdateManager.this.isNeedUpdate();
                        if (isNeedUpdate) {
                            UpdateManager.this.startUpdate(appUpdateInfo);
                            return;
                        }
                        return;
                    }
                }
                Timber.m9d("No Update available", new Object[0]);
            }
        };
        task.addOnSuccessListener(new OnSuccessListener() { // from class: com.iMe.storage.data.manager.update.UpdateManager$$ExternalSyntheticLambda3
            @Override // com.google.android.play.core.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                UpdateManager.checkUpdate$lambda$3(Function1.this, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkUpdate$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startUpdate(AppUpdateInfo appUpdateInfo) {
        try {
            Timber.m9d("Starting update", new Object[0]);
            AppUpdateManager appUpdateManager = this.appUpdateManager;
            int i = this.mode;
            Activity activity = getActivity();
            Intrinsics.checkNotNull(activity);
            appUpdateManager.startUpdateFlowForResult(appUpdateInfo, i, activity, 777);
            updateLastUpdateMetadata(true, false);
        } catch (IntentSender.SendIntentException e) {
            Timber.m8d(e);
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
        Task<AppUpdateInfo> appUpdateInfo = this.appUpdateManager.getAppUpdateInfo();
        final Function1<AppUpdateInfo, Unit> function1 = new Function1<AppUpdateInfo, Unit>() { // from class: com.iMe.storage.data.manager.update.UpdateManager$continueUpdateForFlexible$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppUpdateInfo appUpdateInfo2) {
                invoke2(appUpdateInfo2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(AppUpdateInfo appUpdateInfo2) {
                Intrinsics.checkNotNullParameter(appUpdateInfo2, "appUpdateInfo");
                if (appUpdateInfo2.installStatus() == 11) {
                    Timber.m9d("An update has been downloaded", new Object[0]);
                    UpdateManager.this.popupSnackbarForCompleteUpdate();
                }
            }
        };
        appUpdateInfo.addOnSuccessListener(new OnSuccessListener() { // from class: com.iMe.storage.data.manager.update.UpdateManager$$ExternalSyntheticLambda1
            @Override // com.google.android.play.core.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                UpdateManager.continueUpdateForFlexible$lambda$5(Function1.this, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void continueUpdateForFlexible$lambda$5(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final void continueUpdateForImmediate() {
        Task<AppUpdateInfo> appUpdateInfo = this.appUpdateManager.getAppUpdateInfo();
        final Function1<AppUpdateInfo, Unit> function1 = new Function1<AppUpdateInfo, Unit>() { // from class: com.iMe.storage.data.manager.update.UpdateManager$continueUpdateForImmediate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppUpdateInfo appUpdateInfo2) {
                invoke2(appUpdateInfo2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(AppUpdateInfo appUpdateInfo2) {
                AppUpdateManager appUpdateManager;
                int i;
                Activity activity;
                Intrinsics.checkNotNullParameter(appUpdateInfo2, "appUpdateInfo");
                if (appUpdateInfo2.updateAvailability() == 3) {
                    try {
                        appUpdateManager = UpdateManager.this.appUpdateManager;
                        i = UpdateManager.this.mode;
                        activity = UpdateManager.this.getActivity();
                        Intrinsics.checkNotNull(activity);
                        appUpdateManager.startUpdateFlowForResult(appUpdateInfo2, i, activity, 777);
                    } catch (IntentSender.SendIntentException e) {
                        Timber.m8d(e);
                    }
                }
            }
        };
        appUpdateInfo.addOnSuccessListener(new OnSuccessListener() { // from class: com.iMe.storage.data.manager.update.UpdateManager$$ExternalSyntheticLambda2
            @Override // com.google.android.play.core.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                UpdateManager.continueUpdateForImmediate$lambda$6(Function1.this, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void continueUpdateForImmediate$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void popupSnackbarForCompleteUpdate() {
        ActionGateway actionGateway = this.actionGateway;
        Activity activity = getActivity();
        Intrinsics.checkNotNull(activity);
        actionGateway.showInfinitySnackBar(activity, this.resourceManager.getString(R$string.in_app_update_snackbar_message), this.resourceManager.getString(R$string.in_app_update_snackbar_action), new Function0<Unit>() { // from class: com.iMe.storage.data.manager.update.UpdateManager$popupSnackbarForCompleteUpdate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                AppUpdateManager appUpdateManager;
                appUpdateManager = UpdateManager.this.appUpdateManager;
                appUpdateManager.completeUpdate();
            }
        });
    }

    private final void unregisterListener() {
        InstallStateUpdatedListener installStateUpdatedListener;
        AppUpdateManager appUpdateManager = this.appUpdateManager;
        if (appUpdateManager == null || (installStateUpdatedListener = this.listener) == null) {
            return;
        }
        appUpdateManager.unregisterListener(installStateUpdatedListener);
        Timber.m9d("Unregistered the install state listener", new Object[0]);
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
