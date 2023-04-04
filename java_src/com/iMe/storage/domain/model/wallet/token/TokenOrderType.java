package com.iMe.storage.domain.model.wallet.token;

import com.iMe.storage.R$string;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenOrderType.kt */
/* loaded from: classes3.dex */
public enum TokenOrderType {
    ALPHABET(R$string.choose_tokens_order_alphabet),
    BALANCE(R$string.choose_tokens_order_balance),
    DEFAULT(R$string.choose_tokens_order_default);
    
    public static final Companion Companion = new Companion(null);
    private final int title;

    TokenOrderType(int i) {
        this.title = i;
    }

    public final int getTitle() {
        return this.title;
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

        public final List<String> getTitles(ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            TokenOrderType[] values = TokenOrderType.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (TokenOrderType tokenOrderType : values) {
                arrayList.add(resourceManager.getString(tokenOrderType.getTitle()));
            }
            return arrayList;
        }
    }
}
