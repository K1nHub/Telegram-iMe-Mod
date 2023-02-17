.class public Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
.super Landroid/widget/FrameLayout;
.source "FeaturedStickerSetInfoCell.java"


# instance fields
.field private addButton:Lorg/telegram/ui/Components/ProgressButton;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private canAddRemove:Z

.field private currentAccount:I

.field private delButton:Landroid/widget/TextView;

.field private hasOnClick:Z

.field private infoTextView:Landroid/widget/TextView;

.field private isInstalled:Z

.field private isUnread:Z

.field private nameTextView:Landroid/widget/TextView;

.field private needDivider:Z

.field private paint:Landroid/graphics/Paint;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

.field private stickerSetNameSearchIndex:I

.field private stickerSetNameSearchLength:I

.field unreadProgress:F

.field private url:Ljava/lang/CharSequence;

.field private urlSearchLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->currentAccount:I

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->paint:Landroid/graphics/Paint;

    .line 75
    iput-boolean p4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->canAddRemove:Z

    .line 76
    iput-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 80
    new-instance p5, Landroid/widget/TextView;

    invoke-direct {p5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    const-string v0, "chat_emojiPanelTrendingTitle"

    .line 81
    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {p5, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 83
    iget-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    iget-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 85
    iget-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    if-eqz p3, :cond_0

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, -0x40000000    # -2.0f

    const v4, 0x800033

    int-to-float v5, p2

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x42200000    # 40.0f

    const/4 v8, 0x0

    .line 87
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p5

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x33

    const/16 v6, 0x8

    const/16 v7, 0x28

    const/4 v8, 0x0

    move v5, p2

    .line 89
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p5

    .line 91
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance p5, Landroid/widget/TextView;

    invoke-direct {p5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    const-string v2, "chat_emojiPanelTrendingDescription"

    .line 94
    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {p5, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    iget-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 97
    iget-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    if-eqz p3, :cond_1

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, -0x40000000    # -2.0f

    const v4, 0x800033

    int-to-float v5, p2

    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    .line 99
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x33

    const/16 v6, 0x1e

    const/16 v7, 0x64

    const/4 v8, 0x0

    move v5, p2

    .line 101
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 103
    :goto_1
    iget-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p5, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_4

    .line 106
    new-instance p2, Lorg/telegram/ui/Components/ProgressButton;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/ProgressButton;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    const-string p4, "featuredStickers_buttonText"

    .line 107
    invoke-direct {p0, p4}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getThemedColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/Button;->setTextColor(I)V

    .line 108
    iget-object p2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    sget p4, Lorg/telegram/messenger/R$string;->Add:I

    const-string p5, "Add"

    invoke-static {p5, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_2

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, 0x41e00000    # 28.0f

    const v4, 0x800035

    const/4 v5, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v8, 0x0

    .line 110
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    goto :goto_2

    :cond_2
    const/4 v2, -0x2

    const/16 v3, 0x1c

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/16 v7, 0xe

    const/4 v8, 0x0

    .line 112
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 114
    :goto_2
    iget-object p4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {p0, p4, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    const/16 p1, 0x11

    .line 117
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    const-string p2, "featuredStickers_removeButtonText"

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->StickersRemove:I

    const-string p4, "StickersRemove"

    invoke-static {p4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_3

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, 0x41e00000    # 28.0f

    const v2, 0x800035

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    .line 123
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    goto :goto_3

    :cond_3
    const/4 v0, -0x2

    const/16 v1, 0x1c

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0xe

    const/4 v6, 0x0

    .line 125
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 127
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 131
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->updateColors()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Lorg/telegram/ui/Components/ProgressButton;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public static createThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;",
            "Lorg/telegram/ui/Components/RecyclerListView;",
            "Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 337
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v11, 0x1

    new-array v4, v11, [Ljava/lang/Class;

    const-class v1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    const/4 v12, 0x0

    aput-object v1, v4, v12

    const-string v1, "nameTextView"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "chat_emojiPanelTrendingTitle"

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    aput-object v3, v2, v12

    const-string v3, "infoTextView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "chat_emojiPanelTrendingDescription"

    move-object v13, v1

    move-object/from16 v14, p1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    aput-object v3, v2, v12

    const-string v3, "addButton"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "featuredStickers_buttonText"

    move-object/from16 v22, v1

    move-object/from16 v23, p1

    move-object/from16 v25, v2

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    aput-object v3, v2, v12

    const-string v3, "delButton"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "featuredStickers_removeButtonText"

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-array v6, v11, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    aput-object v2, v6, v12

    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v10, "featuredStickers_unread"

    move-object v3, v1

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    aput-object v3, v2, v12

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    const-string v20, "divider"

    move-object v13, v1

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v10, "featuredStickers_buttonProgress"

    move-object v3, v1

    move-object/from16 v9, p2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v18, "featuredStickers_addButton"

    move-object v11, v1

    move-object/from16 v17, p2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v9, "featuredStickers_addButtonPressed"

    move-object v2, v1

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v17, "windowBackgroundWhiteBlueText4"

    move-object v10, v1

    move-object/from16 v16, p2

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "chat_emojiPanelTrendingDescription"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private updateStickerSetNameSearchSpan()V
    .locals 5

    .line 257
    iget v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->stickerSetNameSearchLength:I

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 260
    :try_start_0
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "windowBackgroundWhiteBlueText4"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->stickerSetNameSearchIndex:I

    iget v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->stickerSetNameSearchLength:I

    add-int/2addr v3, v2

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :catch_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateUrlSearchSpan()V
    .locals 5

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->url:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->url:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 277
    :try_start_0
    new-instance v1, Lorg/telegram/ui/Components/ColorSpanUnderline;

    const-string v2, "windowBackgroundWhiteBlueText4"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColorSpanUnderline;-><init>(I)V

    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->urlSearchLength:I

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 278
    new-instance v1, Lorg/telegram/ui/Components/ColorSpanUnderline;

    const-string v2, "chat_emojiPanelTrendingDescription"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColorSpanUnderline;-><init>(I)V

    iget v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->urlSearchLength:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->url:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :catch_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    return-object v0
.end method

.method public isInstalled()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 303
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isUnread:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->unreadProgress:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_5

    :cond_0
    const v2, 0x3e23d70a    # 0.16f

    if-eqz v0, :cond_2

    .line 304
    iget v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->unreadProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_2

    add-float/2addr v3, v2

    .line 305
    iput v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->unreadProgress:F

    cmpl-float v0, v3, v4

    if-lez v0, :cond_1

    .line 307
    iput v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->unreadProgress:F

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    .line 311
    iget v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->unreadProgress:F

    cmpl-float v3, v0, v1

    if-eqz v3, :cond_4

    sub-float/2addr v0, v2

    .line 312
    iput v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->unreadProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 314
    iput v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->unreadProgress:F

    goto :goto_0

    .line 316
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 319
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->paint:Landroid/graphics/Paint;

    const-string v1, "featuredStickers_unread"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->unreadProgress:F

    mul-float v2, v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 322
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->needDivider:Z

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 323
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 136
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v2, 0x3c

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 138
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->canAddRemove:Z

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v4

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 141
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0xe

    if-ge v0, v4, :cond_0

    .line 143
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v0, v4, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 148
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_1
    return-void
.end method

.method public setAddDrawProgress(ZZ)V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->canAddRemove:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ProgressButton;->setDrawProgress(ZZ)V

    :cond_0
    return-void
.end method

.method public setAddOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->canAddRemove:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->hasOnClick:Z

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setNeedDivider(Z)V
    .locals 0

    .line 298
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->needDivider:Z

    return-void
.end method

.method public setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 167
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZIIZ)V

    return-void
.end method

.method public setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 175
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZIIZ)V

    return-void
.end method

.method public setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZIIZ)V
    .locals 6

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->animatorSet:Landroid/animation/AnimatorSet;

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eq v0, p1, :cond_2

    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 184
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->unreadProgress:F

    .line 185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 188
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 189
    iput p4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->stickerSetNameSearchIndex:I

    .line 190
    iput p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->stickerSetNameSearchLength:I

    if-eqz p5, :cond_3

    .line 192
    invoke-direct {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->updateStickerSetNameSearchSpan()V

    goto :goto_1

    .line 194
    :cond_3
    iget-object p4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    iget-object p5, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_1
    iget-object p4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    iget-object p5, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget p5, p5, Lorg/telegram/tgnet/TLRPC$StickerSet;->count:I

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Stickers"

    invoke-static {v4, p5, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isUnread:Z

    .line 198
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->canAddRemove:Z

    if-eqz p2, :cond_10

    .line 199
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->hasOnClick:Z

    if-eqz p2, :cond_f

    .line 200
    iget-object p2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    const/4 p2, 0x1

    if-nez p6, :cond_5

    .line 201
    iget p4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p4

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide p5, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-virtual {p4, p5, p6}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled:Z

    const/4 p4, 0x4

    if-eqz p3, :cond_d

    if-eqz p1, :cond_6

    .line 204
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 206
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    :goto_4
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 p5, 0xfa

    .line 209
    invoke-virtual {p1, p5, p6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 210
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 p3, 0x6

    new-array p3, p3, [Landroid/animation/Animator;

    iget-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    sget-object p6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, p2, [F

    .line 211
    iget-boolean v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled:Z

    if-eqz v4, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    aput v4, v3, v0

    invoke-static {p5, p6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    aput-object p5, p3, v0

    iget-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    sget-object p6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, p2, [F

    .line 212
    iget-boolean v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled:Z

    if-eqz v4, :cond_8

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    aput v4, v3, v0

    invoke-static {p5, p6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    aput-object p5, p3, p2

    const/4 p5, 0x2

    iget-object p6, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, p2, [F

    .line 213
    iget-boolean v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled:Z

    if-eqz v5, :cond_9

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    :goto_7
    aput v5, v4, v0

    invoke-static {p6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p6

    aput-object p6, p3, p5

    const/4 p5, 0x3

    iget-object p6, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, p2, [F

    .line 214
    iget-boolean v5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    goto :goto_8

    :cond_a
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_8
    aput v5, v4, v0

    invoke-static {p6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p6

    aput-object p6, p3, p5

    iget-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    sget-object p6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, p2, [F

    .line 215
    iget-boolean v4, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    goto :goto_9

    :cond_b
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_9
    aput v4, v3, v0

    invoke-static {p5, p6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    aput-object p5, p3, p4

    const/4 p4, 0x5

    iget-object p5, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    sget-object p6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array p2, p2, [F

    .line 216
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled:Z

    if-eqz v3, :cond_c

    const/4 v1, 0x0

    :cond_c
    aput v1, p2, v0

    invoke-static {p5, p6, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, p3, p4

    .line 210
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$1;-><init>(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const p3, 0x3f828f5c    # 1.02f

    invoke-direct {p2, p3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 228
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_a

    :cond_d
    if-eqz p1, :cond_e

    .line 231
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 234
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 235
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 237
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setScaleX(F)V

    .line 238
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setScaleY(F)V

    goto :goto_a

    .line 240
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setScaleX(F)V

    .line 243
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setScaleY(F)V

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 247
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delButton:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_a

    .line 251
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_10
    :goto_a
    return-void
.end method

.method public setUrl(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 268
    iput-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->url:Ljava/lang/CharSequence;

    .line 269
    iput p2, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->urlSearchLength:I

    .line 270
    invoke-direct {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->updateUrlSearchSpan()V

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 328
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->canAddRemove:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    const-string v1, "featuredStickers_buttonProgress"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ProgressButton;->setProgressColor(I)V

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    const-string v1, "featuredStickers_addButton"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "featuredStickers_addButtonPressed"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ProgressButton;->setBackgroundRoundRect(II)V

    .line 332
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->updateStickerSetNameSearchSpan()V

    .line 333
    invoke-direct {p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->updateUrlSearchSpan()V

    return-void
.end method
