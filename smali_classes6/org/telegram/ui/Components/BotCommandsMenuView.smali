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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 105
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->rectTmp:Landroid/graphics/RectF;

    .line 69
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    .line 70
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    .line 71
    new-instance v1, Lorg/telegram/ui/Components/BotCommandsMenuView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BotCommandsMenuView$1;-><init>(Lorg/telegram/ui/Components/BotCommandsMenuView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    .line 78
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

    .line 94
    sget v2, Lorg/telegram/messenger/R$string;->BotsMenuTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuText:Ljava/lang/String;

    .line 102
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->drawBackgroundDrawable:Z

    .line 106
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView;->updateColors()V

    .line 107
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setMiniIcon(Z)V

    const/4 v0, 0x0

    .line 108
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotateToBack(Z)V

    const/4 v2, 0x0

    .line 109
    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 110
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const-string v2, "fonts/rmedium.ttf"

    .line 111
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 112
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRoundCap()V

    const/16 p1, 0x10

    .line 113
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const-string v1, "featuredStickers_addButtonPressed"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 115
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrBotMenu:I

    const-string v0, "AccDescrBotMenu"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateColors()V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    const-string v1, "chat_messagePanelVoiceBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const-string v0, "chat_messagePanelVoicePressed"

    .line 143
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 144
    iget-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setBackColor(I)V

    .line 145
    iget-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setIconColor(I)V

    .line 146
    iget-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_c

    .line 179
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

    .line 180
    iput v5, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    cmpl-float v0, v5, v6

    if-lez v0, :cond_0

    .line 182
    iput v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    .line 187
    iget v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_3

    sub-float/2addr v0, v1

    .line 188
    iput v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 190
    iput v4, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 197
    :goto_1
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v5, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v5, 0x437f0000    # 255.0f

    if-eqz v0, :cond_4

    cmpl-float v6, v1, v4

    if-lez v6, :cond_4

    .line 199
    iget-object v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    mul-float v7, v1, v5

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 202
    :cond_4
    iget-boolean v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->drawBackgroundDrawable:Z

    const/4 v7, 0x4

    const/16 v8, 0x10

    if-eqz v6, :cond_7

    .line 203
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

    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    const/4 v11, 0x4

    :goto_2
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v10, v10, v1

    add-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v4, v4, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 205
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView;->isTemplatesMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 206
    iget-object v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    const/16 v9, 0xff

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 209
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

    .line 210
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

    .line 211
    iget-object v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    :cond_7
    iget-boolean v6, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isWebView:Z

    if-eqz v6, :cond_8

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x41180000    # 9.5f

    .line 216
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 217
    iget-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 218
    iget v5, v2, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v6, v2, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    invoke-virtual {v2, v3, v3, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 219
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 222
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 227
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView;->isTemplatesMode()Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x20

    .line 228
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 229
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

    .line 230
    iget-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->templatesDrawable:Landroid/graphics/drawable/Drawable;

    add-int v10, v9, v6

    invoke-virtual {v2, v9, v3, v10, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    iget-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->templatesDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    iget-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;->getCurrentRotation()F

    move-result v2

    mul-float v2, v2, v5

    float-to-int v2, v2

    .line 233
    iget-object v3, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 234
    iget-object v3, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 235
    iget-object v3, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setAlpha(I)V

    .line 238
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/16 v2, 0x8

    .line 239
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    iget-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    :goto_3
    cmpl-float v2, v1, v4

    if-lez v2, :cond_b

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/16 v2, 0x22

    .line 246
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

    .line 247
    iget-object v2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    if-eqz v0, :cond_c

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BotCommandsMenuView;->onTranslationChanged(F)V

    .line 255
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 500
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public enableTemplatesMode()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_templates:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->templatesDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public isOpened()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isOpened:Z

    return v0
.end method

.method public isTemplatesMode()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->templatesDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 506
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentParentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 153
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    .line 154
    iget p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->lastSize:I

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    if-nez p2, :cond_2

    .line 155
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    iget-object p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 157
    iput p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->lastSize:I

    .line 159
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView;->isTemplatesMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    .line 160
    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuText:Ljava/lang/String;

    .line 163
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    iget-object p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int v8, p1

    .line 164
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

    .line 166
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

    mul-float p1, p1, v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BotCommandsMenuView;->onTranslationChanged(F)V

    const/16 p1, 0x28

    .line 167
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 168
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expanded:Z

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v0, p2

    add-int/2addr p1, v0

    :cond_3
    const/high16 p2, 0x40000000    # 2.0f

    .line 172
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

    .line 119
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->drawBackgroundDrawable:Z

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    .line 274
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expanded:Z

    if-eq v0, p1, :cond_2

    .line 275
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expanded:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 277
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->expandProgress:F

    .line 279
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setMenuText(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 264
    sget p1, Lorg/telegram/messenger/R$string;->BotsMenuTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 266
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

    .line 267
    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 268
    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return v0
.end method

.method public setOpened(Z)V
    .locals 2

    .line 440
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isOpened:Z

    if-eq v0, p1, :cond_0

    .line 441
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isOpened:Z

    .line 443
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isWebView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 444
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isWebViewOpened:Z

    if-eq v0, p1, :cond_4

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 446
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 447
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    if-eqz p1, :cond_1

    .line 448
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 449
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 450
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isWebViewOpened:Z

    goto :goto_1

    .line 453
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

.method public setWebView(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView;->isWebView:Z

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 495
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
