.class public final Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;
.super Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;
.source "CryptoTokenApproveMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InProgress"
.end annotation


# instance fields
.field private final status:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 20
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->status:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    .line 21
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->value:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getValue()Ljava/lang/String;

    move-result-object p3

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->copy(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;
    .locals 1

    const-string v0, "tokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;

    invoke-direct {v0, p1, p2, p3}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->status:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    return-object v0
.end method

.method public getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getValue()Ljava/lang/String;

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

    const-string v1, "InProgress(tokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getStatus()Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
