.class public final Lcom/iMe/utils/helper/wallet/CryptoHelper$extractAddress$$inlined$mapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/utils/helper/wallet/CryptoHelper;->extractAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$mapSuccess$1\n+ 2 CryptoHelper.kt\ncom/iMe/utils/helper/wallet/CryptoHelper\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,80:1\n37#2:81\n38#2:83\n9#3:82\n9#3:84\n*S KotlinDebug\n*F\n+ 1 CryptoHelper.kt\ncom/iMe/utils/helper/wallet/CryptoHelper\n*L\n37#1:82\n38#1:84\n*E\n"
.end annotation


# instance fields
.field final synthetic $group$inlined:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/utils/helper/wallet/CryptoHelper$extractAddress$$inlined$mapSuccess$1;->$group$inlined:Ljava/lang/String;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iMe/utils/helper/wallet/CryptoHelper$extractAddress$$inlined$mapSuccess$1;->$group$inlined:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    goto :goto_0

    .line 29
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_2
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/utils/helper/wallet/CryptoHelper$extractAddress$$inlined$mapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
