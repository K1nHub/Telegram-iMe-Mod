.class public final Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;
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
    name = "SuccessSaveBackup"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;

    invoke-direct {v0}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
