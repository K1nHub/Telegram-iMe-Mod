.class Lorg/telegram/messenger/AndroidUtilities$TryPost;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/AndroidUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TryPost"
.end annotation


# instance fields
.field private lastTime:J

.field private final runnable:Ljava/lang/Runnable;

.field private final threshold:J

.field private triesCount:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 2

    .line 2318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/AndroidUtilities$TryPost;->lastTime:J

    .line 2316
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float v1, v1, v0

    float-to-long v0, v1

    iput-wide v0, p0, Lorg/telegram/messenger/AndroidUtilities$TryPost;->threshold:J

    .line 2319
    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$TryPost;->runnable:Ljava/lang/Runnable;

    .line 2320
    iput p2, p0, Lorg/telegram/messenger/AndroidUtilities$TryPost;->triesCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2325
    iget v2, p0, Lorg/telegram/messenger/AndroidUtilities$TryPost;->triesCount:I

    if-lez v2, :cond_1

    iget-wide v3, p0, Lorg/telegram/messenger/AndroidUtilities$TryPost;->lastTime:J

    sub-long v3, v0, v3

    iget-wide v5, p0, Lorg/telegram/messenger/AndroidUtilities$TryPost;->threshold:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 2328
    iput v2, p0, Lorg/telegram/messenger/AndroidUtilities$TryPost;->triesCount:I

    .line 2329
    iput-wide v0, p0, Lorg/telegram/messenger/AndroidUtilities$TryPost;->lastTime:J

    .line 2330
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2326
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$TryPost;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method
