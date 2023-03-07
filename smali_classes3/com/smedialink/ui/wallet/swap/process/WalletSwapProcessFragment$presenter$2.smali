.class final Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapProcessFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSwapProcessFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProcessFragment.kt\ncom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,482:1\n56#2,6:483\n*S KotlinDebug\n*F\n+ 1 WalletSwapProcessFragment.kt\ncom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2\n*L\n55#1:483,6\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2$1;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    .line 58
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2$invoke$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2$invoke$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2;->invoke()Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object v0

    return-object v0
.end method
