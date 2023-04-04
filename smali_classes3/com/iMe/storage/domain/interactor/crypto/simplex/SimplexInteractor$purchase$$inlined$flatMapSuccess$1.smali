.class public final Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->purchase(Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;FLcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 SimplexInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor\n*L\n1#1,80:1\n67#2,8:81\n*E\n"
.end annotation


# instance fields
.field final synthetic $digitalCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

.field final synthetic $fiatCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

.field final synthetic $networkType$inlined:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapSuccess$1;->$fiatCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapSuccess$1;->$digitalCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    iput-object p4, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapSuccess$1;->$networkType$inlined:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
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

    .line 16
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    .line 82
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    .line 83
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapSuccess$1;->$fiatCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    .line 84
    iget-object v2, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapSuccess$1;->$digitalCurrency$inlined:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    .line 85
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getCryptoMoneyAmount()F

    move-result v3

    .line 86
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getFiatMoneyAmount()F

    move-result v4

    float-to-int v4, v4

    .line 87
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getQuoteId()Ljava/lang/String;

    move-result-object v5

    .line 88
    iget-object v6, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapSuccess$1;->$networkType$inlined:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 82
    invoke-virtual/range {v0 .. v6}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->purchase(Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;FILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
