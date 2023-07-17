.class final Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$startChooseNetworkDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletAttachAlertPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->startChooseNetworkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/crypto/Network;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$startChooseNetworkDialog$1;->invoke(Lcom/iMe/storage/domain/model/crypto/Network;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    const-string v0, "newNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->access$getCryptoPreferenceHelper$p(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 55
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->access$resetCache(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;)V

    .line 56
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletData(Z)V

    return-void
.end method
