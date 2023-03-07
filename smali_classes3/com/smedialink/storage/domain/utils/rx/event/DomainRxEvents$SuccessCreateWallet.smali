.class public final Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;
.super Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents;
.source "DomainRxEvents.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuccessCreateWallet"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
