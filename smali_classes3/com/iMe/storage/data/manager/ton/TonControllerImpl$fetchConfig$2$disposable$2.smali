.class final Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TonControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->fetchConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$2;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 181
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$2;->invoke(Lcom/iMe/storage/domain/model/Result;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_0
    instance-of p1, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$fetchConfig$2$disposable$2;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-static {p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getTonConfigJsonString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 186
    :goto_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    .line 187
    :cond_2
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "TON global configuration fetching error"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method
