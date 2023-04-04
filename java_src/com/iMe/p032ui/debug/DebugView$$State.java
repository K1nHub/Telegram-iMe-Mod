package com.iMe.p032ui.debug;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p032ui.base.mvp.base.BaseView;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.debug.DebugView$$State */
/* loaded from: classes3.dex */
public class DebugView$$State extends MvpViewState<DebugView> implements DebugView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.debug.DebugView
    public void showConfirmSwitchEnvironmentDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowConfirmSwitchEnvironmentDialogCommand showConfirmSwitchEnvironmentDialogCommand = new ShowConfirmSwitchEnvironmentDialogCommand(this, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showConfirmSwitchEnvironmentDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmSwitchEnvironmentDialog(dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showConfirmSwitchEnvironmentDialogCommand);
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

    /* compiled from: DebugView$$State.java */
    /* renamed from: com.iMe.ui.debug.DebugView$$State$ShowConfirmSwitchEnvironmentDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowConfirmSwitchEnvironmentDialogCommand extends ViewCommand<DebugView> {
        public final Callbacks$Callback action;
        public final DialogModel model;

        ShowConfirmSwitchEnvironmentDialogCommand(DebugView$$State debugView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showConfirmSwitchEnvironmentDialog", OneExecutionStateStrategy.class);
            this.model = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(DebugView debugView) {
            debugView.showConfirmSwitchEnvironmentDialog(this.model, this.action);
        }
    }

    /* compiled from: DebugView$$State.java */
    /* renamed from: com.iMe.ui.debug.DebugView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<DebugView> {
        public final String text;

        ShowToastCommand(DebugView$$State debugView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(DebugView debugView) {
            debugView.showToast(this.text);
        }
    }

    /* compiled from: DebugView$$State.java */
    /* renamed from: com.iMe.ui.debug.DebugView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<DebugView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(DebugView$$State debugView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(DebugView debugView) {
            debugView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
