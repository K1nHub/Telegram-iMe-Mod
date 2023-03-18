.class public final Lcom/smedialink/storage/data/manager/review/AppReviewManager;
.super Ljava/lang/Object;
.source "AppReviewManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/manager/review/AppReviewManager$Companion;
    }
.end annotation


# instance fields
.field private final mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final manager:Lcom/google/android/play/core/review/ReviewManager;

.field private final preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;


# direct methods
.method public static synthetic $r8$lambda$JvyYEVkCL0imaNT357TLE8TcumM(Lcom/smedialink/storage/data/manager/review/AppReviewManager;Lcom/google/android/play/core/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->startReview$lambda$1(Lcom/smedialink/storage/data/manager/review/AppReviewManager;Lcom/google/android/play/core/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xmpz5O9nNZrGs27H2amOGwHD0p0(Lcom/smedialink/storage/data/manager/review/AppReviewManager;Lcom/google/android/play/core/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->startReview$lambda$1$lambda$0(Lcom/smedialink/storage/data/manager/review/AppReviewManager;Lcom/google/android/play/core/tasks/Task;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/data/manager/review/AppReviewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/manager/review/AppReviewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/smedialink/storage/domain/storage/PreferenceHelper;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    .line 18
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 23
    invoke-static {p1}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object p1

    const-string p2, "create(activity)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->manager:Lcom/google/android/play/core/review/ReviewManager;

    return-void
.end method

.method private final getActivity()Landroid/app/Activity;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private final isNeedRequestReview()Z
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getRequestAppReviewMetadata()Lcom/smedialink/storage/data/locale/prefs/model/RequestAppReviewMetadata;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/RequestAppReviewMetadata;->isAnyRequestsBefore()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 55
    invoke-direct {p0, v2}, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->updateReviewRequestCount(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 57
    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/RequestAppReviewMetadata;->getLastRequestTime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->isDaysAgo(IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/RequestAppReviewMetadata;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method private static final startReview$lambda$1(Lcom/smedialink/storage/data/manager/review/AppReviewManager;Lcom/google/android/play/core/tasks/Task;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "task.result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    .line 32
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->manager:Lcom/google/android/play/core/review/ReviewManager;

    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    const-string v0, "manager.launchReviewFlow(activity!!, reviewInfo)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/smedialink/storage/data/manager/review/AppReviewManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/smedialink/storage/data/manager/review/AppReviewManager$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/storage/data/manager/review/AppReviewManager;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final startReview$lambda$1$lambda$0(Lcom/smedialink/storage/data/manager/review/AppReviewManager;Lcom/google/android/play/core/tasks/Task;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->updateReviewRequestCount(Z)V

    return-void
.end method

.method private final updateReviewRequestCount(Z)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getRequestAppReviewMetadata()Lcom/smedialink/storage/data/locale/prefs/model/RequestAppReviewMetadata;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/RequestAppReviewMetadata;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 66
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/data/locale/prefs/model/RequestAppReviewMetadata;->setCount(I)V

    .line 68
    :cond_0
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/storage/data/locale/prefs/model/RequestAppReviewMetadata;->setLastRequestTime(J)V

    .line 70
    iget-object p1, p0, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->preferenceHelper:Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->setRequestAppReviewMetadata(Lcom/smedialink/storage/data/locale/prefs/model/RequestAppReviewMetadata;)V

    return-void
.end method


# virtual methods
.method public final startReview()Z
    .locals 3

    .line 26
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->isNeedRequestReview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/review/AppReviewManager;->manager:Lcom/google/android/play/core/review/ReviewManager;

    invoke-interface {v1}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/play/core/tasks/Task;

    move-result-object v1

    const-string v2, "manager.requestReviewFlow()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v2, Lcom/smedialink/storage/data/manager/review/AppReviewManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/smedialink/storage/data/manager/review/AppReviewManager$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/storage/data/manager/review/AppReviewManager;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    :cond_0
    return v0
.end method
