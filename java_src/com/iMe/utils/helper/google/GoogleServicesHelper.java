package com.iMe.utils.helper.google;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.helper.wallet.WalletHelper;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3316R;
import org.telegram.p048ui.ActionBar.BaseFragment;
/* compiled from: GoogleServicesHelper.kt */
/* loaded from: classes4.dex */
public final class GoogleServicesHelper implements KoinComponent {
    public static final GoogleServicesHelper INSTANCE;
    private static final Lazy resourceManager$delegate;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runWithActivationCheck$lambda$0() {
    }

    private GoogleServicesHelper() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) resourceManager$delegate.getValue();
    }

    public static final void runWithActivationCheck(BaseFragment fragment, Callbacks$Callback walletAuthorizedAction) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(walletAuthorizedAction, "walletAuthorizedAction");
        runWithActivationCheck(fragment, GoogleServicesHelper$$ExternalSyntheticLambda0.INSTANCE, walletAuthorizedAction);
    }

    public static final void runWithActivationCheck(BaseFragment fragment, Callbacks$Callback activateClickAction, Callbacks$Callback walletAuthorizedAction) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(activateClickAction, "activateClickAction");
        Intrinsics.checkNotNullParameter(walletAuthorizedAction, "walletAuthorizedAction");
        WalletHelper.safeRunWalletScreen(fragment, INSTANCE.getResourceManager().getString(C3316R.string.wallet_auth_dialog_to_use_feature_description), activateClickAction, walletAuthorizedAction);
    }

    static {
        Lazy lazy;
        GoogleServicesHelper googleServicesHelper = new GoogleServicesHelper();
        INSTANCE = googleServicesHelper;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new GoogleServicesHelper$special$$inlined$inject$default$1(googleServicesHelper, null, null));
        resourceManager$delegate = lazy;
    }
}
