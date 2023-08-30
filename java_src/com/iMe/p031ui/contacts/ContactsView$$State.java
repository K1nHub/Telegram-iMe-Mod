package com.iMe.p031ui.contacts;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.contacts.ContactsView$$State */
/* loaded from: classes3.dex */
public class ContactsView$$State extends MvpViewState<ContactsView> implements ContactsView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.contacts.ContactsView
    public void openActionMode() {
        OpenActionModeCommand openActionModeCommand = new OpenActionModeCommand(this);
        this.viewCommands.beforeApply(openActionModeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openActionMode();
        }
        this.viewCommands.afterApply(openActionModeCommand);
    }

    @Override // com.iMe.p031ui.contacts.ContactsView
    public void closeActionMode() {
        CloseActionModeCommand closeActionModeCommand = new CloseActionModeCommand(this);
        this.viewCommands.beforeApply(closeActionModeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.closeActionMode();
        }
        this.viewCommands.afterApply(closeActionModeCommand);
    }

    @Override // com.iMe.p031ui.contacts.ContactsView
    public void clearSelectedContacts() {
        ClearSelectedContactsCommand clearSelectedContactsCommand = new ClearSelectedContactsCommand(this);
        this.viewCommands.beforeApply(clearSelectedContactsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.clearSelectedContacts();
        }
        this.viewCommands.afterApply(clearSelectedContactsCommand);
    }

    @Override // com.iMe.p031ui.contacts.ContactsView
    public void onSelectedQtyChange(int i) {
        OnSelectedQtyChangeCommand onSelectedQtyChangeCommand = new OnSelectedQtyChangeCommand(this, i);
        this.viewCommands.beforeApply(onSelectedQtyChangeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSelectedQtyChange(i);
        }
        this.viewCommands.afterApply(onSelectedQtyChangeCommand);
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

    /* compiled from: ContactsView$$State.java */
    /* renamed from: com.iMe.ui.contacts.ContactsView$$State$OpenActionModeCommand */
    /* loaded from: classes3.dex */
    public class OpenActionModeCommand extends ViewCommand<ContactsView> {
        OpenActionModeCommand(ContactsView$$State contactsView$$State) {
            super("openActionMode", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ContactsView contactsView) {
            contactsView.openActionMode();
        }
    }

    /* compiled from: ContactsView$$State.java */
    /* renamed from: com.iMe.ui.contacts.ContactsView$$State$CloseActionModeCommand */
    /* loaded from: classes3.dex */
    public class CloseActionModeCommand extends ViewCommand<ContactsView> {
        CloseActionModeCommand(ContactsView$$State contactsView$$State) {
            super("closeActionMode", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ContactsView contactsView) {
            contactsView.closeActionMode();
        }
    }

    /* compiled from: ContactsView$$State.java */
    /* renamed from: com.iMe.ui.contacts.ContactsView$$State$ClearSelectedContactsCommand */
    /* loaded from: classes3.dex */
    public class ClearSelectedContactsCommand extends ViewCommand<ContactsView> {
        ClearSelectedContactsCommand(ContactsView$$State contactsView$$State) {
            super("clearSelectedContacts", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ContactsView contactsView) {
            contactsView.clearSelectedContacts();
        }
    }

    /* compiled from: ContactsView$$State.java */
    /* renamed from: com.iMe.ui.contacts.ContactsView$$State$OnSelectedQtyChangeCommand */
    /* loaded from: classes3.dex */
    public class OnSelectedQtyChangeCommand extends ViewCommand<ContactsView> {
        public final int newQty;

        OnSelectedQtyChangeCommand(ContactsView$$State contactsView$$State, int i) {
            super("onSelectedQtyChange", AddToEndSingleStrategy.class);
            this.newQty = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ContactsView contactsView) {
            contactsView.onSelectedQtyChange(this.newQty);
        }
    }

    /* compiled from: ContactsView$$State.java */
    /* renamed from: com.iMe.ui.contacts.ContactsView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<ContactsView> {
        public final String text;

        ShowToastCommand(ContactsView$$State contactsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ContactsView contactsView) {
            contactsView.showToast(this.text);
        }
    }

    /* compiled from: ContactsView$$State.java */
    /* renamed from: com.iMe.ui.contacts.ContactsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<ContactsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(ContactsView$$State contactsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ContactsView contactsView) {
            contactsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: ContactsView$$State.java */
    /* renamed from: com.iMe.ui.contacts.ContactsView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<ContactsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(ContactsView$$State contactsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ContactsView contactsView) {
            contactsView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
