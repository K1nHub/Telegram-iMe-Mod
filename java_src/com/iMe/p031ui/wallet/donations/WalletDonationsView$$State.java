package com.iMe.p031ui.wallet.donations;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.donations.WalletDonationsView$$State */
/* loaded from: classes3.dex */
public class WalletDonationsView$$State extends MvpViewState<WalletDonationsView> implements WalletDonationsView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.wallet.donations.WalletDonationsView
    public void onDonationsAddressLoaded(String str) {
        OnDonationsAddressLoadedCommand onDonationsAddressLoadedCommand = new OnDonationsAddressLoadedCommand(this, str);
        this.viewCommands.beforeApply(onDonationsAddressLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onDonationsAddressLoaded(str);
        }
        this.viewCommands.afterApply(onDonationsAddressLoadedCommand);
    }

    @Override // com.iMe.p031ui.wallet.donations.WalletDonationsView
    public void onDonationsTransactionsLoaded(List<TransactionItem> list) {
        OnDonationsTransactionsLoadedCommand onDonationsTransactionsLoadedCommand = new OnDonationsTransactionsLoadedCommand(this, list);
        this.viewCommands.beforeApply(onDonationsTransactionsLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onDonationsTransactionsLoaded(list);
        }
        this.viewCommands.afterApply(onDonationsTransactionsLoadedCommand);
    }

    @Override // com.iMe.p031ui.wallet.donations.WalletDonationsView
    public void updateScreenAfterLoad() {
        UpdateScreenAfterLoadCommand updateScreenAfterLoadCommand = new UpdateScreenAfterLoadCommand(this);
        this.viewCommands.beforeApply(updateScreenAfterLoadCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateScreenAfterLoad();
        }
        this.viewCommands.afterApply(updateScreenAfterLoadCommand);
    }

    @Override // com.iMe.p031ui.wallet.donations.WalletDonationsView
    public void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowConfirmDialogCommand showConfirmDialogCommand = new ShowConfirmDialogCommand(this, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showConfirmDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmDialog(dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showConfirmDialogCommand);
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

    /* compiled from: WalletDonationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.donations.WalletDonationsView$$State$OnDonationsAddressLoadedCommand */
    /* loaded from: classes3.dex */
    public class OnDonationsAddressLoadedCommand extends ViewCommand<WalletDonationsView> {
        public final String address;

        OnDonationsAddressLoadedCommand(WalletDonationsView$$State walletDonationsView$$State, String str) {
            super("onDonationsAddressLoaded", AddToEndSingleStrategy.class);
            this.address = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletDonationsView walletDonationsView) {
            walletDonationsView.onDonationsAddressLoaded(this.address);
        }
    }

    /* compiled from: WalletDonationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.donations.WalletDonationsView$$State$OnDonationsTransactionsLoadedCommand */
    /* loaded from: classes3.dex */
    public class OnDonationsTransactionsLoadedCommand extends ViewCommand<WalletDonationsView> {
        public final List<TransactionItem> transactions;

        OnDonationsTransactionsLoadedCommand(WalletDonationsView$$State walletDonationsView$$State, List<TransactionItem> list) {
            super("onDonationsTransactionsLoaded", AddToEndSingleStrategy.class);
            this.transactions = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletDonationsView walletDonationsView) {
            walletDonationsView.onDonationsTransactionsLoaded(this.transactions);
        }
    }

    /* compiled from: WalletDonationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.donations.WalletDonationsView$$State$UpdateScreenAfterLoadCommand */
    /* loaded from: classes3.dex */
    public class UpdateScreenAfterLoadCommand extends ViewCommand<WalletDonationsView> {
        UpdateScreenAfterLoadCommand(WalletDonationsView$$State walletDonationsView$$State) {
            super("updateScreenAfterLoad", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletDonationsView walletDonationsView) {
            walletDonationsView.updateScreenAfterLoad();
        }
    }

    /* compiled from: WalletDonationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.donations.WalletDonationsView$$State$ShowConfirmDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowConfirmDialogCommand extends ViewCommand<WalletDonationsView> {
        public final Callbacks$Callback action;
        public final DialogModel dialogModel;

        ShowConfirmDialogCommand(WalletDonationsView$$State walletDonationsView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showConfirmDialog", AddToEndSingleStrategy.class);
            this.dialogModel = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletDonationsView walletDonationsView) {
            walletDonationsView.showConfirmDialog(this.dialogModel, this.action);
        }
    }

    /* compiled from: WalletDonationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.donations.WalletDonationsView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletDonationsView> {
        public final String text;

        ShowToastCommand(WalletDonationsView$$State walletDonationsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletDonationsView walletDonationsView) {
            walletDonationsView.showToast(this.text);
        }
    }

    /* compiled from: WalletDonationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.donations.WalletDonationsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletDonationsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletDonationsView$$State walletDonationsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletDonationsView walletDonationsView) {
            walletDonationsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletDonationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.donations.WalletDonationsView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletDonationsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletDonationsView$$State walletDonationsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletDonationsView walletDonationsView) {
            walletDonationsView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
