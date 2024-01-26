package com.iMe.navigation.wallet.coordinator;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.manager.common.FeatureAvailableManager$Token;
import com.iMe.model.wallet.swap.WalletSwapScreenType;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.ContextExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.INavigationLayout;
/* compiled from: TokenBuyCoordinator.kt */
/* loaded from: classes3.dex */
public final class TokenBuyCoordinator {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final ResourceManager resourceManager;

    public TokenBuyCoordinator(ResourceManager resourceManager, CryptoPreferenceHelper cryptoPreferenceHelper) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        this.resourceManager = resourceManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
    }

    public static /* synthetic */ void start$default(TokenBuyCoordinator tokenBuyCoordinator, INavigationLayout iNavigationLayout, TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        tokenBuyCoordinator.start(iNavigationLayout, tokenBuyCoordinatorArgs, z);
    }

    public final void start(INavigationLayout actionBarLayout, TokenBuyCoordinatorArgs args, boolean z) {
        Intrinsics.checkNotNullParameter(actionBarLayout, "actionBarLayout");
        Intrinsics.checkNotNullParameter(args, "args");
        String networkId = args.getNetworkId();
        if (networkId == null) {
            networkId = this.cryptoPreferenceHelper.getNetworkId();
        }
        if (args.getFromToken() != null || (args.getTokenTo() != null && FeatureAvailableManager$Token.INSTANCE.isPurchaseAvailable(networkId))) {
            WalletSwapProcessFragment.Companion companion = WalletSwapProcessFragment.Companion;
            SwapProtocol swapProtocol = args.getSwapProtocol();
            if (swapProtocol == null) {
                swapProtocol = SwapProtocol.ONEINCH_FUSION;
            }
            actionBarLayout.presentFragment(companion.newInstance(new WalletSwapScreenType.Crypto(swapProtocol, args.getFromToken(), args.getTokenTo(), args.getNetworkId())), z);
            return;
        }
        ContextExtKt.toast(this.resourceManager.getString(C3632R.string.common_unexpected_error_title));
    }

    public final void showNoEnoughMoneyDialog(final INavigationLayout actionBarLayout, final TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(actionBarLayout, "actionBarLayout");
        Intrinsics.checkNotNullParameter(args, "args");
        if ((args.getFromToken() != null || args.getTokenTo() != null) && FeatureAvailableManager$Token.INSTANCE.isPurchaseAvailable(this.cryptoPreferenceHelper.getNetworkId())) {
            BaseFragment lastFragment = actionBarLayout.getLastFragment();
            Intrinsics.checkNotNullExpressionValue(lastFragment, "actionBarLayout.lastFragment");
            DialogsFactoryKt.showErrorAlert(lastFragment, this.resourceManager.getString(C3632R.string.wallet_common_error_not_enough_money_title), this.resourceManager.getString(C3632R.string.wallet_common_error_not_enough_money_description), this.resourceManager.getString(C3632R.string.wallet_common_error_not_enough_money_btn_txt), new Callbacks$Callback() { // from class: com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    TokenBuyCoordinator.showNoEnoughMoneyDialog$lambda$0(TokenBuyCoordinator.this, actionBarLayout, args);
                }
            });
            return;
        }
        BaseFragment lastFragment2 = actionBarLayout.getLastFragment();
        Intrinsics.checkNotNullExpressionValue(lastFragment2, "actionBarLayout.lastFragment");
        DialogsFactoryKt.showErrorAlert$default(lastFragment2, this.resourceManager.getString(C3632R.string.wallet_common_error_not_enough_money_title), this.resourceManager.getString(C3632R.string.wallet_common_error_not_enough_money_simple_description), this.resourceManager.getString(C3632R.string.common_ok), null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showNoEnoughMoneyDialog$lambda$0(TokenBuyCoordinator this$0, INavigationLayout actionBarLayout, TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(actionBarLayout, "$actionBarLayout");
        Intrinsics.checkNotNullParameter(args, "$args");
        start$default(this$0, actionBarLayout, args, false, 4, null);
    }
}
