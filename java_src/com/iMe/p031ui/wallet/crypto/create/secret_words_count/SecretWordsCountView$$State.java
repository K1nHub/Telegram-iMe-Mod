package com.iMe.p031ui.wallet.crypto.create.secret_words_count;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountView$$State */
/* loaded from: classes4.dex */
public class SecretWordsCountView$$State extends MvpViewState<SecretWordsCountView> implements SecretWordsCountView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.secret_words_count.SecretWordsCountView
    public void setupAdapter(List<Integer> list) {
        SetupAdapterCommand setupAdapterCommand = new SetupAdapterCommand(this, list);
        this.viewCommands.beforeApply(setupAdapterCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupAdapter(list);
        }
        this.viewCommands.afterApply(setupAdapterCommand);
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

    /* compiled from: SecretWordsCountView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountView$$State$SetupAdapterCommand */
    /* loaded from: classes4.dex */
    public class SetupAdapterCommand extends ViewCommand<SecretWordsCountView> {
        public final List<Integer> items;

        SetupAdapterCommand(SecretWordsCountView$$State secretWordsCountView$$State, List<Integer> list) {
            super("setupAdapter", OneExecutionStateStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(SecretWordsCountView secretWordsCountView) {
            secretWordsCountView.setupAdapter(this.items);
        }
    }

    /* compiled from: SecretWordsCountView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<SecretWordsCountView> {
        public final String text;

        ShowToastCommand(SecretWordsCountView$$State secretWordsCountView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(SecretWordsCountView secretWordsCountView) {
            secretWordsCountView.showToast(this.text);
        }
    }

    /* compiled from: SecretWordsCountView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<SecretWordsCountView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(SecretWordsCountView$$State secretWordsCountView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(SecretWordsCountView secretWordsCountView) {
            secretWordsCountView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: SecretWordsCountView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<SecretWordsCountView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(SecretWordsCountView$$State secretWordsCountView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(SecretWordsCountView secretWordsCountView) {
            secretWordsCountView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
