.class public final Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;
.super Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;
.source "CryptoTokenApproveMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotAllowed"
.end annotation


# instance fields
.field private final feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final spenderContractAddress:Ljava/lang/String;

.field private final status:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final tokenContractAddress:Ljava/lang/String;

.field private final transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v8, p7

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

    .line 42
    invoke-direct/range {v0 .. v8}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    iput-object v10, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 36
    iput-object v11, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->status:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    .line 37
    iput-object v12, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->value:Ljava/lang/String;

    .line 38
    iput-object v13, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    .line 39
    iput-object v14, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->tokenContractAddress:Ljava/lang/String;

    .line 40
    iput-object v15, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->spenderContractAddress:Ljava/lang/String;

    move-object/from16 v0, p7

    .line 41
    iput-object v0, v9, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p1

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object p2

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getValue()Ljava/lang/String;

    move-result-object p3

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object p4

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTokenContractAddress()Ljava/lang/String;

    move-result-object p5

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object p6

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p7

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

    invoke-virtual/range {p2 .. p9}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->copy(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;
    .locals 9

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

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p1

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getSpenderContractAddress()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->spenderContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->status:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    return-object v0
.end method

.method public getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getTokenContractAddress()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->tokenContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->transactionParams:Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotAllowed(tokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenContractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spenderContractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feeTokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
