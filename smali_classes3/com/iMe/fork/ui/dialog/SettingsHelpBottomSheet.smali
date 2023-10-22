.class public final Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SettingsHelpBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$Companion;,
        Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsHelpBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsHelpBottomSheet.kt\ncom/iMe/fork/ui/dialog/SettingsHelpBottomSheet\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,159:1\n1864#2,3:160\n*S KotlinDebug\n*F\n+ 1 SettingsHelpBottomSheet.kt\ncom/iMe/fork/ui/dialog/SettingsHelpBottomSheet\n*L\n96#1:160,3\n*E\n"
.end annotation


# instance fields
.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final rootView$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$QTK1oSG1WiTvZlv2A9fUW6gGuUs(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lcom/iMe/fork/enums/DrawerSocialNetwork;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->createSocialNetworkAlert$lambda$7$lambda$6(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lcom/iMe/fork/enums/DrawerSocialNetwork;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-L2Lk2qhBSqo6AfJYlrGk-XTOs(Lkotlin/Pair;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->createBottomSheetCell$lambda$4$lambda$3(Lkotlin/Pair;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 6

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 21
    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 25
    new-instance p2, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$rootView$2;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$rootView$2;-><init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->rootView$delegate:Lkotlin/Lazy;

    const/16 p2, 0x8

    new-array p2, p2, [Lkotlin/Pair;

    .line 27
    sget v0, Lorg/telegram/messenger/R$string;->settings_help_alert_support_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$1;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$1;-><init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)V

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p2, v1

    .line 30
    sget v0, Lorg/telegram/messenger/R$string;->settings_help_alert_group_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$2;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$2;-><init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)V

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p2, v2

    .line 33
    sget v0, Lorg/telegram/messenger/R$string;->settings_help_alert_lime_group_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$3;

    invoke-direct {v3, p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$3;-><init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, p2, v3

    .line 36
    sget v0, Lorg/telegram/messenger/R$string;->settings_help_alert_channel_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$4;

    invoke-direct {v3, p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$4;-><init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, p2, v3

    .line 42
    sget v0, Lorg/telegram/messenger/R$string;->settings_help_alert_faq_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$5;

    invoke-direct {v3, p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$5;-><init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, p2, v3

    .line 48
    sget v0, Lorg/telegram/messenger/R$string;->PrivacyPolicy:I

    const-string v3, "PrivacyPolicy"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$6;

    invoke-direct {v3, p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$6;-><init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)V

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, p2, v3

    .line 51
    sget-object v0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;->COMMON_SETTINGS:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 53
    sget v4, Lorg/telegram/messenger/R$string;->AskAQuestion:I

    const-string v5, "AskAQuestion"

    .line 51
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$7;

    invoke-direct {v5, p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$7;-><init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)V

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const/4 v5, 0x6

    aput-object v4, p2, v5

    const/4 v4, 0x7

    if-ne p1, v0, :cond_1

    .line 65
    sget p1, Lorg/telegram/messenger/R$string;->TelegramFeatures:I

    const-string v0, "TelegramFeatures"

    .line 63
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$8;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$items$8;-><init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)V

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    :cond_1
    aput-object v3, p2, v4

    .line 26
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->items:Ljava/util/List;

    .line 76
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 77
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->getRootView()Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 78
    sget p1, Lorg/telegram/messenger/R$string;->SettingsHelp:I

    const-string p2, "SettingsHelp"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static final synthetic access$createSocialNetworkAlert(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;Lcom/iMe/fork/enums/DrawerSocialNetwork;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->createSocialNetworkAlert(Lcom/iMe/fork/enums/DrawerSocialNetwork;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFragment$p(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;)Landroid/widget/ScrollView;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->initRootView()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method private final createBottomSheetCell(I)Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .locals 5

    .line 108
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 109
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)V

    .line 112
    new-instance p1, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda1;-><init>(Lkotlin/Pair;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final createBottomSheetCell$lambda$4$lambda$3(Lkotlin/Pair;Landroid/view/View;)V
    .locals 0

    const-string p1, "$item"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final createContentLayout()Landroid/widget/LinearLayout;
    .locals 6

    .line 94
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 96
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->items:Ljava/util/List;

    .line 1865
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lkotlin/Pair;

    .line 98
    invoke-direct {p0, v2}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->createBottomSheetCell(I)Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-result-object v2

    const/16 v3, 0x30

    .line 99
    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 97
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v2, v5

    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->initSocialNetworksRowView()Lcom/iMe/fork/ui/view/SocialNetworksRowView;

    move-result-object v1

    const/16 v2, 0x2c

    .line 104
    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final createSocialNetworkAlert(Lcom/iMe/fork/enums/DrawerSocialNetwork;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 4

    .line 133
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p1}, Lcom/iMe/fork/enums/DrawerSocialNetwork;->getTitleResId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 137
    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    const-string v3, "Open"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(\"Open\", R.string.Open)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 138
    sget v2, Lorg/telegram/messenger/R$string;->CopyLink:I

    const-string v3, "CopyLink"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(\"CopyLink\", R.string.CopyLink)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 135
    new-instance v2, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lcom/iMe/fork/enums/DrawerSocialNetwork;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method private static final createSocialNetworkAlert$lambda$7$lambda$6(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lcom/iMe/fork/enums/DrawerSocialNetwork;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$socialNetwork"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/4 p0, 0x1

    if-eq p3, p0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/enums/DrawerSocialNetwork;->url()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 145
    sget p0, Lorg/telegram/messenger/R$string;->LinkCopied:I

    const-string p1, "LinkCopied"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(\"LinkCopied\", R.string.LinkCopied)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/iMe/fork/enums/DrawerSocialNetwork;->url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final getRootView()Landroid/widget/ScrollView;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->rootView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    return-object v0
.end method

.method private final initRootView()Landroid/widget/ScrollView;
    .locals 2

    .line 89
    new-instance v0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 91
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->createContentLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private final initSocialNetworksRowView()Lcom/iMe/fork/ui/view/SocialNetworksRowView;
    .locals 3

    .line 115
    new-instance v0, Lcom/iMe/fork/ui/view/SocialNetworksRowView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/SocialNetworksRowView;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v1, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$initSocialNetworksRowView$1$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$initSocialNetworksRowView$1$1;-><init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;Lcom/iMe/fork/ui/view/SocialNetworksRowView;)V

    invoke-virtual {v0, v1}, Lcom/iMe/fork/ui/view/SocialNetworksRowView;->setListener(Lcom/iMe/fork/ui/view/SocialNetworksRowView$OnSocialNetworkClickListener;)V

    return-object v0
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->getRootView()Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method
