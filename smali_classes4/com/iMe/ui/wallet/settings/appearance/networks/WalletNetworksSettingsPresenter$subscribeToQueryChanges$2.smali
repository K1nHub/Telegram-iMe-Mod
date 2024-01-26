.class final Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletNetworksSettingsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->subscribeToQueryChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$2;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const-string/jumbo v0, "rawQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$2;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$2;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->access$getNetworksItems$p(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;->renderItems(Ljava/util/List;)V

    move v0, v1

    .line 94
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$2;->invoke(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
