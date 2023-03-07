.class public final synthetic Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$WhenMappings;
.super Ljava/lang/Object;
.source "FirebaseFunctionsErrorHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
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

    invoke-static {}, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->values()[Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_TARGET_USER_NOT_FOUND_IN_IME:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_NOT_ENOUGH_MONEY:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_USER_NOT_AUTH:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_MONEY_ACCOUNT_NOT_EXIST:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_VALIDATION_FAILED:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_NOT_ZERO_AMOUNT_TO_SEND:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_REFRESH_TOKEN_NOT_FOUND:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_NOT_VALID_LANGUAGE_CODE:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_EXCEEDED_MAX_ATTEMPTS_TO_GET_WALLET_PASSWORD:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_USER_HAS_NOT_ETHER_WALLET_LINKED:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_QUOTE_ALREADY_BEEN_USED:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_APPROVED_AMOUNT_NOT_SUFFICIENT:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_NOT_ENOUGH_MONEY_TO_SEND_TRANSACTION:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_SWAP_QUOTE_NOT_FOUND:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_SENDING_CRYPTO_TRANSACTION:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_CHANNEL_NOT_FOUND:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_TG_CHAT_HAS_NO_ETHER_WALLET_LINKED:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_DONATION_ETHER_WALLET_ALREADY_LINKED:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_STAKING_DEPOSIT_LOW_BALANCE:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_STAKING_DEPOSIT_TOO_LATE:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_STAKING_WITHDRAWAL_OVER_LIMIT:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_STAKING_CLAIM_OVERLAP:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_AIRDROP_PROMOTION_NOT_ACTIVE:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_AIRDROP_PROMOTION_REQUEST_ID_NOT_FOUND:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_AIRDROP_PROMOTION_USER_ALREADY_PARTICIPATED:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;->ERR_AIRDROP_PROMOTION_NO_TOKENS:Lcom/smedialink/storage/data/network/handlers/model/GlobalApiErrorCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
