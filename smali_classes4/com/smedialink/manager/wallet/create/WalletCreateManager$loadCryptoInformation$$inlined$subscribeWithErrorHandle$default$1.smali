.class public final Lcom/smedialink/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/wallet/create/WalletCreateManager;->loadCryptoInformation(Lorg/fork/utils/Callbacks$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletCreateManager.kt\ncom/smedialink/manager/wallet/create/WalletCreateManager\n*L\n1#1,111:1\n110#2,8:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $endAction$inlined:Lorg/fork/utils/Callbacks$Callback;

.field final synthetic this$0:Lcom/smedialink/manager/wallet/create/WalletCreateManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    iput-object p2, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->$endAction$inlined:Lorg/fork/utils/Callbacks$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->setLinkedCryptoWalletAddress(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->$endAction$inlined:Lorg/fork/utils/Callbacks$Callback;

    invoke-interface {p1}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-static {v0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->access$getViewState(Lcom/smedialink/manager/wallet/create/WalletCreateManager;)Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-static {v1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->access$getResourceManager$p(Lcom/smedialink/manager/wallet/create/WalletCreateManager;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
