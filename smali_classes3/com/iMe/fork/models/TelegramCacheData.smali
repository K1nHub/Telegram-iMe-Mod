.class public final Lcom/iMe/fork/models/TelegramCacheData;
.super Ljava/lang/Object;
.source "TelegramCacheData.kt"


# instance fields
.field private clearViewData:Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

.field private final files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iMe/fork/models/TelegramCacheData;-><init>(Ljava/util/ArrayList;JLorg/telegram/ui/Components/StorageDiagramView$ClearViewData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;JLorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;J",
            "Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;",
            ")V"
        }
    .end annotation

    const-string v0, "files"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/fork/models/TelegramCacheData;->files:Ljava/util/ArrayList;

    .line 8
    iput-wide p2, p0, Lcom/iMe/fork/models/TelegramCacheData;->size:J

    .line 9
    iput-object p4, p0, Lcom/iMe/fork/models/TelegramCacheData;->clearViewData:Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;JLorg/telegram/ui/Components/StorageDiagramView$ClearViewData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/fork/models/TelegramCacheData;-><init>(Ljava/util/ArrayList;JLorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/fork/models/TelegramCacheData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/fork/models/TelegramCacheData;

    iget-object v1, p0, Lcom/iMe/fork/models/TelegramCacheData;->files:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/iMe/fork/models/TelegramCacheData;->files:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/fork/models/TelegramCacheData;->size:J

    iget-wide v5, p1, Lcom/iMe/fork/models/TelegramCacheData;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/fork/models/TelegramCacheData;->clearViewData:Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    iget-object p1, p1, Lcom/iMe/fork/models/TelegramCacheData;->clearViewData:Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getClearViewData()Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/fork/models/TelegramCacheData;->clearViewData:Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    return-object v0
.end method

.method public final getFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/iMe/fork/models/TelegramCacheData;->files:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/iMe/fork/models/TelegramCacheData;->size:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/fork/models/TelegramCacheData;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/fork/models/TelegramCacheData;->size:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/fork/models/TelegramCacheData;->clearViewData:Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setClearViewData(Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/iMe/fork/models/TelegramCacheData;->clearViewData:Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/iMe/fork/models/TelegramCacheData;->size:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelegramCacheData(files="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/TelegramCacheData;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/fork/models/TelegramCacheData;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clearViewData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/TelegramCacheData;->clearViewData:Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
