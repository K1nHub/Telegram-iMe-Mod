.class public final Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "DrawerItemsSettingsBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawerItemsSettingsBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawerItemsSettingsBottomSheet.kt\ncom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,139:1\n1549#2:140\n1620#2,3:141\n766#2:146\n857#2,2:147\n1549#2:149\n1620#2,3:150\n177#3,2:144\n*S KotlinDebug\n*F\n+ 1 DrawerItemsSettingsBottomSheet.kt\ncom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet\n*L\n52#1:140\n52#1:141,3\n110#1:146\n110#1:147,2\n111#1:149\n111#1:150,3\n118#1:144,2\n*E\n"
.end annotation


# instance fields
.field private final rootView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$JYaWU2rDpIn4YEYgebMe3BDmbYI(Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;->initRootView$lambda$13$lambda$7$lambda$6(Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MUuXflApX1zpUh8cqiTawlXFWJA(Lorg/telegram/ui/Cells/TextCheckBoxCell;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;->initRootView$lambda$13$lambda$4$lambda$2$lambda$1(Lorg/telegram/ui/Cells/TextCheckBoxCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Fp78_7-PAaS1yjNbQp44V0QEms(Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;->initRootView$lambda$13$lambda$11$lambda$10(Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 31
    new-instance p1, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet$rootView$2;-><init>(Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;->rootView$delegate:Lkotlin/Lazy;

    .line 34
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 35
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;)Landroid/widget/FrameLayout;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;->rootView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 19

    move-object/from16 v0, p0

    .line 46
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    sget v2, Lorg/telegram/messenger/R$string;->settings_interface_drawer_items:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 48
    new-instance v2, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    sget-object v5, Lcom/iMe/ui/drawer/DrawerItem;->Companion:Lcom/iMe/ui/drawer/DrawerItem$Companion;

    invoke-virtual {v5}, Lcom/iMe/ui/drawer/DrawerItem$Companion;->getSupportedItems()Ljava/util/List;

    move-result-object v5

    .line 1549
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1621
    check-cast v8, Lcom/iMe/ui/drawer/DrawerItem;

    .line 53
    new-instance v11, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v3, v10}, Lorg/telegram/ui/Cells/TextCheckBoxCell;-><init>(Landroid/content/Context;ZZ)V

    .line 54
    invoke-virtual {v11, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v8}, Lcom/iMe/ui/drawer/DrawerItem;->title()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    invoke-interface {v13, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v11, v12, v8, v3}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 56
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    new-instance v8, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v8, v11}, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/TextCheckBoxCell;)V

    invoke-virtual {v11, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v8, 0x32

    .line 59
    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1621
    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/16 v14, 0x30

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x35

    .line 65
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    .line 63
    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v2, Landroid/view/View;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 76
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/16 v13, 0x50

    const/4 v14, 0x0

    const/16 v17, 0x34

    .line 80
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    .line 78
    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    .line 92
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    sget v5, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v8, "Cancel"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "getString(\"Cancel\", R.string.Cancel)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 94
    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v13, "fonts/rmedium.ttf"

    .line 96
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v2, v14, v10, v15, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    new-instance v14, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v14, v0}, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;)V

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    sget v4, Lorg/telegram/messenger/R$string;->Save:I

    const-string v15, "Save"

    invoke-static {v15, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v15, "getString(\"Save\", R.string.Save)"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v14, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v14, v3, v10, v4, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    new-instance v3, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v6}, Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;Ljava/util/List;)V

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x8

    .line 118
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 177
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    const v4, 0x800033

    const/4 v5, -0x2

    const/16 v6, 0x24

    .line 121
    invoke-static {v5, v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    .line 119
    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x800035

    .line 129
    invoke-static {v5, v6, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 127
    invoke-virtual {v3, v14, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x34

    const/16 v4, 0x50

    .line 134
    invoke-static {v9, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 132
    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private static final initRootView$lambda$13$lambda$11$lambda$10(Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;Ljava/util/List;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$cells"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 766
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    .line 110
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1549
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 1621
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    .line 111
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.iMe.ui.drawer.DrawerItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/ui/drawer/DrawerItem;

    .line 1621
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    .line 110
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    .line 112
    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    .line 113
    sget p1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static final initRootView$lambda$13$lambda$4$lambda$2$lambda$1(Lorg/telegram/ui/Cells/TextCheckBoxCell;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setChecked(Z)V

    return-void
.end method

.method private static final initRootView$lambda$13$lambda$7$lambda$6(Lcom/iMe/fork/ui/dialog/DrawerItemsSettingsBottomSheet;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
