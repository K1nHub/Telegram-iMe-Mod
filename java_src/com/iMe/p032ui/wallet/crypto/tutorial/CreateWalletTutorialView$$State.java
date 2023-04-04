package com.iMe.p032ui.wallet.crypto.tutorial;

import com.iMe.model.wallet.crypto.tutorial.TutorialPage;
import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.p032ui.base.mvp.base.BaseView;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialView$$State */
/* loaded from: classes3.dex */
public class CreateWalletTutorialView$$State extends MvpViewState<CreateWalletTutorialView> implements CreateWalletTutorialView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.wallet.crypto.tutorial.CreateWalletTutorialView
    public void showTutorialPages(List<TutorialPage> list) {
        ShowTutorialPagesCommand showTutorialPagesCommand = new ShowTutorialPagesCommand(this, list);
        this.viewCommands.beforeApply(showTutorialPagesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTutorialPages(list);
        }
        this.viewCommands.afterApply(showTutorialPagesCommand);
    }

    @Override // com.iMe.p032ui.wallet.crypto.tutorial.CreateWalletTutorialView
    public void openPasscodeScreen() {
        OpenPasscodeScreenCommand openPasscodeScreenCommand = new OpenPasscodeScreenCommand(this);
        this.viewCommands.beforeApply(openPasscodeScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openPasscodeScreen();
        }
        this.viewCommands.afterApply(openPasscodeScreenCommand);
    }

    @Override // com.iMe.p032ui.wallet.crypto.tutorial.CreateWalletTutorialView
    public void openTutorialPassedScreen(TutorialType.Backup backup) {
        OpenTutorialPassedScreenCommand openTutorialPassedScreenCommand = new OpenTutorialPassedScreenCommand(this, backup);
        this.viewCommands.beforeApply(openTutorialPassedScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openTutorialPassedScreen(backup);
        }
        this.viewCommands.afterApply(openTutorialPassedScreenCommand);
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

    /* compiled from: CreateWalletTutorialView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialView$$State$ShowTutorialPagesCommand */
    /* loaded from: classes3.dex */
    public class ShowTutorialPagesCommand extends ViewCommand<CreateWalletTutorialView> {
        public final List<TutorialPage> pages;

        ShowTutorialPagesCommand(CreateWalletTutorialView$$State createWalletTutorialView$$State, List<TutorialPage> list) {
            super("showTutorialPages", AddToEndSingleStrategy.class);
            this.pages = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletTutorialView createWalletTutorialView) {
            createWalletTutorialView.showTutorialPages(this.pages);
        }
    }

    /* compiled from: CreateWalletTutorialView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialView$$State$OpenPasscodeScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenPasscodeScreenCommand extends ViewCommand<CreateWalletTutorialView> {
        OpenPasscodeScreenCommand(CreateWalletTutorialView$$State createWalletTutorialView$$State) {
            super("openPasscodeScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletTutorialView createWalletTutorialView) {
            createWalletTutorialView.openPasscodeScreen();
        }
    }

    /* compiled from: CreateWalletTutorialView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialView$$State$OpenTutorialPassedScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenTutorialPassedScreenCommand extends ViewCommand<CreateWalletTutorialView> {
        public final TutorialType.Backup tutorialType;

        OpenTutorialPassedScreenCommand(CreateWalletTutorialView$$State createWalletTutorialView$$State, TutorialType.Backup backup) {
            super("openTutorialPassedScreen", OneExecutionStateStrategy.class);
            this.tutorialType = backup;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletTutorialView createWalletTutorialView) {
            createWalletTutorialView.openTutorialPassedScreen(this.tutorialType);
        }
    }

    /* compiled from: CreateWalletTutorialView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<CreateWalletTutorialView> {
        public final String text;

        ShowToastCommand(CreateWalletTutorialView$$State createWalletTutorialView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletTutorialView createWalletTutorialView) {
            createWalletTutorialView.showToast(this.text);
        }
    }

    /* compiled from: CreateWalletTutorialView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CreateWalletTutorialView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CreateWalletTutorialView$$State createWalletTutorialView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletTutorialView createWalletTutorialView) {
            createWalletTutorialView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
