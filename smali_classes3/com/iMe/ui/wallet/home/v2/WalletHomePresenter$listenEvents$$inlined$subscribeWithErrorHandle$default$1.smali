.class public final Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter;->listenEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletHomePresenter.kt\ncom/iMe/ui/wallet/home/v2/WalletHomePresenter\n*L\n1#1,111:1\n43#2,5:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/RxEvent;

    .line 113
    instance-of v0, p1, Lcom/iMe/common/AppRxEvents$UpdateWalletScreen;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/v2/WalletHomeView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/home/v2/WalletHomeView;->loadBalances()V

    goto :goto_0

    .line 114
    :cond_0
    instance-of p1, p1, Lcom/iMe/common/AppRxEvents$BinanceOpenAuthScreen;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/WalletHomePresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/v2/WalletHomeView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/v2/WalletHomeView;->onTabSelected(I)V

    :cond_1
    :goto_0
    return-void
.end method
