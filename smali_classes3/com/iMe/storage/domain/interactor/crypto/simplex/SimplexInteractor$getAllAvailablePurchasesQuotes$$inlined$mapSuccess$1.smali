.class public final Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$getAllAvailablePurchasesQuotes$$inlined$mapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->getAllAvailablePurchasesQuotes(Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
        ">;>;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$mapSuccess$1\n+ 2 SimplexInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n*L\n1#1,101:1\n55#2:102\n15#3:103\n*S KotlinDebug\n*F\n+ 1 SimplexInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor\n*L\n55#1:103\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$getAllAvailablePurchasesQuotes$$inlined$mapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;>;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$getAllAvailablePurchasesQuotes$$inlined$mapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->access$withDefaultCustomQuote(Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 15
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    goto :goto_0

    .line 32
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_1
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$getAllAvailablePurchasesQuotes$$inlined$mapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
