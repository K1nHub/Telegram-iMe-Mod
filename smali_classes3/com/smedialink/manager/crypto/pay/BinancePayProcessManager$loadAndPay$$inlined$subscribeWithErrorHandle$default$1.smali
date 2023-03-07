.class public final Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;->loadAndPay(Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 BinancePayProcessManager.kt\ncom/smedialink/manager/crypto/pay/BinancePayProcessManager\n*L\n1#1,111:1\n65#2,5:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $holder$inlined:Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;

.field final synthetic this$0:Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;

    iput-object p2, p0, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->$holder$inlined:Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;

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

    iget-object v0, p0, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;

    iget-object v1, p0, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->$holder$inlined:Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v0, v1, p1}, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;->pay(Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;)V

    goto :goto_0

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;

    invoke-static {v0}, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;->access$getViewState(Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;)Lcom/smedialink/manager/crypto/pay/BinancePayProcessView;

    move-result-object v0

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;

    invoke-static {v1}, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;->access$getResourceManager$p(Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
