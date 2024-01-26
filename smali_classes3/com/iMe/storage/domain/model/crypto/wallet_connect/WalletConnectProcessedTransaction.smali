.class public final Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;
.super Ljava/lang/Object;
.source "WalletConnectProcessedTransaction.kt"


# instance fields
.field private final data:Ljava/lang/String;

.field private final feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final from:Ljava/lang/String;

.field private final to:Ljava/lang/String;

.field private final transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParams"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->from:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->to:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->value:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->data:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    .line 12
    iput-object p6, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->from:Ljava/lang/String;

    return-object v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->value:Ljava/lang/String;

    return-object v0
.end method
