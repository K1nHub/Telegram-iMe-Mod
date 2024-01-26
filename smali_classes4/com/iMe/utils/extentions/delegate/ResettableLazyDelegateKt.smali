.class public final Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;
.super Ljava/lang/Object;
.source "ResettableLazyDelegate.kt"


# direct methods
.method public static final resettableLazy(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PROPTYPE:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/iMe/ui/base/mvp/MvpBottomSheet;",
            "Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;",
            "Lkotlin/jvm/functions/Function0<",
            "+TPROPTYPE;>;)",
            "Lcom/iMe/utils/extentions/delegate/ResettableLazy<",
            "TPROPTYPE;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "manager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "init"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    invoke-direct {p0, p1, p2}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;-><init>(Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method

.method public static final resettableLazy(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PROPTYPE:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            "Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;",
            "Lkotlin/jvm/functions/Function0<",
            "+TPROPTYPE;>;)",
            "Lcom/iMe/utils/extentions/delegate/ResettableLazy<",
            "TPROPTYPE;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "manager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "init"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance p0, Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    invoke-direct {p0, p1, p2}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;-><init>(Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method

.method public static synthetic resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getResettableLazyManager()Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;

    move-result-object p1

    .line 73
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getResettableLazyManager()Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;

    move-result-object p1

    .line 66
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p0

    return-object p0
.end method
