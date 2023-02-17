.class final Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
.super Ljava/lang/Object;
.source "CachedContent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CachedContent"


# instance fields
.field private final cachedSpans:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final key:Ljava/lang/String;

.field private locked:Z

.field private metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 49
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->EMPTY:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 54
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 56
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyMetadataMutations(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 71
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->copyWithMutationsApplied(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 72
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 207
    const-class v2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 210
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 211
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    .line 213
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    .line 214
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCachedBytesLength(JJ)J
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 120
    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 121
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getSpan(J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isHoleSpan()Z

    move-result v4

    const-wide v5, 0x7fffffffffffffffL

    if-eqz v4, :cond_3

    .line 125
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isOpenEnded()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    :goto_2
    invoke-static {v5, v6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    neg-long p1, p1

    return-wide p1

    :cond_3
    add-long v7, p1, p3

    cmp-long v4, v7, v2

    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    move-wide v5, v7

    .line 132
    :goto_3
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v2, v7

    cmp-long v4, v2, v5

    if-gez v4, :cond_7

    .line 134
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    .line 135
    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    cmp-long v4, v7, v2

    if-lez v4, :cond_6

    goto :goto_4

    .line 141
    :cond_6
    iget-wide v9, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v7, v9

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v1, v2, v5

    if-ltz v1, :cond_5

    :cond_7
    :goto_4
    sub-long/2addr v2, p1

    .line 148
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    return-object v0
.end method

.method public getSpan(J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createLookup(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    if-eqz v1, :cond_0

    .line 102
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v2, v4

    cmp-long v4, v2, p1

    if-lez v4, :cond_0

    return-object v1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createOpenHole(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long/2addr v2, p1

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createClosedHole(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getSpans()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 196
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    mul-int/lit8 v0, v0, 0x1f

    .line 197
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 198
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->metadata:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->locked:Z

    return v0
.end method

.method public removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLastTouchTimestamp(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;JZ)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 7

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 163
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    if-eqz p4, :cond_1

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 166
    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    .line 167
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p4

    .line 168
    invoke-virtual {v0, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p4

    goto :goto_0

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "CachedContent"

    invoke-static {v1, p4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->copyWithFileAndLastTouchTimestamp(Ljava/io/File;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    .line 176
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->cachedSpans:Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public setLocked(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->locked:Z

    return-void
.end method
