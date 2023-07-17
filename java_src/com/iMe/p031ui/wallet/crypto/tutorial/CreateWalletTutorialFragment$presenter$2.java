package com.iMe.p031ui.wallet.crypto.tutorial;

import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p042mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletTutorialFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$presenter$2 */
/* loaded from: classes4.dex */
public final class CreateWalletTutorialFragment$presenter$2 extends Lambda implements Function0<CreateWalletTutorialPresenter> {
    final /* synthetic */ CreateWalletTutorialFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletTutorialFragment$presenter$2(CreateWalletTutorialFragment createWalletTutorialFragment) {
        super(0);
        this.this$0 = createWalletTutorialFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CreateWalletTutorialFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C22181 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ CreateWalletTutorialFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C22181(CreateWalletTutorialFragment createWalletTutorialFragment) {
            super(0);
            this.this$0 = createWalletTutorialFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            TutorialType tutorialType;
            tutorialType = this.this$0.tutorialType;
            return ParametersHolderKt.parametersOf(tutorialType);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CreateWalletTutorialPresenter invoke() {
        Lazy lazy;
        CreateWalletTutorialFragment createWalletTutorialFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2215x25a74f5b(createWalletTutorialFragment, null, new C22181(createWalletTutorialFragment)));
        return (CreateWalletTutorialPresenter) lazy.getValue();
    }
}
