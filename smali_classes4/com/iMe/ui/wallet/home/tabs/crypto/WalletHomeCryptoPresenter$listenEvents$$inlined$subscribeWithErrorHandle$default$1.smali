.class public final Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->listenEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletHomeCryptoPresenter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter\n*L\n1#1,132:1\n522#2,30:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/RxEvent;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 135
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;

    :goto_0
    if-eqz v0, :cond_1

    .line 136
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-virtual {p1, v1, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo(ZZ)V

    goto/16 :goto_6

    .line 139
    :cond_1
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworksSettingsChanged;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworksSettingsChanged;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 140
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->access$getSelectedNetworkItem$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/model/wallet/crypto/NetworkItem;

    move-result-object p1

    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    .line 141
    sget-object p1, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p1, v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->isNetworkEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 142
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    sget-object v0, Lcom/iMe/model/wallet/crypto/NetworkItem$All;->INSTANCE:Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->access$setSelectedNetworkItem$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    .line 144
    :cond_4
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->access$getCryptoPreferenceHelper$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->access$getSelectedNetworkItem$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/model/wallet/crypto/NetworkItem;

    move-result-object v0

    sget-object v2, Lcom/iMe/model/wallet/crypto/NetworkItem$All;->INSTANCE:Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 144
    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAllNetworksSelected(Z)V

    .line 146
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-virtual {p1, v1, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo(ZZ)V

    goto :goto_6

    .line 149
    :cond_5
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$AllWalletsReset;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$AllWalletsReset;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_2

    .line 150
    :cond_6
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletReset;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletReset;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_3

    .line 151
    :cond_7
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    .line 152
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->setLinkedWalletsAddresses(Ljava/util/Map;)V

    .line 153
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-static {p1, v1, v4, v3, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZILjava/lang/Object;)V

    goto :goto_6

    .line 156
    :cond_8
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletCreated;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletCreated;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_4

    .line 157
    :cond_9
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletRestored;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletRestored;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_a

    move p1, v1

    goto :goto_5

    .line 158
    :cond_a
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_5
    if-eqz p1, :cond_b

    .line 159
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-static {p1, v1, v4, v3, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZILjava/lang/Object;)V

    :cond_b
    :goto_6
    return-void
.end method
