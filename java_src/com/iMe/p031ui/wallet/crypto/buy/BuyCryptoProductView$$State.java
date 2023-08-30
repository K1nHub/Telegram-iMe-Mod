package com.iMe.p031ui.wallet.crypto.buy;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductView$$State */
/* loaded from: classes4.dex */
public class BuyCryptoProductView$$State extends MvpViewState<BuyCryptoProductView> implements BuyCryptoProductView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void showUiItems(List<BaseNode> list) {
        ShowUiItemsCommand showUiItemsCommand = new ShowUiItemsCommand(this, list);
        this.viewCommands.beforeApply(showUiItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showUiItems(list);
        }
        this.viewCommands.afterApply(showUiItemsCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void showRefreshLoading(boolean z) {
        ShowRefreshLoadingCommand showRefreshLoadingCommand = new ShowRefreshLoadingCommand(this, z);
        this.viewCommands.beforeApply(showRefreshLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRefreshLoading(z);
        }
        this.viewCommands.afterApply(showRefreshLoadingCommand);
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

    /* compiled from: BuyCryptoProductView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowUiItemsCommand */
    /* loaded from: classes4.dex */
    public class ShowUiItemsCommand extends ViewCommand<BuyCryptoProductView> {
        public final List<BaseNode> availablePurchases;

        ShowUiItemsCommand(BuyCryptoProductView$$State buyCryptoProductView$$State, List<BaseNode> list) {
            super("showUiItems", AddToEndSingleStrategy.class);
            this.availablePurchases = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BuyCryptoProductView buyCryptoProductView) {
            buyCryptoProductView.showUiItems(this.availablePurchases);
        }
    }

    /* compiled from: BuyCryptoProductView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowRefreshLoadingCommand */
    /* loaded from: classes4.dex */
    public class ShowRefreshLoadingCommand extends ViewCommand<BuyCryptoProductView> {
        public final boolean show;

        ShowRefreshLoadingCommand(BuyCryptoProductView$$State buyCryptoProductView$$State, boolean z) {
            super("showRefreshLoading", OneExecutionStateStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BuyCryptoProductView buyCryptoProductView) {
            buyCryptoProductView.showRefreshLoading(this.show);
        }
    }

    /* compiled from: BuyCryptoProductView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<BuyCryptoProductView> {
        public final String text;

        ShowToastCommand(BuyCryptoProductView$$State buyCryptoProductView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BuyCryptoProductView buyCryptoProductView) {
            buyCryptoProductView.showToast(this.text);
        }
    }

    /* compiled from: BuyCryptoProductView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<BuyCryptoProductView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(BuyCryptoProductView$$State buyCryptoProductView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BuyCryptoProductView buyCryptoProductView) {
            buyCryptoProductView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: BuyCryptoProductView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<BuyCryptoProductView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(BuyCryptoProductView$$State buyCryptoProductView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BuyCryptoProductView buyCryptoProductView) {
            buyCryptoProductView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
