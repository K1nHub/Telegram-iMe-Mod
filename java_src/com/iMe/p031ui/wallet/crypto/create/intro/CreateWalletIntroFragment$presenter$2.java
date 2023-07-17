package com.iMe.p031ui.wallet.crypto.create.intro;

import com.iMe.model.wallet.crypto.create.WalletCreationType;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p042mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletIntroFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$presenter$2 */
/* loaded from: classes4.dex */
public final class CreateWalletIntroFragment$presenter$2 extends Lambda implements Function0<CreateWalletIntroPresenter> {
    final /* synthetic */ String $linkedWalletAddress;
    final /* synthetic */ CreateWalletIntroFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletIntroFragment$presenter$2(CreateWalletIntroFragment createWalletIntroFragment, String str) {
        super(0);
        this.this$0 = createWalletIntroFragment;
        this.$linkedWalletAddress = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CreateWalletIntroFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C21501 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ String $linkedWalletAddress;
        final /* synthetic */ CreateWalletIntroFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21501(String str, CreateWalletIntroFragment createWalletIntroFragment) {
            super(0);
            this.$linkedWalletAddress = str;
            this.this$0 = createWalletIntroFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            WalletCreationType.Initial initial;
            initial = this.this$0.walletCreationType;
            return ParametersHolderKt.parametersOf(this.$linkedWalletAddress, initial);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CreateWalletIntroPresenter invoke() {
        Lazy lazy;
        CreateWalletIntroFragment createWalletIntroFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2147x17566557(createWalletIntroFragment, null, new C21501(this.$linkedWalletAddress, createWalletIntroFragment)));
        return (CreateWalletIntroPresenter) lazy.getValue();
    }
}
