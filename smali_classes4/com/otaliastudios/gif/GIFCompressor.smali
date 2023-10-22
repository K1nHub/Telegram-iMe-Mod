.class public Lcom/otaliastudios/gif/GIFCompressor;
.super Ljava/lang/Object;
.source "GIFCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;,
        Lcom/otaliastudios/gif/GIFCompressor$Factory;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/otaliastudios/gif/internal/Logger;

.field private static final TAG:Ljava/lang/String; = "GIFCompressor"

.field private static volatile sGIFCompressor:Lcom/otaliastudios/gif/GIFCompressor;


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-class v0, Lcom/otaliastudios/gif/GIFCompressor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/otaliastudios/gif/internal/Logger;

    invoke-direct {v1, v0}, Lcom/otaliastudios/gif/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/otaliastudios/gif/GIFCompressor;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 55
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/otaliastudios/gif/GIFCompressor$Factory;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lcom/otaliastudios/gif/GIFCompressor$Factory;-><init>(Lcom/otaliastudios/gif/GIFCompressor;Lcom/otaliastudios/gif/GIFCompressor$1;)V

    const-wide/16 v4, 0x3c

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/otaliastudios/gif/GIFCompressor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/otaliastudios/gif/GIFCompressor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/otaliastudios/gif/internal/Logger;
    .locals 1

    .line 34
    sget-object v0, Lcom/otaliastudios/gif/GIFCompressor;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    return-object v0
.end method

.method public static getInstance()Lcom/otaliastudios/gif/GIFCompressor;
    .locals 2

    .line 64
    sget-object v0, Lcom/otaliastudios/gif/GIFCompressor;->sGIFCompressor:Lcom/otaliastudios/gif/GIFCompressor;

    if-nez v0, :cond_1

    .line 65
    const-class v0, Lcom/otaliastudios/gif/GIFCompressor;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/otaliastudios/gif/GIFCompressor;->sGIFCompressor:Lcom/otaliastudios/gif/GIFCompressor;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/otaliastudios/gif/GIFCompressor;

    invoke-direct {v1}, Lcom/otaliastudios/gif/GIFCompressor;-><init>()V

    sput-object v1, Lcom/otaliastudios/gif/GIFCompressor;->sGIFCompressor:Lcom/otaliastudios/gif/GIFCompressor;

    .line 69
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_1
    :goto_0
    sget-object v0, Lcom/otaliastudios/gif/GIFCompressor;->sGIFCompressor:Lcom/otaliastudios/gif/GIFCompressor;

    return-object v0
.end method

.method public static into(Ljava/lang/String;)Lcom/otaliastudios/gif/GIFOptions$Builder;
    .locals 1

    .line 83
    new-instance v0, Lcom/otaliastudios/gif/GIFOptions$Builder;

    invoke-direct {v0, p0}, Lcom/otaliastudios/gif/GIFOptions$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public compress(Lcom/otaliastudios/gif/GIFOptions;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/gif/GIFOptions;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;

    iget-object v1, p1, Lcom/otaliastudios/gif/GIFOptions;->listenerHandler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/otaliastudios/gif/GIFOptions;->listener:Lcom/otaliastudios/gif/GIFListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/otaliastudios/gif/GIFCompressor$ListenerWrapper;-><init>(Landroid/os/Handler;Lcom/otaliastudios/gif/GIFListener;Lcom/otaliastudios/gif/GIFCompressor$1;)V

    .line 108
    iget-object v1, p0, Lcom/otaliastudios/gif/GIFCompressor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/otaliastudios/gif/GIFCompressor$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/otaliastudios/gif/GIFCompressor$1;-><init>(Lcom/otaliastudios/gif/GIFCompressor;Lcom/otaliastudios/gif/GIFListener;Lcom/otaliastudios/gif/GIFOptions;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
