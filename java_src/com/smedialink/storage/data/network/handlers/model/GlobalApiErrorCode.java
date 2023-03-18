package com.smedialink.storage.data.network.handlers.model;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GlobalApiErrorCode.kt */
/* loaded from: classes3.dex */
public enum GlobalApiErrorCode {
    ERR_USER_NOT_AUTH,
    ERR_TARGET_USER_NOT_FOUND_IN_IME,
    ERR_NOT_ZERO_AMOUNT_TO_SEND,
    ERR_NOT_ENOUGH_MONEY,
    ERR_VALIDATION_FAILED,
    ERR_MONEY_ACCOUNT_NOT_EXIST,
    ERR_REFRESH_TOKEN_NOT_FOUND,
    ERR_APP_UPDATE_IS_REQUIRED,
    ERR_EXCEEDED_MAX_ATTEMPTS_TO_GET_WALLET_PASSWORD,
    ERR_USER_HAS_NOT_ETHER_WALLET_LINKED,
    ERR_QUOTE_ALREADY_BEEN_USED,
    ERR_APPROVED_AMOUNT_NOT_SUFFICIENT,
    ERR_NOT_ENOUGH_MONEY_TO_SEND_TRANSACTION,
    ERR_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG,
    ERR_SWAP_QUOTE_NOT_FOUND,
    ERR_INSUFFICIENT_RESERVES_IN_LIQUIDITY_POOL_OF_TOKENS,
    ERR_SENDING_CRYPTO_TRANSACTION,
    ERR_NOT_VALID_LANGUAGE_CODE,
    INVALID_BINANCE_PAY_ACCESS_TOKEN,
    INVALID_BINANCE_PAY_REFRESH_TOKEN,
    ERR_CHANNEL_NOT_FOUND,
    ERR_TG_CHAT_HAS_NO_ETHER_WALLET_LINKED,
    ERR_DONATION_ETHER_WALLET_ALREADY_LINKED,
    ERR_AIRDROP_PROMOTION_NOT_ACTIVE,
    ERR_AIRDROP_PROMOTION_REQUEST_ID_NOT_FOUND,
    ERR_AIRDROP_PROMOTION_USER_ALREADY_PARTICIPATED,
    ERR_AIRDROP_PROMOTION_NO_TOKENS,
    JWT_EXPIRED,
    ERR_BEARER_AUTH_REQUIRED,
    ERR_BEARER_AUTH_MALFORMED,
    REFRESH_TOKEN_ABSENT,
    ERR_STAKING_DEPOSIT_LOW_BALANCE,
    ERR_STAKING_DEPOSIT_TOO_LATE,
    ERR_STAKING_WITHDRAWAL_OVER_LIMIT,
    ERR_STAKING_CLAIM_OVERLAP,
    WRONG_TWITTER_ACCESS_TOKEN_ERROR,
    WRONG_TWITTER_REFRESH_TOKEN_ERROR,
    TWITTER_USER_DISABLED_DIRECT_MESSAGES,
    NO_OAUTH_ACCESS_GRANTED_ERROR,
    UNKNOWN;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: GlobalApiErrorCode.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final GlobalApiErrorCode map(String str) {
            GlobalApiErrorCode globalApiErrorCode;
            GlobalApiErrorCode[] values = GlobalApiErrorCode.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    globalApiErrorCode = null;
                    break;
                }
                globalApiErrorCode = values[i];
                if (Intrinsics.areEqual(globalApiErrorCode.name(), str)) {
                    break;
                }
                i++;
            }
            return globalApiErrorCode == null ? GlobalApiErrorCode.UNKNOWN : globalApiErrorCode;
        }
    }
}
