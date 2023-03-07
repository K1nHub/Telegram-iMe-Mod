.class public Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
.super Ljava/lang/Object;
.source "ImageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapHolder"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public drawable:Landroid/graphics/drawable/Drawable;

.field private key:Ljava/lang/String;

.field public orientation:I

.field private recycleOnRelease:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->recycleOnRelease:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 95
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    .line 96
    iput p3, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->orientation:I

    if-eqz p2, :cond_0

    .line 98
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    .line 104
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    .line 105
    iput p3, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->orientation:I

    if-eqz p2, :cond_0

    .line 107
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecycled()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public release()V
    .locals 5

    .line 129
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 130
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->recycleOnRelease:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    :cond_0
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 134
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 137
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result v0

    .line 138
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 140
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 143
    instance-of v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v2, :cond_3

    .line 144
    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 145
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    goto :goto_0

    .line 146
    :cond_3
    instance-of v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_4

    .line 147
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 148
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    goto :goto_0

    .line 149
    :cond_4
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_5

    .line 150
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    :cond_5
    :goto_0
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->key:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 158
    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
