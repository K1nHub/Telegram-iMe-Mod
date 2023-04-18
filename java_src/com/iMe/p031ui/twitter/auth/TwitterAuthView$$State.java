package com.iMe.p031ui.twitter.auth;

import com.iMe.model.twitter.TwitterAuthResult;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.twitter.auth.TwitterAuthView$$State */
/* loaded from: classes3.dex */
public class TwitterAuthView$$State extends MvpViewState<TwitterAuthView> implements TwitterAuthView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.twitter.auth.TwitterAuthView
    public void onAuthResult(TwitterAuthResult twitterAuthResult) {
        OnAuthResultCommand onAuthResultCommand = new OnAuthResultCommand(this, twitterAuthResult);
        this.viewCommands.beforeApply(onAuthResultCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onAuthResult(twitterAuthResult);
        }
        this.viewCommands.afterApply(onAuthResultCommand);
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

    /* compiled from: TwitterAuthView$$State.java */
    /* renamed from: com.iMe.ui.twitter.auth.TwitterAuthView$$State$OnAuthResultCommand */
    /* loaded from: classes3.dex */
    public class OnAuthResultCommand extends ViewCommand<TwitterAuthView> {
        public final TwitterAuthResult authResult;

        OnAuthResultCommand(TwitterAuthView$$State twitterAuthView$$State, TwitterAuthResult twitterAuthResult) {
            super("onAuthResult", AddToEndSingleStrategy.class);
            this.authResult = twitterAuthResult;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterAuthView twitterAuthView) {
            twitterAuthView.onAuthResult(this.authResult);
        }
    }

    /* compiled from: TwitterAuthView$$State.java */
    /* renamed from: com.iMe.ui.twitter.auth.TwitterAuthView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<TwitterAuthView> {
        public final String text;

        ShowToastCommand(TwitterAuthView$$State twitterAuthView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterAuthView twitterAuthView) {
            twitterAuthView.showToast(this.text);
        }
    }

    /* compiled from: TwitterAuthView$$State.java */
    /* renamed from: com.iMe.ui.twitter.auth.TwitterAuthView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<TwitterAuthView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(TwitterAuthView$$State twitterAuthView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterAuthView twitterAuthView) {
            twitterAuthView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: TwitterAuthView$$State.java */
    /* renamed from: com.iMe.ui.twitter.auth.TwitterAuthView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<TwitterAuthView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(TwitterAuthView$$State twitterAuthView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterAuthView twitterAuthView) {
            twitterAuthView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
