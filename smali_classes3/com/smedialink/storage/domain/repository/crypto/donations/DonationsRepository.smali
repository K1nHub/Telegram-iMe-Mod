.class public interface abstract Lcom/smedialink/storage/domain/repository/crypto/donations/DonationsRepository;
.super Ljava/lang/Object;
.source "DonationsRepository.kt"


# virtual methods
.method public abstract disableDonation(J)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract enableDonationFor(JLjava/lang/String;Z)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDataForDonation(JLjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDonationAddress(J)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDonationTransactionHistory(JLjava/lang/String;ILcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract getDonationWalletBalance(JLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract isDonationsEnabled(J)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract sendDonation(JLcom/smedialink/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method
