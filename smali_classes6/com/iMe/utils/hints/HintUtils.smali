.class public final Lcom/iMe/utils/hints/HintUtils;
.super Ljava/lang/Object;
.source "HintUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHintUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HintUtils.kt\ncom/iMe/utils/hints/HintUtils\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,81:1\n260#2:82\n260#2:83\n260#2:84\n*S KotlinDebug\n*F\n+ 1 HintUtils.kt\ncom/iMe/utils/hints/HintUtils\n*L\n35#1:82\n50#1:83\n64#1:84\n*E\n"
.end annotation


# instance fields
.field private final hintFactory:Lcom/iMe/utils/hints/HintFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/iMe/utils/hints/HintFactory;

    invoke-direct {v0}, Lcom/iMe/utils/hints/HintFactory;-><init>()V

    iput-object v0, p0, Lcom/iMe/utils/hints/HintUtils;->hintFactory:Lcom/iMe/utils/hints/HintFactory;

    return-void
.end method


# virtual methods
.method public final hideHint()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/iMe/utils/hints/HintUtils;->hintFactory:Lcom/iMe/utils/hints/HintFactory;

    invoke-virtual {v0}, Lcom/iMe/utils/hints/HintFactory;->hideHint()V

    return-void
.end method

.method public final showChangeNetworkHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 10

    const-string/jumbo v0, "parentLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "network_type_view"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/NetworkTypeView;

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 36
    iget-object v1, p0, Lcom/iMe/utils/hints/HintUtils;->hintFactory:Lcom/iMe/utils/hints/HintFactory;

    .line 39
    new-instance v9, Lcom/iMe/model/hint/HintModel;

    .line 40
    sget v2, Lorg/telegram/messenger/R$string;->wallet_network_type_hint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "getInternalString(R.stri\u2026wallet_network_type_hint)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v2, v9

    .line 39
    invoke-direct/range {v2 .. v8}, Lcom/iMe/model/hint/HintModel;-><init>(Ljava/lang/String;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    invoke-virtual {v1, p1, v0, v9}, Lcom/iMe/utils/hints/HintFactory;->showHint(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/view/View;Lcom/iMe/model/hint/HintModel;)V

    :cond_2
    return-void
.end method

.method public final showSortingCreateadFolderOrTopic(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 10

    const-string/jumbo v0, "parentLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/iMe/common/IdFabric$Menu;->OPTIONS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/iMe/utils/hints/HintUtils;->hintFactory:Lcom/iMe/utils/hints/HintFactory;

    .line 68
    new-instance v9, Lcom/iMe/model/hint/HintModel;

    .line 69
    sget v2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "getInternalString(R.stri\u2026ting_settings_item_title)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v2, v9

    .line 68
    invoke-direct/range {v2 .. v8}, Lcom/iMe/model/hint/HintModel;-><init>(Ljava/lang/String;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    invoke-virtual {v1, p1, v0, v9}, Lcom/iMe/utils/hints/HintFactory;->showHint(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/view/View;Lcom/iMe/model/hint/HintModel;)V

    :cond_2
    return-void
.end method

.method public final showStakingInfoHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 10

    const-string/jumbo v0, "parentLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/iMe/common/IdFabric$Menu;->STAKING_HELP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/iMe/utils/hints/HintUtils;->hintFactory:Lcom/iMe/utils/hints/HintFactory;

    .line 54
    new-instance v9, Lcom/iMe/model/hint/HintModel;

    .line 55
    sget v2, Lorg/telegram/messenger/R$string;->staking_info_hint:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "getInternalString(R.string.staking_info_hint)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v2, v9

    .line 54
    invoke-direct/range {v2 .. v8}, Lcom/iMe/model/hint/HintModel;-><init>(Ljava/lang/String;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    invoke-virtual {v1, p1, v0, v9}, Lcom/iMe/utils/hints/HintFactory;->showHint(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/view/View;Lcom/iMe/model/hint/HintModel;)V

    :cond_2
    return-void
.end method
