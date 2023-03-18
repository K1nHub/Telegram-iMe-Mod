.class final Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$initTonLib$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TonControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->initTonLib()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonControllerImpl.kt\ncom/smedialink/storage/data/manager/ton/TonControllerImpl$initTonLib$1\n+ 2 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,249:1\n18#2:250\n*S KotlinDebug\n*F\n+ 1 TonControllerImpl.kt\ncom/smedialink/storage/data/manager/ton/TonControllerImpl$initTonLib$1\n*L\n174#1:250\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$initTonLib$1;->this$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$initTonLib$1;->this$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->access$getInitTonLibObservable(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    .line 169
    :cond_0
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz p1, :cond_3

    .line 170
    iget-object p1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$initTonLib$1;->this$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    invoke-static {p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getTonConfigJsonString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$initTonLib$1;->this$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    invoke-static {v0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->access$getInitTonLibObservable(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    .line 174
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_3
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 166
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$initTonLib$1;->invoke(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
