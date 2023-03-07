.class public final Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$flatMapSuccess$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;->registerInAirdrop()V
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 WalletAirdropPresenter.kt\ncom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter\n*L\n1#1,81:1\n96#2:82\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 3
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

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;->access$getAirdropInteractor$p(Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;)Lcom/smedialink/storage/domain/interactor/crypto/airdrop/AirdropInteractor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {v0, p1, v2, v1, v2}, Lcom/smedialink/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->checkAirdropStart$default(Lcom/smedialink/storage/domain/interactor/crypto/airdrop/AirdropInteractor;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1, v2, v1, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
