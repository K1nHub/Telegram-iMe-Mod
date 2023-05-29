.class public final Lcom/iMe/model/wallet/transaction/StakingOperationItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "StakingOperationItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/transaction/StakingOperationItem$WhenMappings;
    }
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final createdAt:Ljava/lang/String;

.field private final fee:Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

.field private final id:J

.field private final isBadgeVisible:Z

.field private final safe:Z

.field private final stakingIconResId:I

.field private final status:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

.field private final tokenInfo$delegate:Lkotlin/Lazy;

.field private final tokenSymbol:Ljava/lang/String;

.field private final txHash:Ljava/lang/String;

.field private final type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;


# direct methods
.method public constructor <init>(JLjava/math/BigDecimal;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationCost;ZZI)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenSymbol"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txHash"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->id:J

    .line 21
    iput-object p3, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->amount:Ljava/math/BigDecimal;

    .line 22
    iput-object p4, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->tokenSymbol:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    .line 24
    iput-object p6, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->status:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    .line 25
    iput-object p7, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->createdAt:Ljava/lang/String;

    .line 26
    iput-object p8, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->txHash:Ljava/lang/String;

    .line 27
    iput-object p9, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->fee:Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    .line 28
    iput-boolean p10, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->safe:Z

    .line 29
    iput-boolean p11, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->isBadgeVisible:Z

    .line 30
    iput p12, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->stakingIconResId:I

    .line 34
    new-instance p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem$tokenInfo$2;

    invoke-direct {p1, p0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem$tokenInfo$2;-><init>(Lcom/iMe/model/wallet/transaction/StakingOperationItem;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->tokenInfo$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/transaction/StakingOperationItem;JLjava/math/BigDecimal;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationCost;ZZIILjava/lang/Object;)Lcom/iMe/model/wallet/transaction/StakingOperationItem;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->id:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->amount:Ljava/math/BigDecimal;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->tokenSymbol:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->status:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->createdAt:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->txHash:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->fee:Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-boolean v11, v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->safe:Z

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-boolean v12, v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->isBadgeVisible:Z

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget v1, v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->stakingIconResId:I

    goto :goto_a

    :cond_a
    move/from16 v1, p12

    :goto_a
    move-wide p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->copy(JLjava/math/BigDecimal;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationCost;ZZI)Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    move-result-object v0

    return-object v0
.end method

.method private final getSymbol()Ljava/lang/String;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    sget-object v1, Lcom/iMe/model/wallet/transaction/StakingOperationItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const-string v0, "+"

    goto :goto_1

    :cond_2
    const-string v0, "-"

    goto :goto_1

    :cond_3
    const-string v0, ""

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->id:J

    return-wide v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->isBadgeVisible:Z

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->stakingIconResId:I

    return v0
.end method

.method public final component2()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->tokenSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/iMe/storage/domain/model/staking/StakingOperationType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    return-object v0
.end method

.method public final component5()Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->status:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/iMe/storage/domain/model/staking/StakingOperationCost;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->fee:Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->safe:Z

    return v0
.end method

.method public final copy(JLjava/math/BigDecimal;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationCost;ZZI)Lcom/iMe/model/wallet/transaction/StakingOperationItem;
    .locals 14

    const-string v0, "amount"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenSymbol"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txHash"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    move-object v1, v0

    move-wide v2, p1

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;-><init>(JLjava/math/BigDecimal;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationCost;ZZI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    iget-wide v3, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->id:J

    iget-wide v5, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->amount:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->amount:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->tokenSymbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->tokenSymbol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->status:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->status:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->createdAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->createdAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->txHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->txHash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->fee:Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->fee:Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->safe:Z

    iget-boolean v3, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->safe:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->isBadgeVisible:Z

    iget-boolean v3, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->isBadgeVisible:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->stakingIconResId:I

    iget p1, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->stakingIconResId:I

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAmount(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 4

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    sget-object v1, Lcom/iMe/model/wallet/transaction/StakingOperationItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    sget v0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_approve_title:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getTokenInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1, v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->amount:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getTokenInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getTokenInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getFee()Lcom/iMe/storage/domain/model/staking/StakingOperationCost;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->fee:Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    return-object v0
.end method

.method public final getIcon()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    sget-object v1, Lcom/iMe/model/wallet/transaction/StakingOperationItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 58
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_receive:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 57
    :cond_1
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_staking_withdraw:I

    goto :goto_0

    .line 56
    :cond_2
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_sent:I

    goto :goto_0

    .line 55
    :cond_3
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_approve:I

    :goto_0
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->id:J

    return-wide v0
.end method

.method public final getSafe()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->safe:Z

    return v0
.end method

.method public final getStakingIconResId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->stakingIconResId:I

    return v0
.end method

.method public final getStatus()Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->status:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    return-object v0
.end method

.method public final getStatusColor()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->status:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/StakingOperationStatusExtKt;->colorKey(Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;)I

    move-result v0

    return v0
.end method

.method public final getStatusText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->status:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->getTitleResId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTokenInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->tokenInfo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    return-object v0
.end method

.method public final getTokenSymbol()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->tokenSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionTimeText()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->createdAt:Ljava/lang/String;

    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTransactionTitle(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 2

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    sget-object v1, Lcom/iMe/model/wallet/transaction/StakingOperationItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 45
    sget v0, Lorg/telegram/messenger/R$string;->staking_operation_type_claim:I

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 43
    :cond_1
    iget-boolean v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->safe:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->staking_operation_type_withdrawal_request:I

    goto :goto_0

    .line 44
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->staking_operation_type_immediate_withdrawal:I

    goto :goto_0

    .line 41
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->staking_operation_type_deposit:I

    goto :goto_0

    .line 40
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->staking_operation_type_approval:I

    .line 38
    :goto_0
    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTxHash()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/iMe/storage/domain/model/staking/StakingOperationType;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->id:J

    invoke-static {v0, v1}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->tokenSymbol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->status:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->createdAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->txHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->fee:Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->safe:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->isBadgeVisible:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->stakingIconResId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isBadgeVisible()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->isBadgeVisible:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingOperationItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenSymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->tokenSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->type:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->status:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->txHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->fee:Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", safe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->safe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBadgeVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->isBadgeVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stakingIconResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->stakingIconResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
