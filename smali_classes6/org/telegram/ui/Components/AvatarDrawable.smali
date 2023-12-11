.class public Lorg/telegram/ui/Components/AvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AvatarDrawable.java"


# instance fields
.field private alpha:I

.field private archivedAvatarProgress:F

.field private avatarType:I

.field private color:I

.field private color2:I

.field private drawAvatarBackground:Z

.field private drawDeleted:Z

.field private gradient:Landroid/graphics/LinearGradient;

.field private gradientBottom:I

.field private gradientColor1:I

.field private gradientColor2:I

.field private hasGradient:Z

.field private invalidateTextLayout:Z

.field private isCompactMode:Z

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

    .line 121
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 152
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 6

    .line 141
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    if-eqz p1, :cond_0

    .line 144
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawAvatarBackground:Z

    const/16 v1, 0xff

    .line 116
    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 127
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const-string v0, "fonts/rmedium.ttf"

    .line 128
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const/16 v0, 0x12

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public static colorName(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 208
    sget v2, Lorg/telegram/messenger/R$string;->ColorRed:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lorg/telegram/messenger/R$string;->ColorOrange:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lorg/telegram/messenger/R$string;->ColorViolet:I

    const/4 v3, 0x2

    aput v2, v1, v3

    sget v2, Lorg/telegram/messenger/R$string;->ColorGreen:I

    const/4 v3, 0x3

    aput v2, v1, v3

    sget v2, Lorg/telegram/messenger/R$string;->ColorCyan:I

    const/4 v3, 0x4

    aput v2, v1, v3

    sget v2, Lorg/telegram/messenger/R$string;->ColorBlue:I

    const/4 v3, 0x5

    aput v2, v1, v3

    sget v2, Lorg/telegram/messenger/R$string;->ColorPink:I

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 209
    rem-int/2addr p0, v0

    aget p0, v1, p0

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvatarSymbols(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p2, :cond_0

    .line 398
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_0
    if-eqz p0, :cond_1

    .line 400
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 401
    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "\u200c"

    const/16 v0, 0x11

    const/16 v1, 0x20

    if-eqz p1, :cond_4

    .line 403
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 406
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ltz p0, :cond_2

    add-int/lit8 p0, p0, 0x1

    .line 407
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 409
    :cond_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p0, v0, :cond_3

    .line 410
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_3
    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_7

    .line 413
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 414
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_7

    .line 415
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_6

    .line 416
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_6

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_6

    .line 417
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    .line 418
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v0, :cond_5

    .line 419
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
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

    .line 184
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

    .line 177
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    long-to-int p0, p0

    return p0

    .line 180
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

    .line 192
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarIconBlue:I

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method public static getPeerColorIndex(I)I
    .locals 3

    const/4 v0, 0x5

    .line 164
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTempHsv(I)[F

    move-result-object v1

    .line 165
    invoke-static {p0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x0

    .line 166
    aget v1, v1, p0

    float-to-int v1, v1

    const/16 v2, 0x159

    if-ge v1, v2, :cond_6

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x43

    if-ge v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 p0, 0x8c

    if-ge v1, p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/16 p0, 0xc7

    if-ge v1, p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/16 p0, 0xea

    if-ge v1, p0, :cond_4

    return v0

    :cond_4
    const/16 p0, 0x12d

    if-ge v1, p0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x6

    :cond_6
    :goto_0
    return p0
.end method

.method public static getProfileBackColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 0

    .line 204
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundActionBarBlue:I

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method public static getProfileColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 1

    .line 196
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

    .line 200
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_subtitleInProfileBlue:I

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private static takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 349
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget v2, v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    if-nez v2, :cond_0

    .line 351
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget v0, v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 353
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
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 432
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 436
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 437
    iget-object v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result v5

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 438
    iget-boolean v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 439
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v4

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v4, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v12

    .line 440
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor2()I

    move-result v4

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v4, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v13

    .line 441
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

    .line 442
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

    .line 444
    :cond_2
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    iget-object v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 446
    :cond_3
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 447
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v6

    iget v7, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 450
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 452
    iget-boolean v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->drawAvatarBackground:Z

    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v0, :cond_5

    .line 453
    iget v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    if-lez v0, :cond_4

    .line 454
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v7, v3

    invoke-virtual {v0, v4, v4, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 455
    iget v7, v1, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    int-to-float v8, v7

    int-to-float v7, v7

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v8, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    int-to-float v0, v3

    div-float/2addr v0, v6

    .line 457
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v0, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 461
    :cond_5
    :goto_1
    iget v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    const v7, 0x3f4ccccd    # 0.8f

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-ne v0, v9, :cond_9

    .line 462
    iget v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    cmpl-float v0, v0, v4

    const-string v4, "Arrow2.**"

    const-string v5, "Arrow1.**"

    if-eqz v0, :cond_6

    .line 463
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchived:I

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result v11

    iget v12, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v11, v12}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v3

    div-float/2addr v0, v6

    .line 464
    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    mul-float/2addr v6, v0

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v0, v6, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 465
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-eqz v0, :cond_7

    .line 466
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 467
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 468
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 469
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 470
    sput-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    goto :goto_2

    .line 473
    :cond_6
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-nez v0, :cond_7

    .line 474
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 475
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 476
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 477
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 478
    sput-boolean v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    .line 481
    :cond_7
    :goto_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 482
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v4

    .line 484
    iget-boolean v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->isCompactMode:Z

    if-eqz v5, :cond_8

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    :cond_8
    sub-int v5, v3, v0

    .line 489
    div-int/2addr v5, v9

    sub-int/2addr v3, v4

    .line 490
    div-int/2addr v3, v9

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 492
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    add-int/2addr v0, v5

    add-int/2addr v4, v3

    invoke-virtual {v6, v5, v3, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 493
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    :cond_9
    const/16 v4, 0x64

    const/16 v11, 0x10

    const/4 v12, 0x6

    if-eqz v0, :cond_1e

    const/16 v5, 0x65

    if-ne v0, v5, :cond_a

    .line 500
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_templates_filled:I

    invoke-static {v0, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 502
    invoke-virtual {v0, v10, v10, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_a
    if-ne v0, v4, :cond_b

    .line 505
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock_filled:I

    invoke-static {v0, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 507
    invoke-virtual {v0, v10, v10, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_b
    if-ne v0, v8, :cond_c

    .line 511
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v10

    .line 512
    invoke-virtual {v0, v10, v10, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_c
    const/4 v4, 0x4

    if-ne v0, v4, :cond_d

    .line 514
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v9

    goto/16 :goto_3

    :cond_d
    const/4 v5, 0x3

    const/4 v6, 0x5

    if-ne v0, v6, :cond_e

    .line 516
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    goto/16 :goto_3

    :cond_e
    if-ne v0, v12, :cond_f

    .line 518
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto/16 :goto_3

    :cond_f
    const/4 v4, 0x7

    if-ne v0, v4, :cond_10

    .line 520
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    goto/16 :goto_3

    :cond_10
    const/16 v6, 0x8

    if-ne v0, v6, :cond_11

    .line 522
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v12

    goto :goto_3

    :cond_11
    const/16 v8, 0x9

    if-ne v0, v8, :cond_12

    .line 524
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_12
    const/16 v4, 0xa

    if-ne v0, v4, :cond_13

    .line 526
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    goto :goto_3

    :cond_13
    if-ne v0, v5, :cond_14

    .line 528
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_14
    const/16 v4, 0xc

    if-ne v0, v4, :cond_15

    .line 530
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xb

    aget-object v0, v0, v4

    goto :goto_3

    :cond_15
    const/16 v5, 0xe

    if-ne v0, v5, :cond_16

    .line 532
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_16
    const/16 v4, 0xf

    if-ne v0, v4, :cond_17

    .line 534
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xd

    aget-object v0, v0, v4

    goto :goto_3

    :cond_17
    if-ne v0, v11, :cond_18

    .line 536
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xe

    aget-object v0, v0, v4

    goto :goto_3

    :cond_18
    const/16 v4, 0x13

    if-ne v0, v4, :cond_19

    .line 538
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xf

    aget-object v0, v0, v4

    goto :goto_3

    :cond_19
    const/16 v4, 0x12

    if-ne v0, v4, :cond_1a

    .line 540
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v11

    goto :goto_3

    .line 542
    :cond_1a
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v8

    :cond_1b
    :goto_3
    if-eqz v0, :cond_25

    .line 545
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 546
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 548
    iget-boolean v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->isCompactMode:Z

    if-eqz v6, :cond_1c

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    :cond_1c
    sub-int v6, v3, v4

    .line 553
    div-int/2addr v6, v9

    sub-int/2addr v3, v5

    .line 554
    div-int/2addr v3, v9

    add-int/2addr v4, v6

    add-int/2addr v5, v3

    .line 555
    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 556
    iget v3, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    const/16 v4, 0xff

    if-eq v3, v4, :cond_1d

    .line 557
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 558
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 559
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_5

    .line 561
    :cond_1d
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    .line 564
    :cond_1e
    iget-boolean v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    const/16 v7, 0x32

    if-eqz v0, :cond_21

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v13, v0, v8

    if-eqz v13, :cond_21

    .line 565
    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 566
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 567
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v3, v5

    if-gt v0, v5, :cond_1f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v3, v5

    if-le v4, v5, :cond_20

    :cond_1f
    int-to-float v5, v3

    .line 568
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :cond_20
    sub-int v5, v3, v0

    .line 572
    div-int/2addr v5, v9

    sub-int/2addr v3, v4

    .line 573
    div-int/2addr v3, v9

    .line 574
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v8

    add-int/2addr v0, v5

    add-int/2addr v4, v3

    invoke-virtual {v6, v5, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 575
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v8

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    .line 577
    :cond_21
    iget-boolean v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->invalidateTextLayout:Z

    if-eqz v0, :cond_24

    .line 578
    iput-boolean v10, v1, Lorg/telegram/ui/Components/AvatarDrawable;->invalidateTextLayout:Z

    .line 579
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 580
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 581
    iget-object v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v0, v5, v9, v8}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v12

    .line 582
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 584
    :cond_22
    :try_start_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v13, v1, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    .line 585
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_24

    .line 586
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    .line 587
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    .line 588
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 591
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 595
    :cond_23
    iput-object v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    .line 598
    :cond_24
    :goto_4
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_25

    int-to-float v0, v3

    .line 599
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    div-float v4, v0, v6

    .line 600
    invoke-virtual {v2, v3, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 601
    iget v3, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    sub-float v3, v0, v3

    div-float/2addr v3, v6

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    sub-float/2addr v3, v4

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F

    sub-float/2addr v0, v4

    div-float/2addr v0, v6

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 603
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 606
    :cond_25
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAvatarType()I
    .locals 1

    .line 305
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 341
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

    .line 345
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

    .line 611
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    return-void
.end method

.method public setArchivedAvatarHiddenProgress(F)V
    .locals 0

    .line 301
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    return-void
.end method

.method public setAvatarType(I)V
    .locals 11

    .line 238
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    const/16 v0, 0xe

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/16 v3, 0x65

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v3, :cond_0

    .line 241
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundSaved:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_0
    const/16 v6, 0x64

    if-ne p1, v6, :cond_1

    .line 243
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchivedHidden:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_1
    const/16 v6, 0xd

    if-ne p1, v6, :cond_2

    .line 246
    iput-boolean v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 247
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    .line 249
    iput-boolean v4, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 250
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchivedHidden:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_3
    if-eq p1, v1, :cond_e

    if-eq p1, v5, :cond_e

    if-ne p1, v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x3

    const-wide/16 v7, 0x5

    if-ne p1, v6, :cond_5

    .line 256
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 257
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 258
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

    .line 260
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 261
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 262
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

    .line 264
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 265
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 266
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

    .line 268
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 269
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 270
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

    .line 272
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 273
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 274
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

    .line 276
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 277
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 278
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

    .line 280
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 281
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v6, 0x6

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 282
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_b
    const/16 v6, 0xa

    if-ne p1, v6, :cond_c

    .line 284
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 285
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 286
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_1

    :cond_c
    const/16 v6, 0x11

    if-ne p1, v6, :cond_d

    .line 288
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 289
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 290
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_1

    .line 292
    :cond_d
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 293
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 294
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v6

    aget p1, p1, v6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_1

    .line 252
    :cond_e
    :goto_0
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 253
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundSaved:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 254
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Saved:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    .line 296
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    if-eq p1, v2, :cond_f

    if-eq p1, v5, :cond_f

    if-eq p1, v1, :cond_f

    if-eq p1, v0, :cond_f

    move v0, v5

    goto :goto_2

    :cond_f
    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    if-eq p1, v3, :cond_10

    move v4, v5

    :cond_10
    and-int p1, v0, v4

    .line 297
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 321
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 322
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColor(II)V
    .locals 1

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 327
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 328
    iput p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    const/4 p1, 0x0

    .line 329
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setCompactMode(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isCompactMode:Z

    return-void
.end method

.method public setDrawAvatarBackground(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawAvatarBackground:Z

    return-void
.end method

.method public setInfo(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 337
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 357
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 362
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->invalidateTextLayout:Z

    if-eqz p6, :cond_2

    .line 364
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 365
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v2, v1, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v2, :cond_0

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    invoke-virtual {v1, p6}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p6

    invoke-virtual {p6}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result p6

    .line 368
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getPeerColorIndex(I)I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 369
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getPeerColorIndex(I)I

    move-result p6

    aget p6, v1, p6

    invoke-direct {p0, p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_0

    .line 371
    :cond_0
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 372
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    int-to-long v2, p6

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p6

    aget p6, v1, p6

    invoke-direct {p0, p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_0

    .line 375
    :cond_1
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 376
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    int-to-long v2, p6

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p6

    aget p6, v1, p6

    invoke-direct {p0, p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_0

    .line 379
    :cond_2
    sget-object p6, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v1

    aget p6, p6, v1

    invoke-direct {p0, p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 380
    sget-object p6, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v1

    aget p6, p6, v1

    invoke-direct {p0, p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    :goto_0
    const-wide/16 v1, 0x5

    cmp-long p1, p1, v1

    const/4 p2, 0x0

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, p2

    .line 382
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    .line 384
    iput p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    .line 385
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    if-eqz p3, :cond_4

    .line 387
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const/4 p1, 0x0

    move-object p3, p4

    move-object p4, p1

    .line 392
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p3, p4, p5, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarSymbols(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 224
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 225
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 226
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 227
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    .line 228
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v0, :cond_2

    .line 229
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatInvite;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 310
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->color:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatInvite;)V
    .locals 7

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    .line 315
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->color:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 218
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v5, 0x0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->color:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    :cond_1
    return-void
.end method

.method public setProfile(Z)V
    .locals 0

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0

    .line 639
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    return-void
.end method

.method public setScaleSize(F)V
    .locals 0

    .line 234
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method
