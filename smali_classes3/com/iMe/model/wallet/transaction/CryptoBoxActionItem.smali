.class public final Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "CryptoBoxActionItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem$WhenMappings;
    }
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final createdAt:Ljava/lang/String;

.field private final feeAmount:Ljava/math/BigDecimal;

.field private final feeToken:Lcom/iMe/model/wallet/crypto/TokenItem;

.field private final id:Ljava/lang/String;

.field private final status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

.field private final token:Lcom/iMe/model/wallet/crypto/TokenItem;

.field private final txHash:Ljava/lang/String;

.field private final txUrl:Ljava/lang/String;

.field private final type:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/math/BigDecimal;Lcom/iMe/model/wallet/crypto/TokenItem;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txHash"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txUrl"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeAmount"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->id:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->amount:Ljava/math/BigDecimal;

    .line 20
    iput-object p3, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->type:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    .line 21
    iput-object p4, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    .line 22
    iput-object p5, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->createdAt:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txHash:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txUrl:Ljava/lang/String;

    .line 25
    iput-object p8, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeToken:Lcom/iMe/model/wallet/crypto/TokenItem;

    .line 26
    iput-object p9, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeAmount:Ljava/math/BigDecimal;

    .line 27
    iput-object p10, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->token:Lcom/iMe/model/wallet/crypto/TokenItem;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/math/BigDecimal;Lcom/iMe/model/wallet/crypto/TokenItem;ILjava/lang/Object;)Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->amount:Ljava/math/BigDecimal;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->type:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->createdAt:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txHash:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txUrl:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeToken:Lcom/iMe/model/wallet/crypto/TokenItem;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeAmount:Ljava/math/BigDecimal;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->token:Lcom/iMe/model/wallet/crypto/TokenItem;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->copy(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/math/BigDecimal;Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    move-result-object v0

    return-object v0
.end method

.method private final getSymbol()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->type:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    sget-object v1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "+"

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "-"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/iMe/model/wallet/crypto/TokenItem;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->token:Lcom/iMe/model/wallet/crypto/TokenItem;

    return-object v0
.end method

.method public final component2()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->type:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    return-object v0
.end method

.method public final component4()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/iMe/model/wallet/crypto/TokenItem;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeToken:Lcom/iMe/model/wallet/crypto/TokenItem;

    return-object v0
.end method

.method public final component9()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/math/BigDecimal;Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;
    .locals 12

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txHash"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txUrl"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeAmount"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/math/BigDecimal;Lcom/iMe/model/wallet/crypto/TokenItem;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->amount:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->amount:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->type:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->type:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->createdAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->createdAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txHash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeToken:Lcom/iMe/model/wallet/crypto/TokenItem;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeToken:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeAmount:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeAmount:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->token:Lcom/iMe/model/wallet/crypto/TokenItem;

    iget-object p1, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->token:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->amount:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->token:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/TokenItem;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->token:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->getTicker()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeeAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getFeeToken()Lcom/iMe/model/wallet/crypto/TokenItem;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeToken:Lcom/iMe/model/wallet/crypto/TokenItem;

    return-object v0
.end method

.method public final getIcon()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->type:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    sget-object v1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 52
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_staking_withdraw:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 51
    :cond_1
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_sent:I

    :goto_0
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    return-object v0
.end method

.method public final getStatusColor()I
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    sget-object v1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 45
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 44
    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    goto :goto_0

    .line 43
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    :goto_0
    return v0
.end method

.method public final getStatusText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->getTitleResId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getToken()Lcom/iMe/model/wallet/crypto/TokenItem;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->token:Lcom/iMe/model/wallet/crypto/TokenItem;

    return-object v0
.end method

.method public final getTransactionTimeText()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->createdAt:Ljava/lang/String;

    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTransactionTitle(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 2

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->type:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    sget-object v1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 34
    sget v0, Lorg/telegram/messenger/R$string;->cryptobox_action_type_stop:I

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 33
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->cryptobox_action_type_create:I

    .line 31
    :goto_0
    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTxHash()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public final getTxUrl()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->type:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->type:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->createdAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeToken:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeAmount:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->token:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBoxActionItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->type:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->txUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeToken:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->feeAmount:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->token:Lcom/iMe/model/wallet/crypto/TokenItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
