.class public final Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/wallet/create/WalletCreateManager;->prepareCreateWalletFlow(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletCreateManager.kt\ncom/smedialink/manager/wallet/create/WalletCreateManager\n*L\n1#1,111:1\n161#2,12:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $password$inlined:Ljava/lang/String;

.field final synthetic $walletCreationType$inlined:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;

.field final synthetic this$0:Lcom/smedialink/manager/wallet/create/WalletCreateManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    iput-object p2, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;->$walletCreationType$inlined:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;

    iput-object p3, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;->$password$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
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
    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    .line 115
    iget-object v1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;->$walletCreationType$inlined:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;

    .line 116
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->splitBySpace(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 117
    iget-object v2, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;->$password$inlined:Ljava/lang/String;

    .line 114
    invoke-static {v0, v1, p1, v2}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->access$openScreenByWalletCreationType(Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-static {v0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->access$getViewState(Lcom/smedialink/manager/wallet/create/WalletCreateManager;)Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/manager/wallet/create/WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-static {v1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->access$getResourceManager$p(Lcom/smedialink/manager/wallet/create/WalletCreateManager;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
