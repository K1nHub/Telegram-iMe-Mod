.class public final Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->purchase(Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;FILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoPayment;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoPayment;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapError$1\n+ 2 SimplexInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,80:1\n100#2,2:81\n14#3:83\n*S KotlinDebug\n*F\n+ 1 SimplexInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor\n*L\n101#1:83\n*E\n"
.end annotation


# instance fields
.field final synthetic $digitalCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

.field final synthetic $errorStatus:[Lcom/iMe/storage/data/network/model/error/IErrorStatus;

.field final synthetic $fiatAmount$inlined:I

.field final synthetic $fiatCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

.field final synthetic $networkType$inlined:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;


# direct methods
.method public constructor <init>([Lcom/iMe/storage/data/network/model/error/IErrorStatus;Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;ILcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$errorStatus:[Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$digitalCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    iput p4, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$fiatAmount$inlined:I

    iput-object p5, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$networkType$inlined:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    iput-object p6, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$fiatCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

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
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoPayment;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoPayment;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 51
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$errorStatus:[Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    .line 81
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$digitalCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;->USD:Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    iget v2, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$fiatAmount$inlined:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$networkType$inlined:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->getBuyingCryptoQuote(Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;FLcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda$4$$inlined$flatMapSuccess$1;

    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    iget-object v2, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$fiatCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    iget-object v3, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$digitalCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    iget-object v4, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$networkType$inlined:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda$4$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(Result.error<R>(result.error) as R)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
