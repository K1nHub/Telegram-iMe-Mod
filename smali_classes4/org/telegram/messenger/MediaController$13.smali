.class Lorg/telegram/messenger/MediaController$13;
.super Ljava/io/File;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->lambda$startRecording$27(IIJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 3897
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$13;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 1

    .line 3900
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "delete voice file"

    .line 3901
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3903
    :cond_0
    invoke-super {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
