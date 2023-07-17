.class final Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSelectTokenFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSelectTokenFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSelectTokenFragment.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,220:1\n56#2,6:221\n*S KotlinDebug\n*F\n+ 1 WalletSelectTokenFragment.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2\n*L\n43#1:221,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $networkId:Ljava/lang/String;

.field final synthetic $selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;->$selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;->$networkId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    new-instance v1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$1;

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;->$selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;->$networkId:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$1;-><init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    .line 58
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$invoke$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$invoke$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;->invoke()Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    move-result-object v0

    return-object v0
.end method
