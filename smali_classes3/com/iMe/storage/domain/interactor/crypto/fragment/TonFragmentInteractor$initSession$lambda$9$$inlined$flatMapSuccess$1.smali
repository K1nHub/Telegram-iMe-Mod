.class public final Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->initSession()Lio/reactivex/Observable;
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
        "+[B>;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$flatMapSuccess$1\n+ 2 TonFragmentInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor\n+ 3 base64.kt\norg/ton/crypto/Base64Kt\n*L\n1#1,101:1\n134#2,3:102\n137#2,3:106\n141#2:110\n12#3:105\n12#3:109\n*S KotlinDebug\n*F\n+ 1 TonFragmentInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor\n*L\n136#1:105\n139#1:109\n*E\n"
.end annotation


# instance fields
.field final synthetic $wallet$inlined:Lcom/iMe/storage/domain/model/crypto/Wallet;

.field final synthetic $walletVersion$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1;->$wallet$inlined:Lcom/iMe/storage/domain/model/crypto/Wallet;

    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1;->$walletVersion$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+[B>;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->access$getTonFragmentRepository$p(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->orEmpty([B)[B

    move-result-object v3

    .line 12
    sget-object p1, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/io/encoding/Base64;->encode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1;->$wallet$inlined:Lcom/iMe/storage/domain/model/crypto/Wallet;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 107
    iget-object v10, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1;->$walletVersion$inlined:Ljava/lang/String;

    .line 108
    iget-object v4, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1;->$wallet$inlined:Lcom/iMe/storage/domain/model/crypto/Wallet;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getPublicKey()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v1}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->hexToByteArray$default(Ljava/lang/String;ZILjava/lang/Object;)[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p1

    .line 12
    invoke-static/range {v4 .. v9}, Lkotlin/io/encoding/Base64;->encode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-interface {v0, v2, v3, v10, p1}, Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;->sendSessionSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "tonFragmentRepository\n  \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
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

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$initSession$lambda$9$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
