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

.field private invalidateTextLayout:Z

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

    .line 98
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 6

    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    if-eqz p1, :cond_0

    .line 130
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

    .line 110
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 6

    .line 118
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    if-eqz p1, :cond_0

    .line 121
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    const/16 v0, 0xff

    .line 93
    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    .line 103
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 104
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const-string v0, "fonts/rmedium.ttf"

    .line 105
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 106
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

    .line 146
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p0

    aget-object p0, v0, p0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColorIndex(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    long-to-int p0, p0

    return p0

    .line 142
    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    array-length v0, v0

    int-to-long v0, v0

    rem-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static getIconColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 0

    const-string p0, "avatar_actionBarIconBlue"

    .line 154
    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method public static getNameColorNameForId(J)Ljava/lang/String;
    .locals 1

    .line 170
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getProfileBackColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 0

    const-string p0, "avatar_backgroundActionBarBlue"

    .line 166
    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method public static getProfileColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 1

    .line 158
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

    .line 162
    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 545
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

    .line 302
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget v2, v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    if-nez v2, :cond_0

    .line 304
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget v0, v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 306
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
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 365
    iget-object v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const-string v5, "avatar_text"

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 366
    iget-boolean v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 367
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v4

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v4, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v12

    .line 368
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor2()I

    move-result v4

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v4, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v13

    .line 369
    iget-object v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v4, :cond_1

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradientBottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v4, v6, :cond_1

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradientColor1:I

    if-ne v4, v12, :cond_1

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradientColor2:I

    if-eq v4, v13, :cond_2

    .line 370
    :cond_1
    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradientBottom:I

    int-to-float v11, v6

    iput v12, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradientColor1:I

    iput v13, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradientColor2:I

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v4

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradient:Landroid/graphics/LinearGradient;

    .line 372
    :cond_2
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    iget-object v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 374
    :cond_3
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 375
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v6

    iget v7, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 378
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 379
    iget v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v0, :cond_4

    .line 380
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v7, v3

    invoke-virtual {v0, v4, v4, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 381
    iget v7, v1, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    int-to-float v8, v7

    int-to-float v7, v7

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v8, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    int-to-float v0, v3

    div-float/2addr v0, v6

    .line 383
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v0, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 386
    :goto_1
    iget v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v0, v8, :cond_7

    .line 387
    iget v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    cmpl-float v0, v0, v4

    const-string v4, "Arrow2.**"

    const-string v5, "Arrow1.**"

    if-eqz v0, :cond_5

    .line 388
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    const-string v7, "avatar_backgroundArchived"

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    iget v11, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v3

    div-float/2addr v0, v6

    .line 389
    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    mul-float/2addr v6, v0

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v0, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 390
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-eqz v0, :cond_6

    .line 391
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 392
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 393
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 394
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 395
    sput-boolean v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    goto :goto_2

    .line 398
    :cond_5
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-nez v0, :cond_6

    .line 399
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 400
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 401
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 402
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 403
    sput-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    .line 406
    :cond_6
    :goto_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 407
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v0, v0

    .line 409
    iget v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v5, v3, v0

    .line 412
    div-int/2addr v5, v8

    sub-int/2addr v3, v4

    .line 413
    div-int/2addr v3, v8

    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 415
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    add-int/2addr v0, v5

    add-int/2addr v4, v3

    invoke-virtual {v6, v5, v3, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 416
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    :cond_7
    const/16 v4, 0x64

    const/4 v10, 0x6

    if-eqz v0, :cond_17

    const/16 v5, 0x65

    if-ne v0, v5, :cond_8

    .line 423
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_templates_filled:I

    invoke-static {v0, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 425
    invoke-virtual {v0, v9, v9, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_8
    if-ne v0, v4, :cond_9

    .line 428
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock_filled:I

    invoke-static {v0, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 430
    invoke-virtual {v0, v9, v9, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_9
    if-ne v0, v7, :cond_a

    .line 434
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v9

    .line 435
    invoke-virtual {v0, v9, v9, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    :cond_a
    const/4 v4, 0x4

    if-ne v0, v4, :cond_b

    .line 437
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v8

    goto :goto_3

    :cond_b
    const/4 v5, 0x3

    const/4 v6, 0x5

    if-ne v0, v6, :cond_c

    .line 439
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    goto :goto_3

    :cond_c
    if-ne v0, v10, :cond_d

    .line 441
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_d
    const/4 v4, 0x7

    if-ne v0, v4, :cond_e

    .line 443
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    goto :goto_3

    :cond_e
    const/16 v6, 0x8

    if-ne v0, v6, :cond_f

    .line 445
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v10

    goto :goto_3

    :cond_f
    const/16 v7, 0x9

    if-ne v0, v7, :cond_10

    .line 447
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_10
    const/16 v4, 0xa

    if-ne v0, v4, :cond_11

    .line 449
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    goto :goto_3

    :cond_11
    if-ne v0, v5, :cond_12

    .line 451
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_12
    const/16 v4, 0xc

    if-ne v0, v4, :cond_13

    .line 453
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xb

    aget-object v0, v0, v4

    goto :goto_3

    :cond_13
    const/16 v5, 0xe

    if-ne v0, v5, :cond_14

    .line 455
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    .line 457
    :cond_14
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v7

    :cond_15
    :goto_3
    if-eqz v0, :cond_1e

    .line 460
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 461
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v6, v3, v4

    .line 462
    div-int/2addr v6, v8

    sub-int/2addr v3, v5

    .line 463
    div-int/2addr v3, v8

    add-int/2addr v4, v6

    add-int/2addr v5, v3

    .line 464
    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 465
    iget v3, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    const/16 v4, 0xff

    if-eq v3, v4, :cond_16

    .line 466
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 467
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 468
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_5

    .line 470
    :cond_16
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    .line 473
    :cond_17
    iget-boolean v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    const/16 v11, 0x32

    if-eqz v0, :cond_1a

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v0, v7

    if-eqz v12, :cond_1a

    .line 474
    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 475
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 476
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v3, v5

    if-gt v0, v5, :cond_18

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v3, v5

    if-le v4, v5, :cond_19

    :cond_18
    int-to-float v5, v3

    .line 477
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :cond_19
    sub-int v5, v3, v0

    .line 481
    div-int/2addr v5, v8

    sub-int/2addr v3, v4

    .line 482
    div-int/2addr v3, v8

    .line 483
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v7

    add-int/2addr v0, v5

    add-int/2addr v4, v3

    invoke-virtual {v6, v5, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 484
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v7

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    .line 486
    :cond_1a
    iget-boolean v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->invalidateTextLayout:Z

    if-eqz v0, :cond_1d

    .line 487
    iput-boolean v9, v1, Lorg/telegram/ui/Components/AvatarDrawable;->invalidateTextLayout:Z

    .line 488
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 489
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-object v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    const/16 v8, 0x10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v0, v5, v8, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v13

    .line 491
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 493
    :cond_1b
    :try_start_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v14, v1, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    .line 494
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1d

    .line 495
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    .line 496
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    .line 497
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 500
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 504
    :cond_1c
    iput-object v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    .line 507
    :cond_1d
    :goto_4
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1e

    int-to-float v0, v3

    .line 508
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    div-float v4, v0, v6

    .line 509
    invoke-virtual {v2, v3, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 510
    iget v3, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    sub-float v3, v0, v3

    div-float/2addr v3, v6

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    sub-float/2addr v3, v4

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F

    sub-float/2addr v0, v4

    div-float/2addr v0, v6

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 512
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 515
    :cond_1e
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAvatarType()I
    .locals 1

    .line 258
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 294
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

    .line 298
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

    .line 520
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    return-void
.end method

.method public setArchivedAvatarHiddenProgress(F)V
    .locals 0

    .line 254
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    return-void
.end method

.method public setAvatarType(I)V
    .locals 11

    .line 195
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    const/16 v0, 0xe

    const/16 v1, 0xc

    const/4 v2, 0x2

    const-string v3, "avatar_backgroundSaved"

    const/16 v4, 0x65

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p1, v4, :cond_0

    .line 198
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_0
    const/16 v7, 0x64

    if-ne p1, v7, :cond_1

    const-string p1, "avatar_backgroundViolet"

    .line 200
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_1
    const/16 v7, 0xd

    if-ne p1, v7, :cond_2

    .line 203
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    const-string p1, "chats_actionBackground"

    .line 204
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    .line 206
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    const-string p1, "avatar_backgroundArchivedHidden"

    .line 207
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

    .line 213
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 214
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 215
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

    .line 217
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 218
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 219
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

    .line 221
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 222
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 223
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

    .line 225
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 226
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    const-wide/16 v7, 0x3

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 227
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

    .line 229
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 230
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 231
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

    .line 233
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 234
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 235
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

    .line 237
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 238
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    const-wide/16 v7, 0x6

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 239
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

    .line 241
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 242
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 243
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_1

    .line 245
    :cond_c
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 246
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 247
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_1

    .line 209
    :cond_d
    :goto_0
    iput-boolean v6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 210
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    const-string p1, "avatar_background2Saved"

    .line 211
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    .line 249
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    if-eq p1, v2, :cond_e

    if-eq p1, v6, :cond_e

    if-eq p1, v1, :cond_e

    if-eq p1, v0, :cond_e

    move v0, v6

    goto :goto_2

    :cond_e
    move v0, v5

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    if-eq p1, v4, :cond_f

    move v5, v6

    :cond_f
    and-int p1, v0, v5

    .line 250
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 274
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 275
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColor(II)V
    .locals 1

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 280
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 281
    iput p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    const/4 p1, 0x0

    .line 282
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

    .line 290
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 311
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->invalidateTextLayout:Z

    .line 312
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 313
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    const-wide/16 v1, 0x5

    cmp-long p1, p1, v1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 314
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    .line 316
    iput p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    .line 317
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    if-eqz p3, :cond_1

    .line 319
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    move-object p3, p4

    move-object p4, p1

    .line 324
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p5, :cond_3

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 328
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 329
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p1, "\u200c"

    const/16 p2, 0x11

    const/16 p5, 0x20

    if-eqz p4, :cond_7

    .line 331
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 334
    invoke-virtual {p4, p5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    if-ltz p3, :cond_5

    add-int/2addr p3, v0

    .line 335
    invoke-virtual {p4, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    .line 337
    :cond_5
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p3, p2, :cond_6

    .line 338
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_a

    .line 341
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_a

    .line 342
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    sub-int/2addr p4, v0

    :goto_1
    if-ltz p4, :cond_a

    .line 343
    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p5, :cond_9

    .line 344
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    if-eq p4, v1, :cond_9

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p5, :cond_9

    .line 345
    iget-object p4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    .line 346
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p5, p2, :cond_8

    .line 347
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_a
    :goto_2
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 181
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 182
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 183
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 184
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    .line 185
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v0, :cond_2

    .line 186
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatInvite;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 263
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

    .line 268
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

    .line 175
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
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

    .line 549
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    return-void
.end method

.method public setScaleSize(F)V
    .locals 0

    .line 191
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method
