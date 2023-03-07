.class public final Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;
.super Ljava/lang/Object;
.source "TokenBuyCoordinatorArgs.kt"


# instance fields
.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "tokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swapProtocol"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 9
    iput-object p2, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 10
    iput-object p3, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    iget-object v1, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    iget-object v3, p1, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    iget-object v3, p1, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object p1, p1, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getSwapProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method

.method public final getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenBuyCoordinatorArgs(tokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", swapProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
