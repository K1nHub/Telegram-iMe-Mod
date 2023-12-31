.class public abstract Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;
.super Ljava/lang/Object;
.source "SwapArgs.kt"

# interfaces
.implements Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;
    }
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final chainId:J

.field private final gasLimit:Ljava/math/BigInteger;

.field private final gasPrice:Ljava/math/BigInteger;

.field private final inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final nonce:Ljava/math/BigInteger;

.field private final swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;


# direct methods
.method private constructor <init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 14
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->amount:Ljava/math/BigDecimal;

    .line 15
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 16
    iput-wide p4, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->chainId:J

    .line 17
    iput-object p6, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->nonce:Ljava/math/BigInteger;

    .line 18
    iput-object p7, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->gasPrice:Ljava/math/BigInteger;

    .line 19
    iput-object p8, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->gasLimit:Ljava/math/BigInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getChainId()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->chainId:J

    return-wide v0
.end method

.method public getGasLimit()Ljava/math/BigInteger;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->gasLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGasPrice()Ljava/math/BigInteger;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->gasPrice:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method
