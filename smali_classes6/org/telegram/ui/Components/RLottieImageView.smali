.class public Lorg/telegram/ui/Components/RLottieImageView;
.super Landroid/widget/ImageView;
.source "RLottieImageView.java"


# instance fields
.field private attachedToWindow:Z

.field private autoRepeat:Z

.field public cached:Z

.field private drawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private layerColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private layerNum:Ljava/lang/Integer;

.field private onlyLastFrame:Z

.field private playing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/RLottieImageView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method


# virtual methods
.method public clearAnimationDrawable()V
    .locals 2

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 223
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 225
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 226
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public clearLayerColors()V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerColors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0
.end method

.method public getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 231
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->attachedToWindow:Z

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 235
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->playing:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 241
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->playing:Z

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 249
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->attachedToWindow:Z

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_1
    return-void
.end method

.method protected onLoaded()V
    .locals 0

    return-void
.end method

.method public playAnimation()V
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 287
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->playing:Z

    .line 288
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->attachedToWindow:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 292
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    :cond_2
    return-void
.end method

.method public replaceColors([I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->replaceColors([I)V

    :cond_0
    return-void
.end method

.method public setAnimation(III)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III[I)V

    return-void
.end method

.method public setAnimation(III[I)V
    .locals 8

    .line 89
    new-instance v7, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v7

    move v1, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    return-void
.end method

.method public setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move/from16 v14, p2

    move/from16 v15, p3

    .line 136
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    const/4 v1, 0x0

    .line 138
    iput-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :cond_0
    if-nez v12, :cond_1

    return-void

    .line 143
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView$1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RLottieImageView$1;-><init>(Lorg/telegram/ui/Components/RLottieImageView;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v13, 0x1

    .line 152
    invoke-virtual {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 153
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->onlyLastFrame:Z

    const-string v2, "_"

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_lastframe"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-wide v9, v10

    move-object/from16 v11, v16

    move-object/from16 v12, p1

    move/from16 v13, v17

    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 155
    :cond_2
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v3, "video/webm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "_pcache"

    const-string v4, ""

    const/16 v5, 0x5a

    if-eqz v1, :cond_4

    .line 156
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 157
    iget-object v5, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lorg/telegram/ui/Components/RLottieImageView;->cached:Z

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "g"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-wide v9, v12, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object v1, v5

    move-object v2, v6

    move-object v5, v7

    move-object v6, v8

    move-wide v7, v9

    move-object v9, v11

    move-object/from16 v10, p1

    move v11, v13

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_2

    .line 159
    :cond_4
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v6, v7}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v8

    if-eqz v8, :cond_5

    const/16 v1, 0x200

    .line 161
    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 163
    :cond_5
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 164
    iget-object v5, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/RLottieImageView;->cached:Z

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    move-object v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object v1, v5

    move-object v2, v6

    move-object v5, v7

    move-object v6, v9

    move-object v7, v10

    move-wide/from16 v9, v16

    move-object/from16 v12, p1

    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 166
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 167
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 168
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->autoRepeat:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 169
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 170
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 171
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    goto :goto_3

    .line 173
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 175
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/RLottieImageView;->layerNum:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4

    :cond_8
    const/4 v2, 0x7

    :goto_4
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 176
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->clip:Z

    .line 178
    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView$2;

    invoke-direct {v1, v0, v14, v15}, Lorg/telegram/ui/Components/RLottieImageView$2;-><init>(Lorg/telegram/ui/Components/RLottieImageView;II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->attachedToWindow:Z

    if-eqz v1, :cond_9

    .line 209
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_9
    return-void
.end method

.method public setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 4

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-ne v0, p1, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 106
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 107
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 108
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->autoRepeat:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 111
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerColors:Ljava/util/HashMap;

    if-eqz p1, :cond_4

    .line 112
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerColors:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    iget-object v2, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    goto :goto_0

    .line 116
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 118
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAutoRepeat(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->autoRepeat:Z

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 279
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 280
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-void
.end method

.method public setLayerColor(Ljava/lang/String;I)V
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerColors:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerColors:Ljava/util/HashMap;

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerColors:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public setLayerNum(Ljava/lang/Integer;)V
    .locals 1

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerNum:Ljava/lang/Integer;

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    :cond_0
    return-void
.end method

.method public setOnAnimationEndListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setOnlyLastFrame(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->onlyLastFrame:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 304
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->playing:Z

    .line 305
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->attachedToWindow:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 309
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    :cond_2
    return-void
.end method
