.class final Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startCancelTransaction$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTransactionDetailsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->startCancelTransaction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_with:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startCancelTransaction$1$1;->this$0:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startCancelTransaction$1$1;->$this_with:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startCancelTransaction$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startCancelTransaction$1$1;->this$0:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter$startCancelTransaction$1$1;->$this_with:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->getTxHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;->cancelTransaction(Ljava/lang/String;)V

    return-void
.end method
