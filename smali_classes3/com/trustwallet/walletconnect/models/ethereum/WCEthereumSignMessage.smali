.class public final Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;
.super Ljava/lang/Object;
.source "WCEthereumSignMessage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;,
        Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WhenMappings;
    }
.end annotation


# instance fields
.field private final raw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;",
            ")V"
        }
    .end annotation

    const-string v0, "raw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->raw:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->type:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->raw:Ljava/util/List;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->raw:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->type:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    iget-object p1, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->type:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->type:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    sget-object v1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->raw:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->raw:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->raw:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final getType()Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->type:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->raw:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->type:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WCEthereumSignMessage(raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->raw:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->type:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
