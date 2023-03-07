.class public final Lcom/smedialink/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->listenEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletRootPresenter.kt\ncom/smedialink/ui/wallet/common/WalletRootPresenter\n*L\n1#1,111:1\n55#2,10:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/common/WalletRootPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/common/WalletRootPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/common/WalletRootPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessRestoreWallet;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 114
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    instance-of v1, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;

    :goto_2
    if-eqz v1, :cond_3

    .line 115
    iget-object p1, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/common/WalletRootPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->access$setupNavigation(Lcom/smedialink/ui/wallet/common/WalletRootPresenter;)V

    .line 116
    iget-object p1, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/common/WalletRootPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->access$updateWalletConnectItemVisibility(Lcom/smedialink/ui/wallet/common/WalletRootPresenter;)V

    goto :goto_3

    .line 118
    :cond_3
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/common/WalletRootPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->access$updateWalletConnectItemVisibility(Lcom/smedialink/ui/wallet/common/WalletRootPresenter;)V

    goto :goto_3

    .line 119
    :cond_4
    instance-of p1, p1, Lcom/smedialink/common/AppRxEvents$BinanceOpenAuthScreen;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/common/WalletRootPresenter;

    sget v0, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->selectTab(I)V

    :cond_5
    :goto_3
    return-void
.end method
