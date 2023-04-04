.class final Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TonControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->importWallet(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/Wallet;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonControllerImpl.kt\ncom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,249:1\n18#2:250\n18#2:251\n37#3,2:252\n*S KotlinDebug\n*F\n+ 1 TonControllerImpl.kt\ncom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1\n*L\n95#1:250\n89#1:251\n84#1:252,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $guid:Ljava/lang/String;

.field final synthetic $words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;


# direct methods
.method public static synthetic $r8$lambda$g5Av1hHyyrdkOJj7I4M6MoYdam4(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->invoke$lambda$1$lambda$0(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lwH0J5ulq6m9f_Xi1rcLMq7vnrw(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->invoke$lambda$1(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/manager/ton/TonControllerImpl;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->$words:Ljava/util/List;

    iput-object p3, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->$guid:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$words"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$guid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance p3, Ldrinkless/org/ton/TonApi$ImportKey;

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-instance v3, Ldrinkless/org/ton/TonApi$ExportedKey;

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 84
    invoke-direct {v3, v0}, Ldrinkless/org/ton/TonApi$ExportedKey;-><init>([Ljava/lang/String;)V

    invoke-direct {p3, v1, v2, v3}, Ldrinkless/org/ton/TonApi$ImportKey;-><init>([B[BLdrinkless/org/ton/TonApi$ExportedKey;)V

    invoke-static {p0, p3}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$sendRequest(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;

    move-result-object p3

    .line 85
    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getSchedulersProvider$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 86
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$guid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$words"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    instance-of v0, p3, Ldrinkless/org/ton/TonApi$Key;

    if-eqz v0, :cond_0

    check-cast p3, Ldrinkless/org/ton/TonApi$Key;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {p0, p3, p1, v0, p2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$processInputKey(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Key;Ljava/lang/String;[BLjava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getSchedulersProvider$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p0, p3}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getTonApiErrorResult(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result$Error;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "just(this)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "initResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    new-instance v0, Ldrinkless/org/ton/TonApi$DeleteAllKeys;

    invoke-direct {v0}, Ldrinkless/org/ton/TonApi$DeleteAllKeys;-><init>()V

    invoke-static {p1, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$sendRequest(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getSchedulersProvider$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->$words:Ljava/util/List;

    iget-object v2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->$guid:Ljava/lang/String;

    new-instance v3, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1, v2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->getTonApiErrorResult$default(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result$Error;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
