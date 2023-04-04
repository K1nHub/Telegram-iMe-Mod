.class public final Lcom/iMe/model/staking/StakingTransactionStep$Execute;
.super Lcom/iMe/model/staking/StakingTransactionStep;
.source "StakingTransactionStep.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/staking/StakingTransactionStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Execute"
.end annotation


# instance fields
.field private final screenType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 30
    sget v0, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne p1, v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->wallet_operation_deposit:I

    goto :goto_0

    .line 31
    :cond_0
    sget v0, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne p1, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->staking_profit_get:I

    goto :goto_0

    .line 32
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->staking_details_withdraw:I

    :goto_0
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, v0, v1}, Lcom/iMe/model/staking/StakingTransactionStep;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/iMe/model/staking/StakingTransactionStep$Execute;->screenType:I

    return-void
.end method

.method private final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/staking/StakingTransactionStep$Execute;->screenType:I

    return v0
.end method

.method public static synthetic copy$default(Lcom/iMe/model/staking/StakingTransactionStep$Execute;IILjava/lang/Object;)Lcom/iMe/model/staking/StakingTransactionStep$Execute;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/iMe/model/staking/StakingTransactionStep$Execute;->screenType:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/model/staking/StakingTransactionStep$Execute;->copy(I)Lcom/iMe/model/staking/StakingTransactionStep$Execute;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(I)Lcom/iMe/model/staking/StakingTransactionStep$Execute;
    .locals 1

    new-instance v0, Lcom/iMe/model/staking/StakingTransactionStep$Execute;

    invoke-direct {v0, p1}, Lcom/iMe/model/staking/StakingTransactionStep$Execute;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/staking/StakingTransactionStep$Execute;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/staking/StakingTransactionStep$Execute;

    iget v1, p0, Lcom/iMe/model/staking/StakingTransactionStep$Execute;->screenType:I

    iget p1, p1, Lcom/iMe/model/staking/StakingTransactionStep$Execute;->screenType:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/staking/StakingTransactionStep$Execute;->screenType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Execute(screenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/staking/StakingTransactionStep$Execute;->screenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
