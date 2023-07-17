package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.p031ui.wallet.crypto.token.TokenManagementFragment;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p042mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TokenManagementFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$presenter$2 */
/* loaded from: classes4.dex */
public final class TokenManagementFragment$presenter$2 extends Lambda implements Function0<TokenManagementPresenter> {
    final /* synthetic */ TokenManagementFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenManagementFragment$presenter$2(TokenManagementFragment tokenManagementFragment) {
        super(0);
        this.this$0 = tokenManagementFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TokenManagementFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C22031 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ TokenManagementFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C22031(TokenManagementFragment tokenManagementFragment) {
            super(0);
            this.this$0 = tokenManagementFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            TokenManagementFragment.ScreenType screenType;
            screenType = this.this$0.screenType;
            return ParametersHolderKt.parametersOf(screenType);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TokenManagementPresenter invoke() {
        Lazy lazy;
        TokenManagementFragment tokenManagementFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2201x2bbd1ab2(tokenManagementFragment, null, new C22031(tokenManagementFragment)));
        return (TokenManagementPresenter) lazy.getValue();
    }
}
