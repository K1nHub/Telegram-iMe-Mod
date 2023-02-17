.class public final Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 SimplexInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor\n*L\n1#1,81:1\n102#2,7:82\n*E\n"
.end annotation


# instance fields
.field final synthetic $digitalCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

.field final synthetic $fiatCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

.field final synthetic $networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1;->$fiatCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

    iput-object p3, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1;->$digitalCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    iput-object p4, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1;->$networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    .line 83
    iget-object v2, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1;->$fiatCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

    .line 84
    iget-object v3, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1;->$digitalCurrency$inlined:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    .line 85
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getCryptoMoneyAmount()F

    move-result v4

    .line 86
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getFiatMoneyAmount()F

    move-result v0

    float-to-int v5, v0

    .line 87
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getQuoteId()Ljava/lang/String;

    move-result-object v6

    .line 88
    iget-object v7, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1;->$networkType$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 82
    invoke-virtual/range {v1 .. v7}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->purchase(Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FILjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$lambda-4$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
