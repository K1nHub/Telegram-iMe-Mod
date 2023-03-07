.class public abstract Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;
.super Lcom/smedialink/ui/base/mvp/MvpFragment;
.source "WalletHomeTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeTabFragment.kt\ncom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,32:1\n56#2,6:33\n*S KotlinDebug\n*F\n+ 1 WalletHomeTabFragment.kt\ncom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment\n*L\n11#1:33,6\n*E\n"
.end annotation


# instance fields
.field private parentView:Lcom/smedialink/ui/wallet/home/v2/WalletHomeView;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;-><init>()V

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->resourceManager$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public abstract handleBottomPadding(I)V
.end method

.method public abstract loadBalances()V
.end method

.method public abstract loadTabInfo()V
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method

.method public final selectTab(I)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->parentView:Lcom/smedialink/ui/wallet/home/v2/WalletHomeView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeView;->onTabSelected(I)V

    :goto_0
    return-void
.end method

.method public final setParentView(Lcom/smedialink/ui/wallet/home/v2/WalletHomeView;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->parentView:Lcom/smedialink/ui/wallet/home/v2/WalletHomeView;

    return-void
.end method
