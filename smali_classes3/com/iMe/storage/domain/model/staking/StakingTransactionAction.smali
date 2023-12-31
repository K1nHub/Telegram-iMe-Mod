.class public final Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;
.super Ljava/lang/Object;
.source "StakingTransactionAction.kt"


# instance fields
.field private final gas:Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

.field private final transaction:Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;)V
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->transaction:Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->gas:Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->transaction:Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->gas:Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->copy(Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;)Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->transaction:Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->gas:Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;)Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;-><init>(Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->transaction:Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->transaction:Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->gas:Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->gas:Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getGas()Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->gas:Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    return-object v0
.end method

.method public final getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->transaction:Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->transaction:Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->gas:Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingTransactionAction(transaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->transaction:Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->gas:Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
