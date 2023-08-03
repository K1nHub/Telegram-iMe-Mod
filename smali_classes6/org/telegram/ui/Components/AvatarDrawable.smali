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

    .line 99
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 6

    .line 128
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    if-eqz p1, :cond_0

    .line 131
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

    .line 111
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 6

    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    if-eqz p1, :cond_0

    .line 122
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 103
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

    .line 94
    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    .line 104
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 105
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const-string v0, "fonts/rmedium.ttf"

    .line 106
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const/16 v0, 0x12

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public static getAvatarSymbols(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p2, :cond_0

    .line 331
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_0
    if-eqz p0, :cond_1

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 334
    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "\u200c"

    const/16 v0, 0x11

    const/16 v1, 0x20

    if-eqz p1, :cond_4

    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 339
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ltz p0, :cond_2

    add-int/lit8 p0, p0, 0x1

    .line 340
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 342
    :cond_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p0, v0, :cond_3

    .line 343
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_3
    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_7

    .line 346
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_7

    .line 348
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_6

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_6

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_6

    .line 350
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    .line 351
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v0, :cond_5

    .line 352
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method public static getColorForId(J)I
    .locals 1

    .line 147
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p0

    aget p0, v0, p0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

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

    .line 143
    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

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

    .line 155
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarIconBlue:I

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method public static getNameColorNameForId(J)I
    .locals 1

    .line 171
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

.method public static getProfileBackColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 0

    .line 167
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundActionBarBlue:I

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method public static getProfileColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 1

    .line 159
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p0

    aget p0, v0, p0

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method public static getProfileTextColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 0

    .line 163
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_subtitleInProfileBlue:I

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private static takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 303
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget v2, v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    if-nez v2, :cond_0

    .line 305
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget v0, v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 307
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 370
    iget-object v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result v5

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 371
    iget-boolean v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 372
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v4

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v4, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v12

    .line 373
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor2()I

    move-result v4

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v4, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v13

    .line 374
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

    .line 375
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

    .line 377
    :cond_2
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    iget-object v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 379
    :cond_3
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 380
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v6

    iget v7, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 383
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 384
    iget v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v0, :cond_4

    .line 385
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v7, v3

    invoke-virtual {v0, v4, v4, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 386
    iget v7, v1, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    int-to-float v8, v7

    int-to-float v7, v7

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v8, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    int-to-float v0, v3

    div-float/2addr v0, v6

    .line 388
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v0, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 391
    :goto_1
    iget v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v0, v8, :cond_7

    .line 392
    iget v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    cmpl-float v0, v0, v4

    const-string v4, "Arrow2.**"

    const-string v5, "Arrow1.**"

    if-eqz v0, :cond_5

    .line 393
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchived:I

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result v10

    iget v11, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v3

    div-float/2addr v0, v6

    .line 394
    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    mul-float/2addr v6, v0

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v0, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 395
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-eqz v0, :cond_6

    .line 396
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 397
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 398
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 399
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 400
    sput-boolean v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    goto :goto_2

    .line 403
    :cond_5
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-nez v0, :cond_6

    .line 404
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 405
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 406
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 407
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 408
    sput-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    .line 411
    :cond_6
    :goto_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 412
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v0, v0

    .line 414
    iget v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v5, v3, v0

    .line 417
    div-int/2addr v5, v8

    sub-int/2addr v3, v4

    .line 418
    div-int/2addr v3, v8

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 420
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    add-int/2addr v0, v5

    add-int/2addr v4, v3

    invoke-virtual {v6, v5, v3, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 421
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    :cond_7
    const/16 v4, 0x64

    const/4 v10, 0x6

    if-eqz v0, :cond_18

    const/16 v5, 0x65

    if-ne v0, v5, :cond_8

    .line 428
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_templates_filled:I

    invoke-static {v0, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 430
    invoke-virtual {v0, v9, v9, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_8
    if-ne v0, v4, :cond_9

    .line 433
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock_filled:I

    invoke-static {v0, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 435
    invoke-virtual {v0, v9, v9, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_9
    if-ne v0, v7, :cond_a

    .line 439
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v9

    .line 440
    invoke-virtual {v0, v9, v9, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_a
    const/4 v4, 0x4

    if-ne v0, v4, :cond_b

    .line 442
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v8

    goto :goto_3

    :cond_b
    const/4 v5, 0x3

    const/4 v6, 0x5

    if-ne v0, v6, :cond_c

    .line 444
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    goto :goto_3

    :cond_c
    if-ne v0, v10, :cond_d

    .line 446
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_d
    const/4 v4, 0x7

    if-ne v0, v4, :cond_e

    .line 448
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    goto :goto_3

    :cond_e
    const/16 v6, 0x8

    if-ne v0, v6, :cond_f

    .line 450
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v10

    goto :goto_3

    :cond_f
    const/16 v7, 0x9

    if-ne v0, v7, :cond_10

    .line 452
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_10
    const/16 v4, 0xa

    if-ne v0, v4, :cond_11

    .line 454
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    goto :goto_3

    :cond_11
    if-ne v0, v5, :cond_12

    .line 456
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_12
    const/16 v4, 0xc

    if-ne v0, v4, :cond_13

    .line 458
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xb

    aget-object v0, v0, v4

    goto :goto_3

    :cond_13
    const/16 v5, 0xe

    if-ne v0, v5, :cond_14

    .line 460
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_14
    const/16 v4, 0xf

    if-ne v0, v4, :cond_15

    .line 462
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xd

    aget-object v0, v0, v4

    goto :goto_3

    .line 464
    :cond_15
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v7

    :cond_16
    :goto_3
    if-eqz v0, :cond_1f

    .line 467
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 468
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v6, v3, v4

    .line 469
    div-int/2addr v6, v8

    sub-int/2addr v3, v5

    .line 470
    div-int/2addr v3, v8

    add-int/2addr v4, v6

    add-int/2addr v5, v3

    .line 471
    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 472
    iget v3, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    const/16 v4, 0xff

    if-eq v3, v4, :cond_17

    .line 473
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 474
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 475
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_5

    .line 477
    :cond_17
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    .line 480
    :cond_18
    iget-boolean v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    const/16 v11, 0x32

    if-eqz v0, :cond_1b

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v0, v7

    if-eqz v12, :cond_1b

    .line 481
    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 482
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 483
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v3, v5

    if-gt v0, v5, :cond_19

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v3, v5

    if-le v4, v5, :cond_1a

    :cond_19
    int-to-float v5, v3

    .line 484
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

    :cond_1a
    sub-int v5, v3, v0

    .line 488
    div-int/2addr v5, v8

    sub-int/2addr v3, v4

    .line 489
    div-int/2addr v3, v8

    .line 490
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v7

    add-int/2addr v0, v5

    add-int/2addr v4, v3

    invoke-virtual {v6, v5, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 491
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v7

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    .line 493
    :cond_1b
    iget-boolean v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->invalidateTextLayout:Z

    if-eqz v0, :cond_1e

    .line 494
    iput-boolean v9, v1, Lorg/telegram/ui/Components/AvatarDrawable;->invalidateTextLayout:Z

    .line 495
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 496
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 497
    iget-object v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    const/16 v8, 0x10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v0, v5, v8, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v13

    .line 498
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 500
    :cond_1c
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

    .line 501
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1e

    .line 502
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    .line 503
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    .line 504
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

    .line 507
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 511
    :cond_1d
    iput-object v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    .line 514
    :cond_1e
    :goto_4
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1f

    int-to-float v0, v3

    .line 515
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    div-float v4, v0, v6

    .line 516
    invoke-virtual {v2, v3, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 517
    iget v3, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    sub-float v3, v0, v3

    div-float/2addr v3, v6

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    sub-float/2addr v3, v4

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F

    sub-float/2addr v0, v4

    div-float/2addr v0, v6

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 519
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 522
    :cond_1f
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAvatarType()I
    .locals 1

    .line 259
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 295
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

    .line 299
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

    .line 527
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    return-void
.end method

.method public setArchivedAvatarHiddenProgress(F)V
    .locals 0

    .line 255
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    return-void
.end method

.method public setAvatarType(I)V
    .locals 11

    .line 196
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    const/16 v0, 0xe

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/16 v3, 0x65

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v3, :cond_0

    .line 199
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundSaved:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_0
    const/16 v6, 0x64

    if-ne p1, v6, :cond_1

    .line 201
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_1
    const/16 v6, 0xd

    if-ne p1, v6, :cond_2

    .line 204
    iput-boolean v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 205
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    .line 207
    iput-boolean v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 208
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchivedHidden:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_3
    if-eq p1, v1, :cond_d

    if-eq p1, v5, :cond_d

    if-ne p1, v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x3

    const-wide/16 v7, 0x5

    if-ne p1, v6, :cond_5

    .line 214
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 215
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 216
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x4

    if-ne p1, v6, :cond_6

    .line 218
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 219
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 220
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_6
    const/4 v6, 0x5

    const-wide/16 v9, 0x4

    if-ne p1, v6, :cond_7

    .line 222
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 223
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 224
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x6

    if-ne p1, v6, :cond_8

    .line 226
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 227
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 228
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_8
    const/4 v6, 0x7

    if-ne p1, v6, :cond_9

    .line 230
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 231
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 232
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_9
    const/16 v6, 0x8

    if-ne p1, v6, :cond_a

    .line 234
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 235
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 236
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_a
    const/16 v6, 0x9

    if-ne p1, v6, :cond_b

    .line 238
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 239
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v6, 0x6

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 240
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_1

    :cond_b
    const/16 v6, 0xa

    if-ne p1, v6, :cond_c

    .line 242
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 243
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 244
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_1

    .line 246
    :cond_c
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 247
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 248
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_1

    .line 210
    :cond_d
    :goto_0
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 211
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundSaved:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 212
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Saved:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    .line 250
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    if-eq p1, v2, :cond_e

    if-eq p1, v5, :cond_e

    if-eq p1, v1, :cond_e

    if-eq p1, v0, :cond_e

    move v0, v5

    goto :goto_2

    :cond_e
    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    if-eq p1, v3, :cond_f

    move v4, v5

    :cond_f
    and-int p1, v0, v4

    .line 251
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 275
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 276
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColor(II)V
    .locals 1

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 281
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 282
    iput p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    const/4 p1, 0x0

    .line 283
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

    .line 291
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 312
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->invalidateTextLayout:Z

    .line 313
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 314
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    const-wide/16 v1, 0x5

    cmp-long p1, p1, v1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 315
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    .line 317
    iput p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    .line 318
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    if-eqz p3, :cond_1

    .line 320
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    move-object p3, p4

    move-object p4, p1

    .line 325
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p3, p4, p5, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarSymbols(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 182
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 183
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 184
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 185
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    .line 186
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v0, :cond_2

    .line 187
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatInvite;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 264
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

    .line 269
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

    .line 176
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
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

    .line 555
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    return-void
.end method

.method public setScaleSize(F)V
    .locals 0

    .line 192
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method
