package com.iMe.storage.domain.interactor.binancepay;

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
import com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceInternalInteractor.kt */
/* loaded from: classes3.dex */
public final class BinanceInternalInteractor {
    private final BinanceInternalRepository binanceInternalRepository;
    private final SchedulersProvider schedulersProvider;

    public BinanceInternalInteractor(BinanceInternalRepository binanceInternalRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(binanceInternalRepository, "binanceInternalRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.binanceInternalRepository = binanceInternalRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<BinanceAuthTokens>> getAuthTokens(BinancePayAuthType type, String value) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(value, "value");
        Observable<Result<BinanceAuthTokens>> startWith = this.binanceInternalRepository.getAuthTokens(type, value).subscribeOn(this.schedulersProvider.mo1011io()).startWith((Observable<Result<BinanceAuthTokens>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "binanceInternalRepositor…artWith(Result.loading())");
        return startWith;
    }

    public final Observable<Result<Boolean>> logout(String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Observable<Result<Boolean>> startWith = this.binanceInternalRepository.logout(accessToken).subscribeOn(this.schedulersProvider.mo1011io()).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "binanceInternalRepositor…artWith(Result.loading())");
        return startWith;
    }

    public final Observable<Result<BinanceUserInfo>> getUserInfo(boolean z) {
        Observable<Result<BinanceUserInfo>> startWith = this.binanceInternalRepository.getUserInfo(z).subscribeOn(this.schedulersProvider.mo1011io()).startWith((Observable<Result<BinanceUserInfo>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "binanceInternalRepositor…artWith(Result.loading())");
        return startWith;
    }

    public static /* synthetic */ Observable getTransactionHistory$default(BinanceInternalInteractor binanceInternalInteractor, int i, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 30;
        }
        return binanceInternalInteractor.getTransactionHistory(i, str, str2);
    }

    public final Observable<Result<List<BinanceTransaction>>> getTransactionHistory(int i, String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            str2 = null;
        }
        Observable<Result<List<BinanceTransaction>>> startWith = this.binanceInternalRepository.getTransactionHistory(i, str, str2).subscribeOn(this.schedulersProvider.mo1011io()).startWith((Observable<Result<List<BinanceTransaction>>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "binanceInternalRepositor…artWith(Result.loading())");
        return startWith;
    }

    public final Observable<Result<BinanceTransaction>> getTransaction(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<Result<BinanceTransaction>> startWith = this.binanceInternalRepository.getTransaction(id).subscribeOn(this.schedulersProvider.mo1011io()).startWith((Observable<Result<BinanceTransaction>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "binanceInternalRepositor…artWith(Result.loading())");
        return startWith;
    }

    public final Observable<Result<List<BinanceTokenBalanceInfo>>> getUserBalance() {
        Observable<Result<List<BinanceTokenBalanceInfo>>> startWith = this.binanceInternalRepository.getUserBalance().subscribeOn(this.schedulersProvider.mo1011io()).startWith((Observable<Result<List<BinanceTokenBalanceInfo>>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "binanceInternalRepositor…artWith(Result.loading())");
        return startWith;
    }

    public final Observable<Result<List<BinanceTokenInfo>>> getAvailablePaymentTokens() {
        Observable<Result<List<BinanceTokenInfo>>> startWith = this.binanceInternalRepository.getAvailablePaymentTokens().subscribeOn(this.schedulersProvider.mo1011io()).startWith((Observable<Result<List<BinanceTokenInfo>>>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "binanceInternalRepositor…artWith(Result.loading())");
        return startWith;
    }

    public final Observable<Result<BinanceCollectionOrder>> createCollection(long j, double d, String currency) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        Observable<Result<BinanceCollectionOrder>> subscribeOn = this.binanceInternalRepository.createCollection(j, d, currency).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "binanceInternalRepositor…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> getAddressForTokenReplenish(String tokenTicker, String networkId) {
        Intrinsics.checkNotNullParameter(tokenTicker, "tokenTicker");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<String>> subscribeOn = this.binanceInternalRepository.getAddressForTokenReplenish(tokenTicker, networkId).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "binanceInternalRepositor…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<BinanceTokenInfo>>> getTokensForReplenish(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<List<BinanceTokenInfo>>> subscribeOn = this.binanceInternalRepository.getTokensForReplenish(networkId).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "binanceInternalRepositor…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> confirmConvertQuote(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Observable<Result<Boolean>> subscribeOn = this.binanceInternalRepository.confirmConvertQuote(id).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "binanceInternalRepositor…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<BinanceConvertQuote>> getConvertQuote(String inputToken, String outputToken, String amount) {
        Intrinsics.checkNotNullParameter(inputToken, "inputToken");
        Intrinsics.checkNotNullParameter(outputToken, "outputToken");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Observable<Result<BinanceConvertQuote>> subscribeOn = this.binanceInternalRepository.getConvertQuote(inputToken, outputToken, amount).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "binanceInternalRepositor…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<BinanceTokenInfo>>> getTokensForConvert() {
        Observable<Result<List<BinanceTokenInfo>>> subscribeOn = this.binanceInternalRepository.getTokensForConvert().subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "binanceInternalRepositor…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<OutputConvertToken>>> getOppositeTokensForConvertByToken(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<Result<List<OutputConvertToken>>> subscribeOn = this.binanceInternalRepository.getOppositeTokensForConvertByToken(token).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "binanceInternalRepositor…(schedulersProvider.io())");
        return subscribeOn;
    }
}
