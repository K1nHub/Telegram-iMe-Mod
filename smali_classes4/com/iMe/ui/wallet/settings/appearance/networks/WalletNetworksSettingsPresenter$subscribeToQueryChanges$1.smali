.class final Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$1;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$1;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$1;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    const-string/jumbo v1, "newQuery"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->access$setQuery$p(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;Ljava/lang/String;)V

    return-void
.end method
