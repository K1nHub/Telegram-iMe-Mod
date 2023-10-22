.class public final Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;
.super Ljava/lang/Object;
.source "CryptoBoxInfo.kt"


# instance fields
.field private final capacity:I

.field private final chat:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

.field private final contractAddress:Ljava/lang/String;

.field private final contractUrl:Ljava/lang/String;

.field private final createdAt:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final fullName:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final network:Lcom/iMe/storage/domain/model/crypto/Network;

.field private final ownerAddress:Ljava/lang/String;

.field private final participantsCount:I

.field private final rewardToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final rewardValue:Ljava/math/BigDecimal;

.field private final status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/math/BigDecimal;IILjava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerAddress"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractAddress"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractUrl"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardToken"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardValue"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->id:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->chat:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    .line 11
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    .line 12
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 13
    iput-object p5, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->name:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->description:Ljava/lang/String;

    .line 15
    iput-object p7, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->ownerAddress:Ljava/lang/String;

    .line 16
    iput-object p8, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractAddress:Ljava/lang/String;

    .line 17
    iput-object p9, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractUrl:Ljava/lang/String;

    .line 18
    iput-object p10, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 19
    iput-object p11, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardValue:Ljava/math/BigDecimal;

    .line 20
    iput p12, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->capacity:I

    .line 21
    iput p13, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->participantsCount:I

    .line 22
    iput-object p14, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->createdAt:Ljava/lang/String;

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->fullName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/math/BigDecimal;IILjava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->chat:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->name:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->description:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->ownerAddress:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractAddress:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractUrl:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardValue:Ljava/math/BigDecimal;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->capacity:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->participantsCount:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->createdAt:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v1, p14

    :goto_d
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->copy(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/math/BigDecimal;IILjava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final component11()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardValue:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->capacity:I

    return v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->participantsCount:I

    return v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->chat:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    return-object v0
.end method

.method public final component4()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->ownerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/math/BigDecimal;IILjava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;
    .locals 16

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chat"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerAddress"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractAddress"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractUrl"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardToken"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardValue"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-object v1, v0

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/math/BigDecimal;IILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->chat:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->chat:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->ownerAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->ownerAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardValue:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardValue:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->capacity:I

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->capacity:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->participantsCount:I

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->participantsCount:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->createdAt:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->createdAt:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final getBalanceText(Lkotlin/jvm/functions/Function2;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "balanceFormatterAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->capacity:I

    iget v2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->participantsCount:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "valueOf(this.toLong())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardValue:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "this.multiply(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 35
    invoke-interface {p1, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->capacity:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardValue:Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 42
    invoke-interface {p1, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getCapacity()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->capacity:I

    return v0
.end method

.method public final getChat()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->chat:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    return-object v0
.end method

.method public final getContractAddress()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getContractUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMembersText()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->participantsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->capacity:I

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    return-object v0
.end method

.method public final getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->ownerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getParticipantsCount()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->participantsCount:I

    return v0
.end method

.method public final getRewardToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getRewardValue()Ljava/math/BigDecimal;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardValue:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->chat:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->ownerAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardValue:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->capacity:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->participantsCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->createdAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBoxInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->chat:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->status:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ownerAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->ownerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contractUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->contractUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rewardToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rewardValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->rewardValue:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", participantsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->participantsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
