.class final Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TonControllerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->createWallet()Lio/reactivex/Observable;
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
    value = "SMAP\nTonControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonControllerImpl.kt\ncom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,244:1\n18#2:245\n18#2:246\n18#2:247\n*S KotlinDebug\n*F\n+ 1 TonControllerImpl.kt\ncom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1\n*L\n74#1:245\n66#1:246\n69#1:247\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;


# direct methods
.method public static synthetic $r8$lambda$G8nq-y8snPLWM5D5KVtIQ32Mai0(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->invoke$lambda$2$lambda$1$lambda$0(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UPDl4zMTeJMnB_ynYb8Dh6qlvB4(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->invoke$lambda$2(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cdVQAciAas3R5XvKoxjgjMmRHhE(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->invoke$lambda$2$lambda$1(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance p1, Ldrinkless/org/ton/TonApi$CreateNewKey;

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-array v0, v0, [B

    invoke-direct {p1, v1, v2, v0}, Ldrinkless/org/ton/TonApi$CreateNewKey;-><init>([B[B[B)V

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$sendRequest(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 55
    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getSchedulersProvider$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$2$lambda$1(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v0, p1, Ldrinkless/org/ton/TonApi$Key;

    if-eqz v0, :cond_0

    new-instance v0, Ldrinkless/org/ton/TonApi$ExportKey;

    new-instance v1, Ldrinkless/org/ton/TonApi$InputKeyRegular;

    move-object v2, p1

    check-cast v2, Ldrinkless/org/ton/TonApi$Key;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v1, v2, v3}, Ldrinkless/org/ton/TonApi$InputKeyRegular;-><init>(Ldrinkless/org/ton/TonApi$Key;[B)V

    invoke-direct {v0, v1}, Ldrinkless/org/ton/TonApi$ExportKey;-><init>(Ldrinkless/org/ton/TonApi$InputKey;)V

    invoke-static {p0, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$sendRequest(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 59
    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getSchedulersProvider$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getTonApiErrorResult(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result$Error;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "just(this)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private static final invoke$lambda$2$lambda$1$lambda$0(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$keyResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportedKeyResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    instance-of v0, p2, Ldrinkless/org/ton/TonApi$ExportedKey;

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Ldrinkless/org/ton/TonApi$Key;

    .line 64
    check-cast p2, Ldrinkless/org/ton/TonApi$ExportedKey;

    iget-object p2, p2, Ldrinkless/org/ton/TonApi$ExportedKey;->wordList:[Ljava/lang/String;

    const-string v0, "exportedKeyResult.wordList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 62
    invoke-static {p0, p1, p2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$processInputKey(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Key;Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 65
    invoke-static {p0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getSchedulersProvider$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p0, p2}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getTonApiErrorResult(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result$Error;

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
    .locals 2
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

    .line 50
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    new-instance v0, Ldrinkless/org/ton/TonApi$DeleteAllKeys;

    invoke-direct {v0}, Ldrinkless/org/ton/TonApi$DeleteAllKeys;-><init>()V

    invoke-static {p1, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$sendRequest(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$getSchedulersProvider$p(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    new-instance v1, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

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

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$createWallet$1;->invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method