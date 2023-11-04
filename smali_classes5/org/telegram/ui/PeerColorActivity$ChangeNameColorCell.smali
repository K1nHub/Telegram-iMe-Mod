.class public Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;
.super Landroid/view/View;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeNameColorCell"
.end annotation


# instance fields
.field private final buttonText:Lorg/telegram/ui/Components/Text;

.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final isChannel:Z

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private userText:Lorg/telegram/ui/Components/Text;

.field private final userTextBackgroundPaint:Landroid/graphics/Paint;

.field private userTextColorKey:I


# direct methods
.method public constructor <init>(ZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 1009
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1003
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 1005
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    .line 1010
    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->isChannel:Z

    .line 1011
    iput-object p3, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1013
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_palette:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    .line 1014
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1015
    new-instance p2, Lorg/telegram/ui/Components/Text;

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->ChangeChannelNameColor:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->ChangeUserNameColor:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x10

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;I)V

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->buttonText:Lorg/telegram/ui/Components/Text;

    .line 1016
    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->updateColors()V

    return-void
.end method

.method private rtl(I)I
    .locals 1

    .line 1092
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int p1, v0, p1

    :cond_0
    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1100
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x40

    .line 1101
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->rtl(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 1102
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 1103
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v4}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->rtl(I)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 1104
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1100
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1107
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->buttonText:Lorg/telegram/ui/Components/Text;

    .line 1108
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/16 v3, 0xab

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(I)Lorg/telegram/ui/Components/Text;

    move-result-object v0

    .line 1109
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x47

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, p1, v2, v3}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FF)V

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_4

    .line 1112
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/16 v2, 0x74

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/16 v5, 0xa4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1113
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    int-to-float v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    .line 1115
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 1116
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v6, 0xf

    const/16 v7, 0x21

    if-eqz v5, :cond_1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v5, v8

    sub-int/2addr v5, v2

    :goto_1
    int-to-float v5, v5

    .line 1117
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    const/16 v9, 0x16

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v8, v10

    int-to-float v8, v8

    div-float/2addr v8, v4

    .line 1118
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v7, v6

    int-to-float v6, v7

    .line 1119
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v7, v4

    .line 1115
    invoke-virtual {v3, v5, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v5, 0xc

    .line 1121
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1123
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    .line 1124
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/Text;->ellipsize(I)Lorg/telegram/ui/Components/Text;

    move-result-object v0

    .line 1125
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v5, 0x18

    if-eqz v3, :cond_3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    int-to-float v2, v3

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v0, p1, v2, v3}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FF)V

    .line 1128
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->needDivider:Z

    if-eqz v0, :cond_9

    .line 1129
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_5

    const-string v2, "paintDivider"

    invoke-interface {v0, v2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_6

    .line 1131
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    :cond_6
    move-object v7, v0

    .line 1133
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    :goto_5
    move v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x32

    .line 1088
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->needDivider:Z

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1034
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->needDivider:Z

    .line 1035
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1036
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p2

    .line 1037
    new-instance v0, Lorg/telegram/ui/Components/Text;

    const/16 v2, 0xd

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v0, p2, v2, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    .line 1039
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->color:I

    goto :goto_0

    :cond_1
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-wide/16 v2, 0x7

    rem-long/2addr p1, v2

    long-to-int p1, p1

    :goto_0
    const/4 p2, 0x7

    if-ge p1, p2, :cond_2

    .line 1041
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p1, p2, p1

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    goto :goto_2

    .line 1043
    :cond_2
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez p2, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 1044
    :cond_3
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    const/4 p2, -0x1

    .line 1046
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    .line 1047
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result p1

    goto :goto_2

    .line 1049
    :cond_4
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p1, p1, v1

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    .line 1052
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Text;->setColor(I)V

    .line 1053
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1060
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, " "

    .line 1061
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 1063
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1066
    :cond_2
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1067
    new-instance v1, Lorg/telegram/ui/Components/Text;

    const/16 v3, 0xd

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/Typeface;)V

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    .line 1069
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$User;->color:I

    goto :goto_1

    :cond_3
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/16 v3, 0x7

    rem-long/2addr v0, v3

    long-to-int p1, v0

    :goto_1
    const/4 v0, 0x7

    if-ge p1, v0, :cond_4

    .line 1071
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p1, v0, p1

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    goto :goto_3

    .line 1073
    :cond_4
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez v0, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    .line 1074
    :cond_5
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_6

    const/4 v0, -0x1

    .line 1076
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    .line 1077
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result p1

    goto :goto_3

    .line 1079
    :cond_6
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p1, p1, v2

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    .line 1082
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Text;->setColor(I)V

    .line 1083
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 1020
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->isChannel:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->buttonText:Lorg/telegram/ui/Components/Text;

    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->isChannel:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Text;->setColor(I)V

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1024
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 1025
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Text;->setColor(I)V

    .line 1026
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    return-void
.end method
