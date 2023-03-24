package com.smedialink.p031ui.debug;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.smedialink.storage.data.manager.common.EnvironmentManager;
import com.smedialink.storage.domain.model.common.Environment;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3301R;
/* compiled from: DebugPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.debug.DebugPresenter */
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
        ((DebugView) getViewState()).showConfirmSwitchEnvironmentDialog(getConfirmSwitchEnvironmentDialogModel(), new Callbacks$Callback() { // from class: com.smedialink.ui.debug.DebugPresenter$$ExternalSyntheticLambda0
            @Override // org.fork.utils.Callbacks$Callback
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
        BaseView.DefaultImpls.showLoadingDialog$default((BaseView) viewState, true, false, null, 6, null);
        EnvironmentManager.INSTANCE.switchEnvironmentTo(environment);
    }

    public final void resetAirdropInformation() {
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        BaseView.DefaultImpls.showLoadingDialog$default((BaseView) viewState, true, false, null, 6, null);
        this.cryptoPreferenceHelper.setAirdropMetadata(WalletAirdropMetadata.Companion.getDefault());
        EnvironmentManager environmentManager = EnvironmentManager.INSTANCE;
        environmentManager.switchEnvironmentTo(environmentManager.getEnvironment());
    }

    public final boolean isStageEnvironment() {
        EnvironmentManager environmentManager = EnvironmentManager.INSTANCE;
        return environmentManager.getEnvironment().isStage() || environmentManager.getEnvironment().isDevelopment();
    }

    public final String getCurrentWalletEnvironment() {
        return EnvironmentManager.INSTANCE.getEnvironment().name();
    }

    private final DialogModel getConfirmSwitchEnvironmentDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3301R.string.debug_option_choose_wallet_environment_dialog_title), this.resourceManager.getString(C3301R.string.debug_option_choose_wallet_environment_dialog_message), this.resourceManager.getString(C3301R.string.common_cancel), this.resourceManager.getString(C3301R.string.common_confirm));
    }
}
