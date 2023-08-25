.class public final Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->subscribeToQueryChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletNetworksSettingsPresenter.kt\ncom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter\n*L\n1#1,111:1\n107#2,10:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 112
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->access$getSearchResultsItems$p(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;->renderEmptySearchResults()V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;->renderItems(Ljava/util/List;)V

    :goto_0
    return-void
.end method
