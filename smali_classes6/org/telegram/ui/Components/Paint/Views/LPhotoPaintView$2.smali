.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;
.super Ljava/lang/Object;
.source "LPhotoPaintView.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;-><init>(Landroid/content/Context;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 211
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic applyServiceShaderMatrix(IIFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$applyServiceShaderMatrix(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIFF)V

    return-void
.end method

.method public contains(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getColor(I)I
    .locals 3

    .line 214
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    if-ne p1, v0, :cond_0

    const p1, -0xd7d7d7

    return p1

    .line 216
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 218
    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    if-ne p1, v0, :cond_2

    const p1, -0xe1e1e2

    return p1

    .line 220
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    if-ne p1, v0, :cond_3

    const p1, -0x9090a

    return p1

    .line 222
    :cond_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    if-ne p1, v0, :cond_4

    const p1, -0x828283

    return p1

    .line 224
    :cond_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    if-ne p1, v0, :cond_5

    const/high16 p1, -0x1000000

    return p1

    .line 226
    :cond_5
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    if-ne p1, v0, :cond_6

    const/high16 p1, -0x60000000

    return p1

    .line 228
    :cond_6
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiBottomPanelIcon:I

    const v2, -0x919191

    if-ne p1, v0, :cond_7

    return v2

    .line 230
    :cond_7
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackspace:I

    if-ne p1, v0, :cond_8

    return v2

    .line 232
    :cond_8
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    if-ne p1, v0, :cond_9

    return v2

    .line 234
    :cond_9
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIconSelected:I

    if-ne p1, v0, :cond_a

    const p1, -0x9b4a11

    return p1

    .line 236
    :cond_a
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    if-ne p1, v0, :cond_b

    return v1

    .line 238
    :cond_b
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    if-ne p1, v0, :cond_c

    const p1, -0xb35a11

    return p1

    .line 240
    :cond_c
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    if-ne p1, v0, :cond_d

    const p1, 0x1fffffff

    return p1

    .line 242
    :cond_d
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedText:I

    if-ne p1, v0, :cond_e

    return v1

    .line 244
    :cond_e
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    if-ne p1, v0, :cond_f

    return v1

    .line 246
    :cond_f
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelectedLine:I

    if-ne p1, v0, :cond_10

    return v1

    .line 248
    :cond_10
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabSelector:I

    if-ne p1, v0, :cond_11

    const p1, 0x14ffffff

    return p1

    .line 253
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_12

    .line 254
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 256
    :cond_12
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

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
