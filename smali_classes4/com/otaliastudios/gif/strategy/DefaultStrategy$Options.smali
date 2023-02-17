.class public Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;
.super Ljava/lang/Object;
.source "DefaultStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/gif/strategy/DefaultStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field private resizer:Lcom/otaliastudios/gif/strategy/size/Resizer;

.field private targetBitRate:J

.field private targetFrameRate:I

.field private targetKeyFrameInterval:F

.field private targetMimeType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/gif/strategy/DefaultStrategy$1;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)Lcom/otaliastudios/gif/strategy/size/Resizer;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->resizer:Lcom/otaliastudios/gif/strategy/size/Resizer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;Lcom/otaliastudios/gif/strategy/size/Resizer;)Lcom/otaliastudios/gif/strategy/size/Resizer;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->resizer:Lcom/otaliastudios/gif/strategy/size/Resizer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->targetFrameRate:I

    return p0
.end method

.method static synthetic access$202(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->targetFrameRate:I

    return p1
.end method

.method static synthetic access$300(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->targetBitRate:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->targetBitRate:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->targetKeyFrameInterval:F

    return p0
.end method

.method static synthetic access$402(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;F)F
    .locals 0

    .line 42
    iput p1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->targetKeyFrameInterval:F

    return p1
.end method

.method static synthetic access$500(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->targetMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->targetMimeType:Ljava/lang/String;

    return-object p1
.end method
