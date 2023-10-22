.class public final Lcom/iMe/fork/ui/view/FragmentPreviewMenu;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
.source "FragmentPreviewMenu.kt"


# instance fields
.field private final closeItem$delegate:Lkotlin/Lazy;

.field private final logoutItem$delegate:Lkotlin/Lazy;

.field private final openItem$delegate:Lkotlin/Lazy;

.field private final parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$0EG5-dWk6fGzMX071BHGo2YJoGQ(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->initCloseItem$lambda$4$lambda$3(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3dl-0-RCTXSMlNY94sCzMECzprg(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->initOpenItem$lambda$2$lambda$1(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZN2d9SyhcTqb5296p9w0sPOJZQQ(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->initLogoutItem$lambda$7$lambda$6$lambda$5(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ogIqT87yjeDphT84YVYO1EwDGOI(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->initLogoutItem$lambda$7$lambda$6(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    const-string v0, "parentFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    .line 20
    invoke-direct {p0, v0, v1, p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 17
    iput-object p1, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 18
    iput-object p2, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 19
    iput-object p3, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 24
    new-instance p1, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$openItem$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$openItem$2;-><init>(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->openItem$delegate:Lkotlin/Lazy;

    .line 25
    new-instance p1, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$closeItem$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$closeItem$2;-><init>(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->closeItem$delegate:Lkotlin/Lazy;

    .line 26
    new-instance p1, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$logoutItem$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$logoutItem$2;-><init>(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->logoutItem$delegate:Lkotlin/Lazy;

    .line 29
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->getOpenItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 30
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->getCloseItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 32
    instance-of p2, p2, Lorg/telegram/ui/DialogsActivity;

    if-eqz p2, :cond_0

    .line 33
    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 34
    sget p3, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    const/4 p1, -0x1

    const/16 p3, 0x8

    .line 36
    invoke-static {p1, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 37
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->getLogoutItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$initCloseItem(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->initCloseItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initLogoutItem(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->initLogoutItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initOpenItem(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->initOpenItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p0

    return-object p0
.end method

.method private final getCloseItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->closeItem$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object v0
.end method

.method private final getLogoutItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->logoutItem$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object v0
.end method

.method private final getOpenItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->openItem$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object v0
.end method

.method private final initCloseItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 5

    .line 52
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v1, 0xa0

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 54
    sget v1, Lorg/telegram/messenger/R$string;->Back:I

    const-string v2, "Back"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 55
    new-instance v1, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initCloseItem$lambda$4$lambda$3(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private final initLogoutItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 5

    .line 59
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v1, 0xa0

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 62
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 63
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    .line 61
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 67
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const v2, 0x3df5c28f    # 0.12f

    .line 66
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 72
    sget v1, Lorg/telegram/messenger/R$string;->LogOut:I

    const-string v2, "LogOut"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 73
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_leave:I

    .line 71
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 75
    new-instance v1, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initLogoutItem$lambda$7$lambda$6(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    .line 77
    new-instance p1, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final initLogoutItem$lambda$7$lambda$6$lambda$5(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 80
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p0

    .line 79
    invoke-static {v1, p0}, Lorg/telegram/ui/LogoutActivity;->makeLogOutDialog(Landroid/content/Context;I)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    .line 78
    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private final initOpenItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 5

    .line 42
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v1, 0xa0

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 45
    sget v1, Lorg/telegram/messenger/R$string;->Open:I

    const-string v2, "Open"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 46
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_message:I

    .line 44
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 48
    new-instance v1, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initOpenItem$lambda$2$lambda$1(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->expandPreviewFragment()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getPreviewFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method public final getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method
