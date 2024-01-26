.class public Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
.super Ljava/lang/Object;
.source "FirebaseFunctionsErrorHandler.kt"

# interfaces
.implements Lcom/iMe/storage/data/network/handlers/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;,
        Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;,
        Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;,
        Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;,
        Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TonFragmentErrorStatus;,
        Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;,
        Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/storage/data/network/handlers/ErrorHandler<",
        "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/data/network/model/error/ErrorModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "*>;)",
            "Lcom/iMe/storage/data/network/model/error/ErrorModel;"
        }
    .end annotation

    const-string v0, "ErrorHandler"

    .line 18
    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    sget-object v0, Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode;->Companion:Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode$Companion;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->getCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/handlers/model/GlobalApiErrorCode;

    move-result-object v0

    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 67
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->BAD_RESPONSE:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    goto/16 :goto_1

    .line 65
    :pswitch_0
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TonFragmentErrorStatus;->NO_CURRENT_AUTHORIZATION_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TonFragmentErrorStatus;

    goto/16 :goto_1

    .line 64
    :pswitch_1
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TonFragmentErrorStatus;->NO_CURRENT_TON_CONNECT_SESSION_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TonFragmentErrorStatus;

    goto/16 :goto_1

    .line 61
    :pswitch_2
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;->NO_OAUTH_ACCESS_GRANTED_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;

    goto/16 :goto_1

    .line 60
    :pswitch_3
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;->TWITTER_USER_DISABLED_DIRECT_MESSAGES:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;

    goto/16 :goto_1

    .line 59
    :pswitch_4
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;->WRONG_TWITTER_REFRESH_TOKEN_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;

    goto/16 :goto_1

    .line 58
    :pswitch_5
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;->WRONG_TWITTER_ACCESS_TOKEN_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;

    goto/16 :goto_1

    .line 55
    :pswitch_6
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->AIRDROP_NO_TOKENS:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    goto/16 :goto_1

    .line 54
    :pswitch_7
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->USER_ALREADY_PARTICIPATED:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    goto/16 :goto_1

    .line 53
    :pswitch_8
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->REQUEST_ID_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    goto/16 :goto_1

    .line 52
    :pswitch_9
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->AIRDROP_NOT_ACTIVE:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    goto :goto_1

    .line 49
    :pswitch_a
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->ERR_STAKING_CLAIM_OVERLAP:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    goto :goto_1

    .line 48
    :pswitch_b
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->ERR_STAKING_WITHDRAWAL_OVER_LIMIT:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    goto :goto_1

    .line 47
    :pswitch_c
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;->ERR_STAKING_FINISHED:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$StakingErrorStatus;

    goto :goto_1

    .line 46
    :pswitch_d
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    goto :goto_1

    .line 43
    :pswitch_e
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ERR_FETCH_TOKEN:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    goto :goto_1

    .line 42
    :pswitch_f
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ERR_AMOUNT_LESS_THAN_MIN:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    goto :goto_1

    .line 41
    :pswitch_10
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ERR_TOKEN_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    goto :goto_1

    .line 40
    :pswitch_11
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->DONATIONS_ADDRESS_ALREADY_LINKED:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    goto :goto_1

    .line 39
    :pswitch_12
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->DONATIONS_NOT_CONFIGURED_YET:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    goto :goto_1

    .line 38
    :pswitch_13
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ETHER_BLOCK_CHAIN_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    goto :goto_1

    .line 37
    :pswitch_14
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_QUOTE_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    goto :goto_1

    .line 36
    :pswitch_15
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    goto :goto_1

    .line 35
    :pswitch_16
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    goto :goto_1

    .line 34
    :pswitch_17
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_APPROVED_AMOUNT_NOT_SUFFICIENT:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    goto :goto_1

    .line 33
    :pswitch_18
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SIMPLEX_QUOTE_ALREADY_USED:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    goto :goto_1

    .line 32
    :pswitch_19
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ETHER_WALLET_NOT_LINKED:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    goto :goto_1

    .line 31
    :pswitch_1a
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->PIN_CODE_MAX_ATTEMPTS:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    goto :goto_1

    .line 28
    :pswitch_1b
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->TRANSLATION_UNSUPPORTED_LANGUAGE:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    goto :goto_1

    .line 27
    :pswitch_1c
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->REFRESH_TOKEN_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    goto :goto_1

    .line 26
    :pswitch_1d
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->ZERO_AMOUNT_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    goto :goto_1

    .line 25
    :pswitch_1e
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->VALIDATION_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    goto :goto_1

    .line 24
    :pswitch_1f
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->ERR_MONEY_ACCOUNT_NOT_EXIST:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    goto :goto_1

    .line 23
    :pswitch_20
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->UNAUTHORIZED:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    goto :goto_1

    .line 22
    :pswitch_21
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    goto :goto_1

    .line 21
    :pswitch_22
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->USER_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    .line 70
    :goto_1
    new-instance v2, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    move-object p1, v1

    :goto_2
    invoke-direct {v2, p1, v0, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic handleError(Ljava/lang/Object;)Lcom/iMe/storage/data/network/model/error/ErrorModel;
    .locals 0

    .line 15
    check-cast p1, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;->handleError(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    return-object p1
.end method
