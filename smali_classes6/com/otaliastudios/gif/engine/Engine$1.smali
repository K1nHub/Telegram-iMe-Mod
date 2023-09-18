.class Lcom/otaliastudios/gif/engine/Engine$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/otaliastudios/gif/time/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/gif/engine/Engine;->createStepTimeInterpolator(ILcom/otaliastudios/gif/time/TimeInterpolator;)Lcom/otaliastudios/gif/time/TimeInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFirstInputTime:J

.field private mLastInterpolatedTime:J

.field private mTimeBase:J

.field final synthetic val$timebase:J

.field final synthetic val$wrap:Lcom/otaliastudios/gif/time/TimeInterpolator;


# direct methods
.method constructor <init>(Lcom/otaliastudios/gif/engine/Engine;JLcom/otaliastudios/gif/time/TimeInterpolator;)V
    .locals 2

    .line 150
    iput-wide p2, p0, Lcom/otaliastudios/gif/engine/Engine$1;->val$timebase:J

    iput-object p4, p0, Lcom/otaliastudios/gif/engine/Engine$1;->val$wrap:Lcom/otaliastudios/gif/time/TimeInterpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 153
    iput-wide v0, p0, Lcom/otaliastudios/gif/engine/Engine$1;->mFirstInputTime:J

    const-wide/16 v0, 0xa

    add-long/2addr p2, v0

    .line 154
    iput-wide p2, p0, Lcom/otaliastudios/gif/engine/Engine$1;->mTimeBase:J

    return-void
.end method


# virtual methods
.method public interpolate(J)J
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 158
    iget-wide p1, p0, Lcom/otaliastudios/gif/engine/Engine$1;->mLastInterpolatedTime:J

    return-wide p1

    .line 159
    :cond_0
    iget-wide v2, p0, Lcom/otaliastudios/gif/engine/Engine$1;->mFirstInputTime:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iput-wide p1, p0, Lcom/otaliastudios/gif/engine/Engine$1;->mFirstInputTime:J

    .line 160
    :cond_1
    iget-wide v0, p0, Lcom/otaliastudios/gif/engine/Engine$1;->mTimeBase:J

    iget-wide v2, p0, Lcom/otaliastudios/gif/engine/Engine$1;->mFirstInputTime:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/otaliastudios/gif/engine/Engine$1;->mLastInterpolatedTime:J

    .line 161
    iget-object p1, p0, Lcom/otaliastudios/gif/engine/Engine$1;->val$wrap:Lcom/otaliastudios/gif/time/TimeInterpolator;

    invoke-interface {p1, v0, v1}, Lcom/otaliastudios/gif/time/TimeInterpolator;->interpolate(J)J

    move-result-wide p1

    return-wide p1
.end method
