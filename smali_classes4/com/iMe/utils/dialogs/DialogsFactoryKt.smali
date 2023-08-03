.class public final Lcom/iMe/utils/dialogs/DialogsFactoryKt;
.super Ljava/lang/Object;
.source "DialogsFactory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogsFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogsFactory.kt\ncom/iMe/utils/dialogs/DialogsFactoryKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,541:1\n1#2:542\n1864#3,3:543\n1864#3,3:548\n1864#3,3:551\n37#4,2:546\n11335#5:554\n11670#5,3:555\n*S KotlinDebug\n*F\n+ 1 DialogsFactory.kt\ncom/iMe/utils/dialogs/DialogsFactoryKt\n*L\n253#1:543,3\n300#1:548,3\n337#1:551,3\n269#1:546,2\n445#1:554\n445#1:555,3\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$3vNUhR02zeHsXwB-4iJGjWqdeLw(Lcom/iMe/utils/dialogs/DialogsFactoryKt$createDiagramDialog$cacheBottomSheet$1;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDiagramDialog$lambda$13$lambda$12(Lcom/iMe/utils/dialogs/DialogsFactoryKt$createDiagramDialog$cacheBottomSheet$1;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AMzOl9uF9oy0KkiiM130rFcAUk8(Lcom/iMe/fork/utils/Callbacks$Callback;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showChatProfileTelegramIdDialog$lambda$32(Lcom/iMe/fork/utils/Callbacks$Callback;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JI8RGfkJe8cdLn4DR0pQWA_x-x4(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createUpdateAppDialog$lambda$27(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$STRqSPehLP3pZjJuJhz5MLlXb4A(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createBinanceVerificationRequiredDialog$lambda$28(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YKLI1M6XvZ0UEfTOBK1gPgfsQAc(Lkotlin/jvm/functions/Function1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createTwoLineSingleChooserDialog$lambda$25$lambda$24$lambda$23$lambda$22(Lkotlin/jvm/functions/Function1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$owO7rW72g0xjA8cCHMPMwZRf5FY(Lcom/iMe/fork/utils/Callbacks$Callback1;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSelectStakingOrderDialog$lambda$30(Lcom/iMe/fork/utils/Callbacks$Callback1;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sHViXYhGcQ9bfMd-Ri7XwPo2aVc(Lcom/iMe/fork/utils/Callbacks$Callback1;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSelectTokensOrderTypeDialog$lambda$29(Lcom/iMe/fork/utils/Callbacks$Callback1;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yqsfO4QEYg0n439HK7vGbpLkIOE(Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSingleChooserDialog$lambda$20$lambda$19$lambda$18$lambda$17(Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static final createBinanceVerificationRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    sget v0, Lorg/telegram/messenger/R$string;->binance_not_verified_dialog_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    sget v2, Lorg/telegram/messenger/R$string;->binance_not_verified_dialog_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    sget v3, Lorg/telegram/messenger/R$string;->binance_not_verified_dialog_positive_btn:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 377
    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    .line 373
    new-instance v5, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v5, v0, v2, v4, v3}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v3, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v4, 0x0

    const/16 p0, 0x8

    const/4 v6, 0x0

    move-object v2, v5

    move v5, p0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createBinanceVerificationRequiredDialog$lambda$28(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const-string v0, "$this_createBinanceVerificationRequiredDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$string;->wallet_binance_verify_profile_website:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final createDiagramDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/statistic/StatisticDiagramModel;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lcom/iMe/model/statistic/StatisticDiagramModel;",
            "Ljava/lang/CharSequence;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/telegram/ui/ActionBar/BottomSheet;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "buttonText"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "buttonActionListener"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/iMe/utils/dialogs/DialogsFactoryKt$createDiagramDialog$cacheBottomSheet$1;

    invoke-direct {v6, v5}, Lcom/iMe/utils/dialogs/DialogsFactoryKt$createDiagramDialog$cacheBottomSheet$1;-><init>(Landroid/app/Activity;)V

    const/4 v5, 0x1

    .line 240
    invoke-virtual {v6, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowNestedScroll(Z)V

    const/4 v7, 0x0

    .line 241
    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 244
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 245
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 248
    new-instance v9, Lorg/telegram/ui/Components/StorageDiagramView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/telegram/ui/Components/StorageDiagramView;-><init>(Landroid/content/Context;)V

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/statistic/StatisticDiagramModel;->getDiagramName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/StorageDiagramView;->setCustomCenterText(Ljava/lang/String;)V

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/16 v17, 0x10

    .line 251
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/statistic/StatisticDiagramModel;->getValues()Ljava/util/List;

    move-result-object v10

    .line 1865
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v7

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v15, 0x0

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v16, v11, 0x1

    if-gez v11, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v12, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;

    .line 254
    new-instance v13, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    invoke-direct {v13, v9}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    .line 255
    invoke-virtual {v12}, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;->getValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setSizeAsDouble(Ljava/lang/Double;)V

    .line 256
    invoke-virtual {v12}, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;->getColorKey()I

    move-result v14

    iput v14, v13, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->colorKey:I

    .line 254
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v13, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    const/4 v5, 0x4

    const/16 v7, 0x15

    invoke-direct {v13, v14, v5, v7, v15}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 259
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 260
    invoke-static {v13, v7, v5, v15}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 261
    invoke-virtual {v12}, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;->getValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "valueOf(diagramItem.value).toPlainString()"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v5, v7, v3, v15}, Lcom/iMe/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v14, v5, v3, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 262
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v13, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 263
    invoke-virtual {v12}, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;->getColorKey()I

    move-result v5

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v13, v5, v7, v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setCheckBoxColor(III)V

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/statistic/StatisticDiagramModel;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-ne v11, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setNeedDivider(Z)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/16 v7, 0x32

    const/4 v11, -0x1

    .line 266
    invoke-static {v11, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v7, v5

    move/from16 v11, v16

    move v5, v3

    move-object/from16 v3, p0

    goto/16 :goto_0

    :cond_2
    move v5, v7

    new-array v3, v5, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    .line 38
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    .line 269
    invoke-virtual {v9, v15, v2}, Lorg/telegram/ui/Components/StorageDiagramView;->setData(Lorg/telegram/ui/Storage/CacheModel;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    .line 271
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 272
    invoke-virtual {v2, v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 273
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda1;

    invoke-direct {v3, v6, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/utils/dialogs/DialogsFactoryKt$createDiagramDialog$cacheBottomSheet$1;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x32

    const/4 v1, -0x1

    .line 277
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    new-instance v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    .line 282
    invoke-virtual {v0, v8}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-object v6
.end method

.method public static synthetic createDiagramDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/statistic/StatisticDiagramModel;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 230
    sget p2, Lorg/telegram/messenger/R$string;->common_close:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    const-string p5, "getInternalString(R.string.common_close)"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 231
    sget-object p3, Lcom/iMe/utils/dialogs/DialogsFactoryKt$createDiagramDialog$1;->INSTANCE:Lcom/iMe/utils/dialogs/DialogsFactoryKt$createDiagramDialog$1;

    .line 228
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDiagramDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/statistic/StatisticDiagramModel;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method private static final createDiagramDialog$lambda$13$lambda$12(Lcom/iMe/utils/dialogs/DialogsFactoryKt$createDiagramDialog$cacheBottomSheet$1;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    const-string p2, "$cacheBottomSheet"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$buttonActionListener"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 275
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final createDialog(Lorg/telegram/ui/ActionBar/BaseFragment;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object v1, Lcom/iMe/ui/dialog/FullscreenContentDialog;->Companion:Lcom/iMe/ui/dialog/FullscreenContentDialog$Companion;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo p0, "parentActivity"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/iMe/ui/dialog/FullscreenContentDialog$Companion;->newInstance(Landroid/content/Context;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/4 p2, -0x1

    :cond_0
    move v2, p2

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_1

    const/4 p6, 0x0

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 155
    invoke-static/range {v0 .. v6}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialog(Lorg/telegram/ui/ActionBar/BaseFragment;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final createDialogWithAnimation(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget-object v1, Lcom/iMe/ui/dialog/FullscreenContentDialog;->Companion:Lcom/iMe/ui/dialog/FullscreenContentDialog$Companion;

    invoke-virtual {p1}, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;->getAnimatedIcon()I

    move-result v3

    invoke-virtual {p1}, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;->getDescription()Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;->getButtonText()Ljava/lang/CharSequence;

    move-result-object v6

    move-object v2, p0

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/iMe/ui/dialog/FullscreenContentDialog$Companion;->newInstance(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final createErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/widget/TextView;",
            "-",
            "Lorg/telegram/ui/ActionBar/AlertDialog;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogApplyAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_alert_error:I

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    .line 140
    invoke-static/range {v1 .. v9}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getCustomView()Landroid/view/View;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$id;->text_alert_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "descriptionView"

    .line 148
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic createErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    sget p7, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-virtual {p3, p7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p7, "this.parentActivity.getString(R.string.common_ok)"

    invoke-static {p3, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 138
    sget-object p4, Lcom/iMe/utils/dialogs/DialogsFactoryKt$createErrorAlert$1;->INSTANCE:Lcom/iMe/utils/dialogs/DialogsFactoryKt$createErrorAlert$1;

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 134
    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static final createForgotPinOptionsBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 221
    sget v2, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_forgot_option_restore:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(R.stri\u2026rd_forgot_option_restore)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 222
    sget v2, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_forgot_option_delete:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "getInternalString(R.stri\u2026ord_forgot_option_delete)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [I

    .line 224
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_wallet_restore:I

    aput v2, v0, v3

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    aput v2, v0, v4

    const/4 v2, 0x0

    .line 218
    invoke-static {p0, v2, v1, v0, p1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createOptionsBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;[Ljava/lang/String;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static final createInfoBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "title"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "description"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "buttonText"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v3

    .line 465
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 466
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 468
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 469
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41700000    # 15.0f

    .line 470
    invoke-virtual {v7, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 471
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    invoke-static {v7}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/16 v12, 0x10

    const/16 v13, 0x10

    const/16 v14, 0x10

    const/4 v15, 0x0

    .line 474
    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 480
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 481
    invoke-virtual {v1, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 482
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/16 v9, 0x10

    const/16 v10, 0x1a

    const/16 v11, 0x10

    const/4 v12, 0x0

    .line 484
    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    new-instance v1, Landroid/view/View;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 490
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 492
    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 498
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 499
    invoke-static {v1, v4, v6, v7}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    const/16 v4, 0x10

    .line 500
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setVerticalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 501
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 502
    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 503
    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/16 v0, 0x11

    .line 504
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 505
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 506
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    new-instance v10, Lcom/iMe/utils/dialogs/DialogsFactoryKt$createInfoBottomSheetDialog$customLayout$1$buttonTextView$1$1;

    move-object/from16 v0, p4

    invoke-direct {v10, v0, v3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt$createInfoBottomSheetDialog$customLayout$1$buttonTextView$1$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v1

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    const/4 v0, -0x1

    const/4 v2, -0x2

    .line 512
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    const-string v0, "bottomSheet.apply {\n    \u2026mView(customLayout)\n    }"

    .line 515
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public static synthetic createInfoBottomSheetDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 459
    sget p1, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_information_dialog_title:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    const-string p6, "getInternalString(R.stri\u2026information_dialog_title)"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 458
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createInfoBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static final createOptionsBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 202
    invoke-static {p0, p1, p2, v0, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createOptionsBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;[Ljava/lang/String;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static final createOptionsBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;[Ljava/lang/String;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 211
    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 213
    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 214
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    const-string p1, "Builder(parentActivity).\u2026ons, listener)\n}.create()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final createSelectTokensOrderTypeDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;",
            ">;)",
            "Lorg/telegram/ui/ActionBar/AlertDialog;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onSelected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 410
    sget v1, Lorg/telegram/messenger/R$string;->choose_tokens_order_type_dialog_title:I

    invoke-interface {p1, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 411
    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {p1, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, v0

    .line 409
    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 413
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;

    invoke-virtual {v1, p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;->getTitles(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/util/List;

    move-result-object v5

    .line 414
    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->values()[Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 408
    new-instance v7, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda4;

    invoke-direct {v7, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-static/range {v1 .. v9}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSingleChooserDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/dialog/DialogModel;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/util/List;ILcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createSelectTokensOrderTypeDialog$lambda$29(Lcom/iMe/fork/utils/Callbacks$Callback1;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "$onSelected"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->values()[Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-interface {p0, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public static final createSingleChooserDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/dialog/DialogModel;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/util/List;ILcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Landroid/content/DialogInterface$OnClickListener;",
            "Landroid/content/DialogInterface$OnClickListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/telegram/ui/ActionBar/AlertDialog;"
        }
    .end annotation

    move-object/from16 v0, p6

    const-string v1, "<this>"

    move-object v2, p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "model"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "titles"

    move-object/from16 v4, p4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "selectedListener"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 299
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1865
    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-gez v8, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v9, Ljava/lang/String;

    .line 302
    new-instance v11, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/high16 v12, 0x40800000    # 4.0f

    .line 303
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 304
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 305
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    move/from16 v12, p5

    if-ne v8, v12, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    .line 306
    :goto_1
    invoke-virtual {v11, v9, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 307
    new-instance v8, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v11, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v8, v10

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/model/dialog/DialogModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 318
    invoke-virtual {p1}, Lcom/iMe/model/dialog/DialogModel;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 319
    invoke-virtual {p1}, Lcom/iMe/model/dialog/DialogModel;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 320
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 321
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const-string v1, "builder.apply {\n        \u2026earLayout)\n    }.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic createSingleChooserDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/dialog/DialogModel;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/util/List;ILcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    .line 288
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSingleChooserDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/dialog/DialogModel;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/util/List;ILcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static final createSingleChooserDialog$lambda$20$lambda$19$lambda$18$lambda$17(Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    const-string v0, "$selectedListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {p0, p2}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    .line 309
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static final createSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/widget/TextView;",
            "-",
            "Lorg/telegram/ui/ActionBar/AlertDialog;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogApplyAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_alert_success:I

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    .line 123
    invoke-static/range {v1 .. v9}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getCustomView()Landroid/view/View;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$id;->text_alert_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "descriptionView"

    .line 131
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic createSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    sget p7, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-virtual {p3, p7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p7, "this.parentActivity.getString(R.string.common_ok)"

    invoke-static {p3, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 121
    sget-object p4, Lcom/iMe/utils/dialogs/DialogsFactoryKt$createSuccessAlert$1;->INSTANCE:Lcom/iMe/utils/dialogs/DialogsFactoryKt$createSuccessAlert$1;

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 117
    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static final createTwoLineSingleChooserDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/model/dialog/DialogModel;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/util/List;ILkotlin/jvm/functions/Function1;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Landroid/content/DialogInterface$OnClickListener;",
            "Landroid/content/DialogInterface$OnClickListener;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/common/DialogChooseItem;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/telegram/ui/ActionBar/AlertDialog;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    const-string v2, "<this>"

    move-object v3, p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "resourceManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "model"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "items"

    move-object/from16 v5, p5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "selectedListener"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 336
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1865
    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-gez v9, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v10, Lcom/iMe/model/common/DialogChooseItem;

    .line 339
    new-instance v12, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    const/high16 v13, 0x40800000    # 4.0f

    .line 340
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v12, v14, v8, v13, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 341
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 342
    invoke-interface {v10, v0}, Lcom/iMe/model/common/DialogChooseItem;->getTitle(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v0}, Lcom/iMe/model/common/DialogChooseItem;->getValue(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v10

    move/from16 v14, p6

    if-ne v9, v14, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    invoke-virtual {v12, v13, v10, v8, v9}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 343
    new-instance v9, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda2;

    invoke-direct {v9, v1, v2}, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v12, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v9, v11

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/dialog/DialogModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 354
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/dialog/DialogModel;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 355
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/dialog/DialogModel;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 356
    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 357
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const-string v1, "builder.apply {\n        \u2026earLayout)\n    }.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic createTwoLineSingleChooserDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/model/dialog/DialogModel;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/util/List;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 10

    and-int/lit8 v0, p8, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 324
    invoke-static/range {v2 .. v9}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createTwoLineSingleChooserDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/model/dialog/DialogModel;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/util/List;ILkotlin/jvm/functions/Function1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static final createTwoLineSingleChooserDialog$lambda$25$lambda$24$lambda$23$lambda$22(Lkotlin/jvm/functions/Function1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    const-string v0, "$selectedListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static final createUpdateAppDialog(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    new-instance v2, Lcom/iMe/model/dialog/DialogModel;

    .line 363
    sget v0, Lorg/telegram/messenger/R$string;->wallet_app_update_dialog_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    sget v3, Lorg/telegram/messenger/R$string;->app_update_dialog_description:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    .line 366
    sget v5, Lorg/telegram/messenger/R$string;->wallet_app_update_dialog_action_btn:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    .line 362
    invoke-direct {v2, v0, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v3, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final createUpdateAppDialog$lambda$27(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const-string v0, "$this_createUpdateAppDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    sget-object v0, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "positiveAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 384
    invoke-static {p0, v0, p1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "positiveAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo p0, "parentActivity"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 393
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget p1, Lorg/telegram/messenger/R$string;->wallet_crypto_wallet_not_created_dialog_title:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 395
    :cond_0
    sget p0, Lorg/telegram/messenger/R$string;->wallet_crypto_wallet_not_created_dialog_title:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    .line 397
    :goto_0
    sget p1, Lorg/telegram/messenger/R$string;->wallet_crypto_wallet_not_created_dialog_description:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    .line 398
    sget v0, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    .line 391
    new-instance v3, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v3, p0, p1, v2, v0}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, v3

    move-object v3, p2

    .line 389
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final setBottomGravity(Landroid/app/Dialog;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x50

    .line 192
    invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V

    .line 193
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 194
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static final showChatProfileTelegramIdDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemSelectedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    sget v0, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile_id_telegram:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    sget v2, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile_id_telegram_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-static {}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->values()[Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    move-result-object v3

    .line 11335
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v3, v7

    .line 446
    invoke-virtual {v8}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->getTextResId()I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/telegram/messenger/SharedConfig;->selectedChatProfileTelegramIdMode:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    if-ne v10, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v6

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 11671
    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 448
    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v5, "Cancel"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 442
    new-instance v5, Lcom/iMe/model/dialog/RadioCellsListDialogModel;

    invoke-direct {v5, v0, v2, v4, v3}, Lcom/iMe/model/dialog/RadioCellsListDialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 440
    new-instance v3, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    const/4 v4, 0x0

    const/16 p1, 0x8

    const/4 v6, 0x0

    move-object v2, v5

    move v5, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialogWithRadioCellsList$default(Landroid/content/Context;Lcom/iMe/model/dialog/RadioCellsListDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 439
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showChatProfileTelegramIdDialog$lambda$32(Lcom/iMe/fork/utils/Callbacks$Callback;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "$onItemSelectedAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->values()[Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    move-result-object v0

    const-string/jumbo v1, "position"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setSelectedChatProfileTelegramIdMode(Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;)V

    .line 452
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method public static final showErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v5, Lcom/iMe/utils/dialogs/DialogsFactoryKt$showErrorAlert$1;->INSTANCE:Lcom/iMe/utils/dialogs/DialogsFactoryKt$showErrorAlert$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static final showErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/widget/TextView;",
            "-",
            "Lorg/telegram/ui/ActionBar/AlertDialog;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogApplyAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static/range {p0 .. p5}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p0

    const-string/jumbo p1, "showDialog(\n        crea\u2026ctionListener\n        )\n)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    sget p6, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-virtual {p3, p6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p6, "this.parentActivity.getString(R.string.common_ok)"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 72
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static final showSelectStakingOrderDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            "Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onSelected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 427
    sget v1, Lorg/telegram/messenger/R$string;->choose_tokens_order_type_dialog_title:I

    invoke-interface {p1, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 428
    sget v1, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {p1, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, v0

    .line 426
    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 430
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;->Companion:Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType$Companion;

    invoke-virtual {v1, p1}, Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType$Companion;->getTitles(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/util/List;

    move-result-object v5

    .line 431
    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;->values()[Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 425
    new-instance v7, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda3;

    invoke-direct {v7, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    const/4 v4, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-static/range {v1 .. v9}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSingleChooserDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/dialog/DialogModel;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/util/List;ILcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 424
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showSelectStakingOrderDialog$lambda$30(Lcom/iMe/fork/utils/Callbacks$Callback1;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "$onSelected"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;->values()[Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-interface {p0, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public static final showStakingLevelRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minimalRank"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onReplenishClickAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    new-instance v2, Lcom/iMe/model/dialog/DialogModel;

    .line 529
    sget v0, Lorg/telegram/messenger/R$string;->staking_programme_level_required_title:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    sget v3, Lorg/telegram/messenger/R$string;->staking_programme_level_required_description:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 532
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 533
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->getDescriptionResId()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 530
    invoke-interface {p1, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 535
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v4, "Cancel"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 536
    sget v4, Lorg/telegram/messenger/R$string;->wallet_common_error_not_enough_money_btn_txt:I

    invoke-interface {p1, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 528
    invoke-direct {v2, v0, p2, v3, p1}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v3, p3

    .line 526
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 525
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public static final showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v5, Lcom/iMe/utils/dialogs/DialogsFactoryKt$showSuccessAlert$1;->INSTANCE:Lcom/iMe/utils/dialogs/DialogsFactoryKt$showSuccessAlert$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static final showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/widget/TextView;",
            "-",
            "Lorg/telegram/ui/ActionBar/AlertDialog;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogApplyAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static/range {p0 .. p5}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p0

    const-string/jumbo p1, "showDialog(\n        crea\u2026ctionListener\n        )\n)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    sget p6, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-virtual {p3, p6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p6, "this.parentActivity.getString(R.string.common_ok)"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 59
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method
