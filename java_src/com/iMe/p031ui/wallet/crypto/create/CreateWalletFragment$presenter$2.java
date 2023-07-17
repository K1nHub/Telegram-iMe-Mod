package com.iMe.p031ui.wallet.crypto.create;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p042mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$presenter$2 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$presenter$2 extends Lambda implements Function0<CreateWalletPresenter> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$presenter$2(CreateWalletFragment createWalletFragment) {
        super(0);
        this.this$0 = createWalletFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CreateWalletFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C21361 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ CreateWalletFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21361(CreateWalletFragment createWalletFragment) {
            super(0);
            this.this$0 = createWalletFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.this$0.currentType);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CreateWalletPresenter invoke() {
        Lazy lazy;
        CreateWalletFragment createWalletFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2133x4f1f4719(createWalletFragment, null, new C21361(createWalletFragment)));
        return (CreateWalletPresenter) lazy.getValue();
    }
}
