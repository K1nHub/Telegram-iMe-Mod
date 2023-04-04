.class public final Lcom/iMe/bots/domain/model/DownloadSession;
.super Ljava/lang/Object;
.source "DownloadSession.kt"


# instance fields
.field private final botId:Ljava/lang/String;

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "botId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/bots/domain/model/DownloadSession;->file:Ljava/io/File;

    .line 6
    iput-object p2, p0, Lcom/iMe/bots/domain/model/DownloadSession;->botId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/bots/domain/model/DownloadSession;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/bots/domain/model/DownloadSession;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/bots/domain/model/DownloadSession;->file:Ljava/io/File;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/bots/domain/model/DownloadSession;->botId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/bots/domain/model/DownloadSession;->copy(Ljava/io/File;Ljava/lang/String;)Lcom/iMe/bots/domain/model/DownloadSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/iMe/bots/domain/model/DownloadSession;->file:Ljava/io/File;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/bots/domain/model/DownloadSession;->botId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/io/File;Ljava/lang/String;)Lcom/iMe/bots/domain/model/DownloadSession;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "botId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/bots/domain/model/DownloadSession;

    invoke-direct {v0, p1, p2}, Lcom/iMe/bots/domain/model/DownloadSession;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/bots/domain/model/DownloadSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/bots/domain/model/DownloadSession;

    iget-object v1, p0, Lcom/iMe/bots/domain/model/DownloadSession;->file:Ljava/io/File;

    iget-object v3, p1, Lcom/iMe/bots/domain/model/DownloadSession;->file:Ljava/io/File;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/bots/domain/model/DownloadSession;->botId:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/bots/domain/model/DownloadSession;->botId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBotId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/bots/domain/model/DownloadSession;->botId:Ljava/lang/String;

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/bots/domain/model/DownloadSession;->file:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/bots/domain/model/DownloadSession;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/bots/domain/model/DownloadSession;->botId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadSession(file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/bots/domain/model/DownloadSession;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", botId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/bots/domain/model/DownloadSession;->botId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
