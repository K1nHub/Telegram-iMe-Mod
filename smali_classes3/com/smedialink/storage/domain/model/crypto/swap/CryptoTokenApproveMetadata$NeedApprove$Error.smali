.class public final Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;
.super Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;
.source "CryptoTokenApproveMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation


# instance fields
.field private final feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final lastErrorMessage:Ljava/lang/String;

.field private final spenderContractAddress:Ljava/lang/String;

.field private final status:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final tokenContractAddress:Ljava/lang/String;

.field private final transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v8, p7

    move-object/from16 v7, p8

    const-string v0, "tokenCode"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParams"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenContractAddress"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spenderContractAddress"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastErrorMessage"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, v16

    .line 53
    invoke-direct/range {v0 .. v8}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    iput-object v10, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 46
    iput-object v11, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->status:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    .line 47
    iput-object v12, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->value:Ljava/lang/String;

    .line 48
    iput-object v13, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    .line 49
    iput-object v14, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->tokenContractAddress:Ljava/lang/String;

    .line 50
    iput-object v15, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->spenderContractAddress:Ljava/lang/String;

    move-object/from16 v0, p7

    .line 51
    iput-object v0, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v0, p8

    .line 52
    iput-object v0, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;
    .locals 9

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    move-object v0, p0

    iget-object v8, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object v0, p0

    move-object/from16 v8, p8

    :goto_7
    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->copy(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;
    .locals 10

    const-string v0, "tokenCode"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParams"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenContractAddress"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spenderContractAddress"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastErrorMessage"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final getLastErrorMessage()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSpenderContractAddress()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->spenderContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->status:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    return-object v0
.end method

.method public getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getTokenContractAddress()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->tokenContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error(tokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenContractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spenderContractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feeTokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastErrorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
