.class public final Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;
.super Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;
.source "CryptoTokenApproveMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation


# instance fields
.field private final feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final lastErrorMessage:Ljava/lang/String;

.field private final spenderContractAddress:Ljava/lang/String;

.field private final status:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    const-string v0, "token"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParams"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spenderContractAddress"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastErrorMessage"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 50
    invoke-direct/range {v0 .. v7}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    iput-object v9, v8, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 44
    iput-object v10, v8, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->status:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    .line 45
    iput-object v11, v8, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->value:Ljava/lang/String;

    .line 46
    iput-object v12, v8, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    .line 47
    iput-object v13, v8, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->spenderContractAddress:Ljava/lang/String;

    .line 48
    iput-object v14, v8, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 49
    iput-object v15, v8, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getStatus()Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object p2

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getValue()Ljava/lang/String;

    move-result-object p3

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object p4

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object p5

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p6

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getStatus()Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;
    .locals 9

    const-string v0, "token"

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

    const-string v0, "spenderContractAddress"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastErrorMessage"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getStatus()Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getStatus()Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getLastErrorMessage()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSpenderContractAddress()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->spenderContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->status:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    return-object v0
.end method

.method public getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getStatus()Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getStatus()Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spenderContractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastErrorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;->lastErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
