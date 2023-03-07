.class public final Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->listenEvents()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletHomeBinancePayPresenter.kt\ncom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter\n*L\n1#1,111:1\n308#2,19:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4
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
    instance-of v0, p1, Lcom/smedialink/common/AppRxEvents$BinanceAuthHandled;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 114
    check-cast p1, Lcom/smedialink/common/AppRxEvents$BinanceAuthHandled;

    invoke-virtual {p1}, Lcom/smedialink/common/AppRxEvents$BinanceAuthHandled;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 115
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    invoke-virtual {p1}, Lcom/smedialink/common/AppRxEvents$BinanceAuthHandled;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "code"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->access$getAuthTokensByCode(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_2
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$BinanceExpiredSession;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 119
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    const/4 v0, 0x3

    invoke-static {p1, v2, v1, v0, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->renderScreenItems$default(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;ZLjava/util/List;ILjava/lang/Object;)V

    goto :goto_1

    .line 121
    :cond_3
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;

    if-eqz v0, :cond_4

    .line 122
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->getBalances()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p1, v2, v0, v3, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->renderScreenItems$default(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;ZLjava/util/List;ILjava/lang/Object;)V

    goto :goto_1

    .line 125
    :cond_4
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$BinanceTokensSettingsChanged;

    if-eqz v0, :cond_5

    .line 126
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->loadScreenInfo()V

    goto :goto_1

    .line 128
    :cond_5
    instance-of p1, p1, Lcom/smedialink/common/AppRxEvents$HiddenBalanceSettingChanged;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/AdapterNotifyView;->notifyDataSetChanged()V

    :cond_6
    :goto_1
    return-void
.end method
