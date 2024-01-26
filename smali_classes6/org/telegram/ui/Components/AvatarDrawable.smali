.class public Lorg/telegram/ui/Components/AvatarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AvatarDrawable.java"


# instance fields
.field private advancedGradient:Lorg/telegram/ui/Components/GradientTools;

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

.field private hasAdvancedGradient:Z

.field private hasGradient:Z

.field private invalidateTextLayout:Z

.field private isCompactMode:Z

.field private namePaint:Landroid/text/TextPaint;

.field private needApplyColorAccent:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rotate45Background:Z

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

    .line 128
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 159
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 6

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    if-eqz p1, :cond_0

    .line 151
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawAvatarBackground:Z

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->rotate45Background:Z

    const/16 v1, 0xff

    .line 123
    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    .line 133
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 134
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    const-string v0, "fonts/rmedium.ttf"

    .line 135
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 136
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

    .line 215
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

    .line 216
    rem-int/2addr p0, v0

    aget p0, v1, p0

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvatarSymbols(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p2, :cond_0

    .line 450
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_0
    if-eqz p0, :cond_1

    .line 452
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 453
    invoke-static {p0}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "\u200c"

    const/16 v0, 0x11

    const/16 v1, 0x20

    if-eqz p1, :cond_4

    .line 455
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 458
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ltz p0, :cond_2

    add-int/lit8 p0, p0, 0x1

    .line 459
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 461
    :cond_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p0, v0, :cond_3

    .line 462
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_3
    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarDrawable;->takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_7

    .line 465
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 466
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_7

    .line 467
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_6

    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_6

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_6

    .line 469
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    .line 470
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v0, :cond_5

    .line 471
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
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

    .line 191
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

    .line 184
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    long-to-int p0, p0

    return p0

    .line 187
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

    .line 199
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarIconBlue:I

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method public static getPeerColorIndex(I)I
    .locals 3

    const/4 v0, 0x5

    .line 171
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTempHsv(I)[F

    move-result-object v1

    .line 172
    invoke-static {p0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x0

    .line 173
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

    .line 211
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundActionBarBlue:I

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method public static getProfileColorForId(JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 1

    .line 203
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

    .line 207
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_subtitleInProfileBlue:I

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    return p0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private static takeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 397
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget v2, v2, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    if-nez v2, :cond_0

    .line 399
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    iget v0, v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 401
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

    .line 484
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 489
    iget-object v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    invoke-direct {v1, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result v5

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 490
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatar_backgroundPaint:Landroid/graphics/Paint;

    .line 491
    iget-boolean v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->hasAdvancedGradient:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iget-object v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->advancedGradient:Lorg/telegram/ui/Components/GradientTools;

    if-eqz v5, :cond_1

    .line 492
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v4

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v8

    add-int/2addr v4, v3

    int-to-float v4, v4

    add-int/2addr v8, v3

    int-to-float v8, v8

    invoke-virtual {v5, v7, v9, v4, v8}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 493
    iget-object v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->advancedGradient:Lorg/telegram/ui/Components/GradientTools;

    iget-object v4, v4, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    goto :goto_0

    .line 494
    :cond_1
    iget-boolean v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    if-eqz v5, :cond_4

    .line 495
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v5

    iget v7, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v13

    .line 496
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor2()I

    move-result v5

    iget v7, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v14

    .line 497
    iget-object v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v5, :cond_2

    iget v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradientBottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ne v5, v7, :cond_2

    iget v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradientColor1:I

    if-ne v5, v13, :cond_2

    iget v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradientColor2:I

    if-eq v5, v14, :cond_3

    .line 498
    :cond_2
    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradientBottom:I

    int-to-float v12, v7

    iput v13, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradientColor1:I

    iput v14, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradientColor2:I

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradient:Landroid/graphics/LinearGradient;

    .line 500
    :cond_3
    iget-object v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 502
    :cond_4
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 503
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v5

    iget v7, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 506
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v2, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 508
    iget-boolean v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->drawAvatarBackground:Z

    const/4 v5, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v0, :cond_7

    .line 509
    iget-boolean v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->rotate45Background:Z

    if-eqz v0, :cond_5

    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, -0x3dcc0000    # -45.0f

    int-to-float v8, v3

    div-float/2addr v8, v7

    .line 511
    invoke-virtual {v2, v0, v8, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 513
    :cond_5
    iget v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    if-lez v0, :cond_6

    .line 514
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v8, v3

    invoke-virtual {v0, v5, v5, v8, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 515
    iget v8, v1, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    int-to-float v9, v8

    int-to-float v8, v8

    invoke-virtual {v2, v0, v9, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    int-to-float v0, v3

    div-float/2addr v0, v7

    .line 517
    invoke-virtual {v2, v0, v0, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 519
    :goto_1
    iget-boolean v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->rotate45Background:Z

    if-eqz v0, :cond_7

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 524
    :cond_7
    iget v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    const v8, 0x3f4ccccd    # 0.8f

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v0, v10, :cond_b

    .line 525
    iget v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    cmpl-float v0, v0, v5

    const-string v5, "Arrow2.**"

    const-string v6, "Arrow1.**"

    if-eqz v0, :cond_8

    .line 526
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchived:I

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result v9

    iget v12, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    invoke-static {v9, v12}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v3

    div-float/2addr v9, v7

    .line 527
    iget v7, v1, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    mul-float/2addr v7, v9

    invoke-virtual {v2, v9, v9, v7, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 528
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-eqz v4, :cond_9

    .line 529
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 530
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 531
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getNonAnimatedColor(I)I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 532
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 533
    sput-boolean v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    goto :goto_2

    .line 536
    :cond_8
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    if-nez v0, :cond_9

    .line 537
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    .line 538
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v0, v6, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 539
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 540
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    .line 541
    sput-boolean v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawableRecolored:Z

    .line 544
    :cond_9
    :goto_2
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 545
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v4

    .line 547
    iget-boolean v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->isCompactMode:Z

    if-eqz v5, :cond_a

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    :cond_a
    sub-int v5, v3, v0

    .line 552
    div-int/2addr v5, v10

    sub-int/2addr v3, v4

    .line 553
    div-int/2addr v3, v10

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 555
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    add-int/2addr v0, v5

    add-int/2addr v4, v3

    invoke-virtual {v6, v5, v3, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 556
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_archiveAvatarDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 557
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    :cond_b
    const/16 v4, 0x64

    const/16 v5, 0x10

    const/4 v12, 0x6

    if-eqz v0, :cond_23

    const/16 v6, 0x65

    if-ne v0, v6, :cond_c

    .line 563
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_templates_filled:I

    invoke-static {v0, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 565
    invoke-virtual {v0, v11, v11, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_c
    if-ne v0, v4, :cond_d

    .line 568
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock_filled:I

    invoke-static {v0, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 570
    invoke-virtual {v0, v11, v11, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_d
    if-ne v0, v9, :cond_e

    .line 574
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v11

    .line 575
    invoke-virtual {v0, v11, v11, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_e
    const/4 v4, 0x4

    if-ne v0, v4, :cond_f

    .line 577
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v10

    goto/16 :goto_3

    :cond_f
    const/4 v6, 0x3

    const/4 v7, 0x5

    if-ne v0, v7, :cond_10

    .line 579
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    goto/16 :goto_3

    :cond_10
    if-ne v0, v12, :cond_11

    .line 581
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto/16 :goto_3

    :cond_11
    const/4 v4, 0x7

    if-ne v0, v4, :cond_12

    .line 583
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v7

    goto/16 :goto_3

    :cond_12
    const/16 v7, 0x8

    if-ne v0, v7, :cond_13

    .line 585
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v12

    goto/16 :goto_3

    :cond_13
    const/16 v9, 0x9

    if-ne v0, v9, :cond_14

    .line 587
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto/16 :goto_3

    :cond_14
    const/16 v4, 0xa

    if-ne v0, v4, :cond_15

    .line 589
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v7

    goto/16 :goto_3

    :cond_15
    if-ne v0, v6, :cond_16

    .line 591
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_16
    const/16 v4, 0xc

    if-ne v0, v4, :cond_17

    .line 593
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xb

    aget-object v0, v0, v4

    goto :goto_3

    :cond_17
    const/16 v6, 0xe

    if-ne v0, v6, :cond_18

    .line 595
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    goto :goto_3

    :cond_18
    const/16 v4, 0xf

    if-ne v0, v4, :cond_19

    .line 597
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xd

    aget-object v0, v0, v4

    goto :goto_3

    :cond_19
    if-ne v0, v5, :cond_1a

    .line 599
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xe

    aget-object v0, v0, v4

    goto :goto_3

    :cond_1a
    const/16 v4, 0x13

    if-ne v0, v4, :cond_1b

    .line 601
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xf

    aget-object v0, v0, v4

    goto :goto_3

    :cond_1b
    const/16 v4, 0x12

    if-ne v0, v4, :cond_1c

    .line 603
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v5

    goto :goto_3

    :cond_1c
    const/16 v4, 0x14

    if-ne v0, v4, :cond_1d

    .line 605
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x11

    aget-object v0, v0, v4

    goto :goto_3

    :cond_1d
    const/16 v4, 0x15

    if-ne v0, v4, :cond_1e

    .line 607
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x12

    aget-object v0, v0, v4

    goto :goto_3

    :cond_1e
    const/16 v4, 0x16

    if-ne v0, v4, :cond_1f

    .line 609
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x13

    aget-object v0, v0, v4

    goto :goto_3

    .line 611
    :cond_1f
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v9

    :cond_20
    :goto_3
    if-eqz v0, :cond_2a

    .line 614
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 615
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 617
    iget-boolean v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->isCompactMode:Z

    if-eqz v6, :cond_21

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v5, v5

    :cond_21
    sub-int v6, v3, v4

    .line 622
    div-int/2addr v6, v10

    sub-int/2addr v3, v5

    .line 623
    div-int/2addr v3, v10

    add-int/2addr v4, v6

    add-int/2addr v5, v3

    .line 624
    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 625
    iget v3, v1, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    const/16 v4, 0xff

    if-eq v3, v4, :cond_22

    .line 626
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 627
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 628
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_5

    .line 630
    :cond_22
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    .line 633
    :cond_23
    iget-boolean v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    const/16 v8, 0x32

    if-eqz v0, :cond_26

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v13, v0, v9

    if-eqz v13, :cond_26

    .line 634
    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 635
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 636
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v3, v5

    if-gt v0, v5, :cond_24

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v3, v5

    if-le v4, v5, :cond_25

    :cond_24
    int-to-float v5, v3

    .line 637
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :cond_25
    sub-int v5, v3, v0

    .line 641
    div-int/2addr v5, v10

    sub-int/2addr v3, v4

    .line 642
    div-int/2addr v3, v10

    .line 643
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    add-int/2addr v0, v5

    add-int/2addr v4, v3

    invoke-virtual {v6, v5, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 644
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v9

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    .line 646
    :cond_26
    iget-boolean v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->invalidateTextLayout:Z

    if-eqz v0, :cond_29

    .line 647
    iput-boolean v11, v1, Lorg/telegram/ui/Components/AvatarDrawable;->invalidateTextLayout:Z

    .line 648
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_28

    .line 649
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 650
    iget-object v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v0, v6, v5, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v13

    .line 651
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 653
    :cond_27
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

    .line 654
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_29

    .line 655
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v11}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    .line 656
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v11}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    .line 657
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v11}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 660
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 664
    :cond_28
    iput-object v6, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    .line 667
    :cond_29
    :goto_4
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2a

    int-to-float v0, v3

    .line 668
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    div-float v4, v0, v7

    .line 669
    invoke-virtual {v2, v3, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 670
    iget v3, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textWidth:F

    sub-float v3, v0, v3

    div-float/2addr v3, v7

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLeft:F

    sub-float/2addr v3, v4

    iget v4, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textHeight:F

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 672
    iget-object v0, v1, Lorg/telegram/ui/Components/AvatarDrawable;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 675
    :cond_2a
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAvatarType()I
    .locals 1

    .line 344
    iget v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 389
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

    .line 393
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

    .line 680
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->alpha:I

    return-void
.end method

.method public setArchivedAvatarHiddenProgress(F)V
    .locals 0

    .line 340
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->archivedAvatarProgress:F

    return-void
.end method

.method public setAvatarType(I)V
    .locals 13

    .line 259
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->rotate45Background:Z

    .line 261
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasAdvancedGradient:Z

    .line 262
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    const/16 v1, 0xe

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/16 v6, 0x65

    const/4 v7, 0x1

    if-ne p1, v6, :cond_0

    .line 265
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundSaved:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_0
    const/16 v8, 0x64

    if-ne p1, v8, :cond_1

    .line 267
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchivedHidden:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_1
    const/16 v8, 0xd

    if-ne p1, v8, :cond_2

    .line 270
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_2
    if-ne p1, v5, :cond_3

    .line 272
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundArchivedHidden:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    goto/16 :goto_1

    :cond_3
    if-eq p1, v4, :cond_13

    if-eq p1, v7, :cond_13

    if-ne p1, v1, :cond_4

    goto/16 :goto_0

    :cond_4
    if-ne p1, v3, :cond_5

    .line 278
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->rotate45Background:Z

    .line 279
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 280
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle1:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 281
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle2:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x3

    const-wide/16 v9, 0x5

    if-ne p1, v8, :cond_6

    .line 283
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 284
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 285
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x4

    if-ne p1, v8, :cond_7

    .line 287
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 288
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 289
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_7
    const/4 v8, 0x5

    const-wide/16 v11, 0x4

    if-ne p1, v8, :cond_8

    .line 291
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 292
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 293
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x6

    if-ne p1, v8, :cond_9

    .line 295
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 296
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v8, 0x3

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v10

    aget p1, p1, v10

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 297
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_9
    const/4 v8, 0x7

    if-ne p1, v8, :cond_a

    .line 299
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 300
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v10

    aget p1, p1, v10

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 301
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_a
    const/16 v8, 0x8

    if-ne p1, v8, :cond_b

    .line 303
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 304
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v10

    aget p1, p1, v10

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 305
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_b
    const/16 v8, 0x9

    if-ne p1, v8, :cond_c

    .line 307
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 308
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v8, 0x6

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v10

    aget p1, p1, v10

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 309
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_c
    const/16 v8, 0xa

    if-ne p1, v8, :cond_d

    .line 311
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 312
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 313
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_d
    const/16 v8, 0x11

    if-ne p1, v8, :cond_e

    .line 315
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 316
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 317
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_1

    :cond_e
    if-ne p1, v2, :cond_10

    .line 319
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasAdvancedGradient:Z

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->advancedGradient:Lorg/telegram/ui/Components/GradientTools;

    if-nez p1, :cond_f

    .line 321
    new-instance p1, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {p1}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->advancedGradient:Lorg/telegram/ui/Components/GradientTools;

    .line 323
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->advancedGradient:Lorg/telegram/ui/Components/GradientTools;

    const v8, -0x7c8301

    const v9, -0x4f9c01

    const v10, -0x8d57

    const v11, -0x1d9601

    invoke-virtual {p1, v8, v9, v10, v11}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    goto :goto_1

    :cond_10
    const/16 v8, 0x16

    if-ne p1, v8, :cond_12

    .line 325
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasAdvancedGradient:Z

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->advancedGradient:Lorg/telegram/ui/Components/GradientTools;

    if-nez p1, :cond_11

    .line 327
    new-instance p1, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {p1}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->advancedGradient:Lorg/telegram/ui/Components/GradientTools;

    .line 329
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->advancedGradient:Lorg/telegram/ui/Components/GradientTools;

    const v8, -0xb27201

    const v9, -0xd44001

    const v10, -0xdf1d33

    const v11, -0xf11e0f

    invoke-virtual {p1, v8, v9, v10, v11}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    goto :goto_1

    .line 331
    :cond_12
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 332
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 333
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v8

    aget p1, p1, v8

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_1

    .line 274
    :cond_13
    :goto_0
    iput-boolean v7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 275
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundSaved:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 276
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Saved:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    .line 335
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    if-eq p1, v5, :cond_14

    if-eq p1, v7, :cond_14

    if-eq p1, v3, :cond_14

    if-eq p1, v2, :cond_14

    if-eq p1, v4, :cond_14

    if-eq p1, v1, :cond_14

    move v1, v7

    goto :goto_2

    :cond_14
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    if-eq p1, v6, :cond_15

    move v0, v7

    :cond_15
    and-int p1, v1, v0

    .line 336
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 366
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    .line 367
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasAdvancedGradient:Z

    .line 368
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 369
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColor(II)V
    .locals 1

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasAdvancedGradient:Z

    .line 375
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 376
    iput p2, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    .line 377
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setCompactMode(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->isCompactMode:Z

    return-void
.end method

.method public setDrawAvatarBackground(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawAvatarBackground:Z

    return-void
.end method

.method public setInfo(ILorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 245
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 246
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 247
    :cond_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 248
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    .line 249
    :cond_1
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v0, :cond_2

    .line 250
    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$ChatInvite;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 8

    if-eqz p2, :cond_1

    .line 352
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    invoke-static {p1, p2}, Lorg/telegram/messenger/ChatObject;->getPeerColorForAvatar(ILorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/telegram/messenger/MessagesController$PeerColor;)V

    :cond_1
    return-void
.end method

.method public setInfo(ILorg/telegram/tgnet/TLRPC$ChatInvite;)V
    .locals 8

    if-eqz p2, :cond_1

    const-wide/16 v1, 0x0

    .line 361
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz v6, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1, p2}, Lorg/telegram/messenger/ChatObject;->getPeerColorForAvatar(ILorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/telegram/messenger/MessagesController$PeerColor;)V

    :cond_1
    return-void
.end method

.method public setInfo(ILorg/telegram/tgnet/TLRPC$User;)V
    .locals 8

    if-eqz p2, :cond_1

    .line 229
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    invoke-static {p1, p2}, Lorg/telegram/messenger/UserObject;->getPeerColorForAvatar(ILorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/telegram/messenger/MessagesController$PeerColor;)V

    .line 230
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    :cond_1
    return-void
.end method

.method public setInfo(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 385
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/telegram/messenger/MessagesController$PeerColor;)V

    return-void
.end method

.method public setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 405
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/telegram/messenger/MessagesController$PeerColor;)V

    return-void
.end method

.method public setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/telegram/messenger/MessagesController$PeerColor;)V
    .locals 4

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasGradient:Z

    const/4 v1, 0x0

    .line 410
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->hasAdvancedGradient:Z

    .line 411
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->invalidateTextLayout:Z

    if-eqz p7, :cond_0

    .line 413
    invoke-virtual {p7}, Lorg/telegram/messenger/MessagesController$PeerColor;->getAvatarColor1()I

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 414
    invoke-virtual {p7}, Lorg/telegram/messenger/MessagesController$PeerColor;->getAvatarColor2()I

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto/16 :goto_0

    :cond_0
    if-eqz p6, :cond_3

    .line 416
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p7

    const/16 v2, 0xe

    if-lt p7, v2, :cond_2

    .line 417
    sget p7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p7

    if-eqz p7, :cond_1

    .line 418
    iget-object v2, p7, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v2, :cond_1

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 419
    iget-object p7, p7, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    invoke-virtual {p7, p6}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p6

    invoke-virtual {p6}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result p6

    .line 420
    sget-object p7, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getPeerColorIndex(I)I

    move-result v2

    aget p7, p7, v2

    invoke-direct {p0, p7}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p7

    iput p7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 421
    sget-object p7, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getPeerColorIndex(I)I

    move-result p6

    aget p6, p7, p6

    invoke-direct {p0, p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_0

    .line 423
    :cond_1
    sget-object p7, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v2

    aget p7, p7, v2

    invoke-direct {p0, p7}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p7

    iput p7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 424
    sget-object p7, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    int-to-long v2, p6

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p6

    aget p6, p7, p6

    invoke-direct {p0, p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_0

    .line 427
    :cond_2
    sget-object p7, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v2

    aget p7, p7, v2

    invoke-direct {p0, p7}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p7

    iput p7, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 428
    sget-object p7, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    int-to-long v2, p6

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p6

    aget p6, p7, p6

    invoke-direct {p0, p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    goto :goto_0

    .line 431
    :cond_3
    sget-object p6, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p7

    aget p6, p6, p7

    invoke-direct {p0, p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color:I

    .line 432
    sget-object p6, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result p7

    aget p6, p6, p7

    invoke-direct {p0, p6}, Lorg/telegram/ui/Components/AvatarDrawable;->getThemedColor(I)I

    move-result p6

    iput p6, p0, Lorg/telegram/ui/Components/AvatarDrawable;->color2:I

    :goto_0
    const-wide/16 p6, 0x5

    cmp-long p1, p1, p6

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    .line 434
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->needApplyColorAccent:Z

    .line 436
    iput v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->avatarType:I

    .line 437
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->drawDeleted:Z

    if-eqz p3, :cond_5

    .line 439
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    const/4 p1, 0x0

    move-object p3, p4

    move-object p4, p1

    .line 444
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p3, p4, p5, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->getAvatarSymbols(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 235
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 236
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 237
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 238
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    .line 239
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v0, :cond_2

    .line 240
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatInvite;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    .line 348
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatInvite;)V
    .locals 1

    .line 357
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$ChatInvite;)V

    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    .line 224
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public setProfile(Z)V
    .locals 0

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0

    .line 708
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->roundRadius:I

    return-void
.end method

.method public setScaleSize(F)V
    .locals 0

    .line 255
    iput p1, p0, Lorg/telegram/ui/Components/AvatarDrawable;->scaleSize:F

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarDrawable;->namePaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method
