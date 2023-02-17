.class public Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State$OpenStakingOperationDetailsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTransactionsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenStakingOperationDetailsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final item:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

.field public final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State;Lcom/smedialink/model/wallet/transaction/StakingOperationItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    .line 278
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openStakingOperationDetails"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 280
    iput-object p2, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State$OpenStakingOperationDetailsCommand;->item:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    .line 281
    iput-object p3, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State$OpenStakingOperationDetailsCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State$OpenStakingOperationDetailsCommand;->item:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State$OpenStakingOperationDetailsCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;->openStakingOperationDetails(Lcom/smedialink/model/wallet/transaction/StakingOperationItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 272
    check-cast p1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State$OpenStakingOperationDetailsCommand;->apply(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;)V

    return-void
.end method
