.class public Lorg/telegram/ui/ChooseSpeedLayout;
.super Ljava/lang/Object;
.source "ChooseSpeedLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChooseSpeedLayout$Callback;
    }
.end annotation


# instance fields
.field speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;


# direct methods
.method public static synthetic $r8$lambda$0SQETXp6sxAzxwMEjIyy-lmRUK4(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$2(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7tcH8Q8Vfl3VprckSSf1IA9KY44(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$5(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9y070vsvMEi84dCnYl08cceJ0KE(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$1(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bEa9t3XknQqonKfg_3shhtp4rzY(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$3(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ty6kkG_gSmXMwcL00W9Bloi1e1s(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$4(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xlcWT2FoE9JHQJdLZ1-vnVuJG08(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$0(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V
    .locals 7

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 16
    iput-object v0, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 18
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 p1, 0x1

    .line 19
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 21
    iget-object v0, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    sget v4, Lorg/telegram/messenger/R$string;->Back:I

    const-string v5, "Back"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 22
    new-instance v3, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, -0x50506

    .line 25
    invoke-virtual {v0, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const v3, 0xfffffff

    .line 26
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 28
    iget-object v0, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_speed_0_2:I

    sget v5, Lorg/telegram/messenger/R$string;->SpeedVerySlow:I

    const-string v6, "SpeedVerySlow"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 30
    new-instance v4, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda2;

    invoke-direct {v4, p3}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 34
    iget-object v4, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aput-object v0, v4, v1

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_speed_slow:I

    sget v5, Lorg/telegram/messenger/R$string;->SpeedSlow:I

    const-string v6, "SpeedSlow"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 38
    new-instance v4, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda0;

    invoke-direct {v4, p3}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 42
    iget-object v4, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aput-object v0, v4, p1

    .line 44
    iget-object p1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_speed_normal:I

    sget v4, Lorg/telegram/messenger/R$string;->SpeedNormal:I

    const-string v5, "SpeedNormal"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 46
    new-instance v0, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x2

    aput-object p1, v0, v4

    .line 52
    iget-object p1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_speed_fast:I

    sget v4, Lorg/telegram/messenger/R$string;->SpeedFast:I

    const-string v5, "SpeedFast"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 54
    new-instance v0, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x3

    aput-object p1, v0, v4

    .line 60
    iget-object p1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_speed_superfast:I

    sget v4, Lorg/telegram/messenger/R$string;->SpeedVeryFast:I

    const-string v5, "SpeedVeryFast"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    .line 61
    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 62
    new-instance p2, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 66
    iget-object p2, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 p3, 0x4

    aput-object p1, p2, p3

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method private static synthetic lambda$new$1(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    const/high16 p1, 0x3e800000    # 0.25f

    .line 31
    invoke-interface {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout$Callback;->onSpeedSelected(F)V

    return-void
.end method

.method private static synthetic lambda$new$2(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    .line 39
    invoke-interface {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout$Callback;->onSpeedSelected(F)V

    return-void
.end method

.method private static synthetic lambda$new$3(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 47
    invoke-interface {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout$Callback;->onSpeedSelected(F)V

    return-void
.end method

.method private static synthetic lambda$new$4(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 55
    invoke-interface {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout$Callback;->onSpeedSelected(F)V

    return-void
.end method

.method private static synthetic lambda$new$5(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    const/high16 p1, 0x40000000    # 2.0f

    .line 63
    invoke-interface {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout$Callback;->onSpeedSelected(F)V

    return-void
.end method


# virtual methods
.method public update(F)V
    .locals 3

    const/4 v0, 0x0

    .line 70
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    const v1, 0x3a83126f    # 0.001f

    if-nez v0, :cond_0

    const/high16 v2, 0x3e800000    # 0.25f

    sub-float v2, p1, v2

    .line 71
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_4

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v2, p1, v2

    .line 72
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_4

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p1, v2

    .line 73
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_4

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const/high16 v2, 0x3fc00000    # 1.5f

    sub-float v2, p1, v2

    .line 74
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_4

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    const/high16 v2, 0x40000000    # 2.0f

    sub-float v2, p1, v2

    .line 75
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v2, v1

    if-gez v1, :cond_5

    .line 76
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v1, v1, v0

    const v2, -0x944907

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_1

    .line 78
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v1, v1, v0

    const v2, -0x50506

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
