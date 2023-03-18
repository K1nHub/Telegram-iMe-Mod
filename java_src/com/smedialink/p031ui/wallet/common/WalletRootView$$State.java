package com.smedialink.p031ui.wallet.common;

import io.reactivex.disposables.Disposable;
import java.util.HashMap;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.wallet.common.WalletRootView$$State */
/* loaded from: classes3.dex */
public class WalletRootView$$State extends MvpViewState<WalletRootView> implements WalletRootView {
    @Override // com.smedialink.p031ui.wallet.common.WalletRootView
    public void onTabSelected(int i) {
        OnTabSelectedCommand onTabSelectedCommand = new OnTabSelectedCommand(this, i);
        this.viewCommands.beforeApply(onTabSelectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onTabSelected(i);
        }
        this.viewCommands.afterApply(onTabSelectedCommand);
    }

    @Override // com.smedialink.p031ui.wallet.common.WalletRootView
    public void setupNavigationTabsEnabled(HashMap<Integer, Boolean> hashMap) {
        SetupNavigationTabsEnabledCommand setupNavigationTabsEnabledCommand = new SetupNavigationTabsEnabledCommand(this, hashMap);
        this.viewCommands.beforeApply(setupNavigationTabsEnabledCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupNavigationTabsEnabled(hashMap);
        }
        this.viewCommands.afterApply(setupNavigationTabsEnabledCommand);
    }

    @Override // com.smedialink.p031ui.wallet.common.WalletRootView
    public void showNotificationItem(boolean z) {
        ShowNotificationItemCommand showNotificationItemCommand = new ShowNotificationItemCommand(this, z);
        this.viewCommands.beforeApply(showNotificationItemCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showNotificationItem(z);
        }
        this.viewCommands.afterApply(showNotificationItemCommand);
    }

    @Override // com.smedialink.p031ui.wallet.common.WalletRootView
    public void showWalletConnectItem(boolean z) {
        ShowWalletConnectItemCommand showWalletConnectItemCommand = new ShowWalletConnectItemCommand(this, z);
        this.viewCommands.beforeApply(showWalletConnectItemCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showWalletConnectItem(z);
        }
        this.viewCommands.afterApply(showWalletConnectItemCommand);
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BaseView
    public void showToast(String str) {
        ShowToastCommand showToastCommand = new ShowToastCommand(this, str);
        this.viewCommands.beforeApply(showToastCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showToast(str);
        }
        this.viewCommands.afterApply(showToastCommand);
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BaseView
    public void showLoadingDialog(boolean z, boolean z2, Disposable disposable) {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this, z, z2, disposable);
        this.viewCommands.beforeApply(showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showLoadingDialog(z, z2, disposable);
        }
        this.viewCommands.afterApply(showLoadingDialogCommand);
    }

    /* compiled from: WalletRootView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.common.WalletRootView$$State$OnTabSelectedCommand */
    /* loaded from: classes3.dex */
    public class OnTabSelectedCommand extends ViewCommand<WalletRootView> {

        /* renamed from: id */
        public final int f379id;

        OnTabSelectedCommand(WalletRootView$$State walletRootView$$State, int i) {
            super("onTabSelected", AddToEndSingleStrategy.class);
            this.f379id = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletRootView walletRootView) {
            walletRootView.onTabSelected(this.f379id);
        }
    }

    /* compiled from: WalletRootView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.common.WalletRootView$$State$SetupNavigationTabsEnabledCommand */
    /* loaded from: classes3.dex */
    public class SetupNavigationTabsEnabledCommand extends ViewCommand<WalletRootView> {
        public final HashMap<Integer, Boolean> availableTabs;

        SetupNavigationTabsEnabledCommand(WalletRootView$$State walletRootView$$State, HashMap<Integer, Boolean> hashMap) {
            super("setupNavigationTabsEnabled", AddToEndSingleStrategy.class);
            this.availableTabs = hashMap;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletRootView walletRootView) {
            walletRootView.setupNavigationTabsEnabled(this.availableTabs);
        }
    }

    /* compiled from: WalletRootView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.common.WalletRootView$$State$ShowNotificationItemCommand */
    /* loaded from: classes3.dex */
    public class ShowNotificationItemCommand extends ViewCommand<WalletRootView> {
        public final boolean show;

        ShowNotificationItemCommand(WalletRootView$$State walletRootView$$State, boolean z) {
            super("showNotificationItem", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletRootView walletRootView) {
            walletRootView.showNotificationItem(this.show);
        }
    }

    /* compiled from: WalletRootView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.common.WalletRootView$$State$ShowWalletConnectItemCommand */
    /* loaded from: classes3.dex */
    public class ShowWalletConnectItemCommand extends ViewCommand<WalletRootView> {
        public final boolean show;

        ShowWalletConnectItemCommand(WalletRootView$$State walletRootView$$State, boolean z) {
            super("showWalletConnectItem", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletRootView walletRootView) {
            walletRootView.showWalletConnectItem(this.show);
        }
    }

    /* compiled from: WalletRootView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.common.WalletRootView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletRootView> {
        public final String text;

        ShowToastCommand(WalletRootView$$State walletRootView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletRootView walletRootView) {
            walletRootView.showToast(this.text);
        }
    }

    /* compiled from: WalletRootView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.common.WalletRootView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletRootView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletRootView$$State walletRootView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletRootView walletRootView) {
            walletRootView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
