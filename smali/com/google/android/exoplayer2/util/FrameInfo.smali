.class public Lcom/google/android/exoplayer2/util/FrameInfo;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# instance fields
.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final streamOffsetUs:J

.field public final width:I


# direct methods
.method public constructor <init>(IIFJ)V
    .locals 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 49
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width must be positive, but is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height must be positive, but is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    iput p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo;->width:I

    .line 53
    iput p2, p0, Lcom/google/android/exoplayer2/util/FrameInfo;->height:I

    .line 54
    iput p3, p0, Lcom/google/android/exoplayer2/util/FrameInfo;->pixelWidthHeightRatio:F

    .line 55
    iput-wide p4, p0, Lcom/google/android/exoplayer2/util/FrameInfo;->streamOffsetUs:J

    return-void
.end method
