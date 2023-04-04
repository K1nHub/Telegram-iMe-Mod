package com.iMe.storage.domain.repository.crypto.simplex;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoPayment;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuoteArgs;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: SimplexRepository.kt */
/* loaded from: classes3.dex */
public interface SimplexRepository {
    Observable<Result<BuyingCryptoPayment>> createBuyingCryptoPayment(Currency currency, Currency currency2, float f, int i, String str, NetworkType networkType);

    Observable<Result<List<BuyingCryptoQuote>>> getBuyingCryptoQuote(List<BuyingCryptoQuoteArgs> list);
}
