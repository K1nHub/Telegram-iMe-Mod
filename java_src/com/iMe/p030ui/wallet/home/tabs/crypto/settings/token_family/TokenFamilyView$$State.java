package com.iMe.p030ui.wallet.home.tabs.crypto.settings.token_family;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyView$$State */
/* loaded from: classes4.dex */
public class TokenFamilyView$$State extends MvpViewState<TokenFamilyView> implements TokenFamilyView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyView
    public void setupScreenWithData(String str, List<BaseNode> list) {
        SetupScreenWithDataCommand setupScreenWithDataCommand = new SetupScreenWithDataCommand(this, str, list);
        this.viewCommands.beforeApply(setupScreenWithDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupScreenWithData(str, list);
        }
        this.viewCommands.afterApply(setupScreenWithDataCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyView
    public void renderData(List<BaseNode> list) {
        RenderDataCommand renderDataCommand = new RenderDataCommand(this, list);
        this.viewCommands.beforeApply(renderDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderData(list);
        }
        this.viewCommands.afterApply(renderDataCommand);
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

    /* compiled from: TokenFamilyView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyView$$State$SetupScreenWithDataCommand */
    /* loaded from: classes4.dex */
    public class SetupScreenWithDataCommand extends ViewCommand<TokenFamilyView> {
        public final List<BaseNode> foundTokens;
        public final String titleText;

        SetupScreenWithDataCommand(TokenFamilyView$$State tokenFamilyView$$State, String str, List<BaseNode> list) {
            super("setupScreenWithData", AddToEndSingleStrategy.class);
            this.titleText = str;
            this.foundTokens = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenFamilyView tokenFamilyView) {
            tokenFamilyView.setupScreenWithData(this.titleText, this.foundTokens);
        }
    }

    /* compiled from: TokenFamilyView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyView$$State$RenderDataCommand */
    /* loaded from: classes4.dex */
    public class RenderDataCommand extends ViewCommand<TokenFamilyView> {
        public final List<BaseNode> foundTokens;

        RenderDataCommand(TokenFamilyView$$State tokenFamilyView$$State, List<BaseNode> list) {
            super("renderData", AddToEndSingleStrategy.class);
            this.foundTokens = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenFamilyView tokenFamilyView) {
            tokenFamilyView.renderData(this.foundTokens);
        }
    }

    /* compiled from: TokenFamilyView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<TokenFamilyView> {
        public final String text;

        ShowToastCommand(TokenFamilyView$$State tokenFamilyView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenFamilyView tokenFamilyView) {
            tokenFamilyView.showToast(this.text);
        }
    }

    /* compiled from: TokenFamilyView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<TokenFamilyView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(TokenFamilyView$$State tokenFamilyView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenFamilyView tokenFamilyView) {
            tokenFamilyView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: TokenFamilyView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<TokenFamilyView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(TokenFamilyView$$State tokenFamilyView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenFamilyView tokenFamilyView) {
            tokenFamilyView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
