.class public abstract Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper;
.super Ljava/lang/Object;
.source "VideoFrameDropper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper$Dropper1;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/otaliastudios/gif/internal/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-class v0, Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/otaliastudios/gif/internal/Logger;

    invoke-direct {v1, v0}, Lcom/otaliastudios/gif/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/otaliastudios/gif/internal/Logger;
    .locals 1

    .line 10
    sget-object v0, Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    return-object v0
.end method

.method public static newDropper(II)Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper;
    .locals 2

    .line 21
    new-instance v0, Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper$Dropper1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/otaliastudios/gif/transcode/internal/VideoFrameDropper$Dropper1;-><init>(IILcom/otaliastudios/gif/transcode/internal/VideoFrameDropper$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract shouldRenderFrame(J)Z
.end method
