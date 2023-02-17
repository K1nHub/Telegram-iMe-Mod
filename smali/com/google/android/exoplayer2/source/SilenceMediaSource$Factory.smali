.class public final Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;
.super Ljava/lang/Object;
.source "SilenceMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SilenceMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private durationUs:J

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMediaSource()Lcom/google/android/exoplayer2/source/SilenceMediaSource;
    .locals 5

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;->durationUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;-><init>(JLjava/lang/Object;Lcom/google/android/exoplayer2/source/SilenceMediaSource$1;)V

    return-object v0
.end method

.method public setDurationUs(J)Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;->durationUs:J

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;->tag:Ljava/lang/Object;

    return-object p0
.end method
