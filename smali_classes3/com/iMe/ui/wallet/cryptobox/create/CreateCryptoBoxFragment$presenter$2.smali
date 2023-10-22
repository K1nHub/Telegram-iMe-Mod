.class final Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateCryptoBoxFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/crypto/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateCryptoBoxFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateCryptoBoxFragment.kt\ncom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,518:1\n56#2,6:519\n*S KotlinDebug\n*F\n+ 1 CreateCryptoBoxFragment.kt\ncom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2\n*L\n70#1:519,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic $presetNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;

    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2;->$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2;->$presetNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;

    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2$1;

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2;->$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2;->$presetNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-direct {v1, v2, v3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2$1;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 58
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2$invoke$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2$invoke$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$presenter$2;->invoke()Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    move-result-object v0

    return-object v0
.end method
