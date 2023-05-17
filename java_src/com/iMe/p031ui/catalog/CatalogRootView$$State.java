package com.iMe.p031ui.catalog;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.telegram.messenger.LocaleController;
/* renamed from: com.iMe.ui.catalog.CatalogRootView$$State */
/* loaded from: classes.dex */
public class CatalogRootView$$State extends MvpViewState<CatalogRootView> implements CatalogRootView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.catalog.CatalogRootView
    public void onTabSelected(int i) {
        OnTabSelectedCommand onTabSelectedCommand = new OnTabSelectedCommand(this, i);
        this.viewCommands.beforeApply(onTabSelectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onTabSelected(i);
        }
        this.viewCommands.afterApply(onTabSelectedCommand);
    }

    @Override // com.iMe.p031ui.catalog.CatalogRootView
    public void onSelectedLanguageChanged() {
        OnSelectedLanguageChangedCommand onSelectedLanguageChangedCommand = new OnSelectedLanguageChangedCommand(this);
        this.viewCommands.beforeApply(onSelectedLanguageChangedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSelectedLanguageChanged();
        }
        this.viewCommands.afterApply(onSelectedLanguageChangedCommand);
    }

    @Override // com.iMe.p031ui.catalog.CatalogRootView
    public void openSelectLanguageScreen(int i, List<? extends LocaleController.LocaleInfo> list) {
        OpenSelectLanguageScreenCommand openSelectLanguageScreenCommand = new OpenSelectLanguageScreenCommand(this, i, list);
        this.viewCommands.beforeApply(openSelectLanguageScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSelectLanguageScreen(i, list);
        }
        this.viewCommands.afterApply(openSelectLanguageScreenCommand);
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

    /* compiled from: CatalogRootView$$State.java */
    /* renamed from: com.iMe.ui.catalog.CatalogRootView$$State$OnTabSelectedCommand */
    /* loaded from: classes.dex */
    public class OnTabSelectedCommand extends ViewCommand<CatalogRootView> {

        /* renamed from: id */
        public final int f374id;

        OnTabSelectedCommand(CatalogRootView$$State catalogRootView$$State, int i) {
            super("onTabSelected", AddToEndSingleStrategy.class);
            this.f374id = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogRootView catalogRootView) {
            catalogRootView.onTabSelected(this.f374id);
        }
    }

    /* compiled from: CatalogRootView$$State.java */
    /* renamed from: com.iMe.ui.catalog.CatalogRootView$$State$OnSelectedLanguageChangedCommand */
    /* loaded from: classes.dex */
    public class OnSelectedLanguageChangedCommand extends ViewCommand<CatalogRootView> {
        OnSelectedLanguageChangedCommand(CatalogRootView$$State catalogRootView$$State) {
            super("onSelectedLanguageChanged", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogRootView catalogRootView) {
            catalogRootView.onSelectedLanguageChanged();
        }
    }

    /* compiled from: CatalogRootView$$State.java */
    /* renamed from: com.iMe.ui.catalog.CatalogRootView$$State$OpenSelectLanguageScreenCommand */
    /* loaded from: classes.dex */
    public class OpenSelectLanguageScreenCommand extends ViewCommand<CatalogRootView> {
        public final List<? extends LocaleController.LocaleInfo> languages;
        public final int selectedLanguageId;

        OpenSelectLanguageScreenCommand(CatalogRootView$$State catalogRootView$$State, int i, List<? extends LocaleController.LocaleInfo> list) {
            super("openSelectLanguageScreen", OneExecutionStateStrategy.class);
            this.selectedLanguageId = i;
            this.languages = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogRootView catalogRootView) {
            catalogRootView.openSelectLanguageScreen(this.selectedLanguageId, this.languages);
        }
    }

    /* compiled from: CatalogRootView$$State.java */
    /* renamed from: com.iMe.ui.catalog.CatalogRootView$$State$ShowToastCommand */
    /* loaded from: classes.dex */
    public class ShowToastCommand extends ViewCommand<CatalogRootView> {
        public final String text;

        ShowToastCommand(CatalogRootView$$State catalogRootView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogRootView catalogRootView) {
            catalogRootView.showToast(this.text);
        }
    }

    /* compiled from: CatalogRootView$$State.java */
    /* renamed from: com.iMe.ui.catalog.CatalogRootView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CatalogRootView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CatalogRootView$$State catalogRootView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogRootView catalogRootView) {
            catalogRootView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CatalogRootView$$State.java */
    /* renamed from: com.iMe.ui.catalog.CatalogRootView$$State$ShowErrorToastCommand */
    /* loaded from: classes.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CatalogRootView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CatalogRootView$$State catalogRootView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogRootView catalogRootView) {
            catalogRootView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
