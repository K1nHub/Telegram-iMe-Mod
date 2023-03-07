.class public final Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;
.super Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs;
.source "CancelArgs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ethereum"
.end annotation


# instance fields
.field private final oldTxHash:Ljava/lang/String;

.field private final token:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final transferArgs:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldTxHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transferArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->token:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 10
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->oldTxHash:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->transferArgs:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->oldTxHash:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->transferArgs:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->copy(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;)Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->oldTxHash:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->transferArgs:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;)Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldTxHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transferArgs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;

    invoke-direct {v0, p1, p2, p3}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->oldTxHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->oldTxHash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->transferArgs:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->transferArgs:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOldTxHash()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->oldTxHash:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->token:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final getTransferArgs()Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->transferArgs:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->oldTxHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->transferArgs:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ethereum(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oldTxHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->oldTxHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transferArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->transferArgs:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
