package com.iMe.storage.domain.repository.binancepay;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceAuthTokens;
import com.iMe.storage.domain.model.binancepay.BinanceCollectionOrder;
import com.iMe.storage.domain.model.binancepay.BinanceConvertQuote;
import com.iMe.storage.domain.model.binancepay.BinancePayAuthType;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.model.binancepay.BinanceTransaction;
import com.iMe.storage.domain.model.binancepay.BinanceUserInfo;
import com.iMe.storage.domain.model.binancepay.OutputConvertToken;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: BinanceInternalRepository.kt */
/* loaded from: classes3.dex */
public interface BinanceInternalRepository {
    Observable<Result<Boolean>> confirmConvertQuote(String str);

    Observable<Result<BinanceCollectionOrder>> createCollection(long j, double d, String str);

    Observable<Result<String>> getAddressForTokenReplenish(String str, String str2);

    Observable<Result<BinanceAuthTokens>> getAuthTokens(BinancePayAuthType binancePayAuthType, String str);

    Observable<Result<List<BinanceTokenInfo>>> getAvailablePaymentTokens();

    Observable<Result<BinanceConvertQuote>> getConvertQuote(String str, String str2, String str3);

    Observable<Result<List<OutputConvertToken>>> getOppositeTokensForConvertByToken(String str);

    Observable<Result<List<BinanceTokenInfo>>> getTokensForConvert();

    Observable<Result<List<BinanceTokenInfo>>> getTokensForReplenish(String str);

    Observable<Result<BinanceTransaction>> getTransaction(String str);

    Observable<Result<List<BinanceTransaction>>> getTransactionHistory(int i, String str, String str2);

    Observable<Result<List<BinanceTokenBalanceInfo>>> getUserBalance();

    Observable<Result<BinanceUserInfo>> getUserInfo(boolean z);

    Observable<Result<Boolean>> logout(String str);
}
