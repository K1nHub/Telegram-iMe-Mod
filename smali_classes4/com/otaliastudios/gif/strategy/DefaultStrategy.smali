.class public Lcom/otaliastudios/gif/strategy/DefaultStrategy;
.super Ljava/lang/Object;
.source "DefaultStrategy.java"

# interfaces
.implements Lcom/otaliastudios/gif/strategy/Strategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;,
        Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/otaliastudios/gif/internal/Logger;


# instance fields
.field private final options:Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lcom/otaliastudios/gif/strategy/DefaultStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/otaliastudios/gif/internal/Logger;

    invoke-direct {v1, v0}, Lcom/otaliastudios/gif/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->options:Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;

    return-void
.end method

.method private static estimateBitRate(III)J
    .locals 1

    int-to-float p0, p0

    const v0, 0x3e0f5c29    # 0.14f

    mul-float p0, p0, v0

    int-to-float p1, p1

    mul-float p0, p0, p1

    const/16 p1, 0x18

    .line 340
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    mul-float p0, p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method public static exact(II)Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;
    .locals 2

    .line 62
    new-instance v0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;

    new-instance v1, Lcom/otaliastudios/gif/strategy/size/ExactResizer;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/gif/strategy/size/ExactResizer;-><init>(II)V

    invoke-direct {v0, v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;-><init>(Lcom/otaliastudios/gif/strategy/size/Resizer;)V

    return-object v0
.end method

.method public static fraction(F)Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;
    .locals 2

    .line 75
    new-instance v0, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;

    new-instance v1, Lcom/otaliastudios/gif/strategy/size/FractionResizer;

    invoke-direct {v1, p0}, Lcom/otaliastudios/gif/strategy/size/FractionResizer;-><init>(F)V

    invoke-direct {v0, v1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Builder;-><init>(Lcom/otaliastudios/gif/strategy/size/Resizer;)V

    return-object v0
.end method

.method private getBestInputSize(Ljava/util/List;)Lcom/otaliastudios/gif/strategy/size/ExactSize;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)",
            "Lcom/otaliastudios/gif/strategy/size/ExactSize;"
        }
    .end annotation

    .line 281
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 283
    new-array v1, v0, [F

    .line 284
    new-array v2, v0, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v6, "height"

    const-string v7, "width"

    if-ge v5, v0, :cond_3

    .line 286
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaFormat;

    .line 287
    invoke-virtual {v8, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    .line 288
    invoke-virtual {v8, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    const-string v9, "rotation-degrees"

    .line 290
    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 291
    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 293
    :goto_1
    rem-int/lit16 v8, v8, 0xb4

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    .line 294
    :goto_2
    aput-boolean v8, v2, v5

    if-eqz v8, :cond_2

    div-float/2addr v6, v7

    goto :goto_3

    :cond_2
    div-float v6, v7, v6

    .line 295
    :goto_3
    aput v6, v1, v5

    .line 296
    aget v6, v1, v5

    add-float/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    int-to-float v5, v0

    div-float/2addr v4, v5

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v5, 0x0

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    :goto_4
    if-ge v3, v0, :cond_5

    .line 302
    aget v9, v1, v3

    sub-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v10, v9, v8

    if-gez v10, :cond_4

    move v5, v3

    move v8, v9

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 308
    :cond_5
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    .line 309
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 310
    invoke-virtual {p1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 311
    new-instance v1, Lcom/otaliastudios/gif/strategy/size/ExactSize;

    aget-boolean v3, v2, v5

    if-eqz v3, :cond_6

    move v3, p1

    goto :goto_5

    :cond_6
    move v3, v0

    :goto_5
    aget-boolean v2, v2, v5

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move v0, p1

    :goto_6
    invoke-direct {v1, v3, v0}, Lcom/otaliastudios/gif/strategy/size/ExactSize;-><init>(II)V

    return-object v1
.end method

.method private getMinFrameRate(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)I"
        }
    .end annotation

    .line 318
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFormat;

    const-string v3, "frame-rate"

    .line 319
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public createOutputFormat(Ljava/util/List;Landroid/media/MediaFormat;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;",
            "Landroid/media/MediaFormat;",
            ")V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->getBestInputSize(Ljava/util/List;)Lcom/otaliastudios/gif/strategy/size/ExactSize;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/otaliastudios/gif/strategy/size/ExactSize;->getWidth()I

    move-result v1

    .line 222
    invoke-virtual {v0}, Lcom/otaliastudios/gif/strategy/size/ExactSize;->getHeight()I

    move-result v2

    .line 223
    sget-object v3, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input width&height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/otaliastudios/gif/internal/Logger;->i(Ljava/lang/String;)V

    .line 226
    :try_start_0
    iget-object v4, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->options:Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;

    invoke-static {v4}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$100(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)Lcom/otaliastudios/gif/strategy/size/Resizer;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/otaliastudios/gif/strategy/size/Resizer;->getOutputSize(Lcom/otaliastudios/gif/strategy/size/Size;)Lcom/otaliastudios/gif/strategy/size/Size;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    instance-of v4, v0, Lcom/otaliastudios/gif/strategy/size/ExactSize;

    if-eqz v4, :cond_0

    .line 232
    check-cast v0, Lcom/otaliastudios/gif/strategy/size/ExactSize;

    invoke-virtual {v0}, Lcom/otaliastudios/gif/strategy/size/ExactSize;->getWidth()I

    move-result v1

    .line 233
    invoke-virtual {v0}, Lcom/otaliastudios/gif/strategy/size/ExactSize;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    if-lt v1, v2, :cond_1

    .line 235
    invoke-virtual {v0}, Lcom/otaliastudios/gif/strategy/size/Size;->getMajor()I

    move-result v1

    .line 236
    invoke-virtual {v0}, Lcom/otaliastudios/gif/strategy/size/Size;->getMinor()I

    move-result v0

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v0}, Lcom/otaliastudios/gif/strategy/size/Size;->getMinor()I

    move-result v1

    .line 239
    invoke-virtual {v0}, Lcom/otaliastudios/gif/strategy/size/Size;->getMajor()I

    move-result v0

    .line 241
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output width&height: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/otaliastudios/gif/internal/Logger;->i(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->getMinFrameRate(Ljava/util/List;)I

    move-result p1

    if-lez p1, :cond_2

    .line 247
    iget-object v2, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->options:Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;

    invoke-static {v2}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$200(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 249
    :cond_2
    iget-object p1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->options:Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;

    invoke-static {p1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$200(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)I

    move-result p1

    .line 253
    :goto_1
    iget-object v2, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->options:Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;

    invoke-static {v2}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$500(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {p2, v3, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "width"

    .line 254
    invoke-virtual {p2, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "height"

    .line 255
    invoke-virtual {p2, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v2, 0x0

    const-string v3, "rotation-degrees"

    .line 256
    invoke-virtual {p2, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    .line 257
    invoke-virtual {p2, v2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 258
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    const-string v4, "i-frame-interval"

    if-lt v2, v3, :cond_3

    .line 259
    iget-object v2, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->options:Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;

    invoke-static {v2}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$400(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)F

    move-result v2

    invoke-virtual {p2, v4, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_2

    .line 261
    :cond_3
    iget-object v2, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->options:Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;

    invoke-static {v2}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$400(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p2, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_2
    const v2, 0x7f000789

    const-string v3, "color-format"

    .line 263
    invoke-virtual {p2, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 264
    iget-object v2, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->options:Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;

    invoke-static {v2}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$300(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 265
    invoke-static {v1, v0, p1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->estimateBitRate(III)J

    move-result-wide v0

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/otaliastudios/gif/strategy/DefaultStrategy;->options:Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;

    invoke-static {p1}, Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;->access$300(Lcom/otaliastudios/gif/strategy/DefaultStrategy$Options;)J

    move-result-wide v0

    :goto_3
    long-to-int p1, v0

    const-string v0, "bitrate"

    .line 266
    invoke-virtual {p2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception p1

    .line 228
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Resizer error:"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
