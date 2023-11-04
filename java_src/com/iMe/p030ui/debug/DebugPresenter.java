package com.iMe.p030ui.debug;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.iMe.storage.data.manager.common.EnvironmentManager;
import com.iMe.storage.domain.model.common.Environment;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3634R;
/* compiled from: DebugPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.debug.DebugPresenter */
/* loaded from: classes3.dex */
public final class DebugPresenter extends BasePresenter<DebugView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final ResourceManager resourceManager;

    public DebugPresenter(CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.resourceManager = resourceManager;
    }

    public final void switchWalletEnvironment(final Environment environment) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        ((DebugView) getViewState()).showConfirmSwitchEnvironmentDialog(getConfirmSwitchEnvironmentDialogModel(), new Callbacks$Callback() { // from class: com.iMe.ui.debug.DebugPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                DebugPresenter.switchWalletEnvironment$lambda$0(DebugPresenter.this, environment);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void switchWalletEnvironment$lambda$0(DebugPresenter this$0, Environment environment) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(environment, "$environment");
        T viewState = this$0.getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        BaseView.CC.showLoadingDialog$default((BaseView) viewState, true, false, null, 6, null);
        EnvironmentManager.INSTANCE.switchEnvironmentTo(environment);
    }

    public final void resetAirdropInformation() {
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        BaseView.CC.showLoadingDialog$default((BaseView) viewState, true, false, null, 6, null);
        this.cryptoPreferenceHelper.setAirdropMetadata(WalletAirdropMetadata.Companion.getDefault());
        EnvironmentManager environmentManager = EnvironmentManager.INSTANCE;
        environmentManager.switchEnvironmentTo(environmentManager.getEnvironment());
    }

    public final boolean isStageEnvironment() {
        return EnvironmentManager.INSTANCE.getEnvironment().isStageEnvironment();
    }

    public final String getCurrentWalletEnvironment() {
        return EnvironmentManager.INSTANCE.getEnvironment().name();
    }

    private final DialogModel getConfirmSwitchEnvironmentDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3634R.string.debug_option_choose_wallet_environment_dialog_title), this.resourceManager.getString(C3634R.string.debug_option_choose_wallet_environment_dialog_message), this.resourceManager.getString(C3634R.string.common_cancel), this.resourceManager.getString(C3634R.string.common_confirm));
    }
}
