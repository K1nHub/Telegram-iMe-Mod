.class public final Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/Network;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletFlowCoordinator.kt\ncom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n46#2,4:112\n50#2:119\n51#2:123\n52#2,5:125\n57#2,10:131\n1360#3:116\n1446#3,2:117\n1448#3,3:120\n1855#3:124\n1856#3:130\n*S KotlinDebug\n*F\n+ 1 WalletFlowCoordinator.kt\ncom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator\n*L\n49#1:116\n49#1:117,2\n49#1:120,3\n51#1:124\n51#1:130\n*E\n"
.end annotation


# instance fields
.field final synthetic $actionBarLayout$inlined:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field final synthetic $nextFragment$inlined:Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

.field final synthetic $removeLast$inlined:Z

.field final synthetic $this_with$inlined:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field final synthetic this$0:Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->$this_with$inlined:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    iput-object p2, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    iput-object p3, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->$actionBarLayout$inlined:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iput-object p4, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->$nextFragment$inlined:Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

    iput-boolean p5, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->$removeLast$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->$this_with$inlined:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1447
    check-cast v3, Lcom/iMe/storage/domain/model/crypto/Network;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 119
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getLogoUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getSmallLogoUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1448
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 1855
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iMe/utils/glide/GlideApp;->with(Landroid/content/Context;)Lcom/iMe/utils/glide/GlideRequests;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lcom/iMe/utils/glide/GlideRequests;->asDrawable()Lcom/iMe/utils/glide/GlideRequest;

    move-result-object v3

    .line 127
    invoke-virtual {v3, v2}, Lcom/iMe/utils/glide/GlideRequest;->load(Ljava/lang/String;)Lcom/iMe/utils/glide/GlideRequest;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 114
    :cond_1
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setSupportedNetworks(Ljava/util/List;)V

    .line 133
    iget-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->$this_with$inlined:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setLastNetworksUpdateTime(J)V

    .line 134
    iget-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->$actionBarLayout$inlined:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->$nextFragment$inlined:Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

    iget-boolean v2, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->$removeLast$inlined:Z

    invoke-static {p1, v0, v1, v2}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->access$startWalletFlow(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V

    goto :goto_2

    .line 137
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$lambda$6$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    invoke-static {v0}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->access$getResourceManager$p(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method
