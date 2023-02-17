.class public final Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->purchase(Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FILjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapError$1\n+ 2 SimplexInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor\n+ 3 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,81:1\n100#2,2:82\n15#3:84\n*S KotlinDebug\n*F\n+ 1 SimplexInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor\n*L\n101#1:84\n*E\n"
.end annotation


# instance fields
.field final synthetic $digitalCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

.field final synthetic $errorStatus:[Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

.field final synthetic $fiatAmount$inlined:I

.field final synthetic $fiatCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

.field final synthetic $networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;


# direct methods
.method public constructor <init>([Lcom/smedialink/storage/data/network/model/error/IErrorStatus;Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;ILcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$errorStatus:[Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    iput-object p3, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$digitalCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    iput p4, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$fiatAmount$inlined:I

    iput-object p5, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iput-object p6, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$fiatCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 52
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$errorStatus:[Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    .line 82
    iget-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$digitalCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;->USD:Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

    iget v2, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$fiatAmount$inlined:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->getBuyingCryptoQuote(Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1;

    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    iget-object v2, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$fiatCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

    iget-object v3, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$digitalCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    iget-object v4, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->$networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(Result.error<R>(result.error) as R)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;->apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
