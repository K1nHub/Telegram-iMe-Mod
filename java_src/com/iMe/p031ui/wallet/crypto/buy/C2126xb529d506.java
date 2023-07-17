package com.iMe.p031ui.wallet.crypto.buy;

import com.iMe.mapper.crypto.CryptoQuotesToCryptoBuyItemUiMappingKt;
import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.Comparator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2126xb529d506 extends Lambda implements Function1<Result<? extends List<BuyingCryptoQuote>>, Unit> {
    final /* synthetic */ BuyCryptoProductPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2126xb529d506(BuyCryptoProductPresenter buyCryptoProductPresenter) {
        super(1);
        this.this$0 = buyCryptoProductPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<BuyingCryptoQuote>> result) {
        m1412invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1412invoke(Result<? extends List<BuyingCryptoQuote>> it) {
        ResourceManager resourceManager;
        TokenDetailed tokenDetailed;
        List sortedWith;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<BuyingCryptoQuote>> result = it;
        if (result instanceof Result.Success) {
            tokenDetailed = this.this$0.initToken;
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(CryptoQuotesToCryptoBuyItemUiMappingKt.mapToUI((List) ((Result.Success) result).getData(), tokenDetailed), new Comparator() { // from class: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductPresenter$loadAvailableProducts$lambda$3$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(((CryptoBuyItem) t).getProduct(), ((CryptoBuyItem) t2).getProduct());
                    return compareValues;
                }
            });
            this.this$0.setupUiItems((CryptoBuyItem[]) sortedWith.toArray(new CryptoBuyItem[0]));
        } else if (result instanceof Result.Error) {
            resourceManager = this.this$0.resourceManager;
            ((BuyCryptoProductView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
