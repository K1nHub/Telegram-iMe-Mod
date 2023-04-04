.class public final Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;
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
    name = "SuccessResetWallet"
.end annotation


# instance fields
.field private final isLastWallet:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;->isLastWallet:Z

    return-void
.end method


# virtual methods
.method public final isLastWallet()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;->isLastWallet:Z

    return v0
.end method
