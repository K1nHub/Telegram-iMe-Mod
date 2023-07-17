.class public abstract Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;
.super Ljava/lang/Object;
.source "CryptoTransferDataResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$BTC;,
        Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$EVM;,
        Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TON;,
        Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;
    }
.end annotation


# instance fields
.field private final transient feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

.field private final transient token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

.field private final transient transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;


# direct methods
.method private constructor <init>(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    .line 8
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    .line 9
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;-><init>(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;)V

    return-void
.end method


# virtual methods
.method public getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    return-object v0
.end method
