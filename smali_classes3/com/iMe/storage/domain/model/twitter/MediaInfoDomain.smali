.class public final Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;
.super Ljava/lang/Object;
.source "TweetInfo.kt"


# instance fields
.field private final type:Lcom/iMe/storage/domain/model/twitter/MediaType;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;-><init>(Lcom/iMe/storage/domain/model/twitter/MediaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/twitter/MediaType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->type:Lcom/iMe/storage/domain/model/twitter/MediaType;

    .line 19
    iput-object p2, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/twitter/MediaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 18
    sget-object p1, Lcom/iMe/storage/domain/model/twitter/MediaType;->UNKNOWN:Lcom/iMe/storage/domain/model/twitter/MediaType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, ""

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;-><init>(Lcom/iMe/storage/domain/model/twitter/MediaType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;Lcom/iMe/storage/domain/model/twitter/MediaType;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->type:Lcom/iMe/storage/domain/model/twitter/MediaType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->url:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->copy(Lcom/iMe/storage/domain/model/twitter/MediaType;Ljava/lang/String;)Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/twitter/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->type:Lcom/iMe/storage/domain/model/twitter/MediaType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/twitter/MediaType;Ljava/lang/String;)Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;-><init>(Lcom/iMe/storage/domain/model/twitter/MediaType;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->type:Lcom/iMe/storage/domain/model/twitter/MediaType;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->type:Lcom/iMe/storage/domain/model/twitter/MediaType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getType()Lcom/iMe/storage/domain/model/twitter/MediaType;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->type:Lcom/iMe/storage/domain/model/twitter/MediaType;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->type:Lcom/iMe/storage/domain/model/twitter/MediaType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaInfoDomain(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->type:Lcom/iMe/storage/domain/model/twitter/MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
