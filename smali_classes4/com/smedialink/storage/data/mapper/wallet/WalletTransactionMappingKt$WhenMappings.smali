.class public final synthetic Lcom/smedialink/storage/data/mapper/wallet/WalletTransactionMappingKt$WhenMappings;
.super Ljava/lang/Object;
.source "WalletTransactionMapping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/mapper/wallet/WalletTransactionMappingKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->values()[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->REGISTRATION:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->REFERRAL_BONUS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->PURCHASE_COINS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->LOTTERY_BONUS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->TRANSFER_COINS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->TRANSFER_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->CANCEL_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->APPROVE_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->SIMPLEX_PAYMENT_REQUEST:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->TAKE_AWAY_COINS:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;->SWAP_CRYPTO:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/storage/data/mapper/wallet/WalletTransactionMappingKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
