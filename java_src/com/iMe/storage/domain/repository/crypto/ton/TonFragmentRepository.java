package com.iMe.storage.domain.repository.crypto.ton;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.ton.PremiumBuyTransactionParams;
import com.iMe.storage.domain.model.crypto.ton.PremiumPlan;
import com.iMe.storage.domain.model.crypto.ton.ProductBuyTransactionParams;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentProduct;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentProductsSortingType;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentSessionData;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: TonFragmentRepository.kt */
/* loaded from: classes3.dex */
public interface TonFragmentRepository {
    Observable<Result<List<PremiumPlan>>> getPremiumPrices();

    Observable<Result<String>> getRecipientByUsername(String str, int i);

    Observable<Result<Boolean>> getSessionAuthState();

    Observable<Result<TonFragmentSessionData>> getSessionData();

    Observable<Result<List<TonFragmentProduct>>> getUsernames(TonFragmentProductsSortingType tonFragmentProductsSortingType, String str);

    Observable<Result<PremiumBuyTransactionParams>> preparePremiumBuyTransaction(String str, String str2);

    Observable<Result<ProductBuyTransactionParams>> prepareProductBuyTransaction(String str, String str2, String str3);

    Observable<Result<Boolean>> sendSessionSignature(String str, String str2, String str3, String str4);
}
