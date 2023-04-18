.class public final Lcom/iMe/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/wallet/create/WalletCreateManager;->loadCryptoInformation(Lcom/iMe/fork/utils/Callbacks$Callback;)V
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
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletCreateManager.kt\ncom/iMe/manager/wallet/create/WalletCreateManager\n*L\n1#1,111:1\n120#2,9:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $endAction$inlined:Lcom/iMe/fork/utils/Callbacks$Callback;

.field final synthetic this$0:Lcom/iMe/manager/wallet/create/WalletCreateManager;


# direct methods
.method public constructor <init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    iput-object p2, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->$endAction$inlined:Lcom/iMe/fork/utils/Callbacks$Callback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->setLinkedCryptoWalletAddress(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->$endAction$inlined:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-interface {p1}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-static {v0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->access$getViewState(Lcom/iMe/manager/wallet/create/WalletCreateManager;)Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-static {v1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->access$getResourceManager$p(Lcom/iMe/manager/wallet/create/WalletCreateManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_1
    :goto_0
    return-void
.end method
