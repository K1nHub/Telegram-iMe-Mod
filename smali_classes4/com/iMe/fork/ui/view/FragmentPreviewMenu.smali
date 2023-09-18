.class public final Lcom/iMe/fork/ui/view/FragmentPreviewMenu;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
.source "FragmentPreviewMenu.kt"


# instance fields
.field private final closeItem$delegate:Lkotlin/Lazy;

.field private final openItem$delegate:Lkotlin/Lazy;

.field private final previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$erdUyK1sMpo-FJK4Ih-V0STTo44(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->initCloseItem$lambda$3$lambda$2(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nMfyh7FG4i9uDp502sLaGQ-QjtM(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->initOpenItem$lambda$1$lambda$0(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const-string v0, "parentActionBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 17
    sget v0, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    .line 15
    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 13
    iput-object p2, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 14
    iput-object p3, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 22
    new-instance p1, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$openItem$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$openItem$2;-><init>(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->openItem$delegate:Lkotlin/Lazy;

    .line 23
    new-instance p1, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$closeItem$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$closeItem$2;-><init>(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->closeItem$delegate:Lkotlin/Lazy;

    .line 26
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->getOpenItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 27
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->getCloseItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    return-void
.end method

.method public static final synthetic access$initCloseItem(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->initCloseItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initOpenItem(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->initOpenItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p0

    return-object p0
.end method

.method private final getCloseItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->closeItem$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object v0
.end method

.method private final getOpenItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->openItem$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object v0
.end method

.method private final initCloseItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 5

    .line 46
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v1, 0xa0

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 48
    sget v1, Lorg/telegram/messenger/R$string;->Back:I

    const-string v2, "Back"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 49
    new-instance v1, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initCloseItem$lambda$3$lambda$2(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private final initOpenItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 5

    .line 34
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v1, 0xa0

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 39
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrOpenChat:I

    const-string v2, "AccDescrOpenChat"

    .line 37
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 40
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_message:I

    .line 36
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 42
    new-instance v1, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initOpenItem$lambda$1$lambda$0(Lcom/iMe/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
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

    .line 13
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method public final getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method
