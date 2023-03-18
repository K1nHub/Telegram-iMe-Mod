.class public final Lcom/smedialink/storage/domain/model/staking/StakingOperation;
.super Ljava/lang/Object;
.source "StakingOperation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/staking/StakingOperation$WhenMappings;
    }
.end annotation


# instance fields
.field private final amount:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

.field private final approvedToken:Lcom/smedialink/storage/domain/model/staking/StakingToken;

.field private final failReason:Ljava/lang/String;

.field private final fee:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

.field private final id:J

.field private final issuedAt:Ljava/lang/String;

.field private final issuer:Ljava/lang/String;

.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final safe:Ljava/lang/Boolean;

.field private final settledAt:Ljava/lang/String;

.field private final stakingId:I

.field private final status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

.field private final token:Ljava/lang/String;

.field private final transaction:Ljava/lang/String;

.field private final type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;


# direct methods
.method public constructor <init>(JILjava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;Ljava/lang/Boolean;Lcom/smedialink/storage/domain/model/staking/StakingToken;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 10

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p15

    move-object/from16 v7, p16

    const-string v8, "transaction"

    invoke-static {p4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "type"

    invoke-static {p5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "status"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "issuer"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "issuedAt"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "token"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "networkType"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v8, p1

    .line 10
    iput-wide v8, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->id:J

    move v8, p3

    .line 11
    iput v8, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->stakingId:I

    .line 12
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->transaction:Ljava/lang/String;

    .line 13
    iput-object v2, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    .line 14
    iput-object v3, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    .line 15
    iput-object v4, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuer:Ljava/lang/String;

    .line 16
    iput-object v5, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuedAt:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 17
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->settledAt:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 18
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->failReason:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 19
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->amount:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    move-object/from16 v1, p12

    .line 20
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->fee:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    move-object/from16 v1, p13

    .line 21
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->safe:Ljava/lang/Boolean;

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->approvedToken:Lcom/smedialink/storage/domain/model/staking/StakingToken;

    .line 23
    iput-object v6, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->token:Ljava/lang/String;

    .line 24
    iput-object v7, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/staking/StakingOperation;JILjava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;Ljava/lang/Boolean;Lcom/smedialink/storage/domain/model/staking/StakingToken;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/staking/StakingOperation;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->stakingId:I

    goto :goto_1

    :cond_1
    move/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->transaction:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuer:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuedAt:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->settledAt:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->failReason:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->amount:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->fee:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->safe:Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->approvedToken:Lcom/smedialink/storage/domain/model/staking/StakingToken;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->token:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    goto :goto_e

    :cond_e
    move-object/from16 v1, p16

    :goto_e
    move-wide/from16 p1, v2

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->copy(JILjava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;Ljava/lang/Boolean;Lcom/smedialink/storage/domain/model/staking/StakingToken;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/domain/model/staking/StakingOperation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->id:J

    return-wide v0
.end method

.method public final component10()Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->amount:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    return-object v0
.end method

.method public final component11()Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->fee:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    return-object v0
.end method

.method public final component12()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->safe:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component13()Lcom/smedialink/storage/domain/model/staking/StakingToken;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->approvedToken:Lcom/smedialink/storage/domain/model/staking/StakingToken;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->stakingId:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->transaction:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/smedialink/storage/domain/model/staking/StakingOperationType;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    return-object v0
.end method

.method public final component5()Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuedAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->settledAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->failReason:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JILjava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;Ljava/lang/Boolean;Lcom/smedialink/storage/domain/model/staking/StakingToken;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/domain/model/staking/StakingOperation;
    .locals 18

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    const-string v0, "transaction"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "issuer"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "issuedAt"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v17, Lcom/smedialink/storage/domain/model/staking/StakingOperation;

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v16}, Lcom/smedialink/storage/domain/model/staking/StakingOperation;-><init>(JILjava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;Ljava/lang/Boolean;Lcom/smedialink/storage/domain/model/staking/StakingToken;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-object v17
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;

    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->id:J

    iget-wide v5, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->stakingId:I

    iget v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->stakingId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->transaction:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->transaction:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuer:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuedAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuedAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->settledAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->settledAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->failReason:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->failReason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->amount:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->amount:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->fee:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->fee:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->safe:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->safe:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->approvedToken:Lcom/smedialink/storage/domain/model/staking/StakingToken;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->approvedToken:Lcom/smedialink/storage/domain/model/staking/StakingToken;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getAmount()Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->amount:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    return-object v0
.end method

.method public final getApprovedToken()Lcom/smedialink/storage/domain/model/staking/StakingToken;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->approvedToken:Lcom/smedialink/storage/domain/model/staking/StakingToken;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;->PENDING:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuedAt:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->settledAt:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getFailReason()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->failReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getFee()Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->fee:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->id:J

    return-wide v0
.end method

.method public final getIssuedAt()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuedAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getIssuer()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getSafe()Ljava/lang/Boolean;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->safe:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSettledAt()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->settledAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->stakingId:I

    return v0
.end method

.method public final getStatus()Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenTicker()Ljava/lang/String;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->approvedToken:Lcom/smedialink/storage/domain/model/staking/StakingToken;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingToken;->getTicker()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->amount:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;->getToken()Lcom/smedialink/storage/domain/model/staking/StakingToken;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingToken;->getTicker()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 58
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final getTransaction()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->transaction:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperation$WhenMappings;->$EnumSwitchMapping$0:[I

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

    .line 51
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->IN:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    goto :goto_1

    .line 49
    :cond_2
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    goto :goto_1

    .line 48
    :cond_3
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->SELF:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    :goto_1
    return-object v0
.end method

.method public final getTransactionStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperation$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 43
    sget-object v0, Lcom/smedialink/storage/data/network/model/response/base/Status;->ERROR:Lcom/smedialink/storage/data/network/model/response/base/Status;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 42
    :cond_1
    sget-object v0, Lcom/smedialink/storage/data/network/model/response/base/Status;->OK:Lcom/smedialink/storage/data/network/model/response/base/Status;

    goto :goto_0

    .line 41
    :cond_2
    sget-object v0, Lcom/smedialink/storage/data/network/model/response/base/Status;->PENDING:Lcom/smedialink/storage/data/network/model/response/base/Status;

    :goto_0
    return-object v0
.end method

.method public final getTransactionType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingOperation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 35
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->APPROVE_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->TRANSFER_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    :goto_0
    return-object v0
.end method

.method public final getType()Lcom/smedialink/storage/domain/model/staking/StakingOperationType;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->id:J

    invoke-static {v0, v1}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->stakingId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->transaction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuedAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->settledAt:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->failReason:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->amount:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->fee:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->safe:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->approvedToken:Lcom/smedialink/storage/domain/model/staking/StakingToken;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/staking/StakingToken;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingOperation(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", stakingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->stakingId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->transaction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->type:Lcom/smedialink/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->status:Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", issuer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", issuedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->issuedAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", settledAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->settledAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", failReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->failReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->amount:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->fee:Lcom/smedialink/storage/domain/model/staking/StakingOperationCost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", safe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->safe:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", approvedToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->approvedToken:Lcom/smedialink/storage/domain/model/staking/StakingToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingOperation;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
