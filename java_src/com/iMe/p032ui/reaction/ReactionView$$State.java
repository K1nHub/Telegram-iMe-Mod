package com.iMe.p032ui.reaction;

import com.iMe.model.reaction.ReactionButtonsRowsType;
import com.iMe.p032ui.base.mvp.base.BaseView;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.reaction.ReactionView$$State */
/* loaded from: classes3.dex */
public class ReactionView$$State extends MvpViewState<ReactionView> implements ReactionView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.reaction.ReactionView
    public void messageCreated() {
        MessageCreatedCommand messageCreatedCommand = new MessageCreatedCommand(this);
        this.viewCommands.beforeApply(messageCreatedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.messageCreated();
        }
        this.viewCommands.afterApply(messageCreatedCommand);
    }

    @Override // com.iMe.p032ui.reaction.ReactionView
    public void onUrlValid(int i, String str) {
        OnUrlValidCommand onUrlValidCommand = new OnUrlValidCommand(this, i, str);
        this.viewCommands.beforeApply(onUrlValidCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onUrlValid(i, str);
        }
        this.viewCommands.afterApply(onUrlValidCommand);
    }

    @Override // com.iMe.p032ui.reaction.ReactionView
    public void showButtonPositionDialog(ReactionButtonsRowsType reactionButtonsRowsType) {
        ShowButtonPositionDialogCommand showButtonPositionDialogCommand = new ShowButtonPositionDialogCommand(this, reactionButtonsRowsType);
        this.viewCommands.beforeApply(showButtonPositionDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showButtonPositionDialog(reactionButtonsRowsType);
        }
        this.viewCommands.afterApply(showButtonPositionDialogCommand);
    }

    @Override // com.iMe.p032ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p032ui.base.mvp.base.BaseView
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

    /* compiled from: ReactionView$$State.java */
    /* renamed from: com.iMe.ui.reaction.ReactionView$$State$MessageCreatedCommand */
    /* loaded from: classes3.dex */
    public class MessageCreatedCommand extends ViewCommand<ReactionView> {
        MessageCreatedCommand(ReactionView$$State reactionView$$State) {
            super("messageCreated", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ReactionView reactionView) {
            reactionView.messageCreated();
        }
    }

    /* compiled from: ReactionView$$State.java */
    /* renamed from: com.iMe.ui.reaction.ReactionView$$State$OnUrlValidCommand */
    /* loaded from: classes3.dex */
    public class OnUrlValidCommand extends ViewCommand<ReactionView> {
        public final int position;
        public final String url;

        OnUrlValidCommand(ReactionView$$State reactionView$$State, int i, String str) {
            super("onUrlValid", AddToEndSingleStrategy.class);
            this.position = i;
            this.url = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ReactionView reactionView) {
            reactionView.onUrlValid(this.position, this.url);
        }
    }

    /* compiled from: ReactionView$$State.java */
    /* renamed from: com.iMe.ui.reaction.ReactionView$$State$ShowButtonPositionDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowButtonPositionDialogCommand extends ViewCommand<ReactionView> {
        public final ReactionButtonsRowsType buttonPosition;

        ShowButtonPositionDialogCommand(ReactionView$$State reactionView$$State, ReactionButtonsRowsType reactionButtonsRowsType) {
            super("showButtonPositionDialog", OneExecutionStateStrategy.class);
            this.buttonPosition = reactionButtonsRowsType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ReactionView reactionView) {
            reactionView.showButtonPositionDialog(this.buttonPosition);
        }
    }

    /* compiled from: ReactionView$$State.java */
    /* renamed from: com.iMe.ui.reaction.ReactionView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<ReactionView> {
        public final String text;

        ShowToastCommand(ReactionView$$State reactionView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ReactionView reactionView) {
            reactionView.showToast(this.text);
        }
    }

    /* compiled from: ReactionView$$State.java */
    /* renamed from: com.iMe.ui.reaction.ReactionView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<ReactionView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(ReactionView$$State reactionView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ReactionView reactionView) {
            reactionView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
