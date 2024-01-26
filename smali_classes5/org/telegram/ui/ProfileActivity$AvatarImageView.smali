.class public Lorg/telegram/ui/ProfileActivity$AvatarImageView;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvatarImageView"
.end annotation


# instance fields
.field avatarsViewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

.field public bounceScale:F

.field public drawAvatar:Z

.field drawForeground:Z

.field private drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

.field private foregroundAlpha:F

.field private foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private hasStories:Z

.field private final placeholderPaint:Landroid/graphics/Paint;

.field progressToExpand:F

.field private progressToInsets:F

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1246
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 1226
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->rect:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 1228
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawAvatar:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1229
    iput v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->bounceScale:F

    .line 1234
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawForeground:Z

    .line 1239
    iput v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToInsets:F

    .line 1247
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1248
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 1249
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public clearForeground()V
    .locals 1

    .line 1281
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    .line 1285
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1286
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v0, :cond_1

    .line 1287
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    const/4 v0, 0x0

    .line 1288
    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    :cond_1
    const/4 v0, 0x0

    .line 1290
    iput v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    .line 1291
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public drawForeground(Z)V
    .locals 0

    .line 1363
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawForeground:Z

    return-void
.end method

.method public getForegroundAlpha()F
    .locals 1

    .line 1272
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    return v0
.end method

.method public getPrevFragment()Lorg/telegram/ui/Components/ChatActivityInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 1346
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 1347
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->avatarsViewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    if-eqz v0, :cond_0

    .line 1348
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1305
    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onAttachedToWindow()V

    .line 1306
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1295
    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onDetachedFromWindow()V

    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 1297
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v0, :cond_0

    .line 1298
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    const/4 v0, 0x0

    .line 1299
    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1318
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1319
    iget v1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->bounceScale:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p1, v1, v1, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1320
    iget-boolean v1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->hasStories:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/high16 v1, 0x40600000    # 3.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1321
    :goto_1
    iget v4, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToExpand:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v1, v4

    .line 1322
    iget v4, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToInsets:F

    iget v6, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    sub-float v7, v5, v6

    mul-float/2addr v4, v7

    mul-float/2addr v1, v4

    if-eqz v0, :cond_3

    cmpg-float v4, v6, v5

    if-ltz v4, :cond_2

    .line 1323
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawForeground:Z

    if-nez v4, :cond_3

    .line 1324
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v5, v1, v3

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    invoke-virtual {v0, v1, v1, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1325
    iget-boolean v4, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawAvatar:Z

    if-eqz v4, :cond_3

    .line 1326
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1329
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawForeground:Z

    if-eqz v0, :cond_5

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1331
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    invoke-virtual {v0, v1, v1, v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1332
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_2

    .line 1335
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1336
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1337
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1338
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->rect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1341
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setAvatarsViewPager(Lorg/telegram/ui/Components/ProfileGalleryView;)V
    .locals 0

    .line 1242
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->avatarsViewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    return-void
.end method

.method public setForegroundAlpha(F)V
    .locals 0

    .line 1276
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    .line 1277
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public setForegroundImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .line 1253
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 1254
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz p1, :cond_0

    .line 1255
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    const/4 p1, 0x0

    .line 1256
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    :cond_0
    return-void
.end method

.method public setForegroundImageDrawable(Lorg/telegram/messenger/ImageReceiver$BitmapHolder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1262
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p1, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 1264
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v0, :cond_1

    .line 1265
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    const/4 v0, 0x0

    .line 1266
    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 1268
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    return-void
.end method

.method public setHasStories(Z)V
    .locals 1

    .line 1371
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->hasStories:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1374
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->hasStories:Z

    .line 1375
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public setProgressToExpand(F)V
    .locals 1

    .line 1379
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToExpand:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1382
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToExpand:F

    .line 1383
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public setProgressToStoriesInsets(F)V
    .locals 1

    .line 1353
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToInsets:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1356
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->progressToInsets:F

    .line 1358
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 1

    .line 1311
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1312
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method
