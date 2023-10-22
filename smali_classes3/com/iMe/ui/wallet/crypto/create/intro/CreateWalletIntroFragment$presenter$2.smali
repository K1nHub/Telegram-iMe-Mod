.class final Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletIntroFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;-><init>(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletIntroFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletIntroFragment.kt\ncom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,372:1\n56#2,6:373\n*S KotlinDebug\n*F\n+ 1 CreateWalletIntroFragment.kt\ncom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2\n*L\n62#1:373,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $linkedWalletAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2;->$linkedWalletAddress:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2$1;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2;->$linkedWalletAddress:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2$1;-><init>(Ljava/lang/String;Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    .line 58
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2$invoke$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2$invoke$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2;->invoke()Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;

    move-result-object v0

    return-object v0
.end method
