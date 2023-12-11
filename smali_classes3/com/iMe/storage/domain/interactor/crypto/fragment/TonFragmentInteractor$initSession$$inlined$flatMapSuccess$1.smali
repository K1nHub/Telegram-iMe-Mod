.class public final Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->initSession()Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentSessionData;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$flatMapSuccess$1\n+ 2 TonFragmentInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 5 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,101:1\n123#2,11:102\n143#2,3:120\n16#3,7:113\n11#4,2:123\n8#4,2:125\n18#5:127\n*S KotlinDebug\n*F\n+ 1 TonFragmentInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor\n*L\n133#1:113,7\n145#1:123,2\n145#1:125,2\n145#1:127\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentSessionData;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->access$getCryptoAccessManager$p(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    sget-object v3, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "v3R2"

    .line 105
    iget-object v3, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    .line 107
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentSessionData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentSessionData;->getClientId()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    const-string v2, ""

    .line 105
    :cond_1
    invoke-static {v3, v1, v4, v2}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->access$getSessionMessage(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    invoke-static {v2}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->access$getTonController$p(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lcom/iMe/storage/domain/manager/ton/TonController;

    move-result-object v2

    .line 111
    invoke-interface {v2, p1}, Lcom/iMe/storage/domain/manager/ton/TonController;->signData([B)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    new-instance v2, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1;

    iget-object v3, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    invoke-direct {v2, v3, v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v2}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "{\n                    va\u2026r.io())\n                }"

    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_2
    new-instance p1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    const/4 v0, 0x3

    invoke-direct {p1, v2, v2, v0, v2}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_3
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_4
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
