.class public final Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt;
.super Ljava/lang/Object;
.source "FirebaseExt.kt"


# direct methods
.method public static synthetic $r8$lambda$A9iXulyz1bttPU-D6FMIK-au7JA(Lio/reactivex/ObservableEmitter;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt;->asObservableTask$lambda-9$lambda-6(Lio/reactivex/ObservableEmitter;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gCzx6YudNt7ro5c6rmUZpSvMtB8(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt;->asObservableTask$lambda-9(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$je-YNJfM6a6_ry7vjVYL1yUpPyI(Lio/reactivex/ObservableEmitter;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt;->asObservableTask$lambda-9$lambda-7(Lio/reactivex/ObservableEmitter;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vpNN_X0vCF8rpQTYRspO-X7dFSs(Lio/reactivex/ObservableEmitter;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt;->asObservableTask$lambda-9$lambda-5(Lio/reactivex/ObservableEmitter;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yEiumAmtHgO0QpPCq-eZqWRDpDY()V
    .locals 0

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt;->asObservableTask$lambda-9$lambda-8()V

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
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "create { emitter ->\n    \u2026ncelled\")\n        }\n    }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final asObservableTask$lambda-9(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "$this_asObservableTask"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda2;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 39
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda3;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 43
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda1;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 46
    sget-object p2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final asObservableTask$lambda-9$lambda-5(Lio/reactivex/ObservableEmitter;Ljava/lang/Exception;)V
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

.method private static final asObservableTask$lambda-9$lambda-6(Lio/reactivex/ObservableEmitter;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Observables can\'t emit null values"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static final asObservableTask$lambda-9$lambda-7(Lio/reactivex/ObservableEmitter;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    const-string p1, "$emitter"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static final asObservableTask$lambda-9$lambda-8()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cancelled"

    .line 47
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
