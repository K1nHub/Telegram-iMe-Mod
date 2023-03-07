package com.smedialink.p031ui.wallet.crypto.buy;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.buy.CryptoBuyItem;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductView$$State */
/* loaded from: classes3.dex */
public class BuyCryptoProductView$$State extends MvpViewState<BuyCryptoProductView> implements BuyCryptoProductView {
    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void showSuccessPurchase() {
        ShowSuccessPurchaseCommand showSuccessPurchaseCommand = new ShowSuccessPurchaseCommand(this);
        this.viewCommands.beforeApply(showSuccessPurchaseCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSuccessPurchase();
        }
        this.viewCommands.afterApply(showSuccessPurchaseCommand);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void showErrorPurchase(String str) {
        ShowErrorPurchaseCommand showErrorPurchaseCommand = new ShowErrorPurchaseCommand(this, str);
        this.viewCommands.beforeApply(showErrorPurchaseCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showErrorPurchase(str);
        }
        this.viewCommands.afterApply(showErrorPurchaseCommand);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
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

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void showProcessingUrl(String str) {
        ShowProcessingUrlCommand showProcessingUrlCommand = new ShowProcessingUrlCommand(this, str);
        this.viewCommands.beforeApply(showProcessingUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showProcessingUrl(str);
        }
        this.viewCommands.afterApply(showProcessingUrlCommand);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
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

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void showConfirmDialog(CryptoBuyItem cryptoBuyItem, DialogModel dialogModel) {
        ShowConfirmDialogCommand showConfirmDialogCommand = new ShowConfirmDialogCommand(this, cryptoBuyItem, dialogModel);
        this.viewCommands.beforeApply(showConfirmDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmDialog(cryptoBuyItem, dialogModel);
        }
        this.viewCommands.afterApply(showConfirmDialogCommand);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void openCustomPriceDialog(CryptoBuyItem cryptoBuyItem) {
        OpenCustomPriceDialogCommand openCustomPriceDialogCommand = new OpenCustomPriceDialogCommand(this, cryptoBuyItem);
        this.viewCommands.beforeApply(openCustomPriceDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCustomPriceDialog(cryptoBuyItem);
        }
        this.viewCommands.afterApply(openCustomPriceDialogCommand);
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

    /* compiled from: BuyCryptoProductView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowSuccessPurchaseCommand */
    /* loaded from: classes3.dex */
    public class ShowSuccessPurchaseCommand extends ViewCommand<BuyCryptoProductView> {
        ShowSuccessPurchaseCommand(BuyCryptoProductView$$State buyCryptoProductView$$State) {
            super("showSuccessPurchase", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BuyCryptoProductView buyCryptoProductView) {
            buyCryptoProductView.showSuccessPurchase();
        }
    }

    /* compiled from: BuyCryptoProductView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowErrorPurchaseCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorPurchaseCommand extends ViewCommand<BuyCryptoProductView> {
        public final String orderId;

        ShowErrorPurchaseCommand(BuyCryptoProductView$$State buyCryptoProductView$$State, String str) {
            super("showErrorPurchase", OneExecutionStateStrategy.class);
            this.orderId = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BuyCryptoProductView buyCryptoProductView) {
            buyCryptoProductView.showErrorPurchase(this.orderId);
        }
    }

    /* compiled from: BuyCryptoProductView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowUiItemsCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowProcessingUrlCommand */
    /* loaded from: classes3.dex */
    public class ShowProcessingUrlCommand extends ViewCommand<BuyCryptoProductView> {
        public final String url;

        ShowProcessingUrlCommand(BuyCryptoProductView$$State buyCryptoProductView$$State, String str) {
            super("showProcessingUrl", AddToEndSingleStrategy.class);
            this.url = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BuyCryptoProductView buyCryptoProductView) {
            buyCryptoProductView.showProcessingUrl(this.url);
        }
    }

    /* compiled from: BuyCryptoProductView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowRefreshLoadingCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowConfirmDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowConfirmDialogCommand extends ViewCommand<BuyCryptoProductView> {
        public final DialogModel dialogModel;
        public final CryptoBuyItem item;

        ShowConfirmDialogCommand(BuyCryptoProductView$$State buyCryptoProductView$$State, CryptoBuyItem cryptoBuyItem, DialogModel dialogModel) {
            super("showConfirmDialog", OneExecutionStateStrategy.class);
            this.item = cryptoBuyItem;
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BuyCryptoProductView buyCryptoProductView) {
            buyCryptoProductView.showConfirmDialog(this.item, this.dialogModel);
        }
    }

    /* compiled from: BuyCryptoProductView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductView$$State$OpenCustomPriceDialogCommand */
    /* loaded from: classes3.dex */
    public class OpenCustomPriceDialogCommand extends ViewCommand<BuyCryptoProductView> {
        public final CryptoBuyItem lowerPriceItem;

        OpenCustomPriceDialogCommand(BuyCryptoProductView$$State buyCryptoProductView$$State, CryptoBuyItem cryptoBuyItem) {
            super("openCustomPriceDialog", OneExecutionStateStrategy.class);
            this.lowerPriceItem = cryptoBuyItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BuyCryptoProductView buyCryptoProductView) {
            buyCryptoProductView.openCustomPriceDialog(this.lowerPriceItem);
        }
    }

    /* compiled from: BuyCryptoProductView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
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
}
