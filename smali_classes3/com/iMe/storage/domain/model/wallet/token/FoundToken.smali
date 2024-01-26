.class public final Lcom/iMe/storage/domain/model/wallet/token/FoundToken;
.super Ljava/lang/Object;
.source "FoundToken.kt"


# instance fields
.field private final isCustom:Z

.field private final isEnabled:Z

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZ)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 5
    iput-boolean p2, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isEnabled:Z

    .line 6
    iput-boolean p3, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isCustom:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/wallet/token/FoundToken;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/FoundToken;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isEnabled:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isCustom:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZ)Lcom/iMe/storage/domain/model/wallet/token/FoundToken;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isEnabled:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isCustom:Z

    return v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZ)Lcom/iMe/storage/domain/model/wallet/token/FoundToken;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isEnabled:Z

    iget-boolean v3, p1, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isEnabled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isCustom:Z

    iget-boolean p1, p1, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isCustom:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isCustom:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final isCustom()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isCustom:Z

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FoundToken(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCustom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isCustom:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
