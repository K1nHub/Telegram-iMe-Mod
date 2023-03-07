.class public final Lorg/fork/ui/view/TemplatesHeaderCell;
.super Landroid/widget/LinearLayout;
.source "TemplatesHeaderCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/view/TemplatesHeaderCell$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplatesHeaderCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplatesHeaderCell.kt\norg/fork/ui/view/TemplatesHeaderCell\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,111:1\n169#2,2:112\n254#2,2:114\n13536#3,2:116\n*S KotlinDebug\n*F\n+ 1 TemplatesHeaderCell.kt\norg/fork/ui/view/TemplatesHeaderCell\n*L\n34#1:112,2\n50#1:114,2\n97#1:116,2\n*E\n"
.end annotation


# instance fields
.field private final createButton$delegate:Lkotlin/Lazy;

.field private final headerTextView$delegate:Lkotlin/Lazy;

.field private final sortButton$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$8zHO0wXoay824IIGO2GqWLnP4E0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/fork/ui/view/TemplatesHeaderCell;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/view/TemplatesHeaderCell;->initSortButton$lambda-7$lambda-5(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/fork/ui/view/TemplatesHeaderCell;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FUYYE4xTQvIfHe_vi_wn_dwBVH0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/view/TemplatesHeaderCell;->initSortButton$lambda-7$lambda-6(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QD4v3xmT8UriC3Y6cD6SK_j6o00(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/view/TemplatesHeaderCell;->bind$lambda-3$lambda-2(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/ui/view/TemplatesHeaderCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/ui/view/TemplatesHeaderCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p1, Lorg/fork/ui/view/TemplatesHeaderCell$headerTextView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/TemplatesHeaderCell$headerTextView$2;-><init>(Lorg/fork/ui/view/TemplatesHeaderCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/TemplatesHeaderCell;->headerTextView$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lorg/fork/ui/view/TemplatesHeaderCell$sortButton$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/TemplatesHeaderCell$sortButton$2;-><init>(Lorg/fork/ui/view/TemplatesHeaderCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/TemplatesHeaderCell;->sortButton$delegate:Lkotlin/Lazy;

    .line 31
    new-instance p1, Lorg/fork/ui/view/TemplatesHeaderCell$createButton$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/TemplatesHeaderCell$createButton$2;-><init>(Lorg/fork/ui/view/TemplatesHeaderCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/TemplatesHeaderCell;->createButton$delegate:Lkotlin/Lazy;

    const/16 p1, 0x8

    .line 34
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 169
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    const/16 p1, 0x10

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 36
    invoke-direct {p0}, Lorg/fork/ui/view/TemplatesHeaderCell;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x10

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    invoke-direct {p0}, Lorg/fork/ui/view/TemplatesHeaderCell;->getSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/16 v0, 0x24

    const/16 v1, 0x24

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-direct {p0}, Lorg/fork/ui/view/TemplatesHeaderCell;->getCreateButton()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, -0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-direct {p0}, Lorg/fork/ui/view/TemplatesHeaderCell;->updateSortingMenu()V

    return-void
.end method

.method public static final synthetic access$initCreateButton(Lorg/fork/ui/view/TemplatesHeaderCell;)Landroid/widget/TextView;
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/fork/ui/view/TemplatesHeaderCell;->initCreateButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initHeaderTextView(Lorg/fork/ui/view/TemplatesHeaderCell;)Landroid/widget/TextView;
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/fork/ui/view/TemplatesHeaderCell;->initHeaderTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSortButton(Lorg/fork/ui/view/TemplatesHeaderCell;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/fork/ui/view/TemplatesHeaderCell;->initSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p0

    return-object p0
.end method

.method private static final bind$lambda-3$lambda-2(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Landroid/view/View;)V
    .locals 0

    const-string p1, "$templatesDelegate"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 56
    invoke-interface {p0, p1}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressOpenTemplates(Z)V

    return-void
.end method

.method private final getCreateButton()Landroid/widget/TextView;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/fork/ui/view/TemplatesHeaderCell;->createButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/fork/ui/view/TemplatesHeaderCell;->headerTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/fork/ui/view/TemplatesHeaderCell;->sortButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method private final initCreateButton()Landroid/widget/TextView;
    .locals 3

    .line 87
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/16 v1, 0x10

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 90
    sget v1, Lorg/telegram/messenger/R$string;->Create:I

    const-string v2, "Create"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\"Create\", R.string.Create)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initHeaderTextView()Landroid/widget/TextView;
    .locals 3

    .line 65
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 5

    .line 70
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    const/16 v1, 0xa

    .line 71
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 72
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    .line 73
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 74
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    const/4 v1, 0x2

    .line 76
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 77
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lorg/fork/enums/TemplatesSortingType;

    invoke-virtual {v1}, Lorg/fork/enums/TemplatesSortingType;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 78
    new-instance v1, Lorg/fork/ui/view/TemplatesHeaderCell$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0}, Lorg/fork/ui/view/TemplatesHeaderCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/fork/ui/view/TemplatesHeaderCell;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 84
    new-instance v1, Lorg/fork/ui/view/TemplatesHeaderCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/fork/ui/view/TemplatesHeaderCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initSortButton$lambda-7$lambda-5(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/fork/ui/view/TemplatesHeaderCell;I)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lorg/fork/enums/TemplatesSortingType;->values()[Lorg/fork/enums/TemplatesSortingType;

    move-result-object v0

    aget-object p2, v0, p2

    .line 80
    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->setSelectedTemplatesSortingType(Lorg/fork/enums/TemplatesSortingType;)V

    .line 81
    invoke-virtual {p2}, Lorg/fork/enums/TemplatesSortingType;->getIconResId()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 82
    invoke-direct {p1}, Lorg/fork/ui/view/TemplatesHeaderCell;->updateSortingMenu()V

    return-void
.end method

.method private static final initSortButton$lambda-7$lambda-6(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private final updateSortingMenu()V
    .locals 9

    .line 96
    invoke-direct {p0}, Lorg/fork/ui/view/TemplatesHeaderCell;->getSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 97
    invoke-static {}, Lorg/fork/enums/TemplatesSortingType;->values()[Lorg/fork/enums/TemplatesSortingType;

    move-result-object v0

    .line 13536
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 98
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lorg/fork/enums/TemplatesSortingType;

    if-ne v5, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 99
    :goto_1
    invoke-direct {p0}, Lorg/fork/ui/view/TemplatesHeaderCell;->getSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v5, :cond_1

    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lorg/fork/enums/TemplatesSortingType;->getIconResId()I

    move-result v8

    :goto_2
    invoke-virtual {v4}, Lorg/fork/enums/TemplatesSortingType;->getNameResId()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v8, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    .line 100
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final bind(ILorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V
    .locals 5

    const-string v0, "templatesDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lorg/fork/ui/view/TemplatesHeaderCell;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    if-lez p1, :cond_0

    .line 46
    sget v1, Lorg/telegram/messenger/R$string;->chat_templates:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->chat_templates_list_header:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 47
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    invoke-direct {p0}, Lorg/fork/ui/view/TemplatesHeaderCell;->getSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    .line 254
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 p1, 0x30

    .line 51
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const-string v4, "listSelectorSDK21"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {p1, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 54
    invoke-direct {p0}, Lorg/fork/ui/view/TemplatesHeaderCell;->getCreateButton()Landroid/widget/TextView;

    move-result-object p1

    .line 55
    invoke-static {p1, v3}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setRippleBackground(Landroid/view/View;Z)V

    .line 56
    new-instance v0, Lorg/fork/ui/view/TemplatesHeaderCell$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lorg/fork/ui/view/TemplatesHeaderCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
