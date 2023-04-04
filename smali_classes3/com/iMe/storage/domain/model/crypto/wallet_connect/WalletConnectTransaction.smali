.class public final Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;
.super Ljava/lang/Object;
.source "WalletConnectTransaction.kt"


# instance fields
.field private final data:Ljava/lang/String;

.field private final from:Ljava/lang/String;

.field private final gas:Ljava/math/BigInteger;

.field private final gasPrice:Ljava/math/BigInteger;

.field private final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field private final nonce:Ljava/math/BigInteger;

.field private final to:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->from:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->to:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->value:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->data:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->gas:Ljava/math/BigInteger;

    .line 12
    iput-object p6, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->gasPrice:Ljava/math/BigInteger;

    .line 13
    iput-object p7, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->nonce:Ljava/math/BigInteger;

    .line 14
    iput-object p8, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->from:Ljava/lang/String;

    return-object v0
.end method

.method public final getGas()Ljava/math/BigInteger;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->gas:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getGasPrice()Ljava/math/BigInteger;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->gasPrice:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;->value:Ljava/lang/String;

    return-object v0
.end method
