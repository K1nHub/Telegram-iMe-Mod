.class final Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$startChooseNetworkDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->startChooseNetworkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$startChooseNetworkDialog$1;->invoke(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "newNetworkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->access$getCryptoPreferenceHelper$p(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    .line 63
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->access$getRxEventBus$p(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method
