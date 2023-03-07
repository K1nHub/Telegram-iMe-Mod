.class public final Lcom/smedialink/utils/extentions/rx/RxExtKt;
.super Ljava/lang/Object;
.source "RxExt.kt"


# direct methods
.method public static synthetic $r8$lambda$10H01mRp3awai6xOqtT_IyhkwuM(Lcom/smedialink/ui/base/mvp/base/BaseView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$lambda-1(Lcom/smedialink/ui/base/mvp/base/BaseView;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bvu6wjYcNSWjfwwzknOFbwQrMGQ(Lcom/smedialink/ui/base/mvp/base/BaseView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$lambda-5(Lcom/smedialink/ui/base/mvp/base/BaseView;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZEOkOeN6lTkYTm6kFMnVCiujxPg(Lcom/smedialink/ui/base/mvp/base/BaseView;ZLio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$lambda-4(Lcom/smedialink/ui/base/mvp/base/BaseView;ZLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$khr3th8i1o2BGK3ViqoZqF3l2yY(Lcom/smedialink/ui/base/mvp/base/BaseView;ZLio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$lambda-0(Lcom/smedialink/ui/base/mvp/base/BaseView;ZLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static final withLoadingDialog(Lio/reactivex/Completable;Lcom/smedialink/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Completable;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;Z)V

    invoke-virtual {p0, v0}, Lio/reactivex/Completable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object p0

    .line 33
    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;Z)V

    invoke-virtual {p0, v0}, Lio/reactivex/Completable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p0

    const-string p1, "doOnSubscribe { disposab\u2026cellable = cancellable) }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final withLoadingDialog(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lcom/smedialink/ui/base/mvp/base/BaseView;",
            "Z)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;Z)V

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p0

    .line 19
    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;Z)V

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "doOnSubscribe { disposab\u2026cellable = cancellable) }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic withLoadingDialog$default(Lio/reactivex/Completable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Completable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 31
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Completable;Lcom/smedialink/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 17
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final withLoadingDialog$lambda-0(Lcom/smedialink/ui/base/mvp/base/BaseView;ZLio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string v0, "$viewState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 18
    invoke-interface {p0, v0, p1, p2}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private static final withLoadingDialog$lambda-1(Lcom/smedialink/ui/base/mvp/base/BaseView;Z)V
    .locals 7

    const-string v0, "$viewState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/smedialink/ui/base/mvp/base/BaseView$DefaultImpls;->showLoadingDialog$default(Lcom/smedialink/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final withLoadingDialog$lambda-4(Lcom/smedialink/ui/base/mvp/base/BaseView;ZLio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string v0, "$viewState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 32
    invoke-interface {p0, v0, p1, p2}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private static final withLoadingDialog$lambda-5(Lcom/smedialink/ui/base/mvp/base/BaseView;Z)V
    .locals 7

    const-string v0, "$viewState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    .line 33
    invoke-static/range {v1 .. v6}, Lcom/smedialink/ui/base/mvp/base/BaseView$DefaultImpls;->showLoadingDialog$default(Lcom/smedialink/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    return-void
.end method
