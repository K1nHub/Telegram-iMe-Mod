package com.iMe.storage.domain.model.wallet.token;

import com.iMe.storage.R$string;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenOrderType.kt */
/* loaded from: classes3.dex */
public enum TokenOrderType {
    ALPHABET(R$string.choose_tokens_order_alphabet, true),
    BALANCE(R$string.choose_tokens_order_balance, true),
    DEFAULT(R$string.choose_tokens_order_default, false);
    
    public static final Companion Companion = new Companion(null);
    private final boolean isAvailableForAllNetworks;
    private final int title;

    TokenOrderType(int i, boolean z) {
        this.title = i;
        this.isAvailableForAllNetworks = z;
    }

    public final int getTitle() {
        return this.title;
    }

    public final boolean isAvailableForAllNetworks() {
        return this.isAvailableForAllNetworks;
    }

    /* compiled from: TokenOrderType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TokenOrderType map(String value) {
            TokenOrderType tokenOrderType;
            Intrinsics.checkNotNullParameter(value, "value");
            TokenOrderType[] values = TokenOrderType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    tokenOrderType = null;
                    break;
                }
                tokenOrderType = values[i];
                if (Intrinsics.areEqual(tokenOrderType.name(), value)) {
                    break;
                }
                i++;
            }
            return tokenOrderType == null ? TokenOrderType.DEFAULT : tokenOrderType;
        }

        public final List<TokenOrderType> getValues(boolean z) {
            List<TokenOrderType> list;
            if (z) {
                TokenOrderType[] values = TokenOrderType.values();
                ArrayList arrayList = new ArrayList();
                for (TokenOrderType tokenOrderType : values) {
                    if (tokenOrderType.isAvailableForAllNetworks()) {
                        arrayList.add(tokenOrderType);
                    }
                }
                return arrayList;
            }
            list = ArraysKt___ArraysKt.toList(TokenOrderType.values());
            return list;
        }

        public final List<String> getTitles(ResourceManager resourceManager, boolean z) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            List<TokenOrderType> values = getValues(z);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(values, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TokenOrderType tokenOrderType : values) {
                arrayList.add(resourceManager.getString(tokenOrderType.getTitle()));
            }
            return arrayList;
        }
    }
}
