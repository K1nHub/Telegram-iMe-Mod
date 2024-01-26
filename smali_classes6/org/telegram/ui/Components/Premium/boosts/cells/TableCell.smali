.class public Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;
.super Landroid/widget/FrameLayout;
.source "TableCell.java"


# instance fields
.field private final dateNameTextView:Landroid/widget/TextView;

.field private final dateTextView:Landroid/widget/TextView;

.field private fromFrameLayout:Landroid/widget/FrameLayout;

.field private final fromImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final fromNameTextView:Landroid/widget/TextView;

.field private final fromTextView:Landroid/widget/TextView;

.field private final giftNameTextView:Landroid/widget/TextView;

.field private final giftTextView:Landroid/widget/TextView;

.field private final linePaint:Landroid/graphics/Paint;

.field private final reasonNameTextView:Landroid/widget/TextView;

.field private final reasonTextView:Landroid/widget/TextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final roundPath:Landroid/graphics/Path;

.field private final roundRect:Landroid/graphics/RectF;

.field private tableRow4:Landroid/widget/TableRow;

.field private toFrameLayout:Landroid/widget/FrameLayout;

.field private final toImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final toNameTextView:Landroid/widget/TextView;

.field private final toTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$29Q0EvKXjzkh33KfwvvWnsHamcE(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$3(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ct-apTu8gCLFiY-8L7dORBOIDHs(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$5(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H_KpE0pOG2OViXilTluentBfbxg(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$0(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aKASg7hZkbF7PBvj8jP1YBmwH2M(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$1(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ht__CUqNhjnOnMCyoKy27ZzJYLE(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$7(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jjvIxRCLKAb9HlheGOUt7ih8Z4g(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$4(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$krCquVCJYm8J12vFEe5N9gFkSsQ(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$6(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ufnUQSiugutqHFJHsobxi353DLw(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->lambda$setData$2(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 77
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->linePaint:Landroid/graphics/Paint;

    .line 69
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->roundPath:Landroid/graphics/Path;

    .line 70
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->roundRect:Landroid/graphics/RectF;

    .line 78
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 81
    sget v3, Lorg/telegram/messenger/R$string;->BoostingFrom:I

    const-string v4, "BoostingFrom"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromNameTextView:Landroid/widget/TextView;

    .line 82
    sget v5, Lorg/telegram/messenger/R$string;->BoostingTo:I

    const-string v6, "BoostingTo"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toNameTextView:Landroid/widget/TextView;

    .line 83
    sget v6, Lorg/telegram/messenger/R$string;->BoostingGift:I

    const-string v7, "BoostingGift"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->giftNameTextView:Landroid/widget/TextView;

    .line 84
    sget v7, Lorg/telegram/messenger/R$string;->BoostingReason:I

    const-string v8, "BoostingReason"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonNameTextView:Landroid/widget/TextView;

    .line 85
    sget v8, Lorg/telegram/messenger/R$string;->BoostingDate:I

    const-string v9, "BoostingDate"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->dateNameTextView:Landroid/widget/TextView;

    const/4 v9, 0x1

    .line 87
    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Z)Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromTextView:Landroid/widget/TextView;

    .line 88
    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Z)Landroid/widget/TextView;

    move-result-object v11

    iput-object v11, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toTextView:Landroid/widget/TextView;

    .line 89
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Z)Landroid/widget/TextView;

    move-result-object v12

    iput-object v12, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->giftTextView:Landroid/widget/TextView;

    .line 90
    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Z)Landroid/widget/TextView;

    move-result-object v13

    iput-object v13, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    .line 91
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Z)Landroid/widget/TextView;

    move-result-object v14

    iput-object v14, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->dateTextView:Landroid/widget/TextView;

    .line 93
    new-instance v15, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v15, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v16, 0xc

    .line 94
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v15, v9}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 95
    new-instance v9, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 96
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 98
    new-instance v4, Landroid/widget/TableRow;

    invoke-direct {v4, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    .line 100
    sget-boolean v17, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v18, 0x5

    const/16 v19, 0x3

    if-eqz v17, :cond_0

    move/from16 v22, v18

    goto :goto_0

    :cond_0
    move/from16 v22, v19

    :goto_0
    if-eqz v17, :cond_1

    const/16 v23, 0x0

    goto :goto_1

    :cond_1
    move/from16 v23, v16

    :goto_1
    const/16 v24, 0x0

    if-eqz v17, :cond_2

    move/from16 v25, v16

    goto :goto_2

    :cond_2
    const/16 v25, 0x0

    :goto_2
    const/16 v26, 0x0

    const/16 v20, 0x18

    const/16 v21, 0x18

    move-object/from16 v17, v8

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v15, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    const/16 v20, -0x2

    const/16 v21, -0x2

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    move-object/from16 v27, v14

    if-eqz v8, :cond_3

    move/from16 v15, v18

    goto :goto_3

    :cond_3
    move/from16 v15, v19

    :goto_3
    const/16 v14, 0x10

    or-int/lit8 v22, v15, 0x10

    if-eqz v8, :cond_4

    const/16 v23, 0x0

    goto :goto_4

    :cond_4
    const/16 v23, 0x1d

    :goto_4
    const/16 v24, 0x0

    if-eqz v8, :cond_5

    const/16 v25, 0x1d

    goto :goto_5

    :cond_5
    const/16 v25, 0x0

    :goto_5
    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v10, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    const/4 v15, -0x2

    invoke-direct {v2, v15, v15, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 103
    iput v14, v2, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 104
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_7

    .line 105
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 108
    :cond_7
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v8, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8, v3, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 113
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toFrameLayout:Landroid/widget/FrameLayout;

    const/16 v28, 0x18

    const/16 v29, 0x18

    .line 115
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_8

    move/from16 v30, v18

    goto :goto_8

    :cond_8
    move/from16 v30, v19

    :goto_8
    if-eqz v8, :cond_9

    const/16 v31, 0x0

    goto :goto_9

    :cond_9
    move/from16 v31, v16

    :goto_9
    const/16 v32, 0x0

    if-eqz v8, :cond_a

    move/from16 v33, v16

    goto :goto_a

    :cond_a
    const/16 v33, 0x0

    :goto_a
    const/16 v34, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toFrameLayout:Landroid/widget/FrameLayout;

    const/16 v28, -0x2

    const/16 v29, -0x2

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v18, v19

    :goto_b
    or-int/lit8 v30, v18, 0x10

    if-eqz v8, :cond_c

    const/16 v31, 0x0

    goto :goto_c

    :cond_c
    const/16 v31, 0x1d

    :goto_c
    const/16 v32, 0x0

    if-eqz v8, :cond_d

    const/16 v33, 0x1d

    goto :goto_d

    :cond_d
    const/16 v33, 0x0

    :goto_d
    const/16 v34, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v11, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_e

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_e
    const/4 v10, 0x0

    :goto_e
    invoke-direct {v3, v15, v15, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 119
    iput v14, v3, Landroid/widget/TableRow$LayoutParams;->gravity:I

    .line 120
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_f

    .line 121
    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v3, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 124
    :cond_f
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v8, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :goto_f
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toFrameLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v8, v9, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 129
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 130
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_10

    .line 131
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v15, v15, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v12, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    .line 134
    :cond_10
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v12, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    :goto_10
    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->tableRow4:Landroid/widget/TableRow;

    .line 139
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_11

    .line 140
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v15, v15, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v13, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->tableRow4:Landroid/widget/TableRow;

    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11

    .line 143
    :cond_11
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v5, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->tableRow4:Landroid/widget/TableRow;

    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v13, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    :goto_11
    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 148
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_12

    .line 149
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v15, v15, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    move-object/from16 v7, v27

    invoke-virtual {v5, v7, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    move-object/from16 v8, v17

    invoke-virtual {v5, v8, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12

    :cond_12
    move-object/from16 v8, v17

    move-object/from16 v7, v27

    .line 152
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    :goto_12
    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$1;

    move-object/from16 v7, p2

    invoke-direct {v6, v0, v1, v7}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 180
    invoke-virtual {v6, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 181
    invoke-virtual {v6, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 182
    invoke-virtual {v6, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->tableRow4:Landroid/widget/TableRow;

    invoke-virtual {v6, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 184
    invoke-virtual {v6, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 185
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-virtual {v6, v2, v1}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    goto :goto_13

    :cond_13
    const/4 v1, 0x1

    .line 188
    invoke-virtual {v6, v1, v1}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    :goto_13
    const/4 v2, -0x1

    .line 190
    invoke-static {v2, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_14

    .line 192
    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;)V

    invoke-virtual {v6, v2}, Landroid/widget/TableLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 198
    invoke-virtual {v6, v1}, Landroid/widget/TableLayout;->setClipToOutline(Z)V

    :cond_14
    const/16 v1, 0xe

    .line 200
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;)Landroid/graphics/RectF;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->roundRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;)Landroid/graphics/Path;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->roundPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;)Landroid/graphics/Paint;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->linePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;)Landroid/widget/TableRow;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->tableRow4:Landroid/widget/TableRow;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->dateTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;
    .locals 5

    if-eqz p2, :cond_0

    .line 284
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 285
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    goto :goto_0

    .line 287
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 290
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    .line 291
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-nez p2, :cond_3

    .line 293
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x5

    goto :goto_2

    :cond_2
    const/4 p2, 0x3

    :goto_2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_3
    if-eqz p1, :cond_6

    const-string p2, "fonts/rmedium.ttf"

    .line 296
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 299
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 p2, 0x20

    const/16 v1, 0xc

    if-eqz p1, :cond_4

    move p1, p2

    goto :goto_3

    :cond_4
    move p1, v1

    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/16 v2, 0xb

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_5

    move p2, v1

    :cond_5
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, p1, v3, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    .line 301
    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 302
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p1, 0xe

    .line 303
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_4
    return-object v0
.end method

.method private createTextView(Z)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->createTextView(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$setData$0(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V
    .locals 0

    .line 217
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$1(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Landroid/view/View;)V
    .locals 0

    .line 219
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$2(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 234
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$3(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 0

    .line 237
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$4(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 0

    .line 242
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$5(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V
    .locals 0

    .line 250
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$6(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 264
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$setData$7(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 0

    .line 267
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setData(Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)V"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/Date;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->date:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 206
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->dateTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, "formatDateAtTime"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->via_giveaway:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->via_giveaway:Z

    const-string v2, "**"

    if-eqz v0, :cond_1

    .line 213
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 214
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 215
    sget v3, Lorg/telegram/messenger/R$string;->BoostingGiveaway:I

    const-string v4, "BoostingGiveaway"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 216
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 217
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda6;

    invoke-direct {v4, p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3, v5, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 218
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingYouWereSelected:I

    const-string v4, "BoostingYouWereSelected"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :goto_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->months:I

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    new-array v0, v5, [Ljava/lang/Object;

    const-string v4, "Years"

    invoke-static {v4, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "Months"

    invoke-static {v6, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->giftTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->BoostingTelegramPremiumFor:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const-string v0, "BoostingTelegramPremiumFor"

    invoke-static {v0, v6, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 230
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 231
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 232
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 233
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 234
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda4;

    invoke-direct {v6, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v4, v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 235
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v1, v6, v7, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 237
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 239
    :cond_3
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v4, v6, v7, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 242
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->fromFrameLayout:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda3;

    invoke-direct {v4, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    :goto_3
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    const/16 v1, 0x8

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->via_giveaway:Z

    if-eqz v0, :cond_4

    .line 246
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 247
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 248
    sget v3, Lorg/telegram/messenger/R$string;->BoostingIncompleteGiveaway:I

    const-string v4, "BoostingIncompleteGiveaway"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 249
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 250
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2, v5, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->reasonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->BoostingNoRecipient:I

    const-string v2, "BoostingNoRecipient"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 255
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 256
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 258
    :cond_4
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 260
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 261
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 262
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 263
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 264
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda7;

    invoke-direct {v6, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4, v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 265
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v6, v3, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 267
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->toFrameLayout:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    :cond_5
    :goto_4
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    if-eqz p1, :cond_6

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->tableRow4:Landroid/widget/TableRow;

    invoke-virtual {p1, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    :cond_6
    return-void
.end method
