.class public final Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;
.super Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo;
.source "AirdropInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ready"
.end annotation


# instance fields
.field private final requestId:Ljava/lang/String;

.field private final tokenValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->requestId:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->tokenValue:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;Ljava/lang/String;IILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->requestId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->tokenValue:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->copy(Ljava/lang/String;I)Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->tokenValue:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->requestId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->requestId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->tokenValue:I

    iget p1, p1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->tokenValue:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenValue()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->tokenValue:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->requestId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->tokenValue:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ready(requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->tokenValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
