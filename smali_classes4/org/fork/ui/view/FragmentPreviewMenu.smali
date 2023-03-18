.class public final Lorg/fork/ui/view/FragmentPreviewMenu;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
.source "FragmentPreviewMenu.kt"


# instance fields
.field private final closeItem$delegate:Lkotlin/Lazy;

.field private final openItem$delegate:Lkotlin/Lazy;

.field private final parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private final previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$_2OL0qRnNv4Hnl82txrJWkBEZnw(Lorg/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/view/FragmentPreviewMenu;->initCloseItem$lambda$3$lambda$2(Lorg/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$noGXcsfBvEMjgqNKJgydxR78ewY(Lorg/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/view/FragmentPreviewMenu;->initOpenItem$lambda$1$lambda$0(Lorg/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    const-string v0, "parentActionBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-direct {p0, v0, v1, p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 8
    iput-object p1, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 9
    iput-object p2, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 10
    iput-object p3, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 14
    new-instance p1, Lorg/fork/ui/view/FragmentPreviewMenu$openItem$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/FragmentPreviewMenu$openItem$2;-><init>(Lorg/fork/ui/view/FragmentPreviewMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->openItem$delegate:Lkotlin/Lazy;

    .line 15
    new-instance p1, Lorg/fork/ui/view/FragmentPreviewMenu$closeItem$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/FragmentPreviewMenu$closeItem$2;-><init>(Lorg/fork/ui/view/FragmentPreviewMenu;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->closeItem$delegate:Lkotlin/Lazy;

    .line 18
    invoke-direct {p0}, Lorg/fork/ui/view/FragmentPreviewMenu;->getOpenItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 19
    invoke-direct {p0}, Lorg/fork/ui/view/FragmentPreviewMenu;->getCloseItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    return-void
.end method

.method public static final synthetic access$initCloseItem(Lorg/fork/ui/view/FragmentPreviewMenu;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/fork/ui/view/FragmentPreviewMenu;->initCloseItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initOpenItem(Lorg/fork/ui/view/FragmentPreviewMenu;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/fork/ui/view/FragmentPreviewMenu;->initOpenItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p0

    return-object p0
.end method

.method private final getCloseItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->closeItem$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object v0
.end method

.method private final getOpenItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->openItem$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object v0
.end method

.method private final initCloseItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 5

    .line 31
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v1, 0xa0

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 33
    sget v1, Lorg/telegram/messenger/R$string;->Close:I

    const-string v2, "Close"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->poll_remove:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 34
    new-instance v1, Lorg/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/view/FragmentPreviewMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initCloseItem$lambda$3$lambda$2(Lorg/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private final initOpenItem()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 5

    .line 25
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v1, 0xa0

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 27
    sget v1, Lorg/telegram/messenger/R$string;->Open:I

    const-string v2, "Open"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 28
    new-instance v1, Lorg/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fork/ui/view/FragmentPreviewMenu$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/view/FragmentPreviewMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final initOpenItem$lambda$1$lambda$0(Lorg/fork/ui/view/FragmentPreviewMenu;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->expandPreviewFragment()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getParentActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->parentActionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object v0
.end method

.method public final getPreviewFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->previewFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method public final getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/fork/ui/view/FragmentPreviewMenu;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method
