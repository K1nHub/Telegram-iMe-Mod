.class public final Lcom/iMe/utils/extentions/rx/RxExtKt;
.super Ljava/lang/Object;
.source "RxExt.kt"


# direct methods
.method public static synthetic $r8$lambda$Em2NWv10V9JtGFJ8zT_70AeNJfc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J9ByJDMGMvgJe87kV6Srs2DzIK8(Lcom/iMe/ui/base/mvp/base/BaseView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$lambda$5(Lcom/iMe/ui/base/mvp/base/BaseView;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dQwMDLE2UfPptnz6SRCHj5XvvkE(Lcom/iMe/ui/base/mvp/base/BaseView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$lambda$1(Lcom/iMe/ui/base/mvp/base/BaseView;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eZpDwql9SHtllB8ptk6dYlPut6A(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lOK-bZXT2Hsi8qcoVCJjt12ZFr8(Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingUpdate$lambda$7(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$reNoMT5W7buTci1YLhit3lFTCh0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingUpdate$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static final withLoadingDialog(Lio/reactivex/Completable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Completable;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$withLoadingDialog$5;

    invoke-direct {v0, p1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$withLoadingDialog$5;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;Z)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v1}, Lio/reactivex/Completable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object p0

    .line 53
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;Z)V

    invoke-virtual {p0, v0}, Lio/reactivex/Completable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p0

    const-string/jumbo p1, "viewState: BaseView, can\u2026cellable = cancellable) }"

    .line 46
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lcom/iMe/ui/base/mvp/base/BaseView;",
            "Z)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$withLoadingDialog$1;

    invoke-direct {v0, p1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$withLoadingDialog$1;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;Z)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p0

    .line 29
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;Z)V

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p0

    const-string/jumbo p1, "viewState: BaseView,\n   \u2026cellable = cancellable) }"

    .line 22
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic withLoadingDialog$default(Lio/reactivex/Completable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Completable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 45
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Completable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 18
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final withLoadingDialog$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final withLoadingDialog$lambda$1(Lcom/iMe/ui/base/mvp/base/BaseView;Z)V
    .locals 7

    const-string v0, "$viewState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->showLoadingDialog$default(Lcom/iMe/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final withLoadingDialog$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final withLoadingDialog$lambda$5(Lcom/iMe/ui/base/mvp/base/BaseView;Z)V
    .locals 7

    const-string v0, "$viewState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    .line 53
    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->showLoadingDialog$default(Lcom/iMe/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final withLoadingUpdate(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "loadingUpdateAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$withLoadingUpdate$1;

    invoke-direct {v0, p1}, Lcom/iMe/utils/extentions/rx/RxExtKt$withLoadingUpdate$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p0

    .line 59
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/iMe/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p0

    const-string/jumbo p1, "loadingUpdateAction: Cal\u2026dingUpdateAction(false) }"

    .line 58
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final withLoadingUpdate$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final withLoadingUpdate$lambda$7(Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1

    const-string v0, "$loadingUpdateAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method
