.class public final Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;
.super Ljava/lang/Object;
.source "TokensApprovalInfoResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApprovalInfoResponse"
.end annotation


# instance fields
.field private final lastErrorMessage:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

.field private final transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    .line 15
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    .line 16
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->status:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->value:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->lastErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->status:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->value:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->lastErrorMessage:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->copy(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->lastErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;
    .locals 7

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;-><init>(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->lastErrorMessage:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->lastErrorMessage:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getLastErrorMessage()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->lastErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->lastErrorMessage:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApprovalInfoResponse(transactionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastErrorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->lastErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
