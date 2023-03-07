.class Lcom/otaliastudios/gif/sink/DefaultDataSinkChecks;
.super Ljava/lang/Object;
.source "DefaultDataSinkChecks.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method checkOutputFormat(Landroid/media/MediaFormat;)V
    .locals 3

    const-string v0, "mime"

    .line 26
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "video/avc"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/otaliastudios/gif/sink/InvalidOutputFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video codecs other than AVC is not supported, actual mime type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/otaliastudios/gif/sink/InvalidOutputFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
