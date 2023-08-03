.class public Lorg/telegram/ui/DilogCacheBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "DilogCacheBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;
    }
.end annotation


# instance fields
.field private button:Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;

.field private final cacheDelegate:Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;

.field private final cacheModel:Lorg/telegram/ui/Storage/CacheModel;

.field cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

.field checkBoxes:[Lorg/telegram/ui/Cells/CheckBoxCell;

.field private final circleDiagramView:Lorg/telegram/ui/Components/StorageDiagramView;

.field private clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

.field dialogId:J

.field entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

.field private final isArchive:Z

.field linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$GdMdCyWhnRGD4KHnP-njC_Fj-Qc(Lorg/telegram/ui/DilogCacheBottomSheet;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DilogCacheBottomSheet;->lambda$createButton$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZCWcCtn2dGgvNB0nK7XJTkF4rZ4(Lorg/telegram/ui/DilogCacheBottomSheet;Lorg/telegram/ui/Storage/CacheModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DilogCacheBottomSheet;->lambda$new$0(Lorg/telegram/ui/Storage/CacheModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fW29n6Cd0UmjE03XUiNzWJBqj24(Lorg/telegram/ui/DilogCacheBottomSheet;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DilogCacheBottomSheet;->lambda$createButton$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xg_0EUlK2BTiHBqygWxEQZdq2iA(Lorg/telegram/ui/DilogCacheBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DilogCacheBottomSheet;->lambda$createButton$3(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/Storage/CacheModel;Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;ZZ)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 122
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/Storage/CacheModel;->isEmpty()Z

    move-result v0

    const/4 v10, 0x1

    xor-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v11, 0x8

    new-array v0, v11, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    .line 45
    iput-object v0, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    new-array v0, v11, [Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 46
    iput-object v0, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->checkBoxes:[Lorg/telegram/ui/Cells/CheckBoxCell;

    move/from16 v5, p6

    .line 123
    iput-boolean v5, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->isArchive:Z

    move-object/from16 v6, p4

    .line 124
    iput-object v6, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->cacheDelegate:Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;

    .line 125
    iput-object v8, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    .line 126
    iput-object v9, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    .line 127
    iget-wide v0, v8, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    iput-wide v0, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->dialogId:J

    const/4 v12, 0x0

    .line 128
    iput-boolean v12, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    .line 129
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    .line 130
    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowNestedScroll(Z)V

    const v0, 0x3e4ccccd    # 0.2f

    .line 131
    iput v0, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    .line 133
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 134
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 135
    invoke-virtual {v7, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 136
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->linearLayout:Landroid/widget/LinearLayout;

    .line 137
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    new-instance v14, Lorg/telegram/ui/DilogCacheBottomSheet$2;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v8, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v5, p6

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/DilogCacheBottomSheet$2;-><init>(Lorg/telegram/ui/DilogCacheBottomSheet;Landroid/content/Context;JZLorg/telegram/ui/DilogCacheBottomSheet$Delegate;)V

    iput-object v14, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->circleDiagramView:Lorg/telegram/ui/Components/StorageDiagramView;

    move/from16 v0, p5

    .line 148
    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/StorageDiagramView;->setNotClickableAvatar(Z)V

    .line 149
    iget-object v0, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x10

    const/16 v20, 0x0

    const/16 v21, 0x10

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    move-object v2, v0

    move v1, v12

    :goto_0
    const/4 v3, -0x1

    if-ge v1, v11, :cond_9

    const/4 v4, 0x4

    if-nez v1, :cond_0

    .line 157
    sget v5, Lorg/telegram/messenger/R$string;->LocalPhotoCache:I

    const-string v6, "LocalPhotoCache"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 158
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightblue:I

    goto :goto_1

    :cond_0
    if-ne v1, v10, :cond_1

    .line 160
    sget v5, Lorg/telegram/messenger/R$string;->LocalVideoCache:I

    const-string v6, "LocalVideoCache"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 161
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 163
    sget v5, Lorg/telegram/messenger/R$string;->LocalDocumentCache:I

    const-string v6, "LocalDocumentCache"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 164
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    if-ne v1, v5, :cond_3

    .line 166
    sget v5, Lorg/telegram/messenger/R$string;->LocalMusicCache:I

    const-string v6, "LocalMusicCache"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 167
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    goto :goto_1

    :cond_3
    if-ne v1, v4, :cond_4

    .line 169
    sget v5, Lorg/telegram/messenger/R$string;->LocalAudioCache:I

    const-string v6, "LocalAudioCache"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 170
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightgreen:I

    goto :goto_1

    :cond_4
    const/4 v5, 0x5

    if-ne v1, v5, :cond_5

    .line 172
    sget v5, Lorg/telegram/messenger/R$string;->LocalStickersCache:I

    const-string v6, "LocalStickersCache"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 173
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_orange:I

    goto :goto_1

    :cond_5
    const/4 v5, 0x7

    if-ne v1, v5, :cond_6

    .line 175
    sget v5, Lorg/telegram/messenger/R$string;->LocalStoriesCache:I

    const-string v6, "LocalStoriesCache"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 176
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_indigo:I

    goto :goto_1

    .line 178
    :cond_6
    sget v5, Lorg/telegram/messenger/R$string;->LocalMiscellaneousCache:I

    const-string v6, "LocalMiscellaneousCache"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 179
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_purple:I

    .line 182
    :goto_1
    iget-object v14, v8, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    const-wide/16 v15, 0x0

    if-eqz v14, :cond_7

    .line 184
    iget-wide v10, v14, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    goto :goto_2

    :cond_7
    move-wide v10, v15

    :goto_2
    cmp-long v14, v10, v15

    if-lez v14, :cond_8

    .line 190
    iget-object v2, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    new-instance v14, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    iget-object v15, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->circleDiagramView:Lorg/telegram/ui/Components/StorageDiagramView;

    invoke-direct {v14, v15}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    aput-object v14, v2, v1

    .line 191
    iget-object v2, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v14, v2, v1

    iput-wide v10, v14, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->size:J

    .line 192
    aget-object v2, v2, v1

    iput v6, v2, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->colorKey:I

    .line 193
    new-instance v2, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/16 v14, 0x15

    invoke-direct {v2, v13, v4, v14, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 196
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v4, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x32

    invoke-static {v3, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-static {v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v3, v4, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 199
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 200
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v2, v6, v3, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setCheckBoxColor(III)V

    .line 201
    new-instance v3, Lorg/telegram/ui/DilogCacheBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v3, v7, v9}, Lorg/telegram/ui/DilogCacheBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DilogCacheBottomSheet;Lorg/telegram/ui/Storage/CacheModel;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v3, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->checkBoxes:[Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v2, v3, v1

    goto :goto_3

    .line 226
    :cond_8
    iget-object v3, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aput-object v0, v3, v1

    .line 227
    iget-object v3, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->checkBoxes:[Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v0, v3, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    const/4 v10, 0x1

    const/16 v11, 0x8

    goto/16 :goto_0

    :cond_9
    if-eqz v2, :cond_a

    .line 231
    invoke-virtual {v2, v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setNeedDivider(Z)V

    .line 233
    :cond_a
    iget-object v0, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->circleDiagramView:Lorg/telegram/ui/Components/StorageDiagramView;

    iget-object v1, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    invoke-virtual {v0, v9, v1}, Lorg/telegram/ui/Components/StorageDiagramView;->setData(Lorg/telegram/ui/Storage/CacheModel;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    .line 234
    new-instance v0, Lorg/telegram/ui/DilogCacheBottomSheet$3;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-direct {v0, v7, v1, v2}, Lorg/telegram/ui/DilogCacheBottomSheet$3;-><init>(Lorg/telegram/ui/DilogCacheBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/16 v1, 0x50

    .line 240
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/CachedMediaLayout;->setBottomPadding(I)V

    .line 241
    iget-object v0, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/CachedMediaLayout;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    .line 242
    iget-object v0, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    new-instance v2, Lorg/telegram/ui/DilogCacheBottomSheet$4;

    invoke-direct {v2, v7, v9}, Lorg/telegram/ui/DilogCacheBottomSheet$4;-><init>(Lorg/telegram/ui/DilogCacheBottomSheet;Lorg/telegram/ui/Storage/CacheModel;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/CachedMediaLayout;->setDelegate(Lorg/telegram/ui/CachedMediaLayout$Delegate;)V

    .line 269
    iget-object v0, v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    if-eqz v0, :cond_b

    .line 270
    iget-object v1, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->setChildLayout(Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;)V

    goto :goto_4

    .line 272
    :cond_b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DilogCacheBottomSheet;->createButton()V

    .line 273
    iget-object v0, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->button:Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;

    const/16 v4, 0x48

    invoke-static {v3, v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    :goto_4
    iget-object v0, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->button:Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;

    if-eqz v0, :cond_c

    .line 277
    iget-object v0, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->circleDiagramView:Lorg/telegram/ui/Components/StorageDiagramView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StorageDiagramView;->calculateSize()J

    move-result-wide v0

    .line 278
    iget-object v2, v7, Lorg/telegram/ui/DilogCacheBottomSheet;->button:Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->setSize(ZJ)V

    :cond_c
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DilogCacheBottomSheet;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/DilogCacheBottomSheet;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/DilogCacheBottomSheet;)Lorg/telegram/ui/Storage/CacheModel;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/DilogCacheBottomSheet;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->contentHeight:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/DilogCacheBottomSheet;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/telegram/ui/DilogCacheBottomSheet;->syncCheckBoxes()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/DilogCacheBottomSheet;)Lorg/telegram/ui/Components/StorageDiagramView;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->circleDiagramView:Lorg/telegram/ui/Components/StorageDiagramView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/DilogCacheBottomSheet;)Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->button:Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;

    return-object p0
.end method

.method private createButton()V
    .locals 4

    .line 320
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->button:Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;

    .line 321
    iget-object v0, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/DilogCacheBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DilogCacheBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DilogCacheBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->circleDiagramView:Lorg/telegram/ui/Components/StorageDiagramView;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Lorg/telegram/ui/Components/StorageDiagramView;->calculateSize()J

    move-result-wide v0

    .line 338
    iget-object v2, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->button:Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->setSize(ZJ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createButton$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 326
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createButton$2(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 329
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 330
    iget-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->cacheDelegate:Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;

    iget-object p2, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    iget-object v1, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-interface {p1, p2, v0, v1}, Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;->cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method private synthetic lambda$createButton$3(Landroid/view/View;)V
    .locals 2

    .line 322
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 323
    sget v0, Lorg/telegram/messenger/R$string;->ClearCache:I

    const-string v1, "ClearCache"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 324
    sget v0, Lorg/telegram/messenger/R$string;->ClearCacheForChat:I

    const-string v1, "ClearCacheForChat"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 325
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DilogCacheBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DilogCacheBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DilogCacheBottomSheet;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 328
    sget v0, Lorg/telegram/messenger/R$string;->Clear:I

    const-string v1, "Clear"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DilogCacheBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DilogCacheBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DilogCacheBottomSheet;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 332
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 334
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->redPositive()V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Storage/CacheModel;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 203
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 204
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 209
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v2, v1, v0

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setClear(Z)V

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    invoke-virtual {p2, v1, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 218
    iget-object p2, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object p2, p2, v0

    iget-boolean p2, p2, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Storage/CacheModel;->allFilesSelcetedByType(IZ)V

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/CachedMediaLayout;->update()V

    .line 220
    iget-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->circleDiagramView:Lorg/telegram/ui/Components/StorageDiagramView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StorageDiagramView;->updateDescription()J

    move-result-wide p1

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->button:Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;

    invoke-virtual {v0, v3, p1, p2}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->setSize(ZJ)V

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->circleDiagramView:Lorg/telegram/ui/Components/StorageDiagramView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/StorageDiagramView;->update(Z)V

    return-void
.end method

.method private syncCheckBoxes()V
    .locals 4

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->checkBoxes:[Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 284
    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-boolean v2, v2, Lorg/telegram/ui/Storage/CacheModel;->allPhotosSelected:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->checkBoxes:[Lorg/telegram/ui/Cells/CheckBoxCell;

    aget-object v1, v0, v3

    if-eqz v1, :cond_1

    .line 287
    aget-object v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v1, v3

    iget-object v2, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-boolean v2, v2, Lorg/telegram/ui/Storage/CacheModel;->allVideosSelected:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 289
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->checkBoxes:[Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v1, 0x2

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 290
    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-boolean v2, v2, Lorg/telegram/ui/Storage/CacheModel;->allDocumentsSelected:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 292
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->checkBoxes:[Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v1, 0x3

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    .line 293
    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-boolean v2, v2, Lorg/telegram/ui/Storage/CacheModel;->allMusicSelected:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 295
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->checkBoxes:[Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v1, 0x4

    aget-object v2, v0, v1

    if-eqz v2, :cond_4

    .line 296
    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->clearViewData:[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    aget-object v1, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-boolean v2, v2, Lorg/telegram/ui/Storage/CacheModel;->allVoiceSelected:Z

    iput-boolean v2, v1, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 1

    .line 66
    new-instance v0, Lorg/telegram/ui/DilogCacheBottomSheet$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DilogCacheBottomSheet$1;-><init>(Lorg/telegram/ui/DilogCacheBottomSheet;)V

    return-object v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 3

    .line 57
    iget-boolean v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->isArchive:Z

    if-eqz v0, :cond_0

    .line 58
    sget v0, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    const-string v1, "ArchivedChats"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getFullName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/widget/FrameLayout;)V
    .locals 4

    .line 302
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onViewCreated(Landroid/widget/FrameLayout;)V

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/DilogCacheBottomSheet$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DilogCacheBottomSheet$5;-><init>(Lorg/telegram/ui/DilogCacheBottomSheet;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lorg/telegram/ui/DilogCacheBottomSheet;->createButton()V

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/DilogCacheBottomSheet;->button:Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;

    const/4 v1, -0x1

    const/16 v2, 0x48

    const/16 v3, 0x50

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
