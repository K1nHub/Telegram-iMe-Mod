package com.iMe.p030ui.wallet.fragment.usernames;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesView$$State */
/* loaded from: classes.dex */
public class FragmentUsernamesView$$State extends MvpViewState<FragmentUsernamesView> implements FragmentUsernamesView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesView
    public void showConfirmationDialog(DialogModel dialogModel) {
        ShowConfirmationDialogCommand showConfirmationDialogCommand = new ShowConfirmationDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmationDialog(dialogModel);
        }
        this.viewCommands.afterApply(showConfirmationDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesView
    public void showActionSuccess() {
        ShowActionSuccessCommand showActionSuccessCommand = new ShowActionSuccessCommand(this);
        this.viewCommands.beforeApply(showActionSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showActionSuccess();
        }
        this.viewCommands.afterApply(showActionSuccessCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesView
    public void showActionError(String str) {
        ShowActionErrorCommand showActionErrorCommand = new ShowActionErrorCommand(this, str);
        this.viewCommands.beforeApply(showActionErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showActionError(str);
        }
        this.viewCommands.afterApply(showActionErrorCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesView
    public void showProductDetailsDialog(TonFragmentItem.Product product) {
        ShowProductDetailsDialogCommand showProductDetailsDialogCommand = new ShowProductDetailsDialogCommand(this, product);
        this.viewCommands.beforeApply(showProductDetailsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showProductDetailsDialog(product);
        }
        this.viewCommands.afterApply(showProductDetailsDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesView
    public void showChooseSortingTypeDialog(DialogModel dialogModel, List<String> list, int i) {
        ShowChooseSortingTypeDialogCommand showChooseSortingTypeDialogCommand = new ShowChooseSortingTypeDialogCommand(this, dialogModel, list, i);
        this.viewCommands.beforeApply(showChooseSortingTypeDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseSortingTypeDialog(dialogModel, list, i);
        }
        this.viewCommands.afterApply(showChooseSortingTypeDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesView
    public void renderItems(List<BaseNode> list) {
        RenderItemsCommand renderItemsCommand = new RenderItemsCommand(this, list);
        this.viewCommands.beforeApply(renderItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderItems(list);
        }
        this.viewCommands.afterApply(renderItemsCommand);
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

    @Override // com.iMe.p030ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        ShowRefreshingCommand showRefreshingCommand = new ShowRefreshingCommand(this, z);
        this.viewCommands.beforeApply(showRefreshingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRefreshing(z);
        }
        this.viewCommands.afterApply(showRefreshingCommand);
    }

    /* compiled from: FragmentUsernamesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesView$$State$ShowConfirmationDialogCommand */
    /* loaded from: classes.dex */
    public class ShowConfirmationDialogCommand extends ViewCommand<FragmentUsernamesView> {
        public final DialogModel dialogModel;

        ShowConfirmationDialogCommand(FragmentUsernamesView$$State fragmentUsernamesView$$State, DialogModel dialogModel) {
            super("showConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentUsernamesView fragmentUsernamesView) {
            fragmentUsernamesView.showConfirmationDialog(this.dialogModel);
        }
    }

    /* compiled from: FragmentUsernamesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesView$$State$ShowActionSuccessCommand */
    /* loaded from: classes.dex */
    public class ShowActionSuccessCommand extends ViewCommand<FragmentUsernamesView> {
        ShowActionSuccessCommand(FragmentUsernamesView$$State fragmentUsernamesView$$State) {
            super("showActionSuccess", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentUsernamesView fragmentUsernamesView) {
            fragmentUsernamesView.showActionSuccess();
        }
    }

    /* compiled from: FragmentUsernamesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesView$$State$ShowActionErrorCommand */
    /* loaded from: classes.dex */
    public class ShowActionErrorCommand extends ViewCommand<FragmentUsernamesView> {
        public final String message;

        ShowActionErrorCommand(FragmentUsernamesView$$State fragmentUsernamesView$$State, String str) {
            super("showActionError", OneExecutionStateStrategy.class);
            this.message = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentUsernamesView fragmentUsernamesView) {
            fragmentUsernamesView.showActionError(this.message);
        }
    }

    /* compiled from: FragmentUsernamesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesView$$State$ShowProductDetailsDialogCommand */
    /* loaded from: classes.dex */
    public class ShowProductDetailsDialogCommand extends ViewCommand<FragmentUsernamesView> {
        public final TonFragmentItem.Product productItem;

        ShowProductDetailsDialogCommand(FragmentUsernamesView$$State fragmentUsernamesView$$State, TonFragmentItem.Product product) {
            super("showProductDetailsDialog", OneExecutionStateStrategy.class);
            this.productItem = product;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentUsernamesView fragmentUsernamesView) {
            fragmentUsernamesView.showProductDetailsDialog(this.productItem);
        }
    }

    /* compiled from: FragmentUsernamesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesView$$State$ShowChooseSortingTypeDialogCommand */
    /* loaded from: classes.dex */
    public class ShowChooseSortingTypeDialogCommand extends ViewCommand<FragmentUsernamesView> {
        public final DialogModel dialogModel;
        public final int selectedPosition;
        public final List<String> titles;

        ShowChooseSortingTypeDialogCommand(FragmentUsernamesView$$State fragmentUsernamesView$$State, DialogModel dialogModel, List<String> list, int i) {
            super("showChooseSortingTypeDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.titles = list;
            this.selectedPosition = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentUsernamesView fragmentUsernamesView) {
            fragmentUsernamesView.showChooseSortingTypeDialog(this.dialogModel, this.titles, this.selectedPosition);
        }
    }

    /* compiled from: FragmentUsernamesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesView$$State$RenderItemsCommand */
    /* loaded from: classes.dex */
    public class RenderItemsCommand extends ViewCommand<FragmentUsernamesView> {
        public final List<BaseNode> items;

        RenderItemsCommand(FragmentUsernamesView$$State fragmentUsernamesView$$State, List<BaseNode> list) {
            super("renderItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentUsernamesView fragmentUsernamesView) {
            fragmentUsernamesView.renderItems(this.items);
        }
    }

    /* compiled from: FragmentUsernamesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesView$$State$ShowToastCommand */
    /* loaded from: classes.dex */
    public class ShowToastCommand extends ViewCommand<FragmentUsernamesView> {
        public final String text;

        ShowToastCommand(FragmentUsernamesView$$State fragmentUsernamesView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentUsernamesView fragmentUsernamesView) {
            fragmentUsernamesView.showToast(this.text);
        }
    }

    /* compiled from: FragmentUsernamesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<FragmentUsernamesView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(FragmentUsernamesView$$State fragmentUsernamesView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentUsernamesView fragmentUsernamesView) {
            fragmentUsernamesView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: FragmentUsernamesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesView$$State$ShowErrorToastCommand */
    /* loaded from: classes.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<FragmentUsernamesView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(FragmentUsernamesView$$State fragmentUsernamesView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentUsernamesView fragmentUsernamesView) {
            fragmentUsernamesView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: FragmentUsernamesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesView$$State$ShowRefreshingCommand */
    /* loaded from: classes.dex */
    public class ShowRefreshingCommand extends ViewCommand<FragmentUsernamesView> {
        public final boolean show;

        ShowRefreshingCommand(FragmentUsernamesView$$State fragmentUsernamesView$$State, boolean z) {
            super("showRefreshing", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentUsernamesView fragmentUsernamesView) {
            fragmentUsernamesView.showRefreshing(this.show);
        }
    }
}
