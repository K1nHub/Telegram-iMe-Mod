.class public final enum Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;
.super Ljava/lang/Enum;
.source "TransactionType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

.field public static final enum APPROVE_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

.field public static final enum CANCEL_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

.field public static final Companion:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType$Companion;

.field public static final enum LOTTERY_BONUS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

.field public static final enum PURCHASE_COINS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

.field public static final enum REFERRAL_BONUS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

.field public static final enum REGISTRATION:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

.field public static final enum SIMPLEX_PAYMENT_REQUEST:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

.field public static final enum SWAP_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

.field public static final enum TAKE_AWAY_COINS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

.field public static final enum TRANSFER_COINS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

.field public static final enum TRANSFER_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

.field public static final enum UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->REGISTRATION:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->REFERRAL_BONUS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->PURCHASE_COINS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->LOTTERY_BONUS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->TRANSFER_COINS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->TRANSFER_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->SIMPLEX_PAYMENT_REQUEST:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->TAKE_AWAY_COINS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->SWAP_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->CANCEL_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->APPROVE_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const-string v1, "REGISTRATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->REGISTRATION:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 6
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const-string v1, "REFERRAL_BONUS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->REFERRAL_BONUS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const-string v1, "PURCHASE_COINS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->PURCHASE_COINS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 8
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const-string v1, "LOTTERY_BONUS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->LOTTERY_BONUS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 9
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const-string v1, "TRANSFER_COINS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->TRANSFER_COINS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 10
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const-string v1, "TRANSFER_CRYPTO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->TRANSFER_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 11
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const-string v1, "SIMPLEX_PAYMENT_REQUEST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->SIMPLEX_PAYMENT_REQUEST:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 12
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const-string v1, "TAKE_AWAY_COINS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->TAKE_AWAY_COINS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 13
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const-string v1, "SWAP_CRYPTO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->SWAP_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 14
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const-string v1, "CANCEL_CRYPTO"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->CANCEL_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 15
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const-string v1, "APPROVE_CRYPTO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->APPROVE_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 16
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->$values()[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->Companion:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    return-object v0
.end method
