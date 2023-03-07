.class public Lorg/telegram/ui/ActionBar/ActionBarMenu;
.super Landroid/widget/LinearLayout;
.source "ActionBarMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;
    }
.end annotation


# instance fields
.field public drawBlur:Z

.field private ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected isActionMode:Z

.field protected parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;


# direct methods
.method public static synthetic $r8$lambda$b19fS-CuNaumt7SWUj9uQj1g9aM(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->lambda$addItemAt$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->drawBlur:Z

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/ActionBarMenu;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->ids:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$addItemAt$0(Landroid/view/View;)V
    .locals 2

    .line 132
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 133
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->canOpenMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 2

    .line 68
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addItem(IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 10

    const/16 v0, 0x30

    .line 84
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v9, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addItem(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 100
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addItem(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 11

    move-object v10, p0

    .line 104
    iget-object v0, v10, Lorg/telegram/ui/ActionBar/ActionBarMenu;->ids:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lorg/telegram/ui/ActionBar/ActionBarMenu;->ids:Ljava/util/ArrayList;

    .line 107
    :cond_0
    iget-object v0, v10, Lorg/telegram/ui/ActionBar/ActionBarMenu;->ids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 108
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemAt(IIILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addItem(IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 9

    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    :goto_0
    move v5, v0

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 9

    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    :goto_0
    move v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    return-object p1
.end method

.method protected addItemAt(IIILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 15

    move-object v7, p0

    move/from16 v8, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    .line 112
    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v0, v7, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    :goto_0
    move v4, v0

    if-eqz v10, :cond_1

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_1
    move-object v0, v14

    move-object v2, p0

    move/from16 v3, p5

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 113
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eqz v10, :cond_3

    .line 115
    iget-object v1, v14, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, -0x2

    const/4 v12, -0x2

    :goto_2
    invoke-direct {v1, v12, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    .line 117
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 118
    invoke-virtual {p0, v14, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_3
    if-eqz v11, :cond_5

    .line 121
    instance-of v1, v11, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, v14, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    move-object v2, v11

    check-cast v2, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    goto :goto_3

    .line 124
    :cond_4
    iget-object v1, v14, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_6

    .line 127
    iget-object v1, v14, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 129
    :cond_6
    :goto_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v14, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :goto_4
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenu$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v13, :cond_7

    .line 144
    invoke-virtual {v14, v13}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    return-object v14
.end method

.method public addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 9

    .line 88
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    :goto_0
    move v5, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 9

    .line 96
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    :goto_0
    move v5, v0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addItemWithWidth(ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 9

    .line 92
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    :goto_0
    move v5, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public clearItems()V
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->ids:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 376
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public closeSearchField(Z)V
    .locals 5

    .line 400
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 402
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 403
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_1

    .line 404
    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 405
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchFieldVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    iget-object v0, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->canCollapseSearch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    .line 408
    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 508
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 509
    instance-of v0, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 510
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemsMeasuredWidth()I
    .locals 5

    .line 527
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 529
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 530
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    .line 531
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getVisibleItemsMeasuredWidth()I
    .locals 6

    .line 539
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 540
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 541
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 542
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public hideAllPopupMenus()V
    .locals 4

    .line 325
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 327
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 328
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 329
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public lazilyAddItem(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;
    .locals 12

    move-object v10, p0

    .line 154
    iget-object v0, v10, Lorg/telegram/ui/ActionBar/ActionBarMenu;->ids:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lorg/telegram/ui/ActionBar/ActionBarMenu;->ids:Ljava/util/ArrayList;

    .line 157
    :cond_0
    iget-object v0, v10, Lorg/telegram/ui/ActionBar/ActionBarMenu;->ids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v11, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v11
.end method

.method public lazilyAddItem(IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;
    .locals 10

    .line 150
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    :goto_0
    move v5, v0

    const/4 v6, 0x0

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->lazilyAddItem(IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(I)V
    .locals 1

    .line 363
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSkipDrawMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    :cond_1
    return-void
.end method

.method public onMenuButtonPressed()V
    .locals 4

    .line 380
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 382
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 383
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_2

    .line 384
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 385
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 388
    :cond_0
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 389
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    goto :goto_2

    .line 391
    :cond_1
    iget-boolean v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->overrideMenuClick:Z

    if-eqz v3, :cond_2

    .line 392
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public onSearchPressed()V
    .locals 4

    .line 463
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 465
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 466
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 467
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 468
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onSearchPressed()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public openSearchField(ZZLjava/lang/String;Z)V
    .locals 4

    .line 476
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 478
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 479
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_1

    .line 480
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 481
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    .line 483
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    .line 485
    :cond_0
    invoke-virtual {v2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldText(Ljava/lang/CharSequence;Z)V

    .line 486
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected redrawPopup(I)V
    .locals 4

    .line 353
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 354
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 355
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 356
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public searchFieldVisible()Z
    .locals 5

    .line 549
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 551
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 552
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchContainer()Landroid/widget/FrameLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchContainer()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 517
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 518
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 520
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 521
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 4

    .line 494
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 496
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 497
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 498
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 499
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected setPopupItemsColor(IZ)V
    .locals 4

    .line 335
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 336
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 337
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 338
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setPopupItemsSelectorColor(I)V
    .locals 4

    .line 344
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 345
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 346
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 347
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsSelectorColor(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSearchCursorColor(I)V
    .locals 4

    .line 417
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 419
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 420
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 421
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 422
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setSearchFieldText(Ljava/lang/String;)V
    .locals 5

    .line 449
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 451
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 452
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v4, :cond_0

    .line 453
    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 454
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldText(Ljava/lang/CharSequence;Z)V

    .line 456
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSearchTextColor(IZ)V
    .locals 4

    .line 431
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 433
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 434
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_1

    .line 435
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 436
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    .line 438
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_1

    .line 440
    :cond_0
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public translateXItems(F)V
    .locals 4

    .line 560
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 562
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 563
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_0

    .line 564
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTransitionOffset(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateItemsBackgroundColor()V
    .locals 4

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 46
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 47
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_1

    .line 48
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    :goto_1
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected updateItemsColor()V
    .locals 4

    .line 54
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 56
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 57
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_1

    .line 58
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    :goto_1
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
