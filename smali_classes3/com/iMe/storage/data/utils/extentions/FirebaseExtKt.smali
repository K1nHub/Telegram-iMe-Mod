.class public final Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;
.super Ljava/lang/Object;
.source "FirebaseExt.kt"


# direct methods
.method public static synthetic $r8$lambda$GGZdsaY2KsTOE6dTFZaWbEuI4Io(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;->asSingleTask$lambda$12$lambda$10(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lx2sbYqTuJvQmzFuBa8FOGluLKo(Lcom/google/android/gms/tasks/Task;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;->asSingleTask$lambda$12(Lcom/google/android/gms/tasks/Task;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$McY-QP_DIKn1S8exd0ZXZ8F7Rdo(Lio/reactivex/ObservableEmitter;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;->asObservableTask$lambda$9$lambda$7(Lio/reactivex/ObservableEmitter;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$THXo7Kc8QMPQ-gefK0SHxSKr6iI(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;->asObservableTask$lambda$9(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aPJdRWOn9LBennAnHp232oq1AAM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;->asObservableTask$lambda$9$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$euhM7bE1KtCP41D4dicRIjqPbDE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;->asSingleTask$lambda$12$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qMwq7Y3MAmVpqcKzFfm7gB8bkDk(Lio/reactivex/ObservableEmitter;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;->asObservableTask$lambda$9$lambda$5(Lio/reactivex/ObservableEmitter;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t7eYt15B8Du9AALXhaogfprHBPk()V
    .locals 0

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;->asObservableTask$lambda$9$lambda$8()V

    return-void
.end method

.method public static final asObservableTask(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;",
            "Landroid/app/Activity;",
            ")",
            "Lio/reactivex/Observable<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "create { emitter ->\n    \u2026ncelled\")\n        }\n    }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final asObservableTask$lambda$9(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;Lio/reactivex/ObservableEmitter;)V
    .locals 2

    const-string v0, "$this_asObservableTask"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda2;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 39
    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$asObservableTask$2$2;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$asObservableTask$2$2;-><init>(Lio/reactivex/ObservableEmitter;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 43
    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda1;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 46
    sget-object p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final asObservableTask$lambda$9$lambda$5(Lio/reactivex/ObservableEmitter;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {p0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static final asObservableTask$lambda$9$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final asObservableTask$lambda$9$lambda$7(Lio/reactivex/ObservableEmitter;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    const-string p1, "$emitter"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static final asObservableTask$lambda$9$lambda$8()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cancelled"

    .line 47
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final asSingleTask(Lcom/google/android/gms/tasks/Task;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)",
            "Lio/reactivex/Single<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/gms/tasks/Task;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p0

    const-string v0, "create { emitter ->\n    \u2026values\"))\n        }\n    }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final asSingleTask$lambda$12(Lcom/google/android/gms/tasks/Task;Lio/reactivex/SingleEmitter;)V
    .locals 1

    const-string v0, "$this_asSingleTask"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda3;-><init>(Lio/reactivex/SingleEmitter;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 57
    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$asSingleTask$1$2;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$asSingleTask$1$2;-><init>(Lio/reactivex/SingleEmitter;)V

    new-instance p1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final asSingleTask$lambda$12$lambda$10(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {p0}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static final asSingleTask$lambda$12$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
