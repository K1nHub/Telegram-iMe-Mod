.class public final Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;
.super Ljava/lang/Object;
.source "ResettableLazyDelegate.kt"


# direct methods
.method public static final resettableLazy(Lcom/smedialink/ui/base/mvp/MvpAlertDialog;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PROPTYPE:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/smedialink/ui/base/mvp/MvpAlertDialog;",
            "Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;",
            "Lkotlin/jvm/functions/Function0<",
            "+TPROPTYPE;>;)",
            "Lcom/smedialink/utils/extentions/delegate/ResettableLazy<",
            "TPROPTYPE;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "manager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "init"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance p0, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    invoke-direct {p0, p1, p2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;-><init>(Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method

.method public static final resettableLazy(Lcom/smedialink/ui/base/mvp/MvpBottomSheet;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PROPTYPE:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/smedialink/ui/base/mvp/MvpBottomSheet;",
            "Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;",
            "Lkotlin/jvm/functions/Function0<",
            "+TPROPTYPE;>;)",
            "Lcom/smedialink/utils/extentions/delegate/ResettableLazy<",
            "TPROPTYPE;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "manager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "init"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance p0, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    invoke-direct {p0, p1, p2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;-><init>(Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method

.method public static final resettableLazy(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PROPTYPE:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            "Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;",
            "Lkotlin/jvm/functions/Function0<",
            "+TPROPTYPE;>;)",
            "Lcom/smedialink/utils/extentions/delegate/ResettableLazy<",
            "TPROPTYPE;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "manager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "init"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance p0, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    invoke-direct {p0, p1, p2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;-><init>(Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method

.method public static synthetic resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpAlertDialog;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/MvpAlertDialog;->getMvpBaseDelegate()Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;->getResettableLazyManager()Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy(Lcom/smedialink/ui/base/mvp/MvpAlertDialog;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpBottomSheet;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/MvpBottomSheet;->getMvpBaseDelegate()Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;->getResettableLazyManager()Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy(Lcom/smedialink/ui/base/mvp/MvpBottomSheet;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;->getResettableLazyManager()Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p0

    return-object p0
.end method
