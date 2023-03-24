.class Lorg/telegram/ui/Cells/ChatListCell$ListView;
.super Landroid/widget/FrameLayout;
.source "ChatListCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChatListCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListView"
.end annotation


# instance fields
.field private button:Lorg/telegram/ui/Components/RadioButton;

.field private isCompactMode:Z

.field private isThreeLines:Z

.field private rect:Landroid/graphics/RectF;

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/ChatListCell;Landroid/content/Context;ZZ)V
    .locals 9

    .line 47
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 50
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->isThreeLines:Z

    if-eqz p4, :cond_0

    .line 53
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->isCompactMode:Z

    .line 54
    sget p3, Lorg/telegram/messenger/R$string;->chat_settings_chat_list_compact_mode:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 56
    sget p3, Lorg/telegram/messenger/R$string;->ChatListExpanded:I

    const-string p4, "ChatListExpanded"

    goto :goto_0

    :cond_1
    sget p3, Lorg/telegram/messenger/R$string;->ChatListDefault:I

    const-string p4, "ChatListDefault"

    :goto_0
    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->textPaint:Landroid/text/TextPaint;

    const/16 p4, 0xd

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 60
    new-instance p3, Lorg/telegram/ui/Cells/ChatListCell$ListView$1;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Cells/ChatListCell$ListView$1;-><init>(Lorg/telegram/ui/Cells/ChatListCell$ListView;Landroid/content/Context;Lorg/telegram/ui/Cells/ChatListCell;)V

    iput-object p3, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->button:Lorg/telegram/ui/Components/RadioButton;

    const/16 p1, 0x14

    .line 67
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    .line 73
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->button:Lorg/telegram/ui/Components/RadioButton;

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0x51

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x31

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->isCompactMode:Z

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    if-nez p1, :cond_3

    .line 75
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->isCompactMode:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->isThreeLines:Z

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_3

    :cond_3
    move p1, v0

    .line 76
    :goto_3
    sget-boolean p3, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-nez p3, :cond_4

    sget-boolean p3, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->isThreeLines:Z

    if-eqz p3, :cond_4

    move p3, v1

    goto :goto_4

    :cond_4
    move p3, v0

    .line 77
    :goto_4
    iget-object p4, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->button:Lorg/telegram/ui/Components/RadioButton;

    if-nez p2, :cond_6

    if-nez p1, :cond_6

    if-eqz p3, :cond_5

    goto :goto_5

    :cond_5
    move v1, v0

    :cond_6
    :goto_5
    invoke-virtual {p4, v1, v0}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/ChatListCell$ListView;)Lorg/telegram/ui/Components/RadioButton;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->button:Lorg/telegram/ui/Components/RadioButton;

    return-object p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "switchTrack"

    .line 83
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 84
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 85
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 86
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 88
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->button:Lorg/telegram/ui/Components/RadioButton;

    const-string v6, "radioBackground"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    const-string v7, "radioBackgroundChecked"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    .line 90
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v9, v6

    int-to-float v6, v9

    const/16 v9, 0x49

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 91
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    const/16 v7, 0x20

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 92
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_instantViewRectPaint:Landroid/graphics/Paint;

    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->button:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RadioButton;->getProgress()F

    move-result v6

    const/high16 v7, 0x422c0000    # 43.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_instantViewRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 95
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    const/16 v8, 0x4a

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 96
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    const/16 v8, 0x1e

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v5, Landroid/graphics/RectF;->bottom:F

    .line 97
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->button:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RadioButton;->getProgress()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v7

    const/high16 v7, 0x41f80000    # 31.0f

    mul-float/2addr v8, v7

    float-to-int v7, v8

    invoke-static {v7, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 100
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->isThreeLines:Z

    if-eqz v5, :cond_0

    sget v5, Lorg/telegram/messenger/R$string;->ChatListExpanded:I

    const-string v6, "ChatListExpanded"

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/messenger/R$string;->ChatListDefault:I

    const-string v6, "ChatListDefault"

    :goto_0
    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 102
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->isCompactMode:Z

    if-eqz v6, :cond_1

    .line 103
    sget v5, Lorg/telegram/messenger/R$string;->chat_settings_chat_list_compact_mode:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    .line 106
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 108
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->textPaint:Landroid/text/TextPaint;

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v6

    int-to-float v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/16 v7, 0x80

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 113
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->isCompactMode:Z

    const/4 v7, 0x3

    const/16 v9, 0x16

    const/16 v10, 0xcc

    const/4 v11, 0x2

    if-eqz v5, :cond_5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_10

    const/high16 v5, 0x418c0000    # 17.5f

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    mul-int/lit8 v12, v8, 0x13

    int-to-float v12, v12

    add-float/2addr v5, v12

    .line 115
    :goto_2
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 116
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    if-eqz v8, :cond_4

    if-ne v8, v11, :cond_3

    goto :goto_3

    :cond_3
    const/16 v13, 0x5a

    goto :goto_4

    :cond_4
    :goto_3
    move v13, v10

    :goto_4
    invoke-static {v13, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    const/high16 v14, 0x40f00000    # 7.5f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 118
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v10, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v12, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    const/high16 v13, 0x42160000    # 37.5f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int v14, v5, v14

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    const/high16 v16, 0x41680000    # 14.5f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v5, v5, v16

    int-to-float v5, v5

    invoke-virtual {v12, v13, v14, v15, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget-object v5, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v12, v13, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v11, :cond_10

    if-nez v5, :cond_6

    const/16 v12, 0x15

    goto :goto_6

    :cond_6
    const/16 v12, 0x35

    .line 124
    :goto_6
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    .line 125
    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    if-nez v5, :cond_7

    move v14, v10

    goto :goto_7

    :cond_7
    const/16 v14, 0x5a

    :goto_7
    invoke-static {v14, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    const/16 v15, 0xb

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    .line 128
    :goto_8
    iget-boolean v7, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->isThreeLines:Z

    if-eqz v7, :cond_8

    const/4 v7, 0x3

    goto :goto_9

    :cond_8
    move v7, v11

    :goto_9
    if-ge v6, v7, :cond_f

    .line 129
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    if-nez v6, :cond_9

    move v13, v10

    goto :goto_a

    :cond_9
    const/16 v13, 0x5a

    :goto_a
    invoke-static {v13, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-boolean v7, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->isThreeLines:Z

    const/16 v13, 0x48

    const/16 v14, 0x30

    const/16 v17, 0x29

    if-eqz v7, :cond_c

    .line 131
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    const v17, 0x4104cccd    # 8.3f

    mul-int/lit8 v9, v6, 0x7

    int-to-float v9, v9

    sub-float v17, v17, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    sub-int v10, v12, v17

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v17

    if-nez v6, :cond_a

    goto :goto_b

    :cond_a
    move v13, v14

    :goto_b
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int v13, v17, v13

    int-to-float v13, v13

    const v14, 0x40a9999a    # 5.3f

    sub-float/2addr v14, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v12, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v10, v13, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 132
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    if-nez v6, :cond_b

    const/16 v9, 0x16

    goto :goto_c

    :cond_b
    move v9, v15

    :goto_c
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 133
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9, v8, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_f

    .line 135
    :cond_c
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-int/lit8 v9, v6, 0xa

    rsub-int/lit8 v10, v9, 0x7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int v10, v12, v10

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v17

    if-nez v6, :cond_d

    goto :goto_d

    :cond_d
    move v13, v14

    :goto_d
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int v13, v17, v13

    int-to-float v13, v13

    rsub-int/lit8 v9, v9, 0x3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int v9, v12, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v10, v13, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    if-nez v6, :cond_e

    const/16 v9, 0x16

    goto :goto_e

    :cond_e
    move v9, v15

    :goto_e
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 137
    iget-object v7, v0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->rect:Landroid/graphics/RectF;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_f
    add-int/lit8 v6, v6, 0x1

    const/16 v9, 0x16

    const/16 v10, 0xcc

    goto/16 :goto_8

    :cond_f
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x3

    const/16 v9, 0x16

    const/16 v10, 0xcc

    goto/16 :goto_5

    :cond_10
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 146
    const-class v0, Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->button:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 149
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatListCell$ListView;->isThreeLines:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->ChatListExpanded:I

    const-string v1, "ChatListExpanded"

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->ChatListDefault:I

    const-string v1, "ChatListDefault"

    :goto_0
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
