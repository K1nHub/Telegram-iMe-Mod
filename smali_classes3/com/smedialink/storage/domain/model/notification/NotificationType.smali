.class public final enum Lcom/smedialink/storage/domain/model/notification/NotificationType;
.super Ljava/lang/Enum;
.source "NotificationType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/notification/NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum APPROVE_CRYPTO:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum CANCEL_TRANSACTION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final Companion:Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;

.field public static final enum INCOMING_BINANCE_PAY_TRANSACTION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum INCOMING_CRYPTO_TRANSFER:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum INCOMING_DONATION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum OUTGOING_CRYPTO_TRANSFER:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum OUTGOING_DONATION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum REQUEST_BINANCE_PAY_TRANSACTION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum SIMPLEX_PAYMENT_REQUEST_EVENT:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum STAKING_FINISHED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum STAKING_SAFE_WITHDRAWAL_FINISHED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum STAKING_SAFE_WITHDRAWAL_STARTED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum STAKING_STARTED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field public static final enum UNSUPPORTED:Lcom/smedialink/storage/domain/model/notification/NotificationType;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/notification/NotificationType;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/notification/NotificationType;

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->CANCEL_TRANSACTION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->INCOMING_CRYPTO_TRANSFER:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->OUTGOING_CRYPTO_TRANSFER:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->INCOMING_DONATION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->OUTGOING_DONATION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->SIMPLEX_PAYMENT_REQUEST_EVENT:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->REQUEST_BINANCE_PAY_TRANSACTION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->INCOMING_BINANCE_PAY_TRANSACTION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->APPROVE_CRYPTO:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->STAKING_SAFE_WITHDRAWAL_STARTED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->STAKING_SAFE_WITHDRAWAL_FINISHED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->STAKING_STARTED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->STAKING_FINISHED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/notification/NotificationType;->UNSUPPORTED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "CANCEL_TRANSACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->CANCEL_TRANSACTION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 5
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "INCOMING_CRYPTO_TRANSFER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->INCOMING_CRYPTO_TRANSFER:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 6
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "OUTGOING_CRYPTO_TRANSFER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->OUTGOING_CRYPTO_TRANSFER:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "INCOMING_DONATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->INCOMING_DONATION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 8
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "OUTGOING_DONATION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->OUTGOING_DONATION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 9
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "SIMPLEX_PAYMENT_REQUEST_EVENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->SIMPLEX_PAYMENT_REQUEST_EVENT:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 10
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "REQUEST_BINANCE_PAY_TRANSACTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->REQUEST_BINANCE_PAY_TRANSACTION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 11
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "INCOMING_BINANCE_PAY_TRANSACTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->INCOMING_BINANCE_PAY_TRANSACTION:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 12
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "APPROVE_CRYPTO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->APPROVE_CRYPTO:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 13
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "STAKING_SAFE_WITHDRAWAL_STARTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->STAKING_SAFE_WITHDRAWAL_STARTED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 14
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "STAKING_SAFE_WITHDRAWAL_FINISHED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->STAKING_SAFE_WITHDRAWAL_FINISHED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 15
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "STAKING_STARTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->STAKING_STARTED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 16
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "STAKING_FINISHED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->STAKING_FINISHED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 17
    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    const-string v1, "UNSUPPORTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->UNSUPPORTED:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-static {}, Lcom/smedialink/storage/domain/model/notification/NotificationType;->$values()[Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->$VALUES:[Lcom/smedialink/storage/domain/model/notification/NotificationType;

    new-instance v0, Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->Companion:Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/notification/NotificationType;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/notification/NotificationType;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/notification/NotificationType;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->$VALUES:[Lcom/smedialink/storage/domain/model/notification/NotificationType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/notification/NotificationType;

    return-object v0
.end method
