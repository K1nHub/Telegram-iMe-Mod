.class public final Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->createPinCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$doOnSuccessNext$1\n+ 2 PinCodeInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor\n*L\n1#1,80:1\n26#2,3:81\n*E\n"
.end annotation


# instance fields
.field final synthetic $guid$inlined:Ljava/lang/String;

.field final synthetic $safePassword$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;

    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->$guid$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->$safePassword$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->invoke(Lcom/iMe/storage/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 40
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type com.iMe.storage.domain.model.Result<kotlin.Boolean>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;

    invoke-static {p1}, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->$guid$inlined:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setLastLoggedInGuid(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;

    invoke-static {p1}, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->$safePassword$inlined:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setWalletPassword(Ljava/lang/String;)V

    :cond_0
    return-void
.end method