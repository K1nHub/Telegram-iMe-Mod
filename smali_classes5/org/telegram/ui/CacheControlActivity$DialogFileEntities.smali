.class public Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CacheControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogFileEntities"
.end annotation


# instance fields
.field public dialogId:J

.field public final entitiesByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/ui/CacheControlActivity$FileEntities;",
            ">;"
        }
    .end annotation
.end field

.field filesCount:I

.field totalSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 3149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    .line 3150
    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    return-void
.end method


# virtual methods
.method public addFile(Lorg/telegram/ui/Storage/CacheModel$FileInfo;I)V
    .locals 5

    .line 3154
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    if-nez v0, :cond_0

    .line 3156
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    invoke-direct {v0}, Lorg/telegram/ui/CacheControlActivity$FileEntities;-><init>()V

    .line 3157
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3159
    :cond_0
    iget p2, v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;->count:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;->count:I

    .line 3160
    iget-wide v1, p1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    .line 3161
    iget-wide v3, v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    .line 3162
    iget-wide v3, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    .line 3163
    iget p2, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->filesCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->filesCount:I

    .line 3164
    iget-object p2, v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createCacheModel()Lorg/telegram/ui/Storage/CacheModel;
    .locals 5

    .line 3202
    new-instance v0, Lorg/telegram/ui/Storage/CacheModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Storage/CacheModel;-><init>(Z)V

    .line 3203
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3204
    iget-object v2, v0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    iget-object v3, v3, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3206
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3207
    iget-object v2, v0, Lorg/telegram/ui/Storage/CacheModel;->media:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    iget-object v1, v1, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3209
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3210
    iget-object v1, v0, Lorg/telegram/ui/Storage/CacheModel;->documents:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3212
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3213
    iget-object v1, v0, Lorg/telegram/ui/Storage/CacheModel;->music:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3215
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3216
    iget-object v1, v0, Lorg/telegram/ui/Storage/CacheModel;->voice:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3218
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->selectAllFiles()V

    .line 3219
    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->sortBySize()V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 3198
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public merge(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V
    .locals 8

    const/4 v0, 0x0

    .line 3168
    :goto_0
    iget-object v1, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3169
    iget-object v1, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3170
    iget-object v2, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    .line 3171
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    if-nez v3, :cond_0

    .line 3173
    new-instance v3, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    invoke-direct {v3}, Lorg/telegram/ui/CacheControlActivity$FileEntities;-><init>()V

    .line 3174
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3176
    :cond_0
    iget v1, v3, Lorg/telegram/ui/CacheControlActivity$FileEntities;->count:I

    iget v4, v2, Lorg/telegram/ui/CacheControlActivity$FileEntities;->count:I

    add-int/2addr v1, v4

    iput v1, v3, Lorg/telegram/ui/CacheControlActivity$FileEntities;->count:I

    .line 3177
    iget-wide v4, v3, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    iget-wide v6, v2, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    .line 3178
    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    iget-wide v6, v2, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    .line 3179
    iget-object v1, v3, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    iget-object v2, v2, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3181
    :cond_1
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->filesCount:I

    iget p1, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->filesCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->filesCount:I

    return-void
.end method

.method public removeFile(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V
    .locals 5

    .line 3185
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    if-nez v0, :cond_0

    return-void

    .line 3189
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3190
    iget v1, v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;->count:I

    .line 3191
    iget-wide v1, v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    iget-wide v3, p1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    .line 3192
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    .line 3193
    iget p1, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->filesCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->filesCount:I

    :cond_1
    return-void
.end method
