.class public final Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;
.super Ljava/lang/Object;
.source "GetBoostTransactionDataResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferMethodParamsResponse"
.end annotation


# instance fields
.field private final from:Ljava/lang/String;

.field private final to:Ljava/lang/String;

.field private final token:Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->from:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->to:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->value:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->from:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->to:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->value:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;)Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->from:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;)Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->from:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->from:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->to:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->to:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->from:Ljava/lang/String;

    return-object v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->from:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->to:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransferMethodParamsResponse(from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
