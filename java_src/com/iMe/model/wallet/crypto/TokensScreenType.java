package com.iMe.model.wallet.crypto;

import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokensScreenType.kt */
/* loaded from: classes3.dex */
public abstract class TokensScreenType {
    public /* synthetic */ TokensScreenType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: TokensScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Crypto extends TokensScreenType {
        public static final Crypto INSTANCE = new Crypto();

        private Crypto() {
            super(null);
        }
    }

    private TokensScreenType() {
    }

    /* compiled from: TokensScreenType.kt */
    /* loaded from: classes3.dex */
    public static final class Binance extends TokensScreenType {
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
}
