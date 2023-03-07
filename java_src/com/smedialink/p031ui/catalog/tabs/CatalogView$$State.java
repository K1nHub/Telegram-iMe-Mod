package com.smedialink.p031ui.catalog.tabs;

import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.catalog.tabs.CatalogView$$State */
/* loaded from: classes3.dex */
public class CatalogView$$State extends MvpViewState<CatalogView> implements CatalogView {
    @Override // com.smedialink.p031ui.catalog.tabs.CatalogView
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

    @Override // com.smedialink.p031ui.catalog.tabs.CatalogView
    public void onSetupNavigationRouter() {
        OnSetupNavigationRouterCommand onSetupNavigationRouterCommand = new OnSetupNavigationRouterCommand(this);
        this.viewCommands.beforeApply(onSetupNavigationRouterCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSetupNavigationRouter();
        }
        this.viewCommands.afterApply(onSetupNavigationRouterCommand);
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

    /* compiled from: CatalogView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.CatalogView$$State$OnTabSelectedCommand */
    /* loaded from: classes3.dex */
    public class OnTabSelectedCommand extends ViewCommand<CatalogView> {
        public final int position;

        OnTabSelectedCommand(CatalogView$$State catalogView$$State, int i) {
            super("onTabSelected", AddToEndSingleStrategy.class);
            this.position = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogView catalogView) {
            catalogView.onTabSelected(this.position);
        }
    }

    /* compiled from: CatalogView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.CatalogView$$State$OnSetupNavigationRouterCommand */
    /* loaded from: classes3.dex */
    public class OnSetupNavigationRouterCommand extends ViewCommand<CatalogView> {
        OnSetupNavigationRouterCommand(CatalogView$$State catalogView$$State) {
            super("onSetupNavigationRouter", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogView catalogView) {
            catalogView.onSetupNavigationRouter();
        }
    }

    /* compiled from: CatalogView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.CatalogView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<CatalogView> {
        public final String text;

        ShowToastCommand(CatalogView$$State catalogView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogView catalogView) {
            catalogView.showToast(this.text);
        }
    }

    /* compiled from: CatalogView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.CatalogView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CatalogView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CatalogView$$State catalogView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogView catalogView) {
            catalogView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
