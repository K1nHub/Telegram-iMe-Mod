package com.smedialink.p031ui.twitter.auth;

import com.smedialink.model.twitter.TwitterAuthResult;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.twitter.auth.TwitterAuthView$$State */
/* loaded from: classes3.dex */
public class TwitterAuthView$$State extends MvpViewState<TwitterAuthView> implements TwitterAuthView {
    @Override // com.smedialink.p031ui.twitter.auth.TwitterAuthView
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

    /* compiled from: TwitterAuthView$$State.java */
    /* renamed from: com.smedialink.ui.twitter.auth.TwitterAuthView$$State$OnAuthResultCommand */
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
    /* renamed from: com.smedialink.ui.twitter.auth.TwitterAuthView$$State$ShowToastCommand */
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
    /* renamed from: com.smedialink.ui.twitter.auth.TwitterAuthView$$State$ShowLoadingDialogCommand */
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
}
