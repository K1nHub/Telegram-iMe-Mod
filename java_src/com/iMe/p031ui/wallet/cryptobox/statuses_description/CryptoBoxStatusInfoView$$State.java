package com.iMe.p031ui.wallet.cryptobox.statuses_description;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxStatus;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoView$$State */
/* loaded from: classes4.dex */
public class CryptoBoxStatusInfoView$$State extends MvpViewState<CryptoBoxStatusInfoView> implements CryptoBoxStatusInfoView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoView
    public void renderItems(List<CryptoBoxStatus> list) {
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

    /* compiled from: CryptoBoxStatusInfoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoView$$State$RenderItemsCommand */
    /* loaded from: classes4.dex */
    public class RenderItemsCommand extends ViewCommand<CryptoBoxStatusInfoView> {
        public final List<CryptoBoxStatus> statuses;

        RenderItemsCommand(CryptoBoxStatusInfoView$$State cryptoBoxStatusInfoView$$State, List<CryptoBoxStatus> list) {
            super("renderItems", AddToEndSingleStrategy.class);
            this.statuses = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxStatusInfoView cryptoBoxStatusInfoView) {
            cryptoBoxStatusInfoView.renderItems(this.statuses);
        }
    }

    /* compiled from: CryptoBoxStatusInfoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<CryptoBoxStatusInfoView> {
        public final String text;

        ShowToastCommand(CryptoBoxStatusInfoView$$State cryptoBoxStatusInfoView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxStatusInfoView cryptoBoxStatusInfoView) {
            cryptoBoxStatusInfoView.showToast(this.text);
        }
    }

    /* compiled from: CryptoBoxStatusInfoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CryptoBoxStatusInfoView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CryptoBoxStatusInfoView$$State cryptoBoxStatusInfoView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxStatusInfoView cryptoBoxStatusInfoView) {
            cryptoBoxStatusInfoView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CryptoBoxStatusInfoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CryptoBoxStatusInfoView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CryptoBoxStatusInfoView$$State cryptoBoxStatusInfoView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxStatusInfoView cryptoBoxStatusInfoView) {
            cryptoBoxStatusInfoView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
