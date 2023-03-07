.class public final Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;->createPinCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$doOnSuccessNext$1\n+ 2 PinCodeInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor\n*L\n1#1,81:1\n26#2,3:82\n*E\n"
.end annotation


# instance fields
.field final synthetic $guid$inlined:Ljava/lang/String;

.field final synthetic $safePassword$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;

    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->$guid$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->$safePassword$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/smedialink/storage/domain/model/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type com.smedialink.storage.domain.model.Result<kotlin.Boolean>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;

    invoke-static {p1}, Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->$guid$inlined:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setLastLoggedInGuid(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;

    invoke-static {p1}, Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->$safePassword$inlined:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setWalletPassword(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1;->accept(Lcom/smedialink/storage/domain/model/Result;)V

    return-void
.end method
