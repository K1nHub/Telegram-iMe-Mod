.class final Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$3;
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
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletNetworksSettingsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletNetworksSettingsPresenter.kt\ncom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,120:1\n766#2:121\n857#2,2:122\n*S KotlinDebug\n*F\n+ 1 WalletNetworksSettingsPresenter.kt\ncom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$3\n*L\n99#1:121\n99#1:122,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$3;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$3;->invoke(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$3;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->access$getNetworksItems$p(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter$subscribeToQueryChanges$3;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;

    .line 100
    invoke-virtual {v3}, Lcom/iMe/model/wallet/settings/NetworkSettingsItem;->getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->access$getQuery$p(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->access$getQuery$p(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method
