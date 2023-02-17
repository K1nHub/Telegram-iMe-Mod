.class Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;
.super Ljava/lang/Object;
.source "GIFCompressor.java"

# interfaces
.implements Lcom/otaliastudios/gif/GIFListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/gif/GIFCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/otaliastudios/gif/GIFListener;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/otaliastudios/gif/GIFListener;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->mHandler:Landroid/os/Handler;

    .line 159
    iput-object p2, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->mListener:Lcom/otaliastudios/gif/GIFListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/otaliastudios/gif/GIFListener;Lcom/otaliastudios/gif/GIFCompressor$1;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;-><init>(Landroid/os/Handler;Lcom/otaliastudios/gif/GIFListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;)Lcom/otaliastudios/gif/GIFListener;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->mListener:Lcom/otaliastudios/gif/GIFListener;

    return-object p0
.end method


# virtual methods
.method public onGIFCompressionCanceled()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$1;-><init>(Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGIFCompressionCompleted()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$2;

    invoke-direct {v1, p0}, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$2;-><init>(Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGIFCompressionFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$3;-><init>(Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGIFCompressionProgress(D)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper$4;-><init>(Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
