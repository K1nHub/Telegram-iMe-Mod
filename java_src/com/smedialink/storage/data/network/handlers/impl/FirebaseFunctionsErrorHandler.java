package com.smedialink.storage.data.network.handlers.impl;

import com.smedialink.storage.data.network.handlers.ErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.model.GlobalApiErrorCode;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.network.model.error.IErrorStatus;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import timber.log.Timber;
/* compiled from: FirebaseFunctionsErrorHandler.kt */
/* loaded from: classes3.dex */
public class FirebaseFunctionsErrorHandler implements ErrorHandler<ApiBaseResponse<?>> {

    /* compiled from: FirebaseFunctionsErrorHandler.kt */
    /* loaded from: classes3.dex */
    public enum AirdropErrorStatus implements IErrorStatus {
        AIRDROP_NOT_ACTIVE,
        REQUEST_ID_NOT_FOUND,
        USER_ALREADY_PARTICIPATED,
        AIRDROP_NO_TOKENS
    }

    /* compiled from: FirebaseFunctionsErrorHandler.kt */
    /* loaded from: classes3.dex */
    public enum CryptoErrorStatus implements IErrorStatus {
        PIN_CODE_MAX_ATTEMPTS,
        ETHER_BLOCK_CHAIN_ERROR,
        SIMPLEX_QUOTE_ALREADY_USED,
        SWAP_APPROVED_AMOUNT_NOT_SUFFICIENT,
        SWAP_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG,
        SWAP_QUOTE_NOT_FOUND,
        SWAP_INSUFFICIENT_RESERVES_IN_LIQUIDITY_POOL_OF_TOKENS,
        DONATIONS_NOT_CONFIGURED_YET,
        DONATIONS_ADDRESS_ALREADY_LINKED,
        ETHER_WALLET_NOT_LINKED
    }

    /* compiled from: FirebaseFunctionsErrorHandler.kt */
    /* loaded from: classes3.dex */
    public enum ErrorStatus implements IErrorStatus {
        UNAUTHORIZED,
        NO_ENOUGH_MONEY,
        REFRESH_TOKEN_NOT_FOUND,
        VALIDATION_ERROR,
        USER_NOT_FOUND,
        ERR_MONEY_ACCOUNT_NOT_EXIST,
        ZERO_AMOUNT_ERROR,
        TRANSLATION_UNSUPPORTED_LANGUAGE
    }

    /* compiled from: FirebaseFunctionsErrorHandler.kt */
    /* loaded from: classes3.dex */
    public enum StakingErrorStatus implements IErrorStatus {
        ERR_STAKING_FINISHED,
        ERR_STAKING_WITHDRAWAL_OVER_LIMIT,
        ERR_STAKING_CLAIM_OVERLAP
    }

    /* compiled from: FirebaseFunctionsErrorHandler.kt */
    /* loaded from: classes3.dex */
    public enum TwitterErrorStatus implements IErrorStatus {
        WRONG_TWITTER_ACCESS_TOKEN_ERROR,
        WRONG_TWITTER_REFRESH_TOKEN_ERROR,
        TWITTER_USER_DISABLED_DIRECT_MESSAGES,
        NO_OAUTH_ACCESS_GRANTED_ERROR
    }

    /* compiled from: FirebaseFunctionsErrorHandler.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GlobalApiErrorCode.values().length];
            try {
                iArr[GlobalApiErrorCode.ERR_TARGET_USER_NOT_FOUND_IN_IME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_NOT_ENOUGH_MONEY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_USER_NOT_AUTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_MONEY_ACCOUNT_NOT_EXIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_VALIDATION_FAILED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_NOT_ZERO_AMOUNT_TO_SEND.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_REFRESH_TOKEN_NOT_FOUND.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_NOT_VALID_LANGUAGE_CODE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_EXCEEDED_MAX_ATTEMPTS_TO_GET_WALLET_PASSWORD.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_USER_HAS_NOT_ETHER_WALLET_LINKED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_QUOTE_ALREADY_BEEN_USED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_APPROVED_AMOUNT_NOT_SUFFICIENT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_NOT_ENOUGH_MONEY_TO_SEND_TRANSACTION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_SWAP_QUOTE_NOT_FOUND.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_SENDING_CRYPTO_TRANSACTION.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_CHANNEL_NOT_FOUND.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_TG_CHAT_HAS_NO_ETHER_WALLET_LINKED.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_DONATION_ETHER_WALLET_ALREADY_LINKED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_STAKING_DEPOSIT_LOW_BALANCE.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_STAKING_DEPOSIT_TOO_LATE.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_STAKING_WITHDRAWAL_OVER_LIMIT.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_STAKING_CLAIM_OVERLAP.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_AIRDROP_PROMOTION_NOT_ACTIVE.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_AIRDROP_PROMOTION_REQUEST_ID_NOT_FOUND.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_AIRDROP_PROMOTION_USER_ALREADY_PARTICIPATED.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_AIRDROP_PROMOTION_NO_TOKENS.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[GlobalApiErrorCode.WRONG_TWITTER_ACCESS_TOKEN_ERROR.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[GlobalApiErrorCode.WRONG_TWITTER_REFRESH_TOKEN_ERROR.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[GlobalApiErrorCode.TWITTER_USER_DISABLED_DIRECT_MESSAGES.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[GlobalApiErrorCode.NO_OAUTH_ACCESS_GRANTED_ERROR.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.smedialink.storage.data.network.handlers.ErrorHandler
    public ErrorModel handleError(ApiBaseResponse<?> apiBaseResponse) {
        IErrorStatus iErrorStatus;
        Timber.tag("ErrorHandler").mo1e(String.valueOf(apiBaseResponse), new Object[0]);
        switch (WhenMappings.$EnumSwitchMapping$0[GlobalApiErrorCode.Companion.map(apiBaseResponse != null ? apiBaseResponse.getCode() : null).ordinal()]) {
            case 1:
                iErrorStatus = ErrorStatus.USER_NOT_FOUND;
                break;
            case 2:
                iErrorStatus = ErrorStatus.NO_ENOUGH_MONEY;
                break;
            case 3:
                iErrorStatus = ErrorStatus.UNAUTHORIZED;
                break;
            case 4:
                iErrorStatus = ErrorStatus.ERR_MONEY_ACCOUNT_NOT_EXIST;
                break;
            case 5:
                iErrorStatus = ErrorStatus.VALIDATION_ERROR;
                break;
            case 6:
                iErrorStatus = ErrorStatus.ZERO_AMOUNT_ERROR;
                break;
            case 7:
                iErrorStatus = ErrorStatus.REFRESH_TOKEN_NOT_FOUND;
                break;
            case 8:
                iErrorStatus = ErrorStatus.TRANSLATION_UNSUPPORTED_LANGUAGE;
                break;
            case 9:
                iErrorStatus = CryptoErrorStatus.PIN_CODE_MAX_ATTEMPTS;
                break;
            case 10:
                iErrorStatus = CryptoErrorStatus.ETHER_WALLET_NOT_LINKED;
                break;
            case 11:
                iErrorStatus = CryptoErrorStatus.SIMPLEX_QUOTE_ALREADY_USED;
                break;
            case 12:
                iErrorStatus = CryptoErrorStatus.SWAP_APPROVED_AMOUNT_NOT_SUFFICIENT;
                break;
            case 13:
                iErrorStatus = ErrorStatus.NO_ENOUGH_MONEY;
                break;
            case 14:
                iErrorStatus = CryptoErrorStatus.SWAP_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG;
                break;
            case 15:
                iErrorStatus = CryptoErrorStatus.SWAP_QUOTE_NOT_FOUND;
                break;
            case 16:
                iErrorStatus = CryptoErrorStatus.ETHER_BLOCK_CHAIN_ERROR;
                break;
            case 17:
            case 18:
                iErrorStatus = CryptoErrorStatus.DONATIONS_NOT_CONFIGURED_YET;
                break;
            case 19:
                iErrorStatus = CryptoErrorStatus.DONATIONS_ADDRESS_ALREADY_LINKED;
                break;
            case 20:
                iErrorStatus = ErrorStatus.NO_ENOUGH_MONEY;
                break;
            case 21:
                iErrorStatus = StakingErrorStatus.ERR_STAKING_FINISHED;
                break;
            case 22:
                iErrorStatus = StakingErrorStatus.ERR_STAKING_WITHDRAWAL_OVER_LIMIT;
                break;
            case 23:
                iErrorStatus = StakingErrorStatus.ERR_STAKING_CLAIM_OVERLAP;
                break;
            case 24:
                iErrorStatus = AirdropErrorStatus.AIRDROP_NOT_ACTIVE;
                break;
            case 25:
                iErrorStatus = AirdropErrorStatus.REQUEST_ID_NOT_FOUND;
                break;
            case 26:
                iErrorStatus = AirdropErrorStatus.USER_ALREADY_PARTICIPATED;
                break;
            case 27:
                iErrorStatus = AirdropErrorStatus.AIRDROP_NO_TOKENS;
                break;
            case 28:
                iErrorStatus = TwitterErrorStatus.WRONG_TWITTER_ACCESS_TOKEN_ERROR;
                break;
            case 29:
                iErrorStatus = TwitterErrorStatus.WRONG_TWITTER_REFRESH_TOKEN_ERROR;
                break;
            case 30:
                iErrorStatus = TwitterErrorStatus.TWITTER_USER_DISABLED_DIRECT_MESSAGES;
                break;
            case 31:
                iErrorStatus = TwitterErrorStatus.NO_OAUTH_ACCESS_GRANTED_ERROR;
                break;
            default:
                iErrorStatus = ApiErrorHandler.ErrorStatus.BAD_RESPONSE;
                break;
        }
        return new ErrorModel(apiBaseResponse != null ? apiBaseResponse.getMessage() : null, iErrorStatus, null);
    }
}
