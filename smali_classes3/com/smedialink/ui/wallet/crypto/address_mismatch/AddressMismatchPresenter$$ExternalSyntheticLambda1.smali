.class public final synthetic Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    iput-wide p2, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;

    iget-wide v1, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$$ExternalSyntheticLambda1;->f$1:J

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-static {v0, v1, v2, p1}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->$r8$lambda$Ky0YCOg8IcJGE1zvInM-0W-9K50(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;JLcom/smedialink/storage/domain/model/Result;)V

    return-void
.end method
