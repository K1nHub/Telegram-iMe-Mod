.class public final synthetic Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;

    iput-wide p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;

    iget-wide v1, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$$ExternalSyntheticLambda0;->f$1:J

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-static {v0, v1, v2, p1}, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->$r8$lambda$8yXh7kk0USJFQ9gTfv7qTlSd4gA(Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;JLcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
