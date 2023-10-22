package com.iMe.model.wallet.crypto.buy;

import com.iMe.model.common.NoChildNode;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.billing.CryptoProduct;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
/* compiled from: CryptoBuyItem.kt */
/* loaded from: classes3.dex */
public final class CryptoBuyItem extends NoChildNode {
    private final CryptoProduct product;
    private final BuyingCryptoQuote quote;
    private final TokenDetailed token;

    public static /* synthetic */ CryptoBuyItem copy$default(CryptoBuyItem cryptoBuyItem, TokenDetailed tokenDetailed, CryptoProduct cryptoProduct, BuyingCryptoQuote buyingCryptoQuote, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenDetailed = cryptoBuyItem.token;
        }
        if ((i & 2) != 0) {
            cryptoProduct = cryptoBuyItem.product;
        }
        if ((i & 4) != 0) {
            buyingCryptoQuote = cryptoBuyItem.quote;
        }
        return cryptoBuyItem.copy(tokenDetailed, cryptoProduct, buyingCryptoQuote);
    }

    public final TokenDetailed component1() {
        return this.token;
    }

    public final CryptoProduct component2() {
        return this.product;
    }

    public final BuyingCryptoQuote component3() {
        return this.quote;
    }

    public final CryptoBuyItem copy(TokenDetailed tokenDetailed, CryptoProduct product, BuyingCryptoQuote buyingCryptoQuote) {
        Intrinsics.checkNotNullParameter(product, "product");
        return new CryptoBuyItem(tokenDetailed, product, buyingCryptoQuote);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBuyItem) {
            CryptoBuyItem cryptoBuyItem = (CryptoBuyItem) obj;
            return Intrinsics.areEqual(this.token, cryptoBuyItem.token) && this.product == cryptoBuyItem.product && Intrinsics.areEqual(this.quote, cryptoBuyItem.quote);
        }
        return false;
    }

    public int hashCode() {
        TokenDetailed tokenDetailed = this.token;
        int hashCode = (((tokenDetailed == null ? 0 : tokenDetailed.hashCode()) * 31) + this.product.hashCode()) * 31;
        BuyingCryptoQuote buyingCryptoQuote = this.quote;
        return hashCode + (buyingCryptoQuote != null ? buyingCryptoQuote.hashCode() : 0);
    }

    public String toString() {
        return "CryptoBuyItem(token=" + this.token + ", product=" + this.product + ", quote=" + this.quote + ')';
    }

    public /* synthetic */ CryptoBuyItem(TokenDetailed tokenDetailed, CryptoProduct cryptoProduct, BuyingCryptoQuote buyingCryptoQuote, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenDetailed, cryptoProduct, (i & 4) != 0 ? null : buyingCryptoQuote);
    }

    public final TokenDetailed getToken() {
        return this.token;
    }

    public final CryptoProduct getProduct() {
        return this.product;
    }

    public final BuyingCryptoQuote getQuote() {
        return this.quote;
    }

    public CryptoBuyItem(TokenDetailed tokenDetailed, CryptoProduct product, BuyingCryptoQuote buyingCryptoQuote) {
        Intrinsics.checkNotNullParameter(product, "product");
        this.token = tokenDetailed;
        this.product = product;
        this.quote = buyingCryptoQuote;
    }

    public final String getAmount(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        if (this.product.isCustom()) {
            return resourceManager.getString(C3630R.string.wallet_crypto_buy_custom_price_dialog_toolbar_title);
        }
        BuyingCryptoQuote buyingCryptoQuote = this.quote;
        if (buyingCryptoQuote != null) {
            if (!(buyingCryptoQuote.getCryptoMoneyAmount() == -1.0f)) {
                StringBuilder sb = new StringBuilder();
                Float valueOf = Float.valueOf(this.quote.getCryptoMoneyAmount());
                TokenDetailed tokenDetailed = this.token;
                sb.append(BalanceFormatter.format(valueOf, Integer.valueOf(NumberExtKt.orZero(tokenDetailed != null ? Integer.valueOf(tokenDetailed.getDecimals()) : null))));
                sb.append(' ');
                TokenDetailed tokenDetailed2 = this.token;
                String ticker = tokenDetailed2 != null ? tokenDetailed2.getTicker() : null;
                if (ticker == null) {
                    ticker = "";
                }
                sb.append(ticker);
                return sb.toString();
            }
        }
        return resourceManager.getString(C3630R.string.common_dash);
    }

    public final String getPrice(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return this.product.isCustom() ? resourceManager.getString(C3630R.string.wallet_crypto_buy_max_price) : BalanceFormatter.formatFiatBalance$default(BalanceFormatter.INSTANCE, Float.valueOf(this.product.getPriceInDollars()), null, 2, null);
    }
}
