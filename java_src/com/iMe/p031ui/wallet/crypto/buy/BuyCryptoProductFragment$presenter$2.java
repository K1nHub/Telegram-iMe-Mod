package com.iMe.p031ui.wallet.crypto.buy;

import com.iMe.storage.domain.model.wallet.token.TokenCode;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: BuyCryptoProductFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductFragment$presenter$2 */
/* loaded from: classes3.dex */
final class BuyCryptoProductFragment$presenter$2 extends Lambda implements Function0<BuyCryptoProductPresenter> {
    final /* synthetic */ BuyCryptoProductFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuyCryptoProductFragment$presenter$2(BuyCryptoProductFragment buyCryptoProductFragment) {
        super(0);
        this.this$0 = buyCryptoProductFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BuyCryptoProductFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductFragment$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C21231 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ BuyCryptoProductFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21231(BuyCryptoProductFragment buyCryptoProductFragment) {
            super(0);
            this.this$0 = buyCryptoProductFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            TokenCode resolveSupportedTokenCode;
            resolveSupportedTokenCode = this.this$0.resolveSupportedTokenCode();
            return ParametersHolderKt.parametersOf(resolveSupportedTokenCode);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final BuyCryptoProductPresenter invoke() {
        Lazy lazy;
        BuyCryptoProductFragment buyCryptoProductFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2122xc111d906(buyCryptoProductFragment, null, new C21231(buyCryptoProductFragment)));
        return (BuyCryptoProductPresenter) lazy.getValue();
    }
}
