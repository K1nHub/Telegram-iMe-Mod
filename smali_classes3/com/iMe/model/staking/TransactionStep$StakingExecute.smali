.class public final Lcom/iMe/model/staking/TransactionStep$StakingExecute;
.super Lcom/iMe/model/staking/TransactionStep;
.source "TransactionStep.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/staking/TransactionStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StakingExecute"
.end annotation


# instance fields
.field private final screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/staking/StakingScreenType;)V
    .locals 3

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/iMe/model/wallet/staking/StakingScreenType;->getButtonTextId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/model/staking/TransactionStep;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/staking/TransactionStep$StakingExecute;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    return-void
.end method

.method private final component1()Lcom/iMe/model/wallet/staking/StakingScreenType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/TransactionStep$StakingExecute;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/iMe/model/staking/TransactionStep$StakingExecute;Lcom/iMe/model/wallet/staking/StakingScreenType;ILjava/lang/Object;)Lcom/iMe/model/staking/TransactionStep$StakingExecute;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/iMe/model/staking/TransactionStep$StakingExecute;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/model/staking/TransactionStep$StakingExecute;->copy(Lcom/iMe/model/wallet/staking/StakingScreenType;)Lcom/iMe/model/staking/TransactionStep$StakingExecute;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/iMe/model/wallet/staking/StakingScreenType;)Lcom/iMe/model/staking/TransactionStep$StakingExecute;
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/staking/TransactionStep$StakingExecute;

    invoke-direct {v0, p1}, Lcom/iMe/model/staking/TransactionStep$StakingExecute;-><init>(Lcom/iMe/model/wallet/staking/StakingScreenType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/staking/TransactionStep$StakingExecute;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/staking/TransactionStep$StakingExecute;

    iget-object v1, p0, Lcom/iMe/model/staking/TransactionStep$StakingExecute;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    iget-object p1, p1, Lcom/iMe/model/staking/TransactionStep$StakingExecute;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/staking/TransactionStep$StakingExecute;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingExecute(screenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/staking/TransactionStep$StakingExecute;->screenType:Lcom/iMe/model/wallet/staking/StakingScreenType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
