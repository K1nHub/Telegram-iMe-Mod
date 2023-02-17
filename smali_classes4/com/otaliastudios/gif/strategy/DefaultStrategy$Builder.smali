.class public Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;
.super Ljava/lang/Object;
.source "DefaultStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/gif/strategy/DefaultStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private resizer:Lcom/otaliastudios/gif/strategy/size/MultiResizer;

.field private targetBitRate:J

.field private targetFrameRate:I

.field private targetKeyFrameInterval:F

.field private targetMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/gif/strategy/size/Resizer;)V
    .locals 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/otaliastudios/gif/strategy/size/MultiResizer;

    invoke-direct {v0}, Lcom/otaliastudios/gif/strategy/size/MultiResizer;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->resizer:Lcom/otaliastudios/gif/strategy/size/MultiResizer;

    const/16 v1, 0x1e

    .line 120
    iput v1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->targetFrameRate:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 121
    iput-wide v1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->targetBitRate:J

    const/high16 v1, 0x40400000    # 3.0f

    .line 122
    iput v1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->targetKeyFrameInterval:F

    const-string v1, "video/avc"

    .line 123
    iput-object v1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->targetMimeType:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, p1}, Lcom/otaliastudios/gif/strategy/size/MultiResizer;->addResizer(Lcom/otaliastudios/gif/strategy/size/Resizer;)V

    return-void
.end method


# virtual methods
.method public bitRate(J)Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;
    .locals 0

    .line 155
    iput-wide p1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->targetBitRate:J

    return-object p0
.end method

.method public build()Lcom/otaliastudios/gif/strategy/DefaultStrategy;
    .locals 2

    .line 204
    new-instance v0, Lcom/otaliastudios/gif/strategy/DefaultStrategy;

    invoke-virtual {p0}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->options()Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy;-><init>(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)V

    return-object v0
.end method

.method public frameRate(I)Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;
    .locals 0

    .line 167
    iput p1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->targetFrameRate:I

    return-object p0
.end method

.method public keyFrameInterval(F)Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;
    .locals 0

    .line 179
    iput p1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->targetKeyFrameInterval:F

    return-object p0
.end method

.method public options()Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;
    .locals 3

    .line 193
    new-instance v0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;-><init>(Lcom/otaliastudios/gif/strategy/DefaultStrategy$1;)V

    .line 194
    iget-object v1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->resizer:Lcom/otaliastudios/gif/strategy/size/MultiResizer;

    invoke-static {v0, v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$102(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;Lcom/otaliastudios/gif/strategy/size/Resizer;)Lcom/otaliastudios/gif/strategy/size/Resizer;

    .line 195
    iget v1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->targetFrameRate:I

    invoke-static {v0, v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$202(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;I)I

    .line 196
    iget-wide v1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->targetBitRate:J

    invoke-static {v0, v1, v2}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$302(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;J)J

    .line 197
    iget v1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->targetKeyFrameInterval:F

    invoke-static {v0, v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$402(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;F)F

    .line 198
    iget-object v1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;->targetMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$502(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method
