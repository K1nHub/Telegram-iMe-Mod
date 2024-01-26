.class public final Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;
.super Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;
.source "TokenApproveData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InProgress"
.end annotation


# instance fields
.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;->IN_PROGRESS:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 19
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->value:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->getValue()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InProgress(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
