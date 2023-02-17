.class public Lorg/telegram/ui/Components/AvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AvatarDrawable.java"


# instance fields
.field private alpha:I

.field private archivedAvatarProgress:F

.field private avatarType:I

.field private color:I

.field private color2:I

.field private drawDeleted:Z

.field private gradient:Landroid/graphics/LinearGradient;

.field private gradientBottom:I

.field private gradientColor1:I

.field private gradientColor2:I

.field private hasGradient:Z

.field private namePaint:Landroid/text/TextPaint;

.field private needApplyColorAccent:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private roundRadius:I

.field private scaleSize:F

.field private stringBuilder:Ljava/lang/StringBuilder;

.field private textHeight:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:F

.field private textWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 6

    .line 125
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    if-eqz p1, :cond_0

    .line 128
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 6

    .line 116
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    if-eqz p1, :cond_0

    .line 119
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    const/16 v0, 0xff

    .line 92
    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    .line 101
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 102
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const-string v0, "fonts/rmedium.ttf"

    .line 103
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 104
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const/16 v0, 0x12

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public static getColorForId(J)I
    .locals 1

    .line 144
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p0

    aget-object p0, v0, p0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColorIndex(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x7

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    long-to-int p1, p0

    return p1

    .line 140
    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    array-length v0, v0

    int-to-long v0, v0

    rem-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static getIconColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 0

    const-string p0, "avatar_actionBarIconBlue"

    .line 152
    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method public static getNameColorNameForId(J)Ljava/lang/String;
    .locals 1

    .line 168
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getProfileBackColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 0

    const-string p0, "avatar_backgroundActionBarBlue"

    .line 164
    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method public static getProfileColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 1

    .line 156
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p0

    aget-object p0, v0, p0

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method public static getProfileTextColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 0

    const-string p0, "avatar_subtitleInProfileBlue"

    .line 160
    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 300
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget v2, v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    if-nez v2, :cond_0

    .line 302
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget v0, v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 304
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 374
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 379
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const-string v3, "avatar_text"

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 380
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    if-eqz v2, :cond_3

    .line 381
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    .line 382
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor2()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    .line 383
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->gradientBottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->gradientColor1:I

    if-ne v2, v9, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->gradientColor2:I

    if-eq v2, v10, :cond_2

    .line 384
    :cond_1
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/AvatarDrawable;->gradientBottom:I

    int-to-float v8, v3

    iput v9, p0, Lorg/telegram/ui/Components/AvatarDrawable;->gradientColor1:I

    iput v10, p0, Lorg/telegram/ui/Components/AvatarDrawable;->gradientColor2:I

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->gradient:Landroid/graphics/LinearGradient;

    .line 386
    :cond_2
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarDrawable;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 388
    :cond_3
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 389
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 392
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 393
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v0, :cond_4

    .line 394
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v4, v1

    invoke-virtual {v0, v2, v2, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 395
    iget v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    int-to-float v5, v4

    int-to-float v4, v4

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    int-to-float v0, v1

    div-float/2addr v0, v3

    .line 397
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 400
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_7

    .line 401
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    const-string v7, "Arrow2.**"

    const-string v8, "Arrow1.**"

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    .line 402
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    const-string v2, "avatar_backgroundArchived"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    iget v9, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v4, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v1

    div-float/2addr v0, v3

    .line 403
    iget v3, p0, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    mul-float v3, v3, v0

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 404
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-eqz v0, :cond_6

    .line 405
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 406
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v8, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 407
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 408
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 409
    sput-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    goto :goto_2

    .line 412
    :cond_5
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-nez v0, :cond_6

    .line 413
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 414
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 415
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v0, v7, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 416
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 417
    sput-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    .line 420
    :cond_6
    :goto_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 421
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v0

    .line 423
    iget v3, p0, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int v3, v1, v0

    .line 426
    div-int/2addr v3, v6

    sub-int/2addr v1, v2

    .line 427
    div-int/2addr v1, v6

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 429
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    add-int/2addr v0, v3

    add-int/2addr v2, v1

    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 430
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    :cond_7
    const/4 v2, 0x6

    if-eqz v0, :cond_17

    const/16 v3, 0x65

    if-ne v0, v3, :cond_8

    .line 437
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_templates_filled:I

    invoke-static {v0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 439
    invoke-virtual {v0, v5, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_8
    const/16 v3, 0x64

    if-ne v0, v3, :cond_9

    .line 442
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock_filled:I

    invoke-static {v0, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 444
    invoke-virtual {v0, v5, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_9
    if-ne v0, v4, :cond_a

    .line 448
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    .line 449
    invoke-virtual {v0, v5, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    :cond_a
    const/4 v3, 0x4

    if-ne v0, v3, :cond_b

    .line 451
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    goto :goto_3

    :cond_b
    const/4 v4, 0x3

    const/4 v5, 0x5

    if-ne v0, v5, :cond_c

    .line 453
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_c
    if-ne v0, v2, :cond_d

    .line 455
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    goto :goto_3

    :cond_d
    const/4 v3, 0x7

    if-ne v0, v3, :cond_e

    .line 457
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    goto :goto_3

    :cond_e
    const/16 v5, 0x8

    if-ne v0, v5, :cond_f

    .line 459
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    goto :goto_3

    :cond_f
    const/16 v2, 0x9

    if-ne v0, v2, :cond_10

    .line 461
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    goto :goto_3

    :cond_10
    const/16 v3, 0xa

    if-ne v0, v3, :cond_11

    .line 463
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    goto :goto_3

    :cond_11
    if-ne v0, v4, :cond_12

    .line 465
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    goto :goto_3

    :cond_12
    const/16 v3, 0xc

    if-ne v0, v3, :cond_13

    .line 467
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    goto :goto_3

    :cond_13
    const/16 v4, 0xe

    if-ne v0, v4, :cond_14

    .line 469
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    goto :goto_3

    .line 471
    :cond_14
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    :cond_15
    :goto_3
    if-eqz v0, :cond_1b

    .line 474
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 475
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int v4, v1, v2

    .line 476
    div-int/2addr v4, v6

    sub-int/2addr v1, v3

    .line 477
    div-int/2addr v1, v6

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    .line 478
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 479
    iget v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    const/16 v2, 0xff

    if-eq v1, v2, :cond_16

    .line 480
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 481
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 482
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_4

    .line 484
    :cond_16
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 487
    :cond_17
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    const/16 v5, 0x32

    if-eqz v0, :cond_1a

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v0, v4

    if-eqz v7, :cond_1a

    .line 488
    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 489
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 490
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int v7, v1, v7

    if-gt v0, v7, :cond_18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v2, v1, v2

    if-le v3, v2, :cond_19

    :cond_18
    int-to-float v2, v1

    .line 491
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    :cond_19
    sub-int v2, v1, v0

    .line 495
    div-int/2addr v2, v6

    sub-int/2addr v1, v3

    .line 496
    div-int/2addr v1, v6

    .line 497
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v4

    add-int/2addr v0, v2

    add-int/2addr v3, v1

    invoke-virtual {v5, v2, v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 498
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 500
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1b

    int-to-float v0, v1

    .line 501
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    div-float v2, v0, v3

    .line 502
    invoke-virtual {p1, v1, v1, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 503
    iget v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    sub-float v1, v0, v1

    div-float/2addr v1, v3

    iget v2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 508
    :cond_1b
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAvatarType()I
    .locals 1

    .line 256
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 292
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    :goto_0
    return v0
.end method

.method public getColor2()I
    .locals 1

    .line 296
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    :goto_0
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 513
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    return-void
.end method

.method public setArchivedAvatarHiddenProgress(F)V
    .locals 0

    .line 252
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    return-void
.end method

.method public setAvatarType(I)V
    .locals 11

    .line 193
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    const/16 v0, 0xe

    const/16 v1, 0xc

    const/4 v2, 0x2

    const-string v3, "avatar_backgroundSaved"

    const/16 v4, 0x65

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p1, v4, :cond_0

    .line 196
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_0
    const/16 v7, 0x64

    if-ne p1, v7, :cond_1

    const-string p1, "avatar_backgroundViolet"

    .line 198
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_1
    const/16 v7, 0xd

    if-ne p1, v7, :cond_2

    .line 201
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    const-string p1, "chats_actionBackground"

    .line 202
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    .line 204
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    const-string p1, "avatar_backgroundArchivedHidden"

    .line 205
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_3
    if-eq p1, v1, :cond_d

    if-eq p1, v6, :cond_d

    if-ne p1, v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x3

    const-wide/16 v7, 0x5

    if-ne p1, v3, :cond_5

    .line 211
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 212
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 213
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    .line 215
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 216
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 217
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x5

    const-wide/16 v9, 0x4

    if-ne p1, v3, :cond_7

    .line 219
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 220
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 221
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x6

    if-ne p1, v3, :cond_8

    .line 223
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 224
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    const-wide/16 v7, 0x3

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 225
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x7

    if-ne p1, v3, :cond_9

    .line 227
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 228
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 229
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x8

    if-ne p1, v3, :cond_a

    .line 231
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 232
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 233
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_a
    const/16 v3, 0x9

    if-ne p1, v3, :cond_b

    .line 235
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 236
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    const-wide/16 v7, 0x6

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 237
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_1

    :cond_b
    const/16 v3, 0xa

    if-ne p1, v3, :cond_c

    .line 239
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 240
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 241
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_1

    .line 243
    :cond_c
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 244
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 245
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_1

    .line 207
    :cond_d
    :goto_0
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 208
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    const-string p1, "avatar_background2Saved"

    .line 209
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    .line 247
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    if-eq p1, v2, :cond_e

    if-eq p1, v6, :cond_e

    if-eq p1, v1, :cond_e

    if-eq p1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_2

    :cond_e
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    if-eq p1, v4, :cond_f

    const/4 v5, 0x1

    :cond_f
    and-int p1, v0, v5

    .line 248
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 272
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 273
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColor(II)V
    .locals 1

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 278
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 279
    iput p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    const/4 p1, 0x0

    .line 280
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setInfo(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 288
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 309
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 310
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x5

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 311
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    .line 313
    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    .line 314
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 316
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    move-object p3, p4

    move-object p4, p1

    .line 321
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p5, :cond_3

    .line 323
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 325
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_4

    .line 326
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo p2, "\u200c"

    const/16 p5, 0x11

    const/16 v2, 0x20

    if-eqz p4, :cond_7

    .line 328
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 331
    invoke-virtual {p4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    if-ltz p3, :cond_5

    add-int/2addr p3, v0

    .line 332
    invoke-virtual {p4, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    .line 334
    :cond_5
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p3, p5, :cond_6

    .line 335
    iget-object p3, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_a

    .line 338
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_a

    .line 339
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    sub-int/2addr p4, v0

    :goto_1
    if-ltz p4, :cond_a

    .line 340
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_9

    .line 341
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    if-eq p4, v3, :cond_9

    add-int/lit8 v3, p4, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_9

    .line 342
    iget-object p4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    .line 343
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, p5, :cond_8

    .line 344
    iget-object p5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    .line 354
    :cond_a
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_b

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 356
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/16 p3, 0x10

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    .line 358
    :try_start_0
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const/16 p2, 0x64

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    .line 359
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-lez p1, :cond_c

    .line 360
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    .line 361
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 365
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 368
    :cond_b
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    :cond_c
    :goto_3
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 179
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 180
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 181
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 182
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    .line 183
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v0, :cond_2

    .line 184
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatInvite;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 261
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatInvite;)V
    .locals 6

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    .line 266
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 173
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    :cond_0
    return-void
.end method

.method public setProfile(Z)V
    .locals 0

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0

    .line 542
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    return-void
.end method

.method public setScaleSize(F)V
    .locals 0

    .line 189
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method
