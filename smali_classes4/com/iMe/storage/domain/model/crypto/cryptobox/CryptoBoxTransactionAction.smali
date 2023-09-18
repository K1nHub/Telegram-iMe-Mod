.class public final Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;
.super Ljava/lang/Object;
.source "CryptoBoxTransactionAction.kt"


# instance fields
.field private final gas:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

.field private final transaction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;)V
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->transaction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->gas:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->transaction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->gas:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->copy(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->transaction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->gas:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;-><init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->transaction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->transaction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->gas:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->gas:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getGas()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->gas:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    return-object v0
.end method

.method public final getTransaction()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->transaction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->transaction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->gas:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBoxTransactionAction(transaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->transaction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->gas:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
