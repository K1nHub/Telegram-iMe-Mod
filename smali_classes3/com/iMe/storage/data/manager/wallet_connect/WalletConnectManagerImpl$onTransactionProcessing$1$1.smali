.class final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onTransactionProcessing(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isSignEvent:Z

.field final synthetic $requestId:J

.field final synthetic $sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

.field final synthetic this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iput-wide p2, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;->$requestId:J

    iput-object p4, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    iput-boolean p5, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;->$isSignEvent:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 386
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;->invoke(Lcom/iMe/storage/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/Result;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;",
            ">;)V"
        }
    .end annotation

    .line 389
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getEventsDelegate()Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    move-result-object v1

    .line 390
    iget-wide v2, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;->$requestId:J

    .line 391
    iget-object v4, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 392
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    .line 393
    iget-boolean v6, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;->$isSignEvent:Z

    .line 389
    invoke-interface/range {v1 .. v6}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;->onTransactionProcessing(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;Z)V

    goto :goto_0

    .line 395
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    const-string v1, "result"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-static {v0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$onErrorResult(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/iMe/storage/domain/model/Result$Error;)V

    :cond_1
    :goto_0
    return-void
.end method
