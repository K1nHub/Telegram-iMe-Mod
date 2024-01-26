.class public final Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;
.super Ljava/lang/Object;
.source "DonationsInteractor.kt"


# instance fields
.field private final donationsRepository:Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "donationsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->donationsRepository:Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;

    .line 17
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static synthetic getDonationTransactionHistory$default(Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;JLjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_1

    const/16 p4, 0x1e

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_2

    .line 59
    sget-object p3, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p3}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p3

    invoke-virtual {p3}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p5

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-wide v1, p1

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->getDonationTransactionHistory(JLjava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDonationWalletBalance$default(Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;JLjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 48
    sget-object p3, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p3}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p3

    invoke-virtual {p3}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p3

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->getDonationWalletBalance(JLjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final disableDonation(J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->donationsRepository:Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;

    .line 33
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;->disableDonation(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final enableDonationFor(JLjava/lang/String;Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->donationsRepository:Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;

    .line 28
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;->enableDonationFor(JLjava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getDataForDonation(JLjava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/Token;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->donationsRepository:Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;

    .line 77
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;->getDataForDonation(JLjava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/Token;)Lio/reactivex/Observable;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getDonationAddress(J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->donationsRepository:Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;

    .line 43
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;->getDonationAddress(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getDonationTransactionHistory(JLjava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->donationsRepository:Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 62
    invoke-interface/range {v1 .. v6}, Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;->getDonationTransactionHistory(JLjava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 64
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsRepository\n    \u2026artWith(Result.loading())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getDonationWalletBalance(JLjava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->donationsRepository:Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;

    .line 51
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;->getDonationWalletBalance(JLjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 53
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsRepository\n    \u2026artWith(Result.loading())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendDonation(JLcom/iMe/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->donationsRepository:Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;

    .line 68
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;->sendDonation(JLcom/iMe/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
