package com.iMe.model.wallet.crypto.buy;

import com.iMe.model.common.NoChildNode;
import com.iMe.storage.domain.model.billing.CryptoProduct;
import com.iMe.storage.domain.model.crypto.simplex.BuyingCryptoQuote;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3290R;
/* compiled from: CryptoBuyItem.kt */
/* loaded from: classes3.dex */
public final class CryptoBuyItem extends NoChildNode {
    private final CryptoProduct product;
    private final BuyingCryptoQuote quote;
    private final TokenInfo tokenInfo;

    public static /* synthetic */ CryptoBuyItem copy$default(CryptoBuyItem cryptoBuyItem, TokenInfo tokenInfo, CryptoProduct cryptoProduct, BuyingCryptoQuote buyingCryptoQuote, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenInfo = cryptoBuyItem.tokenInfo;
        }
        if ((i & 2) != 0) {
            cryptoProduct = cryptoBuyItem.product;
        }
        if ((i & 4) != 0) {
            buyingCryptoQuote = cryptoBuyItem.quote;
        }
        return cryptoBuyItem.copy(tokenInfo, cryptoProduct, buyingCryptoQuote);
    }

    public final TokenInfo component1() {
        return this.tokenInfo;
    }

    public final CryptoProduct component2() {
        return this.product;
    }

    public final BuyingCryptoQuote component3() {
        return this.quote;
    }

    public final CryptoBuyItem copy(TokenInfo tokenInfo, CryptoProduct product, BuyingCryptoQuote buyingCryptoQuote) {
        Intrinsics.checkNotNullParameter(tokenInfo, "tokenInfo");
        Intrinsics.checkNotNullParameter(product, "product");
        return new CryptoBuyItem(tokenInfo, product, buyingCryptoQuote);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBuyItem) {
            CryptoBuyItem cryptoBuyItem = (CryptoBuyItem) obj;
            return Intrinsics.areEqual(this.tokenInfo, cryptoBuyItem.tokenInfo) && this.product == cryptoBuyItem.product && Intrinsics.areEqual(this.quote, cryptoBuyItem.quote);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.tokenInfo.hashCode() * 31) + this.product.hashCode()) * 31;
        BuyingCryptoQuote buyingCryptoQuote = this.quote;
        return hashCode + (buyingCryptoQuote == null ? 0 : buyingCryptoQuote.hashCode());
    }

    public String toString() {
        return "CryptoBuyItem(tokenInfo=" + this.tokenInfo + ", product=" + this.product + ", quote=" + this.quote + ')';
    }

    public /* synthetic */ CryptoBuyItem(TokenInfo tokenInfo, CryptoProduct cryptoProduct, BuyingCryptoQuote buyingCryptoQuote, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenInfo, cryptoProduct, (i & 4) != 0 ? null : buyingCryptoQuote);
    }

    public final TokenInfo getTokenInfo() {
        return this.tokenInfo;
    }

    public final CryptoProduct getProduct() {
        return this.product;
    }

    public final BuyingCryptoQuote getQuote() {
        return this.quote;
    }

    public CryptoBuyItem(TokenInfo tokenInfo, CryptoProduct product, BuyingCryptoQuote buyingCryptoQuote) {
        Intrinsics.checkNotNullParameter(tokenInfo, "tokenInfo");
        Intrinsics.checkNotNullParameter(product, "product");
        this.tokenInfo = tokenInfo;
        this.product = product;
        this.quote = buyingCryptoQuote;
    }

    public final String getAmount(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        if (this.product.isCustom()) {
            return resourceManager.getString(C3290R.string.wallet_crypto_buy_custom_price_dialog_toolbar_title);
        }
        BuyingCryptoQuote buyingCryptoQuote = this.quote;
        if (buyingCryptoQuote != null) {
            if (!(buyingCryptoQuote.getCryptoMoneyAmount() == -1.0f)) {
                return BalanceFormatter.formatBalance(Float.valueOf(this.quote.getCryptoMoneyAmount()), this.tokenInfo.getDecimals()) + ' ' + resourceManager.getString(this.tokenInfo.getShortName());
            }
        }
        return resourceManager.getString(C3290R.string.common_dash);
    }

    public final String getPrice(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return this.product.isCustom() ? resourceManager.getString(C3290R.string.wallet_crypto_buy_max_price) : BalanceFormatter.formatFiatBalance$default(BalanceFormatter.INSTANCE, Float.valueOf(this.product.getPriceInDollars()), resourceManager, null, 4, null);
    }
}
