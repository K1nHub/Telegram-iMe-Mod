.class public final Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;
.super Ljava/lang/Object;
.source "WCSessionUpdate.kt"


# instance fields
.field private final accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final approved:Z

.field private final chainId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ZLjava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->approved:Z

    .line 5
    iput-object p2, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->chainId:Ljava/lang/Integer;

    .line 6
    iput-object p3, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->accounts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;

    iget-boolean v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->approved:Z

    iget-boolean v3, p1, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->approved:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->chainId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->chainId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->accounts:Ljava/util/List;

    iget-object p1, p1, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->accounts:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getApproved()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->approved:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->approved:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->chainId:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->accounts:Ljava/util/List;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WCSessionUpdate(approved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->approved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->chainId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionUpdate;->accounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
