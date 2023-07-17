package com.iMe.p031ui.wallet.staking.operations;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsView$$State */
/* loaded from: classes4.dex */
public class StakingOperationsView$$State extends MvpViewState<StakingOperationsView> implements StakingOperationsView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.staking.operations.StakingOperationsView
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

    @Override // com.iMe.p031ui.wallet.staking.operations.StakingOperationsView
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

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
    public void setupNetwork(Network network) {
        SetupNetworkCommand setupNetworkCommand = new SetupNetworkCommand(this, network);
        this.viewCommands.beforeApply(setupNetworkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupNetwork(network);
        }
        this.viewCommands.afterApply(setupNetworkCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(Network network, List<Network> list, Function1<? super Network, Unit> function1) {
        ShowChooseNetworkDialogCommand showChooseNetworkDialogCommand = new ShowChooseNetworkDialogCommand(this, network, list, function1);
        this.viewCommands.beforeApply(showChooseNetworkDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseNetworkDialog(network, list, function1);
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
        public final Network network;

        SetupNetworkCommand(StakingOperationsView$$State stakingOperationsView$$State, Network network) {
            super("setupNetwork", AddToEndSingleStrategy.class);
            this.network = network;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingOperationsView stakingOperationsView) {
            stakingOperationsView.setupNetwork(this.network);
        }
    }

    /* compiled from: StakingOperationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.operations.StakingOperationsView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<StakingOperationsView> {
        public final Function1<? super Network, Unit> action;
        public final List<Network> availableNetworks;
        public final Network network;

        ShowChooseNetworkDialogCommand(StakingOperationsView$$State stakingOperationsView$$State, Network network, List<Network> list, Function1<? super Network, Unit> function1) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.network = network;
            this.availableNetworks = list;
            this.action = function1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingOperationsView stakingOperationsView) {
            stakingOperationsView.showChooseNetworkDialog(this.network, this.availableNetworks, this.action);
        }
    }
}
