.class public final Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->loadAndPay(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V
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
        "Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 BinancePayProcessManager.kt\ncom/iMe/manager/crypto/pay/BinancePayProcessManager\n*L\n1#1,111:1\n65#2,6:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $holder$inlined:Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;

.field final synthetic this$0:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;


# direct methods
.method public constructor <init>(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    iput-object p2, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->$holder$inlined:Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

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
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;",
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

    iget-object v0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    iget-object v1, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->$holder$inlined:Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v0, v1, p1}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->pay(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V

    goto :goto_0

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->access$getViewState(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;)Lcom/iMe/manager/crypto/pay/BinancePayProcessView;

    move-result-object v0

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-static {v1}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_1
    :goto_0
    return-void
.end method