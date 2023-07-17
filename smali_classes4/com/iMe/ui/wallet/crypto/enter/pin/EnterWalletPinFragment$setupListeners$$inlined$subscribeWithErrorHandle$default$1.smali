.class public final Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 EnterWalletPinFragment.kt\ncom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment\n*L\n1#1,111:1\n209#2,9:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

    .line 113
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletReset;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletReset;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    goto :goto_1

    .line 114
    :cond_0
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessRecreateWalletByPassword;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessRecreateWalletByPassword;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletRestored;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletRestored;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->access$getRxEventBus(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    new-instance v0, Lcom/iMe/common/AppRxEvents$SuccessEnterPinCode;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->access$getScreenType$p(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iMe/common/AppRxEvents$SuccessEnterPinCode;-><init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 116
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->access$getResultDelegate$p(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    new-instance v0, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeResult$Success;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeResult$Success;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_2
    :goto_1
    return-void
.end method
