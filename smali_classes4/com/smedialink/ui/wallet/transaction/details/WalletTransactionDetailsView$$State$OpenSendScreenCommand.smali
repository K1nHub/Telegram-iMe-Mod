.class public Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenSendScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTransactionDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenSendScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final code:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field public final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)V
    .locals 1

    .line 361
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openSendScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 363
    iput-object p2, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenSendScreenCommand;->code:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 364
    iput-object p3, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenSendScreenCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 365
    iput-object p4, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenSendScreenCommand;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;)V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenSendScreenCommand;->code:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenSendScreenCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenSendScreenCommand;->address:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->openSendScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 353
    check-cast p1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenSendScreenCommand;->apply(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;)V

    return-void
.end method
