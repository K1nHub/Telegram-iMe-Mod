.class public final Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$DonationAddressUpdated;
.super Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;
.source "DomainRxEvents.kt"

# interfaces
.implements Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DonationAddressUpdated"
.end annotation


# instance fields
.field private final chatId:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$DonationAddressUpdated;->chatId:J

    return-void
.end method


# virtual methods
.method public final getChatId()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$DonationAddressUpdated;->chatId:J

    return-wide v0
.end method
