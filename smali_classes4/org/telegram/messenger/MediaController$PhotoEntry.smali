.class public Lorg/telegram/messenger/MediaController$PhotoEntry;
.super Lorg/telegram/messenger/MediaController$MediaEditState;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public canDeleteAfter:Z

.field public dateTaken:J

.field public duration:I

.field public emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

.field public hasSpoiler:Z

.field public height:I

.field public imageId:I

.field public isAttachSpoilerRevealed:Z

.field public isChatPreviewSpoilerRevealed:Z

.field public isMuted:Z

.field public isVideo:Z

.field public orientation:I

.field public path:Ljava/lang/String;

.field public size:J

.field public width:I


# direct methods
.method public constructor <init>(IIJLjava/lang/String;IZIIJ)V
    .locals 0

    .line 401
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController$MediaEditState;-><init>()V

    .line 402
    iput p1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    .line 403
    iput p2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    .line 404
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    .line 405
    iput-object p5, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    .line 406
    iput p8, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->width:I

    .line 407
    iput p9, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->height:I

    .line 408
    iput-wide p10, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->size:J

    if-eqz p7, :cond_0

    .line 410
    iput p6, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    goto :goto_0

    .line 412
    :cond_0
    iput p6, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    .line 414
    :goto_0
    iput-boolean p7, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/telegram/messenger/MediaController$MediaEditState;)V
    .locals 1

    .line 419
    invoke-super {p0, p1}, Lorg/telegram/messenger/MediaController$MediaEditState;->copyFrom(Lorg/telegram/messenger/MediaController$MediaEditState;)V

    .line 420
    instance-of v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 430
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lorg/telegram/messenger/MediaController$MediaEditState;->filterPath:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    .line 437
    invoke-super {p0}, Lorg/telegram/messenger/MediaController$MediaEditState;->reset()V

    return-void
.end method
