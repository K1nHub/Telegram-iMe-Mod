.class public Lcom/otaliastudios/gif/GIFOptions$Builder;
.super Ljava/lang/Object;
.source "GIFOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/gif/GIFOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dataSink:Lcom/otaliastudios/gif/sink/DataSink;

.field private final dataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/gif/source/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/otaliastudios/gif/GIFListener;

.field private listenerHandler:Landroid/os/Handler;

.field private rotation:I

.field private strategy:Lcom/otaliastudios/gif/strategy/Strategy;

.field private timeInterpolator:Lcom/otaliastudios/gif/time/TimeInterpolator;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->dataSources:Ljava/util/List;

    .line 78
    new-instance v0, Lcom/otaliastudios/gif/sink/DefaultDataSink;

    invoke-direct {v0, p1}, Lcom/otaliastudios/gif/sink/DefaultDataSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->dataSink:Lcom/otaliastudios/gif/sink/DataSink;

    return-void
.end method


# virtual methods
.method public addDataSource(Landroid/content/Context;Ljava/lang/String;)Lcom/otaliastudios/gif/GIFOptions$Builder;
    .locals 1

    .line 101
    new-instance v0, Lcom/otaliastudios/gif/source/FilePathDataSource;

    invoke-direct {v0, p1, p2}, Lcom/otaliastudios/gif/source/FilePathDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/otaliastudios/gif/GIFOptions$Builder;->addDataSource(Lcom/otaliastudios/gif/source/DataSource;)Lcom/otaliastudios/gif/GIFOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Lcom/otaliastudios/gif/source/DataSource;)Lcom/otaliastudios/gif/GIFOptions$Builder;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->dataSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/otaliastudios/gif/GIFOptions;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->listener:Lcom/otaliastudios/gif/GIFListener;

    if-eqz v0, :cond_7

    .line 193
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->dataSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 196
    iget v0, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->rotation:I

    if-eqz v0, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Accepted values for rotation are 0, 90, 180, 270"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->listenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 200
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_2

    .line 201
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 202
    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->listenerHandler:Landroid/os/Handler;

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->strategy:Lcom/otaliastudios/gif/strategy/Strategy;

    if-nez v0, :cond_4

    .line 205
    invoke-static {}, Lcom/otaliastudios/gif/strategy/DefaultStrategies;->for720x1280()Lcom/otaliastudios/gif/strategy/DefaultStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->strategy:Lcom/otaliastudios/gif/strategy/Strategy;

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->timeInterpolator:Lcom/otaliastudios/gif/time/TimeInterpolator;

    if-nez v0, :cond_5

    .line 208
    new-instance v0, Lcom/otaliastudios/gif/time/DefaultTimeInterpolator;

    invoke-direct {v0}, Lcom/otaliastudios/gif/time/DefaultTimeInterpolator;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->timeInterpolator:Lcom/otaliastudios/gif/time/TimeInterpolator;

    .line 210
    :cond_5
    new-instance v0, Lcom/otaliastudios/gif/GIFOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/gif/GIFOptions;-><init>(Lcom/otaliastudios/gif/GIFOptions$1;)V

    .line 211
    iget-object v1, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->listener:Lcom/otaliastudios/gif/GIFListener;

    iput-object v1, v0, Lcom/otaliastudios/gif/GIFOptions;->listener:Lcom/otaliastudios/gif/GIFListener;

    .line 212
    iget-object v1, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->dataSources:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/otaliastudios/gif/GIFOptions;->access$102(Lcom/otaliastudios/gif/GIFOptions;Ljava/util/List;)Ljava/util/List;

    .line 213
    iget-object v1, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->dataSink:Lcom/otaliastudios/gif/sink/DataSink;

    invoke-static {v0, v1}, Lcom/otaliastudios/gif/GIFOptions;->access$202(Lcom/otaliastudios/gif/GIFOptions;Lcom/otaliastudios/gif/sink/DataSink;)Lcom/otaliastudios/gif/sink/DataSink;

    .line 214
    iget-object v1, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->listenerHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/otaliastudios/gif/GIFOptions;->listenerHandler:Landroid/os/Handler;

    .line 215
    iget-object v1, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->strategy:Lcom/otaliastudios/gif/strategy/Strategy;

    invoke-static {v0, v1}, Lcom/otaliastudios/gif/GIFOptions;->access$302(Lcom/otaliastudios/gif/GIFOptions;Lcom/otaliastudios/gif/strategy/Strategy;)Lcom/otaliastudios/gif/strategy/Strategy;

    .line 216
    iget v1, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->rotation:I

    invoke-static {v0, v1}, Lcom/otaliastudios/gif/GIFOptions;->access$402(Lcom/otaliastudios/gif/GIFOptions;I)I

    .line 217
    iget-object v1, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->timeInterpolator:Lcom/otaliastudios/gif/time/TimeInterpolator;

    invoke-static {v0, v1}, Lcom/otaliastudios/gif/GIFOptions;->access$502(Lcom/otaliastudios/gif/GIFOptions;Lcom/otaliastudios/gif/time/TimeInterpolator;)Lcom/otaliastudios/gif/time/TimeInterpolator;

    return-object v0

    .line 194
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "we need at least one data source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compress()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 223
    invoke-static {}, Lcom/otaliastudios/gif/GIFCompressor;->getInstance()Lcom/otaliastudios/gif/GIFCompressor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/otaliastudios/gif/GIFOptions$Builder;->build()Lcom/otaliastudios/gif/GIFOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/gif/GIFCompressor;->compress(Lcom/otaliastudios/gif/GIFOptions;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/otaliastudios/gif/GIFListener;)Lcom/otaliastudios/gif/GIFOptions$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->listener:Lcom/otaliastudios/gif/GIFListener;

    return-object p0
.end method

.method public setStrategy(Lcom/otaliastudios/gif/strategy/Strategy;)Lcom/otaliastudios/gif/GIFOptions$Builder;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/otaliastudios/gif/GIFOptions$Builder;->strategy:Lcom/otaliastudios/gif/strategy/Strategy;

    return-object p0
.end method
