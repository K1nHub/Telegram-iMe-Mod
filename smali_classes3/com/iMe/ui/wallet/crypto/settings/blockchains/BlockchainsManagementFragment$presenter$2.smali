.class final Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$presenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BlockchainsManagementFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockchainsManagementFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockchainsManagementFragment.kt\ncom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$presenter$2\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,309:1\n56#2,6:310\n*S KotlinDebug\n*F\n+ 1 BlockchainsManagementFragment.kt\ncom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$presenter$2\n*L\n42#1:310,6\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$presenter$2;->this$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$presenter$2;->this$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$presenter$2$invoke$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$presenter$2$invoke$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$presenter$2;->invoke()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    move-result-object v0

    return-object v0
.end method
