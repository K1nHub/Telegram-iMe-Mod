.class public final Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->listenEvents()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletHomeCryptoPresenter.kt\ncom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter\n*L\n1#1,111:1\n203#2,14:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 8
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
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;

    :goto_0
    if-eqz v0, :cond_1

    .line 115
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;ZJILjava/lang/Object;)V

    goto :goto_4

    .line 117
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    .line 118
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;

    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    .line 119
    :cond_3
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessRestoreWallet;

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    .line 120
    :cond_4
    instance-of v1, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    :goto_3
    if-eqz v1, :cond_5

    .line 121
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;ZJILjava/lang/Object;)V

    goto :goto_4

    .line 123
    :cond_5
    instance-of p1, p1, Lcom/iMe/common/AppRxEvents$HiddenBalanceSettingChanged;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/AdapterNotifyView;->notifyDataSetChanged()V

    :cond_6
    :goto_4
    return-void
.end method