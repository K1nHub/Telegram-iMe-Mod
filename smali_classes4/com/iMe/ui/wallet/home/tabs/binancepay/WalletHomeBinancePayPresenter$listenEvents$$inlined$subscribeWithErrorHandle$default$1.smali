.class public final Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->listenEvents()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletHomeBinancePayPresenter.kt\ncom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter\n*L\n1#1,111:1\n332#2,21:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/RxEvent;

    .line 113
    instance-of v0, p1, Lcom/iMe/common/AppRxEvents$BinanceAuthHandled;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 114
    check-cast p1, Lcom/iMe/common/AppRxEvents$BinanceAuthHandled;

    invoke-virtual {p1}, Lcom/iMe/common/AppRxEvents$BinanceAuthHandled;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 115
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    invoke-virtual {p1}, Lcom/iMe/common/AppRxEvents$BinanceAuthHandled;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "code"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->access$getAuthTokensByCode(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BinanceExpiredSession;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 120
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    const/4 v0, 0x3

    invoke-static {p1, v2, v1, v0, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->renderScreenItems$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;ZLjava/util/List;ILjava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_3
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;

    if-eqz v0, :cond_4

    .line 124
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getBalances()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p1, v2, v0, v3, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->renderScreenItems$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;ZLjava/util/List;ILjava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_4
    instance-of p1, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BinanceTokensSettingsChanged;

    if-eqz p1, :cond_5

    .line 129
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->loadScreenInfo()V

    :cond_5
    :goto_0
    return-void
.end method