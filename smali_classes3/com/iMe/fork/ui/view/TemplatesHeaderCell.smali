.class public final Lcom/iMe/fork/ui/view/TemplatesHeaderCell;
.super Landroid/widget/LinearLayout;
.source "TemplatesHeaderCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/TemplatesHeaderCell$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplatesHeaderCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplatesHeaderCell.kt\ncom/iMe/fork/ui/view/TemplatesHeaderCell\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,135:1\n177#2,2:136\n262#2,2:138\n13579#3,2:140\n*S KotlinDebug\n*F\n+ 1 TemplatesHeaderCell.kt\ncom/iMe/fork/ui/view/TemplatesHeaderCell\n*L\n34#1:136,2\n60#1:138,2\n116#1:140,2\n*E\n"
.end annotation


# instance fields
.field private final createButton$delegate:Lkotlin/Lazy;

.field private final headerTextView$delegate:Lkotlin/Lazy;

.field private final sortButton$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$5zZhHSC0xTXOCu4vNpqh72ccCP8(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->initSortButton$lambda$7$lambda$6(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I2THxuFnTiZccxQULMYGTNk4Wno(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->bind$lambda$3$lambda$2(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sx5QzPWic0DWfk5dg5W7_Zmptco(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/fork/ui/view/TemplatesHeaderCell;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->initSortButton$lambda$7$lambda$5(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/fork/ui/view/TemplatesHeaderCell;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p1, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$headerTextView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$headerTextView$2;-><init>(Lcom/iMe/fork/ui/view/TemplatesHeaderCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->headerTextView$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$sortButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$sortButton$2;-><init>(Lcom/iMe/fork/ui/view/TemplatesHeaderCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->sortButton$delegate:Lkotlin/Lazy;

    .line 31
    new-instance p1, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$createButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$createButton$2;-><init>(Lcom/iMe/fork/ui/view/TemplatesHeaderCell;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->createButton$delegate:Lkotlin/Lazy;

    const/16 p1, 0x8

    .line 34
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 177
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    const/16 p1, 0x10

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 37
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x10

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 38
    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->getSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/16 v0, 0x24

    const/16 v1, 0x24

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 42
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 40
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->getCreateButton()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, -0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->updateSortingMenu()V

    return-void
.end method

.method public static final synthetic access$initCreateButton(Lcom/iMe/fork/ui/view/TemplatesHeaderCell;)Landroid/widget/TextView;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->initCreateButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initHeaderTextView(Lcom/iMe/fork/ui/view/TemplatesHeaderCell;)Landroid/widget/TextView;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->initHeaderTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSortButton(Lcom/iMe/fork/ui/view/TemplatesHeaderCell;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->initSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p0

    return-object p0
.end method

.method private static final bind$lambda$3$lambda$2(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Landroid/view/View;)V
    .locals 0

    const-string p1, "$templatesDelegate"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 70
    invoke-interface {p0, p1}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressOpenTemplates(Z)V

    return-void
.end method

.method private final getCreateButton()Landroid/widget/TextView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->createButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->headerTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->sortButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method private final initCreateButton()Landroid/widget/TextView;
    .locals 3

    .line 106
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/16 v1, 0x10

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 109
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

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initHeaderTextView()Landroid/widget/TextView;
    .locals 3

    .line 79
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private final initSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 5

    .line 84
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 85
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 84
    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    const/16 v1, 0xa

    .line 90
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 91
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    .line 92
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 93
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    const/4 v1, 0x2

    .line 95
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 96
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lcom/iMe/fork/enums/TemplatesSortingType;

    invoke-virtual {v1}, Lcom/iMe/fork/enums/TemplatesSortingType;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 97
    new-instance v1, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/fork/ui/view/TemplatesHeaderCell;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 103
    new-instance v1, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initSortButton$lambda$7$lambda$5(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/fork/ui/view/TemplatesHeaderCell;I)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/iMe/fork/enums/TemplatesSortingType;->values()[Lcom/iMe/fork/enums/TemplatesSortingType;

    move-result-object v0

    aget-object p2, v0, p2

    .line 99
    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->setSelectedTemplatesSortingType(Lcom/iMe/fork/enums/TemplatesSortingType;)V

    .line 100
    invoke-virtual {p2}, Lcom/iMe/fork/enums/TemplatesSortingType;->getIconResId()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 101
    invoke-direct {p1}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->updateSortingMenu()V

    return-void
.end method

.method private static final initSortButton$lambda$7$lambda$6(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private final updateSortingMenu()V
    .locals 9

    .line 115
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->getSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 116
    invoke-static {}, Lcom/iMe/fork/enums/TemplatesSortingType;->values()[Lcom/iMe/fork/enums/TemplatesSortingType;

    move-result-object v0

    .line 13579
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 117
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lcom/iMe/fork/enums/TemplatesSortingType;

    if-ne v5, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    .line 118
    :goto_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->getSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    .line 119
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v5, :cond_1

    move v8, v2

    goto :goto_2

    .line 120
    :cond_1
    invoke-virtual {v4}, Lcom/iMe/fork/enums/TemplatesSortingType;->getIconResId()I

    move-result v8

    .line 121
    :goto_2
    invoke-virtual {v4}, Lcom/iMe/fork/enums/TemplatesSortingType;->getNameResId()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {v6, v7, v8, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    .line 124
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

    .line 54
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    if-lez p1, :cond_0

    .line 56
    sget v1, Lorg/telegram/messenger/R$string;->chat_templates:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->chat_templates_list_header:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->getSortButton()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    .line 262
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 p1, 0x30

    .line 62
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 64
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    .line 61
    invoke-static {p1, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 68
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell;->getCreateButton()Landroid/widget/TextView;

    move-result-object p1

    .line 69
    invoke-static {p1, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground(Landroid/view/View;Z)V

    .line 70
    new-instance v0, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/iMe/fork/ui/view/TemplatesHeaderCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
