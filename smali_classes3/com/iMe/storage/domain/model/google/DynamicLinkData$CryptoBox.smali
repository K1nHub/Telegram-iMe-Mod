.class public final Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;
.super Lcom/iMe/storage/domain/model/google/DynamicLinkData;
.source "DynamicLinkData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/google/DynamicLinkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoBox"
.end annotation


# instance fields
.field private final cryptoBoxId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cryptoBoxId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/iMe/storage/domain/model/google/DynamicLinkData;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;->cryptoBoxId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;->cryptoBoxId:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;->copy(Ljava/lang/String;)Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;->cryptoBoxId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;
    .locals 1

    const-string v0, "cryptoBoxId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;

    invoke-direct {v0, p1}, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;->cryptoBoxId:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;->cryptoBoxId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCryptoBoxId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;->cryptoBoxId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;->cryptoBoxId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBox(cryptoBoxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/google/DynamicLinkData$CryptoBox;->cryptoBoxId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
