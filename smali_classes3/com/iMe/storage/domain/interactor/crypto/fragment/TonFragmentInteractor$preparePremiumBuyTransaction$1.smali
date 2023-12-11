.class final Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$preparePremiumBuyTransaction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TonFragmentInteractor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->preparePremiumBuyTransaction(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[B",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonFragmentInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonFragmentInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$preparePremiumBuyTransaction$1\n+ 2 base64.kt\norg/ton/crypto/Base64Kt\n*L\n1#1,199:1\n12#2:200\n*S KotlinDebug\n*F\n+ 1 TonFragmentInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$preparePremiumBuyTransaction$1\n*L\n168#1:200\n*E\n"
.end annotation


# instance fields
.field final synthetic $recipient:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;


# direct methods
.method constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$preparePremiumBuyTransaction$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$preparePremiumBuyTransaction$1;->$recipient:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke([B)Lio/reactivex/ObservableSource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;",
            ">;>;"
        }
    .end annotation

    const-string v0, "publicKeyBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$preparePremiumBuyTransaction$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->access$getTonFragmentRepository$p(Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;)Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$preparePremiumBuyTransaction$1;->$recipient:Ljava/lang/String;

    .line 12
    sget-object v2, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lkotlin/io/encoding/Base64;->encode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-interface {v0, v1, p1}, Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;->preparePremiumBuyTransaction(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 165
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor$preparePremiumBuyTransaction$1;->invoke([B)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
