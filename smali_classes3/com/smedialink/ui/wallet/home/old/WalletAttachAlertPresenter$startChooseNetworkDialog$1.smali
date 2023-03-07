.class final Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$startChooseNetworkDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletAttachAlertPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->startChooseNetworkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$startChooseNetworkDialog$1;->invoke(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "newNetworkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 53
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->access$resetCache(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)V

    .line 54
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletData(Z)V

    return-void
.end method
