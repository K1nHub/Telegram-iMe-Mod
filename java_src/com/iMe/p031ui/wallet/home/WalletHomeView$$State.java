package com.iMe.p031ui.wallet.home;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.home.WalletHomeView$$State */
/* loaded from: classes4.dex */
public class WalletHomeView$$State extends MvpViewState<WalletHomeView> implements WalletHomeView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.home.WalletHomeView
    public void loadTabsInfo() {
        LoadTabsInfoCommand loadTabsInfoCommand = new LoadTabsInfoCommand(this);
        this.viewCommands.beforeApply(loadTabsInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.loadTabsInfo();
        }
        this.viewCommands.afterApply(loadTabsInfoCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.WalletHomeView
    public void loadBalances() {
        LoadBalancesCommand loadBalancesCommand = new LoadBalancesCommand(this);
        this.viewCommands.beforeApply(loadBalancesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.loadBalances();
        }
        this.viewCommands.afterApply(loadBalancesCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.WalletHomeView
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

    @Override // com.iMe.p031ui.wallet.home.WalletHomeView
    public void onSetupNavigationRouter() {
        OnSetupNavigationRouterCommand onSetupNavigationRouterCommand = new OnSetupNavigationRouterCommand(this);
        this.viewCommands.beforeApply(onSetupNavigationRouterCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSetupNavigationRouter();
        }
        this.viewCommands.afterApply(onSetupNavigationRouterCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public <T> void showErrorToast(Result.Error<? extends T> error, ResourceManager resourceManager) {
        ShowErrorToastCommand showErrorToastCommand = new ShowErrorToastCommand(this, error, resourceManager);
        this.viewCommands.beforeApply(showErrorToastCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showErrorToast(error, resourceManager);
        }
        this.viewCommands.afterApply(showErrorToastCommand);
    }

    /* compiled from: WalletHomeView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.WalletHomeView$$State$LoadTabsInfoCommand */
    /* loaded from: classes4.dex */
    public class LoadTabsInfoCommand extends ViewCommand<WalletHomeView> {
        LoadTabsInfoCommand(WalletHomeView$$State walletHomeView$$State) {
            super("loadTabsInfo", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeView walletHomeView) {
            walletHomeView.loadTabsInfo();
        }
    }

    /* compiled from: WalletHomeView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.WalletHomeView$$State$LoadBalancesCommand */
    /* loaded from: classes4.dex */
    public class LoadBalancesCommand extends ViewCommand<WalletHomeView> {
        LoadBalancesCommand(WalletHomeView$$State walletHomeView$$State) {
            super("loadBalances", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeView walletHomeView) {
            walletHomeView.loadBalances();
        }
    }

    /* compiled from: WalletHomeView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.WalletHomeView$$State$OnTabSelectedCommand */
    /* loaded from: classes4.dex */
    public class OnTabSelectedCommand extends ViewCommand<WalletHomeView> {
        public final int position;

        OnTabSelectedCommand(WalletHomeView$$State walletHomeView$$State, int i) {
            super("onTabSelected", AddToEndSingleStrategy.class);
            this.position = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeView walletHomeView) {
            walletHomeView.onTabSelected(this.position);
        }
    }

    /* compiled from: WalletHomeView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.WalletHomeView$$State$OnSetupNavigationRouterCommand */
    /* loaded from: classes4.dex */
    public class OnSetupNavigationRouterCommand extends ViewCommand<WalletHomeView> {
        OnSetupNavigationRouterCommand(WalletHomeView$$State walletHomeView$$State) {
            super("onSetupNavigationRouter", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeView walletHomeView) {
            walletHomeView.onSetupNavigationRouter();
        }
    }

    /* compiled from: WalletHomeView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.WalletHomeView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletHomeView> {
        public final String text;

        ShowToastCommand(WalletHomeView$$State walletHomeView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeView walletHomeView) {
            walletHomeView.showToast(this.text);
        }
    }

    /* compiled from: WalletHomeView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.WalletHomeView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletHomeView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletHomeView$$State walletHomeView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeView walletHomeView) {
            walletHomeView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletHomeView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.WalletHomeView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletHomeView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletHomeView$$State walletHomeView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeView walletHomeView) {
            walletHomeView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
