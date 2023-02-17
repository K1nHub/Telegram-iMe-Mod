.class public final Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$ForceWalletLogout;
.super Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents;
.source "DomainRxEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForceWalletLogout"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$ForceWalletLogout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$ForceWalletLogout;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$ForceWalletLogout;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$ForceWalletLogout;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$ForceWalletLogout;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
