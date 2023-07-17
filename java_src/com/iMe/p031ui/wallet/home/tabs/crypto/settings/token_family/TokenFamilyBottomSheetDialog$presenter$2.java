package com.iMe.p031ui.wallet.home.tabs.crypto.settings.token_family;

import com.iMe.model.wallet.home.FoundTokenItem;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: TokenFamilyBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$presenter$2 */
/* loaded from: classes4.dex */
final class TokenFamilyBottomSheetDialog$presenter$2 extends Lambda implements Function0<TokenFamilyPresenter> {
    final /* synthetic */ List<FoundTokenItem> $foundTokens;
    final /* synthetic */ TokenFamilyBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenFamilyBottomSheetDialog$presenter$2(TokenFamilyBottomSheetDialog tokenFamilyBottomSheetDialog, List<FoundTokenItem> list) {
        super(0);
        this.this$0 = tokenFamilyBottomSheetDialog;
        this.$foundTokens = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TokenFamilyBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C23531 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ List<FoundTokenItem> $foundTokens;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C23531(List<FoundTokenItem> list) {
            super(0);
            this.$foundTokens = list;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.$foundTokens);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TokenFamilyPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2352xbcad27bf(this.this$0, null, new C23531(this.$foundTokens)));
        return (TokenFamilyPresenter) lazy.getValue();
    }
}
