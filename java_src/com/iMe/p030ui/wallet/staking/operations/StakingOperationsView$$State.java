package com.iMe.p030ui.wallet.staking.operations;

import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsView$$State */
/* loaded from: classes4.dex */
public class StakingOperationsView$$State extends MvpViewState<StakingOperationsView> implements StakingOperationsView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.staking.operations.StakingOperationsView
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

    @Override // com.iMe.p030ui.wallet.staking.operations.StakingOperationsView
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

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void setupNetwork(NetworkItem networkItem) {
        SetupNetworkCommand setupNetworkCommand = new SetupNetworkCommand(this, networkItem);
        this.viewCommands.beforeApply(setupNetworkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupNetwork(networkItem);
        }
        this.viewCommands.afterApply(setupNetworkCommand);
    }

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkItem networkItem, List<? extends NetworkItem> list) {
        ShowChooseNetworkDialogCommand showChooseNetworkDialogCommand = new ShowChooseNetworkDialogCommand(this, networkItem, list);
        this.viewCommands.beforeApply(showChooseNetworkDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseNetworkDialog(networkItem, list);
        }
        this.viewCommands.afterApply(showChooseNetworkDialogCommand);
    }

    /* compiled from: StakingOperationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsView$$State$OnTabSelectedCommand */
    /* loaded from: classes4.dex */
    public class OnTabSelectedCommand extends ViewCommand<StakingOperationsView> {
        public final int position;

        OnTabSelectedCommand(StakingOperationsView$$State stakingOperationsView$$State, int i) {
            super("onTabSelected", AddToEndSingleStrategy.class);
            this.position = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingOperationsView stakingOperationsView) {
            stakingOperationsView.onTabSelected(this.position);
        }
    }

    /* compiled from: StakingOperationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsView$$State$OnSetupNavigationRouterCommand */
    /* loaded from: classes4.dex */
    public class OnSetupNavigationRouterCommand extends ViewCommand<StakingOperationsView> {
        OnSetupNavigationRouterCommand(StakingOperationsView$$State stakingOperationsView$$State) {
            super("onSetupNavigationRouter", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingOperationsView stakingOperationsView) {
            stakingOperationsView.onSetupNavigationRouter();
        }
    }

    /* compiled from: StakingOperationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<StakingOperationsView> {
        public final String text;

        ShowToastCommand(StakingOperationsView$$State stakingOperationsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingOperationsView stakingOperationsView) {
            stakingOperationsView.showToast(this.text);
        }
    }

    /* compiled from: StakingOperationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<StakingOperationsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(StakingOperationsView$$State stakingOperationsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingOperationsView stakingOperationsView) {
            stakingOperationsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: StakingOperationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<StakingOperationsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(StakingOperationsView$$State stakingOperationsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingOperationsView stakingOperationsView) {
            stakingOperationsView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: StakingOperationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsView$$State$SetupNetworkCommand */
    /* loaded from: classes4.dex */
    public class SetupNetworkCommand extends ViewCommand<StakingOperationsView> {
        public final NetworkItem networkItem;

        SetupNetworkCommand(StakingOperationsView$$State stakingOperationsView$$State, NetworkItem networkItem) {
            super("setupNetwork", AddToEndSingleStrategy.class);
            this.networkItem = networkItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingOperationsView stakingOperationsView) {
            stakingOperationsView.setupNetwork(this.networkItem);
        }
    }

    /* compiled from: StakingOperationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<StakingOperationsView> {
        public final List<? extends NetworkItem> availableNetworks;
        public final NetworkItem network;

        ShowChooseNetworkDialogCommand(StakingOperationsView$$State stakingOperationsView$$State, NetworkItem networkItem, List<? extends NetworkItem> list) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.network = networkItem;
            this.availableNetworks = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingOperationsView stakingOperationsView) {
            stakingOperationsView.showChooseNetworkDialog(this.network, this.availableNetworks);
        }
    }
}
