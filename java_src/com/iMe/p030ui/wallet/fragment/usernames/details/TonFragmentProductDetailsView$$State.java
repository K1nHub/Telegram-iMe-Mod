package com.iMe.p030ui.wallet.fragment.usernames.details;

import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsView$$State */
/* loaded from: classes4.dex */
public class TonFragmentProductDetailsView$$State extends MvpViewState<TonFragmentProductDetailsView> implements TonFragmentProductDetailsView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.details.TonFragmentProductDetailsView
    public void renderScreenData(String str, String str2, String str3) {
        RenderScreenDataCommand renderScreenDataCommand = new RenderScreenDataCommand(this, str, str2, str3);
        this.viewCommands.beforeApply(renderScreenDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderScreenData(str, str2, str3);
        }
        this.viewCommands.afterApply(renderScreenDataCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.details.TonFragmentProductDetailsView
    public void renderTimeLeft(String str) {
        RenderTimeLeftCommand renderTimeLeftCommand = new RenderTimeLeftCommand(this, str);
        this.viewCommands.beforeApply(renderTimeLeftCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderTimeLeft(str);
        }
        this.viewCommands.afterApply(renderTimeLeftCommand);
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

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public void finishScreen() {
        FinishScreenCommand finishScreenCommand = new FinishScreenCommand(this);
        this.viewCommands.beforeApply(finishScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.finishScreen();
        }
        this.viewCommands.afterApply(finishScreenCommand);
    }

    /* compiled from: TonFragmentProductDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsView$$State$RenderScreenDataCommand */
    /* loaded from: classes4.dex */
    public class RenderScreenDataCommand extends ViewCommand<TonFragmentProductDetailsView> {
        public final String priceText;
        public final String titleText;
        public final String username;

        RenderScreenDataCommand(TonFragmentProductDetailsView$$State tonFragmentProductDetailsView$$State, String str, String str2, String str3) {
            super("renderScreenData", AddToEndSingleStrategy.class);
            this.titleText = str;
            this.username = str2;
            this.priceText = str3;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TonFragmentProductDetailsView tonFragmentProductDetailsView) {
            tonFragmentProductDetailsView.renderScreenData(this.titleText, this.username, this.priceText);
        }
    }

    /* compiled from: TonFragmentProductDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsView$$State$RenderTimeLeftCommand */
    /* loaded from: classes4.dex */
    public class RenderTimeLeftCommand extends ViewCommand<TonFragmentProductDetailsView> {
        public final String timeLeftText;

        RenderTimeLeftCommand(TonFragmentProductDetailsView$$State tonFragmentProductDetailsView$$State, String str) {
            super("renderTimeLeft", AddToEndSingleStrategy.class);
            this.timeLeftText = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TonFragmentProductDetailsView tonFragmentProductDetailsView) {
            tonFragmentProductDetailsView.renderTimeLeft(this.timeLeftText);
        }
    }

    /* compiled from: TonFragmentProductDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<TonFragmentProductDetailsView> {
        public final String text;

        ShowToastCommand(TonFragmentProductDetailsView$$State tonFragmentProductDetailsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TonFragmentProductDetailsView tonFragmentProductDetailsView) {
            tonFragmentProductDetailsView.showToast(this.text);
        }
    }

    /* compiled from: TonFragmentProductDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<TonFragmentProductDetailsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(TonFragmentProductDetailsView$$State tonFragmentProductDetailsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TonFragmentProductDetailsView tonFragmentProductDetailsView) {
            tonFragmentProductDetailsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: TonFragmentProductDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<TonFragmentProductDetailsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(TonFragmentProductDetailsView$$State tonFragmentProductDetailsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TonFragmentProductDetailsView tonFragmentProductDetailsView) {
            tonFragmentProductDetailsView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: TonFragmentProductDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.details.TonFragmentProductDetailsView$$State$FinishScreenCommand */
    /* loaded from: classes4.dex */
    public class FinishScreenCommand extends ViewCommand<TonFragmentProductDetailsView> {
        FinishScreenCommand(TonFragmentProductDetailsView$$State tonFragmentProductDetailsView$$State) {
            super("finishScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TonFragmentProductDetailsView tonFragmentProductDetailsView) {
            tonFragmentProductDetailsView.finishScreen();
        }
    }
}
