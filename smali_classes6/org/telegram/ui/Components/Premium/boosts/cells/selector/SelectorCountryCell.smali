.class public Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;
.super Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;
.source "SelectorCountryCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell$SpaceDrawable;
    }
.end annotation


# instance fields
.field private final checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private country:Lorg/telegram/tgnet/TLRPC$TL_help_country;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    new-instance v0, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v1, 0x15

    invoke-direct {v0, p1, v1, p2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 36
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRoundCheckBox:I

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRoundCheckBoxCheck:I

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    const/16 p1, 0xa

    .line 38
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 40
    invoke-virtual {v0, p1, p1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 41
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    or-int/lit8 v3, p1, 0x10

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/16 v1, 0x18

    const/16 v2, 0x18

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getCountryNameWithFlag(Lorg/telegram/tgnet/TLRPC$TL_help_country;)Ljava/lang/CharSequence;
    .locals 6

    .line 68
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 69
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, " "

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell$SpaceDrawable;

    const/16 v5, 0x10

    invoke-direct {v3, v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell$SpaceDrawable;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 75
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell$SpaceDrawable;

    const/16 v3, 0x22

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell$SpaceDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 77
    :goto_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method


# virtual methods
.method protected dividerPadding()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public getCountry()Lorg/telegram/tgnet/TLRPC$TL_help_country;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;->country:Lorg/telegram/tgnet/TLRPC$TL_help_country;

    return-object v0
.end method

.method protected getFullHeight()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method protected needCheck()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :cond_0
    return-void
.end method

.method public setCountry(Lorg/telegram/tgnet/TLRPC$TL_help_country;Z)V
    .locals 4

    .line 61
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;->country:Lorg/telegram/tgnet/TLRPC$TL_help_country;

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;->getCountryNameWithFlag(Lorg/telegram/tgnet/TLRPC$TL_help_country;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 63
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setDivider(Z)V

    return-void
.end method

.method protected updateLayouts()V
    .locals 13

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    or-int/lit8 v7, v4, 0x10

    const/16 v4, 0x34

    const/16 v12, 0x14

    if-eqz v1, :cond_1

    move v8, v12

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    const/4 v9, 0x0

    if-eqz v1, :cond_2

    move v10, v4

    goto :goto_2

    :cond_2
    move v10, v12

    :goto_2
    const/4 v11, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    or-int/lit8 v7, v7, 0x10

    if-eqz v1, :cond_4

    move v8, v12

    goto :goto_4

    :cond_4
    move v8, v4

    :goto_4
    const/4 v9, 0x0

    if-eqz v1, :cond_5

    move v10, v4

    goto :goto_5

    :cond_5
    move v10, v12

    :goto_5
    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v4, 0x16

    const/16 v5, 0x16

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    or-int/lit8 v6, v2, 0x10

    const/16 v2, 0xf

    if-eqz v1, :cond_7

    move v7, v2

    goto :goto_7

    :cond_7
    move v7, v12

    :goto_7
    const/4 v8, 0x0

    if-eqz v1, :cond_8

    move v9, v12

    goto :goto_8

    :cond_8
    move v9, v2

    :goto_8
    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
