.class public final Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;
.super Ljava/lang/Object;
.source "GetBoostTransactionDataResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionMethodParamsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;,
        Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;,
        Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;
    }
.end annotation


# instance fields
.field private final approveMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

.field private final ethereumMethod:Ljava/lang/String;

.field private final swapMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

.field private final transferMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;)V
    .locals 1

    const-string v0, "ethereumMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->ethereumMethod:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->transferMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    .line 16
    iput-object p3, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->swapMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    .line 17
    iput-object p4, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->approveMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;Ljava/lang/String;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;ILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->ethereumMethod:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->transferMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->swapMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->approveMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->copy(Ljava/lang/String;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;)Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->ethereumMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->transferMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    return-object v0
.end method

.method public final component3()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->swapMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    return-object v0
.end method

.method public final component4()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->approveMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;)Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;
    .locals 1

    const-string v0, "ethereumMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;-><init>(Ljava/lang/String;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->ethereumMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->ethereumMethod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->transferMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->transferMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->swapMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->swapMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->approveMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    iget-object p1, p1, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->approveMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getApproveMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->approveMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    return-object v0
.end method

.method public final getEthereumMethod()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->ethereumMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getSwapMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->swapMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    return-object v0
.end method

.method public final getTransferMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->transferMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->ethereumMethod:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->transferMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->swapMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->approveMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionMethodParamsResponse(ethereumMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->ethereumMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transferMethodParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->transferMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", swapMethodParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->swapMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", approveMethodParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->approveMethodParams:Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
