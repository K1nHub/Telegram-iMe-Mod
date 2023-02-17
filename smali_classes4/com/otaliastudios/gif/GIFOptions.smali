.class public Lcom/otaliastudios/gif/GIFOptions;
.super Ljava/lang/Object;
.source "GIFOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/gif/GIFOptions$Builder;
    }
.end annotation


# instance fields
.field private dataSink:Lcom/otaliastudios/gif/sink/DataSink;

.field private dataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/gif/source/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/otaliastudios/gif/GIFListener;

.field listenerHandler:Landroid/os/Handler;

.field private rotation:I

.field private strategy:Lcom/otaliastudios/gif/strategy/Strategy;

.field private timeInterpolator:Lcom/otaliastudios/gif/time/TimeInterpolator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/gif/GIFOptions$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/otaliastudios/gif/GIFOptions;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/otaliastudios/gif/GIFOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/otaliastudios/gif/GIFOptions;->dataSources:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$202(Lcom/otaliastudios/gif/GIFOptions;Lcom/otaliastudios/gif/sink/DataSink;)Lcom/otaliastudios/gif/sink/DataSink;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/otaliastudios/gif/GIFOptions;->dataSink:Lcom/otaliastudios/gif/sink/DataSink;

    return-object p1
.end method

.method static synthetic access$302(Lcom/otaliastudios/gif/GIFOptions;Lcom/otaliastudios/gif/strategy/Strategy;)Lcom/otaliastudios/gif/strategy/Strategy;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/otaliastudios/gif/GIFOptions;->strategy:Lcom/otaliastudios/gif/strategy/Strategy;

    return-object p1
.end method

.method static synthetic access$402(Lcom/otaliastudios/gif/GIFOptions;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/otaliastudios/gif/GIFOptions;->rotation:I

    return p1
.end method

.method static synthetic access$502(Lcom/otaliastudios/gif/GIFOptions;Lcom/otaliastudios/gif/time/TimeInterpolator;)Lcom/otaliastudios/gif/time/TimeInterpolator;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/otaliastudios/gif/GIFOptions;->timeInterpolator:Lcom/otaliastudios/gif/time/TimeInterpolator;

    return-object p1
.end method


# virtual methods
.method public getDataSink()Lcom/otaliastudios/gif/sink/DataSink;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFOptions;->dataSink:Lcom/otaliastudios/gif/sink/DataSink;

    return-object v0
.end method

.method public getDataSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/gif/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFOptions;->dataSources:Ljava/util/List;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/otaliastudios/gif/GIFOptions;->rotation:I

    return v0
.end method

.method public getStrategy()Lcom/otaliastudios/gif/strategy/Strategy;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFOptions;->strategy:Lcom/otaliastudios/gif/strategy/Strategy;

    return-object v0
.end method

.method public getTimeInterpolator()Lcom/otaliastudios/gif/time/TimeInterpolator;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/otaliastudios/gif/GIFOptions;->timeInterpolator:Lcom/otaliastudios/gif/time/TimeInterpolator;

    return-object v0
.end method
