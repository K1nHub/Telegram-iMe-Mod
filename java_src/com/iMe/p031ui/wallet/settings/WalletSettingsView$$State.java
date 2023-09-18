package com.iMe.p031ui.wallet.settings;

import com.iMe.model.wallet.crypto.settings.WalletSettingsItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.settings.WalletSettingsView$$State */
/* loaded from: classes6.dex */
public class WalletSettingsView$$State extends MvpViewState<WalletSettingsView> implements WalletSettingsView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.settings.WalletSettingsView
    public void renderSettingsItems(List<WalletSettingsItem> list) {
        RenderSettingsItemsCommand renderSettingsItemsCommand = new RenderSettingsItemsCommand(this, list);
        this.viewCommands.beforeApply(renderSettingsItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderSettingsItems(list);
        }
        this.viewCommands.afterApply(renderSettingsItemsCommand);
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

    /* compiled from: WalletSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.WalletSettingsView$$State$RenderSettingsItemsCommand */
    /* loaded from: classes6.dex */
    public class RenderSettingsItemsCommand extends ViewCommand<WalletSettingsView> {
        public final List<WalletSettingsItem> items;

        RenderSettingsItemsCommand(WalletSettingsView$$State walletSettingsView$$State, List<WalletSettingsItem> list) {
            super("renderSettingsItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSettingsView walletSettingsView) {
            walletSettingsView.renderSettingsItems(this.items);
        }
    }

    /* compiled from: WalletSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.WalletSettingsView$$State$ShowToastCommand */
    /* loaded from: classes6.dex */
    public class ShowToastCommand extends ViewCommand<WalletSettingsView> {
        public final String text;

        ShowToastCommand(WalletSettingsView$$State walletSettingsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSettingsView walletSettingsView) {
            walletSettingsView.showToast(this.text);
        }
    }

    /* compiled from: WalletSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.WalletSettingsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes6.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletSettingsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletSettingsView$$State walletSettingsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSettingsView walletSettingsView) {
            walletSettingsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.WalletSettingsView$$State$ShowErrorToastCommand */
    /* loaded from: classes6.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletSettingsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletSettingsView$$State walletSettingsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSettingsView walletSettingsView) {
            walletSettingsView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
