.class public Lorg/telegram/ui/Components/BotCommandsMenuView;
.super Landroid/view/View;
.source "BotCommandsMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;,
        Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;
    }
.end annotation


# instance fields
.field final backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

.field backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field drawBackgroundDrawable:Z

.field expandProgress:F

.field expanded:Z

.field isOpened:Z

.field private isTemplatesMode:Z

.field isWebView:Z

.field isWebViewOpened:Z

.field lastSize:I

.field private menuText:Ljava/lang/String;

.field menuTextLayout:Landroid/text/StaticLayout;

.field final paint:Landroid/graphics/Paint;

.field final rectTmp:Landroid/graphics/RectF;

.field private templatesDrawable:Landroid/graphics/drawable/Drawable;

.field final textPaint:Landroid/text/TextPaint;

.field webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;


# direct methods
.method public static synthetic $r8$lambda$jQZrBKVoqHPFMEY421VumByMMls(Lorg/telegram/ui/Components/BotCommandsMenuView;Lorg/telegram/ui/ChatActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BotCommandsMenuView;->lambda$setTemplatesMode$0(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 127
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->rectTmp:Landroid/graphics/RectF;

    .line 91
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    .line 92
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    .line 93
    new-instance v1, Lorg/telegram/ui/Components/BotCommandsMenuView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotCommandsMenuView$1;-><init>(Lorg/telegram/ui/Components/BotCommandsMenuView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    .line 100
    new-instance v8, Lorg/telegram/ui/Components/BotCommandsMenuView$2;

    sget v4, Lorg/telegram/messenger/R$raw;->bot_webview_sheet_to_cross:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/BotCommandsMenuView$2;-><init>(Lorg/telegram/ui/Components/BotCommandsMenuView;ILjava/lang/String;II)V

    iput-object v8, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 116
    sget v2, Lorg/telegram/messenger/R$string;->BotsMenuTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuText:Ljava/lang/String;

    .line 124
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->drawBackgroundDrawable:Z

    .line 128
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView;->updateColors()V

    .line 129
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setMiniIcon(Z)V

    const/4 v0, 0x0

    .line 130
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotateToBack(Z)V

    const/4 v2, 0x0

    .line 131
    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 132
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const-string v2, "fonts/rmedium.ttf"

    .line 133
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 134
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRoundCap()V

    const/16 p1, 0x10

    .line 135
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 137
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrBotMenu:I

    const-string v0, "AccDescrBotMenu"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setTemplatesMode$0(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)Z
    .locals 0

    .line 68
    iget-boolean p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isOpened:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->showChooseTemplatesModeDialog()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private updateColors()V
    .locals 4

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceDuration:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 166
    iget-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setBackColor(I)V

    .line 167
    iget-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setIconColor(I)V

    .line 168
    iget-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_0

    .line 169
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 171
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_c

    .line 204
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expanded:Z

    const v1, 0x3dda740e

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget v5, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_1

    add-float/2addr v5, v1

    .line 205
    iput v5, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    cmpl-float v0, v5, v6

    if-lez v0, :cond_0

    .line 207
    iput v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    .line 212
    iget v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_3

    sub-float/2addr v0, v1

    .line 213
    iput v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 215
    iput v4, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 222
    :goto_1
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v5, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v5, 0x437f0000    # 255.0f

    if-eqz v0, :cond_4

    cmpl-float v6, v1, v4

    if-lez v6, :cond_4

    .line 224
    iget-object v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    mul-float v7, v1, v5

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 227
    :cond_4
    iget-boolean v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->drawBackgroundDrawable:Z

    const/4 v7, 0x4

    const/16 v8, 0x10

    if-eqz v6, :cond_7

    .line 228
    iget-object v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->rectTmp:Landroid/graphics/RectF;

    const/16 v9, 0x28

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView;->isTemplatesMode()Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v3

    goto :goto_2

    :cond_5
    move v11, v7

    :goto_2
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v4, v4, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 230
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView;->isTemplatesMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 231
    iget-object v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    const/16 v9, 0xff

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 234
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 235
    iget-object v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->rectTmp:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget v11, v9, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v9, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    invoke-virtual {v6, v10, v11, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 236
    iget-object v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 239
    :cond_7
    iget-boolean v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isWebView:Z

    if-eqz v6, :cond_8

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x41180000    # 9.5f

    .line 241
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 242
    iget-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 243
    iget v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    invoke-virtual {v2, v3, v3, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 244
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 247
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 252
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView;->isTemplatesMode()Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x20

    .line 253
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 254
    iget-object v9, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    int-to-float v10, v6

    sub-float/2addr v9, v10

    float-to-int v9, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v9, v2

    .line 255
    iget-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->templatesDrawable:Landroid/graphics/drawable/Drawable;

    add-int v10, v9, v6

    invoke-virtual {v2, v9, v3, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    iget-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->templatesDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 257
    iget-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;->getCurrentRotation()F

    move-result v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 258
    iget-object v3, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 259
    iget-object v3, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 260
    iget-object v3, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setAlpha(I)V

    .line 263
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/16 v2, 0x8

    .line 264
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    iget-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 266
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    :goto_3
    cmpl-float v2, v1, v4

    if-lez v2, :cond_b

    .line 270
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/16 v2, 0x22

    .line 271
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 272
    iget-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 273
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    if-eqz v0, :cond_c

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BotCommandsMenuView;->onTranslationChanged(F)V

    .line 280
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 527
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public isOpened()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isOpened:Z

    return v0
.end method

.method public isTemplatesMode()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isTemplatesMode:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 533
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentParentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 154
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    .line 179
    iget p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->lastSize:I

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    if-nez p2, :cond_2

    .line 180
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    iget-object p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 182
    iput p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->lastSize:I

    .line 184
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView;->isTemplatesMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    .line 185
    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuText:Ljava/lang/String;

    .line 188
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    iget-object p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int v8, p1

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuText:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v9, 0x1

    move v2, v8

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    .line 191
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result p1

    const/4 p2, 0x4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BotCommandsMenuView;->onTranslationChanged(F)V

    const/16 p1, 0x28

    .line 192
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 193
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expanded:Z

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v0, p2

    add-int/2addr p1, v0

    :cond_3
    const/high16 p2, 0x40000000    # 2.0f

    .line 197
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onTranslationChanged(F)V
    .locals 0

    return-void
.end method

.method public setDrawBackgroundDrawable(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->drawBackgroundDrawable:Z

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    .line 299
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expanded:Z

    if-eq v0, p1, :cond_2

    .line 300
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expanded:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 302
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    .line 304
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setMenuText(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 289
    sget p1, Lorg/telegram/messenger/R$string;->BotsMenuTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuText:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 292
    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return v0
.end method

.method public setOpened(Z)V
    .locals 2

    .line 465
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isOpened:Z

    if-eq v0, p1, :cond_0

    .line 466
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isOpened:Z

    .line 468
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isWebView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 469
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isWebViewOpened:Z

    if-eq v0, p1, :cond_4

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 471
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 472
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    if-eqz p1, :cond_1

    .line 473
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 474
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 475
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isWebViewOpened:Z

    goto :goto_1

    .line 478
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setTemplatesMode(ZLorg/telegram/ui/ChatActivity;)V
    .locals 1

    .line 64
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isTemplatesMode:Z

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_templates:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->templatesDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    new-instance p1, Lorg/telegram/ui/Components/BotCommandsMenuView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/BotCommandsMenuView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BotCommandsMenuView;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->templatesDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method

.method public setWebView(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isWebView:Z

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 522
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
