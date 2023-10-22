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

    .line 34
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/RLottieImageView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method


# virtual methods
.method public clearAnimationDrawable()V
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 221
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 223
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 224
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public clearLayerColors()V
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerColors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object v0
.end method

.method public getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 258
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

    .line 229
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->attachedToWindow:Z

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 233
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->playing:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 239
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->playing:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 247
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->attachedToWindow:Z

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 253
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

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 285
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->playing:Z

    .line 286
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->attachedToWindow:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 290
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    :cond_2
    return-void
.end method

.method public replaceColors([I)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->replaceColors([I)V

    :cond_0
    return-void
.end method

.method public setAnimation(III)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III[I)V

    return-void
.end method

.method public setAnimation(III[I)V
    .locals 8

    .line 87
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

    .line 134
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    const/4 v1, 0x0

    .line 136
    iput-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :cond_0
    if-nez v12, :cond_1

    return-void

    .line 141
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView$1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RLottieImageView$1;-><init>(Lorg/telegram/ui/Components/RLottieImageView;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v13, 0x1

    .line 150
    invoke-virtual {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 151
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->onlyLastFrame:Z

    const-string v2, "_"

    if-eqz v1, :cond_2

    .line 152
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

    .line 153
    :cond_2
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v3, "video/webm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "_pcache"

    const-string v4, ""

    const/16 v5, 0x5a

    if-eqz v1, :cond_4

    .line 154
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 155
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

    .line 157
    :cond_4
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v6, v7}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v8

    if-eqz v8, :cond_5

    const/16 v1, 0x200

    .line 159
    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 161
    :cond_5
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 162
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

    .line 164
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 165
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 166
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->autoRepeat:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 167
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 168
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 169
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    goto :goto_3

    .line 171
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 173
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

    .line 174
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-boolean v3, v1, Lorg/telegram/messenger/ImageReceiver;->clip:Z

    .line 176
    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView$2;

    invoke-direct {v1, v0, v14, v15}, Lorg/telegram/ui/Components/RLottieImageView$2;-><init>(Lorg/telegram/ui/Components/RLottieImageView;II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->attachedToWindow:Z

    if-eqz v1, :cond_9

    .line 207
    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_9
    return-void
.end method

.method public setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-ne v0, p1, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 104
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 105
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 106
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->autoRepeat:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 109
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerColors:Ljava/util/HashMap;

    if-eqz p1, :cond_4

    .line 110
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 111
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

    .line 112
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

    .line 114
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 116
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 117
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAutoRepeat(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->autoRepeat:Z

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 278
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-void
.end method

.method public setLayerColor(Ljava/lang/String;I)V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerColors:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerColors:Ljava/util/HashMap;

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerColors:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public setLayerNum(Ljava/lang/Integer;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->layerNum:Ljava/lang/Integer;

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    :cond_0
    return-void
.end method

.method public setOnAnimationEndListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setOnlyLastFrame(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieImageView;->onlyLastFrame:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 302
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->playing:Z

    .line 303
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieImageView;->attachedToWindow:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 307
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    .line 308
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    :cond_2
    return-void
.end method
