.class Lorg/telegram/ui/Stories/recorder/PaintView$2;
.super Ljava/lang/Object;
.source "PaintView.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PaintView;-><init>(Landroid/content/Context;ZLjava/io/File;ZLorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;IILorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 278
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PaintView$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic applyServiceShaderMatrix(IIFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$applyServiceShaderMatrix(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIFF)V

    return-void
.end method

.method public getAnimatedEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 3

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$2;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$2;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$2;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getColor(I)I
    .locals 3

    .line 281
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    if-ne p1, v0, :cond_0

    const p1, -0xd7d7d7

    return p1

    .line 283
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 285
    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    if-ne p1, v0, :cond_2

    const p1, -0xe0e0e1

    return p1

    .line 287
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    if-ne p1, v0, :cond_3

    const p1, -0x9090a

    return p1

    .line 289
    :cond_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    if-ne p1, v0, :cond_4

    const p1, -0x828283

    return p1

    .line 291
    :cond_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    if-ne p1, v0, :cond_5

    const/high16 p1, -0x1000000

    return p1

    .line 293
    :cond_5
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    if-ne p1, v0, :cond_6

    const/high16 p1, -0x60000000

    return p1

    .line 295
    :cond_6
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    const v2, -0x919191

    if-ne p1, v0, :cond_7

    return v2

    .line 297
    :cond_7
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    if-ne p1, v0, :cond_8

    return v2

    .line 299
    :cond_8
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    if-ne p1, v0, :cond_9

    return v2

    .line 303
    :cond_9
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    if-ne p1, v0, :cond_a

    return v1

    .line 305
    :cond_a
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    if-ne p1, v0, :cond_b

    const p1, -0xb35a11

    return p1

    .line 307
    :cond_b
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    if-ne p1, v2, :cond_c

    const p1, 0x1fffffff

    return p1

    .line 309
    :cond_c
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    if-ne p1, v2, :cond_d

    return v1

    .line 311
    :cond_d
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    if-ne p1, v2, :cond_e

    return v1

    .line 313
    :cond_e
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    if-ne p1, v2, :cond_f

    return v1

    .line 315
    :cond_f
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    if-ne p1, v1, :cond_10

    const p1, 0x14ffffff

    return p1

    .line 317
    :cond_10
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    if-eq p1, v1, :cond_15

    if-ne p1, v0, :cond_11

    goto :goto_0

    .line 319
    :cond_11
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchBackground:I

    if-ne p1, v0, :cond_12

    const p1, 0x2e878787

    return p1

    .line 321
    :cond_12
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    if-ne p1, v0, :cond_13

    const p1, -0xf2f2f3

    return p1

    .line 325
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_14

    .line 326
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 328
    :cond_14
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    :cond_15
    :goto_0
    const p1, -0x787879

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

.method public getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

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
