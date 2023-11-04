.class Lorg/telegram/messenger/MediaController$14;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Lorg/telegram/messenger/MediaController$VideoConvertorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->convertVideo(Lorg/telegram/messenger/MediaController$VideoConvertMessage;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastAvailableSize:J

.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$cacheFile:Ljava/io/File;

.field final synthetic val$convertMessage:Lorg/telegram/messenger/MediaController$VideoConvertMessage;

.field final synthetic val$info:Lorg/telegram/messenger/VideoEditedInfo;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/VideoEditedInfo;Ljava/io/File;Lorg/telegram/messenger/MediaController$VideoConvertMessage;)V
    .locals 0

    .line 5404
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$14;->val$info:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$14;->val$cacheFile:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$14;->val$convertMessage:Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    .line 5406
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController$14;->lastAvailableSize:J

    return-void
.end method


# virtual methods
.method public checkConversionCanceled()Z
    .locals 1

    .line 5410
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$14;->val$info:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v0, v0, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    return v0
.end method

.method public didWriteData(JF)V
    .locals 10

    .line 5415
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$14;->val$info:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v0, v0, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 5419
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$14;->val$cacheFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    :cond_1
    move-wide v6, p1

    .line 5422
    iget-object p1, p0, Lorg/telegram/messenger/MediaController$14;->val$info:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean p1, p1, Lorg/telegram/messenger/VideoEditedInfo;->needUpdateProgress:Z

    if-nez p1, :cond_2

    iget-wide p1, p0, Lorg/telegram/messenger/MediaController$14;->lastAvailableSize:J

    cmp-long p1, p1, v6

    if-nez p1, :cond_2

    return-void

    .line 5426
    :cond_2
    iput-wide v6, p0, Lorg/telegram/messenger/MediaController$14;->lastAvailableSize:J

    .line 5427
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$14;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$14;->val$convertMessage:Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$14;->val$cacheFile:Ljava/io/File;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    move v9, p3

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/MediaController;->access$5000(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;ZJJZF)V

    return-void
.end method
