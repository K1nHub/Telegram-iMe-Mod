.class public final Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;
.super Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;
.source "TokenApproveData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotAllowed"
.end annotation


# instance fields
.field private final feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final spenderContractAddress:Ljava/lang/String;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 9

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spenderContractAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;->NOT_ALLOWED:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 37
    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 33
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->value:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    .line 35
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->spenderContractAddress:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getValue()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object p3

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object p4

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p5

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;
    .locals 7

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spenderContractAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getSpenderContractAddress()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->spenderContractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotAllowed(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spenderContractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove$NotAllowed;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
