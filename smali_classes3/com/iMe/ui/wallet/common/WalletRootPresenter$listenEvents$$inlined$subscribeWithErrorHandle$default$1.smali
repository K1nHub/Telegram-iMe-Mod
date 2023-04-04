.class public final Lcom/iMe/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/common/WalletRootPresenter;->listenEvents()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletRootPresenter.kt\ncom/iMe/ui/wallet/common/WalletRootPresenter\n*L\n1#1,111:1\n55#2,10:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/common/WalletRootPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/common/WalletRootPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/common/WalletRootPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
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
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessRestoreWallet;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 114
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    instance-of v1, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;

    :goto_2
    if-eqz v1, :cond_3

    .line 115
    iget-object p1, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/common/WalletRootPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->access$setupNavigation(Lcom/iMe/ui/wallet/common/WalletRootPresenter;)V

    .line 116
    iget-object p1, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/common/WalletRootPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->access$updateWalletConnectItemVisibility(Lcom/iMe/ui/wallet/common/WalletRootPresenter;)V

    goto :goto_3

    .line 118
    :cond_3
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/common/WalletRootPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->access$updateWalletConnectItemVisibility(Lcom/iMe/ui/wallet/common/WalletRootPresenter;)V

    goto :goto_3

    .line 119
    :cond_4
    instance-of p1, p1, Lcom/iMe/common/AppRxEvents$BinanceOpenAuthScreen;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/common/WalletRootPresenter;

    sget v0, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->selectTab(I)V

    :cond_5
    :goto_3
    return-void
.end method
