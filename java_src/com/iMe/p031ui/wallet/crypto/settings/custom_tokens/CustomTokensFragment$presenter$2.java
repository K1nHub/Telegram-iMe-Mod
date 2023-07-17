package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: CustomTokensFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensFragment$presenter$2 */
/* loaded from: classes4.dex */
final class CustomTokensFragment$presenter$2 extends Lambda implements Function0<CustomTokensPresenter> {
    final /* synthetic */ CustomTokensFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTokensFragment$presenter$2(CustomTokensFragment customTokensFragment) {
        super(0);
        this.this$0 = customTokensFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CustomTokensPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2183x57312083(this.this$0, null, null));
        return (CustomTokensPresenter) lazy.getValue();
    }
}
