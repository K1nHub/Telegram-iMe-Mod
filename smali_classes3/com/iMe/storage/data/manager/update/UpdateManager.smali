.class public final Lcom/iMe/storage/data/manager/update/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/manager/update/UpdateManager$Companion;,
        Lcom/iMe/storage/data/manager/update/UpdateManager$FlexibleUpdateDownloadListener;
    }
.end annotation


# instance fields
.field private final actionGateway:Lcom/iMe/storage/domain/gateway/ActionGateway;

.field private final appUpdateInfoTask:Lcom/google/android/play/core/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

.field private flexibleUpdateDownloadListener:Lcom/iMe/storage/data/manager/update/UpdateManager$FlexibleUpdateDownloadListener;

.field private final listener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

.field private final mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mode:I

.field private final preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;


# direct methods
.method public static synthetic $r8$lambda$2LCGpNs6teh-9uiLWWFx4KKReK0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/update/UpdateManager;->continueUpdateForFlexible$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fs_c2WCchyn0C_c8z8U4QhkUzQg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/update/UpdateManager;->continueUpdateForImmediate$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L1ESWKzvXBh-hsi3uR_96A4nVsI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/update/UpdateManager;->checkUpdate$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sHC6XU6bMQOQpRiisaZ2CsumiDU(Lcom/iMe/storage/data/manager/update/UpdateManager;Lcom/google/android/play/core/install/InstallState;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/update/UpdateManager;->listener$lambda$0(Lcom/iMe/storage/data/manager/update/UpdateManager;Lcom/google/android/play/core/install/InstallState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/data/manager/update/UpdateManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/manager/update/UpdateManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/iMe/storage/domain/gateway/ActionGateway;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/storage/PreferenceHelper;Lcom/iMe/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->actionGateway:Lcom/iMe/storage/domain/gateway/ActionGateway;

    .line 26
    iput-object p3, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 27
    iput-object p4, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    .line 28
    iput-object p5, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 30
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 36
    invoke-static {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p1

    const-string p2, "create(activity)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 39
    invoke-interface {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    const-string p2, "appUpdateManager.appUpdateInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->appUpdateInfoTask:Lcom/google/android/play/core/tasks/Task;

    .line 46
    new-instance p1, Lcom/iMe/storage/data/manager/update/UpdateManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/iMe/storage/data/manager/update/UpdateManager$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/storage/data/manager/update/UpdateManager;)V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->listener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    return-void
.end method

.method public static final synthetic access$getActivity(Lcom/iMe/storage/data/manager/update/UpdateManager;)Landroid/app/Activity;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAppUpdateManager$p(Lcom/iMe/storage/data/manager/update/UpdateManager;)Lcom/google/android/play/core/appupdate/AppUpdateManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    return-object p0
.end method

.method public static final synthetic access$getMode$p(Lcom/iMe/storage/data/manager/update/UpdateManager;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->mode:I

    return p0
.end method

.method public static final synthetic access$isNeedUpdate(Lcom/iMe/storage/data/manager/update/UpdateManager;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->isNeedUpdate()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$popupSnackbarForCompleteUpdate(Lcom/iMe/storage/data/manager/update/UpdateManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->popupSnackbarForCompleteUpdate()V

    return-void
.end method

.method public static final synthetic access$startUpdate(Lcom/iMe/storage/data/manager/update/UpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/iMe/storage/data/manager/update/UpdateManager;->startUpdate(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method

.method private final checkUpdate()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Checking for updates"

    .line 134
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->appUpdateInfoTask:Lcom/google/android/play/core/tasks/Task;

    new-instance v1, Lcom/iMe/storage/data/manager/update/UpdateManager$checkUpdate$1;

    invoke-direct {v1, p0}, Lcom/iMe/storage/data/manager/update/UpdateManager$checkUpdate$1;-><init>(Lcom/iMe/storage/data/manager/update/UpdateManager;)V

    new-instance v2, Lcom/iMe/storage/data/manager/update/UpdateManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/manager/update/UpdateManager$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method private static final checkUpdate$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final continueUpdate()V
    .locals 1

    .line 186
    iget v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->mode:I

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->continueUpdateForFlexible()V

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->continueUpdateForImmediate()V

    :goto_0
    return-void
.end method

.method private final continueUpdateForFlexible()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 195
    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForFlexible$1;

    invoke-direct {v1, p0}, Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForFlexible$1;-><init>(Lcom/iMe/storage/data/manager/update/UpdateManager;)V

    new-instance v2, Lcom/iMe/storage/data/manager/update/UpdateManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/manager/update/UpdateManager$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method private static final continueUpdateForFlexible$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final continueUpdateForImmediate()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 208
    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForImmediate$1;

    invoke-direct {v1, p0}, Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForImmediate$1;-><init>(Lcom/iMe/storage/data/manager/update/UpdateManager;)V

    new-instance v2, Lcom/iMe/storage/data/manager/update/UpdateManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/manager/update/UpdateManager$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method private static final continueUpdateForImmediate$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getActivity()Landroid/app/Activity;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private final isNeedUpdate()Z
    .locals 6

    .line 114
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->getRequestAppUpdateMetadata()Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->isAnyRequestsBefore()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 118
    invoke-direct {p0, v3, v3}, Lcom/iMe/storage/data/manager/update/UpdateManager;->updateLastUpdateMetadata(ZZ)V

    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->getVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v4}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    invoke-direct {p0, v3, v2}, Lcom/iMe/storage/data/manager/update/UpdateManager;->updateLastUpdateMetadata(ZZ)V

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->getLastRequestTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->isDayAgo(J)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->getVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v4}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method private static final listener$lambda$0(Lcom/iMe/storage/data/manager/update/UpdateManager;Lcom/google/android/play/core/install/InstallState;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->bytesDownloaded()J

    move-result-wide v0

    .line 49
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->totalBytesToDownload()J

    move-result-wide v2

    .line 50
    iget-object v4, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->flexibleUpdateDownloadListener:Lcom/iMe/storage/data/manager/update/UpdateManager$FlexibleUpdateDownloadListener;

    if-eqz v4, :cond_0

    .line 51
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/iMe/storage/data/manager/update/UpdateManager$FlexibleUpdateDownloadListener;->onDownloadProgress(JJ)V

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "An update has been downloaded"

    .line 60
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->popupSnackbarForCompleteUpdate()V

    :cond_1
    return-void
.end method

.method private final popupSnackbarForCompleteUpdate()V
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->actionGateway:Lcom/iMe/storage/domain/gateway/ActionGateway;

    .line 228
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 229
    iget-object v2, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lcom/iMe/storage/R$string;->in_app_update_snackbar_message:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    iget-object v3, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lcom/iMe/storage/R$string;->in_app_update_snackbar_action:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    new-instance v4, Lcom/iMe/storage/data/manager/update/UpdateManager$popupSnackbarForCompleteUpdate$1;

    invoke-direct {v4, p0}, Lcom/iMe/storage/data/manager/update/UpdateManager$popupSnackbarForCompleteUpdate$1;-><init>(Lcom/iMe/storage/data/manager/update/UpdateManager;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/iMe/storage/domain/gateway/ActionGateway;->showInfinitySnackBar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final setUpListener()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    iget-object v1, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->listener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    invoke-interface {v0, v1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    return-void
.end method

.method private final startUpdate(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 5

    :try_start_0
    const-string v0, "Starting update"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 152
    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 155
    iget v2, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->mode:I

    .line 156
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v4, 0x309

    .line 153
    invoke-interface {v0, p1, v2, v3, v4}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z

    const/4 p1, 0x1

    .line 159
    invoke-direct {p0, p1, v1}, Lcom/iMe/storage/data/manager/update/UpdateManager;->updateLastUpdateMetadata(ZZ)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    invoke-static {p1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final unregisterListener()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->listener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    if-eqz v1, :cond_0

    .line 238
    invoke-interface {v0, v1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unregistered the install state listener"

    .line 239
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final updateLastUpdateMetadata(ZZ)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->getRequestAppUpdateMetadata()Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->setLastRequestTime(J)V

    .line 169
    iget-object v1, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->setVersion(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 172
    invoke-virtual {v0, p1}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->setCount(I)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 175
    invoke-virtual {v0, p1}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->setCount(I)V

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->setRequestAppUpdateMetadata(Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;)V

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->unregisterListener()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->continueUpdate()V

    return-void
.end method

.method public final start()V
    .locals 1

    .line 101
    iget v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager;->mode:I

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->setUpListener()V

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->checkUpdate()V

    return-void
.end method
