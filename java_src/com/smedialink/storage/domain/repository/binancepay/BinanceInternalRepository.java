package com.smedialink.storage.domain.repository.binancepay;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceAuthTokens;
import com.smedialink.storage.domain.model.binancepay.BinanceCollectionOrder;
import com.smedialink.storage.domain.model.binancepay.BinanceConvertQuote;
import com.smedialink.storage.domain.model.binancepay.BinancePayAuthType;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenInfo;
import com.smedialink.storage.domain.model.binancepay.BinanceTransaction;
import com.smedialink.storage.domain.model.binancepay.BinanceUserInfo;
import com.smedialink.storage.domain.model.binancepay.OutputConvertToken;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: BinanceInternalRepository.kt */
/* loaded from: classes3.dex */
public interface BinanceInternalRepository {
    Observable<Result<Boolean>> confirmConvertQuote(String str);

    Observable<Result<BinanceCollectionOrder>> createCollection(long j, double d, String str);

    Observable<Result<String>> getAddressForTokenReplenish(TokenCode tokenCode, NetworkType networkType);

    Observable<Result<BinanceAuthTokens>> getAuthTokens(BinancePayAuthType binancePayAuthType, String str);

    Observable<Result<List<BinanceTokenInfo>>> getAvailablePaymentTokens();

    Observable<Result<BinanceConvertQuote>> getConvertQuote(String str, String str2, String str3);

    Observable<Result<List<OutputConvertToken>>> getOppositeTokensForConvertByToken(String str);

    Observable<Result<List<BinanceTokenInfo>>> getTokensForConvert();

    Observable<Result<List<BinanceTokenInfo>>> getTokensForReplenish(NetworkType networkType);

    Observable<Result<BinanceTransaction>> getTransaction(String str);

    Observable<Result<List<BinanceTransaction>>> getTransactionHistory(int i, String str, String str2);

    Observable<Result<List<BinanceTokenBalanceInfo>>> getUserBalance();

    Observable<Result<BinanceUserInfo>> getUserInfo(boolean z);

    Observable<Result<Boolean>> logout(String str);
}
