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

.field drawForeground:Z

.field private drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

.field private foregroundAlpha:F

.field private foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final placeholderPaint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1168
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 1153
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->rect:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 1159
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawForeground:Z

    .line 1169
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 1171
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public clearForeground()V
    .locals 1

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1205
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    .line 1207
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v0, :cond_1

    .line 1209
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    const/4 v0, 0x0

    .line 1210
    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    :cond_1
    const/4 v0, 0x0

    .line 1212
    iput v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    .line 1213
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public drawForeground(Z)V
    .locals 0

    .line 1267
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawForeground:Z

    return-void
.end method

.method public getForegroundAlpha()F
    .locals 1

    .line 1194
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1260
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 1261
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->avatarsViewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1227
    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onAttachedToWindow()V

    .line 1228
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1217
    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onDetachedFromWindow()V

    .line 1218
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 1219
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v0, :cond_0

    .line 1220
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    const/4 v0, 0x0

    .line 1221
    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1239
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1240
    iget v2, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawForeground:Z

    if-nez v2, :cond_2

    .line 1241
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1242
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1244
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawForeground:Z

    if-eqz v0, :cond_4

    .line 1245
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1246
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1248
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_1

    .line 1250
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1251
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1252
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1253
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->rect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setAvatarsViewPager(Lorg/telegram/ui/Components/ProfileGalleryView;)V
    .locals 0

    .line 1164
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->avatarsViewPager:Lorg/telegram/ui/Components/ProfileGalleryView;

    return-void
.end method

.method public setForegroundAlpha(F)V
    .locals 0

    .line 1198
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundAlpha:F

    .line 1199
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    return-void
.end method

.method public setForegroundImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .line 1175
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 1176
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz p1, :cond_0

    .line 1177
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    const/4 p1, 0x0

    .line 1178
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    :cond_0
    return-void
.end method

.method public setForegroundImageDrawable(Lorg/telegram/messenger/ImageReceiver$BitmapHolder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p1, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 1186
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    if-eqz v0, :cond_1

    .line 1187
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->release()V

    const/4 v0, 0x0

    .line 1188
    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 1190
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawableHolder:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 1

    .line 1233
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->foregroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    return-void
.end method
