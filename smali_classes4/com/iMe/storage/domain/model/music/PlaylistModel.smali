.class public final Lcom/iMe/storage/domain/model/music/PlaylistModel;
.super Ljava/lang/Object;
.source "PlaylistModel.kt"


# instance fields
.field private final dialogId:J

.field private final messageIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "messageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->messageIds:Ljava/util/ArrayList;

    .line 5
    iput-wide p2, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->dialogId:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/music/PlaylistModel;Ljava/util/ArrayList;JILjava/lang/Object;)Lcom/iMe/storage/domain/model/music/PlaylistModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->messageIds:Ljava/util/ArrayList;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->dialogId:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/music/PlaylistModel;->copy(Ljava/util/ArrayList;J)Lcom/iMe/storage/domain/model/music/PlaylistModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->messageIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->dialogId:J

    return-wide v0
.end method

.method public final copy(Ljava/util/ArrayList;J)Lcom/iMe/storage/domain/model/music/PlaylistModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;J)",
            "Lcom/iMe/storage/domain/model/music/PlaylistModel;"
        }
    .end annotation

    const-string v0, "messageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/music/PlaylistModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/domain/model/music/PlaylistModel;-><init>(Ljava/util/ArrayList;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/music/PlaylistModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/music/PlaylistModel;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->messageIds:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/music/PlaylistModel;->messageIds:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->dialogId:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/music/PlaylistModel;->dialogId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDialogId()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->dialogId:J

    return-wide v0
.end method

.method public final getMessageIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->messageIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->dialogId:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaylistModel(messageIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->messageIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/music/PlaylistModel;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
