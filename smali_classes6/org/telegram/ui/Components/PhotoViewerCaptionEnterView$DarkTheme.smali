.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$DarkTheme;
.super Ljava/lang/Object;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DarkTheme"
.end annotation


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .locals 0

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;)V
    .locals 0

    .line 587
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$DarkTheme;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    return-void
.end method


# virtual methods
.method public synthetic applyServiceShaderMatrix(IIFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$applyServiceShaderMatrix(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIFF)V

    return-void
.end method

.method public synthetic getAnimatedEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getColor(I)I
    .locals 4

    .line 590
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    if-ne p1, v0, :cond_0

    const p1, -0xe1e1e2

    return p1

    .line 592
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    if-ne p1, v0, :cond_1

    const p1, -0xe7e7e7

    return p1

    .line 594
    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_2

    return v1

    .line 596
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelEmptyText:I

    if-ne p1, v0, :cond_3

    const p1, -0x828282

    return p1

    .line 598
    :cond_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    if-ne p1, v0, :cond_4

    const p1, -0x9b4a03

    return p1

    .line 600
    :cond_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    if-ne p1, v0, :cond_5

    const p1, -0x8c8c8c

    return p1

    .line 602
    :cond_5
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelector:I

    if-eq p1, v0, :cond_13

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchBackground:I

    if-ne p1, v0, :cond_6

    goto :goto_0

    .line 604
    :cond_6
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    const v2, -0x919191

    if-ne p1, v0, :cond_7

    return v2

    .line 606
    :cond_7
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    if-ne p1, v0, :cond_8

    return v2

    .line 608
    :cond_8
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    const v3, -0x9b4a11

    if-ne p1, v0, :cond_9

    return v3

    .line 610
    :cond_9
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerPackSelectorLine:I

    if-ne p1, v0, :cond_a

    return v3

    .line 612
    :cond_a
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    if-ne p1, v0, :cond_b

    const p1, -0xe1e1e1

    return p1

    .line 614
    :cond_b
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    if-ne p1, v0, :cond_c

    const/high16 p1, -0x60000000

    return p1

    .line 616
    :cond_c
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    if-ne p1, v0, :cond_d

    return v2

    .line 618
    :cond_d
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    if-ne p1, v0, :cond_e

    const/high16 p1, 0x2e000000

    return p1

    .line 620
    :cond_e
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    if-ne p1, v0, :cond_f

    const/high16 p1, -0x1000000

    return p1

    .line 622
    :cond_f
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    if-ne p1, v0, :cond_10

    return v3

    .line 624
    :cond_10
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingIcon:I

    if-ne p1, v0, :cond_11

    return v1

    .line 626
    :cond_11
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelStickerSetName:I

    if-ne p1, v0, :cond_12

    const p1, 0x73ffffff

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_0
    const p1, 0xacdeaff

    return p1
.end method

.method public synthetic getColorOrDefault(I)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getColorOrDefault(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I

    move-result p1

    return p1
.end method

.method public synthetic getCurrentColor(I)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getCurrentColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I

    move-result p1

    return p1
.end method

.method public synthetic getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getDrawable(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public synthetic hasGradientService()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$hasGradientService(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    return v0
.end method

.method public synthetic setAnimatedColor(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$setAnimatedColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method
