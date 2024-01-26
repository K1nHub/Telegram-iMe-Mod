package com.iMe.model.wallet.select;

import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SelectTokenScreenType.kt */
/* loaded from: classes3.dex */
public abstract class SelectTokenScreenType {
    public /* synthetic */ SelectTokenScreenType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private SelectTokenScreenType() {
    }

    /* compiled from: SelectTokenScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Binance extends SelectTokenScreenType {
        private final List<TokenDetailed> tokens;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Binance(List<TokenDetailed> tokens) {
            super(null);
            Intrinsics.checkNotNullParameter(tokens, "tokens");
            this.tokens = tokens;
        }

        public final List<TokenDetailed> getTokens() {
            return this.tokens;
        }
    }

    /* compiled from: SelectTokenScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Send extends SelectTokenScreenType {
        private final List<TokenDetailed> availableTokens;

        public Send() {
            this(null, 1, null);
        }

        public Send(List<TokenDetailed> list) {
            super(null);
            this.availableTokens = list;
        }

        public /* synthetic */ Send(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : list);
        }

        public final List<TokenDetailed> getAvailableTokens() {
            return this.availableTokens;
        }
    }

    /* compiled from: SelectTokenScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Swap extends SelectTokenScreenType {
        private final TokenDetailed ignoredToken;
        private final TransactionDirection swapDirection;
        private final SwapProtocol swapProtocol;

        public final SwapProtocol getSwapProtocol() {
            return this.swapProtocol;
        }

        public final TransactionDirection getSwapDirection() {
            return this.swapDirection;
        }

        public final TokenDetailed getIgnoredToken() {
            return this.ignoredToken;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Swap(SwapProtocol swapProtocol, TransactionDirection swapDirection, TokenDetailed tokenDetailed) {
            super(null);
            Intrinsics.checkNotNullParameter(swapProtocol, "swapProtocol");
            Intrinsics.checkNotNullParameter(swapDirection, "swapDirection");
            this.swapProtocol = swapProtocol;
            this.swapDirection = swapDirection;
            this.ignoredToken = tokenDetailed;
        }
    }
}
