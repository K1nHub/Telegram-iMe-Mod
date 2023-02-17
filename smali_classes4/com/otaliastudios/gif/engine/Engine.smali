.class public Lcom/otaliastudios/gif/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/gif/engine/Engine$ProgressCallback;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/otaliastudios/gif/internal/Logger;


# instance fields
.field private mCurrentStep:I

.field private mDataSink:Lcom/otaliastudios/gif/sink/DataSink;

.field private mDataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/gif/source/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterpolators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/gif/time/TimeInterpolator;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputFormat:Landroid/media/MediaFormat;

.field private final mProgressCallback:Lcom/otaliastudios/gif/engine/Engine$ProgressCallback;

.field private final mTranscoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/gif/transcode/Transcoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lcom/otaliastudios/gif/engine/Engine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/otaliastudios/gif/internal/Logger;

    invoke-direct {v1, v0}, Lcom/otaliastudios/gif/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/otaliastudios/gif/engine/Engine;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/gif/engine/Engine$ProgressCallback;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSources:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/otaliastudios/gif/engine/Engine;->mTranscoders:Ljava/util/List;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/otaliastudios/gif/engine/Engine;->mInterpolators:Ljava/util/List;

    const/4 v1, 0x0

    .line 60
    iput v1, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    .line 61
    iput-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mOutputFormat:Landroid/media/MediaFormat;

    .line 66
    iput-object p1, p0, Lcom/otaliastudios/gif/engine/Engine;->mProgressCallback:Lcom/otaliastudios/gif/engine/Engine$ProgressCallback;

    return-void
.end method

.method private closeCurrentStep()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mTranscoders:Ljava/util/List;

    iget v1, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/gif/transcode/Transcoder;

    invoke-interface {v0}, Lcom/otaliastudios/gif/transcode/Transcoder;->release()V

    .line 113
    iget-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSources:Ljava/util/List;

    iget v1, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/gif/source/DataSource;

    invoke-interface {v0}, Lcom/otaliastudios/gif/source/DataSource;->release()V

    .line 114
    iget v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    return-void
.end method

.method private computeProgress()D
    .locals 7

    .line 191
    invoke-direct {p0}, Lcom/otaliastudios/gif/engine/Engine;->getTotalReadUs()J

    move-result-wide v0

    .line 192
    invoke-direct {p0}, Lcom/otaliastudios/gif/engine/Engine;->getTotalDurationUs()J

    move-result-wide v2

    .line 193
    sget-object v4, Lcom/otaliastudios/gif/engine/Engine;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeProgress - readUs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", totalUs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/otaliastudios/gif/internal/Logger;->v(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v2, 0x1

    :cond_0
    long-to-double v0, v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private createStepTimeInterpolator(ILcom/otaliastudios/gif/time/TimeInterpolator;)Lcom/otaliastudios/gif/time/TimeInterpolator;
    .locals 2

    if-lez p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mInterpolators:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/gif/time/TimeInterpolator;

    const-wide v0, 0x7fffffffffffffffL

    .line 146
    invoke-interface {p1, v0, v1}, Lcom/otaliastudios/gif/time/TimeInterpolator;->interpolate(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 150
    :goto_0
    new-instance p1, Lcom/otaliastudios/gif/engine/Engine$1;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/otaliastudios/gif/engine/Engine$1;-><init>(Lcom/otaliastudios/gif/engine/Engine;JLcom/otaliastudios/gif/time/TimeInterpolator;)V

    return-object p1
.end method

.method private getCurrentStepTranscoder(Lcom/otaliastudios/gif/GIFOptions;)Lcom/otaliastudios/gif/transcode/Transcoder;
    .locals 4

    .line 119
    iget v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    .line 120
    iget-object v1, p0, Lcom/otaliastudios/gif/engine/Engine;->mTranscoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, v0, :cond_1

    .line 124
    iget-object v2, p0, Lcom/otaliastudios/gif/engine/Engine;->mTranscoders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/gif/transcode/Transcoder;

    .line 125
    invoke-interface {v1}, Lcom/otaliastudios/gif/transcode/Transcoder;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/otaliastudios/gif/engine/Engine;->closeCurrentStep()V

    .line 127
    invoke-direct {p0, p1}, Lcom/otaliastudios/gif/engine/Engine;->getCurrentStepTranscoder(Lcom/otaliastudios/gif/GIFOptions;)Lcom/otaliastudios/gif/transcode/Transcoder;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/gif/engine/Engine;->mTranscoders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/gif/transcode/Transcoder;

    return-object p1

    :cond_1
    if-ge v1, v0, :cond_2

    .line 133
    invoke-direct {p0, p1}, Lcom/otaliastudios/gif/engine/Engine;->openCurrentStep(Lcom/otaliastudios/gif/GIFOptions;)V

    .line 134
    iget-object p1, p0, Lcom/otaliastudios/gif/engine/Engine;->mTranscoders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/gif/transcode/Transcoder;

    return-object p1

    .line 136
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This should never happen. last:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getTotalDurationUs()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 168
    :goto_0
    iget-object v3, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/otaliastudios/gif/source/DataSource;

    .line 170
    iget v4, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    if-ge v2, v4, :cond_0

    .line 171
    invoke-interface {v3}, Lcom/otaliastudios/gif/source/DataSource;->getReadUs()J

    move-result-wide v3

    goto :goto_1

    .line 173
    :cond_0
    invoke-interface {v3}, Lcom/otaliastudios/gif/source/DataSource;->getDurationUs()J

    move-result-wide v3

    :goto_1
    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private getTotalReadUs()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 181
    :goto_0
    iget-object v3, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/otaliastudios/gif/source/DataSource;

    .line 183
    iget v4, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    if-gt v2, v4, :cond_0

    .line 184
    invoke-interface {v3}, Lcom/otaliastudios/gif/source/DataSource;->getReadUs()J

    move-result-wide v3

    add-long/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private isCompleted()Z
    .locals 3

    .line 87
    iget v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    iget-object v1, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    iget-object v1, p0, Lcom/otaliastudios/gif/engine/Engine;->mTranscoders:Ljava/util/List;

    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mTranscoders:Ljava/util/List;

    iget v1, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/gif/transcode/Transcoder;

    invoke-interface {v0}, Lcom/otaliastudios/gif/transcode/Transcoder;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private openCurrentStep(Lcom/otaliastudios/gif/GIFOptions;)V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSources:Ljava/util/List;

    iget v1, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/gif/source/DataSource;

    .line 95
    invoke-interface {v0}, Lcom/otaliastudios/gif/source/DataSource;->start()V

    .line 98
    iget v1, p0, Lcom/otaliastudios/gif/engine/Engine;->mCurrentStep:I

    .line 99
    invoke-virtual {p1}, Lcom/otaliastudios/gif/GIFOptions;->getTimeInterpolator()Lcom/otaliastudios/gif/time/TimeInterpolator;

    move-result-object v2

    .line 98
    invoke-direct {p0, v1, v2}, Lcom/otaliastudios/gif/engine/Engine;->createStepTimeInterpolator(ILcom/otaliastudios/gif/time/TimeInterpolator;)Lcom/otaliastudios/gif/time/TimeInterpolator;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/otaliastudios/gif/engine/Engine;->mInterpolators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v2, Lcom/otaliastudios/gif/transcode/VideoTranscoder;

    iget-object v3, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSink:Lcom/otaliastudios/gif/sink/DataSink;

    .line 106
    invoke-virtual {p1}, Lcom/otaliastudios/gif/GIFOptions;->getRotation()I

    move-result p1

    invoke-direct {v2, v0, v3, v1, p1}, Lcom/otaliastudios/gif/transcode/VideoTranscoder;-><init>(Lcom/otaliastudios/gif/source/DataSource;Lcom/otaliastudios/gif/sink/DataSink;Lcom/otaliastudios/gif/time/TimeInterpolator;I)V

    .line 107
    iget-object p1, p0, Lcom/otaliastudios/gif/engine/Engine;->mOutputFormat:Landroid/media/MediaFormat;

    invoke-interface {v2, p1}, Lcom/otaliastudios/gif/transcode/Transcoder;->setUp(Landroid/media/MediaFormat;)V

    .line 108
    iget-object p1, p0, Lcom/otaliastudios/gif/engine/Engine;->mTranscoders:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setProgress(D)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mProgressCallback:Lcom/otaliastudios/gif/engine/Engine$ProgressCallback;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1, p2}, Lcom/otaliastudios/gif/engine/Engine$ProgressCallback;->onProgress(D)V

    :cond_0
    return-void
.end method


# virtual methods
.method public compress(Lcom/otaliastudios/gif/GIFOptions;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lcom/otaliastudios/gif/GIFOptions;->getDataSink()Lcom/otaliastudios/gif/sink/DataSink;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSink:Lcom/otaliastudios/gif/sink/DataSink;

    .line 207
    invoke-virtual {p1}, Lcom/otaliastudios/gif/GIFOptions;->getDataSources()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSources:Ljava/util/List;

    .line 208
    iget-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSink:Lcom/otaliastudios/gif/sink/DataSink;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/otaliastudios/gif/sink/DataSink;->setOrientation(I)V

    .line 210
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-virtual {p1}, Lcom/otaliastudios/gif/GIFOptions;->getDataSources()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/otaliastudios/gif/source/DataSource;

    .line 213
    invoke-interface {v4}, Lcom/otaliastudios/gif/source/DataSource;->getTrackFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 214
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/otaliastudios/gif/GIFOptions;->getStrategy()Lcom/otaliastudios/gif/strategy/Strategy;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/otaliastudios/gif/strategy/Strategy;->createOutputFormat(Ljava/util/List;Landroid/media/MediaFormat;)V

    .line 217
    iput-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mOutputFormat:Landroid/media/MediaFormat;

    .line 218
    sget-object v0, Lcom/otaliastudios/gif/engine/Engine;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duration (us): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/otaliastudios/gif/engine/Engine;->getTotalDurationUs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/otaliastudios/gif/internal/Logger;->v(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 227
    :try_start_0
    sget-object v0, Lcom/otaliastudios/gif/engine/Engine;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new loop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/otaliastudios/gif/internal/Logger;->v(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_4

    .line 233
    invoke-direct {p0}, Lcom/otaliastudios/gif/engine/Engine;->isCompleted()Z

    move-result v6

    if-nez v6, :cond_1

    .line 235
    invoke-direct {p0, p1}, Lcom/otaliastudios/gif/engine/Engine;->getCurrentStepTranscoder(Lcom/otaliastudios/gif/GIFOptions;)Lcom/otaliastudios/gif/transcode/Transcoder;

    move-result-object v7

    invoke-interface {v7, v1}, Lcom/otaliastudios/gif/transcode/Transcoder;->transcode(Z)Z

    move-result v7

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    const-wide/16 v8, 0xa

    .line 237
    rem-long v10, v4, v8

    cmp-long v12, v10, v2

    if-nez v12, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/otaliastudios/gif/engine/Engine;->computeProgress()D

    move-result-wide v10

    .line 239
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "progress:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/otaliastudios/gif/internal/Logger;->v(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, v10, v11}, Lcom/otaliastudios/gif/engine/Engine;->setProgress(D)V

    :cond_2
    if-nez v7, :cond_3

    .line 243
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    :cond_3
    move v0, v6

    goto :goto_1

    .line 229
    :cond_4
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 246
    :cond_5
    iget-object p1, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSink:Lcom/otaliastudios/gif/sink/DataSink;

    invoke-interface {p1}, Lcom/otaliastudios/gif/sink/DataSink;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :try_start_1
    invoke-direct {p0}, Lcom/otaliastudios/gif/engine/Engine;->closeCurrentStep()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    :catch_0
    iget-object p1, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSink:Lcom/otaliastudios/gif/sink/DataSink;

    invoke-interface {p1}, Lcom/otaliastudios/gif/sink/DataSink;->release()V

    return-void

    :catchall_0
    move-exception p1

    .line 249
    :try_start_2
    invoke-direct {p0}, Lcom/otaliastudios/gif/engine/Engine;->closeCurrentStep()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 251
    :catch_1
    iget-object v0, p0, Lcom/otaliastudios/gif/engine/Engine;->mDataSink:Lcom/otaliastudios/gif/sink/DataSink;

    invoke-interface {v0}, Lcom/otaliastudios/gif/sink/DataSink;->release()V

    .line 252
    throw p1
.end method
