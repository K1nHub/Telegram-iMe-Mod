package com.iMe.p030ui.wallet.fragment.premium;

import android.os.Bundle;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView$$State */
/* loaded from: classes3.dex */
public class FragmentPremiumView$$State extends MvpViewState<FragmentPremiumView> implements FragmentPremiumView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void showConfirmationDialog(DialogModel dialogModel) {
        ShowConfirmationDialogCommand showConfirmationDialogCommand = new ShowConfirmationDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmationDialog(dialogModel);
        }
        this.viewCommands.afterApply(showConfirmationDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void showActionSuccess() {
        ShowActionSuccessCommand showActionSuccessCommand = new ShowActionSuccessCommand(this);
        this.viewCommands.beforeApply(showActionSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showActionSuccess();
        }
        this.viewCommands.afterApply(showActionSuccessCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void showActionError(String str) {
        ShowActionErrorCommand showActionErrorCommand = new ShowActionErrorCommand(this, str);
        this.viewCommands.beforeApply(showActionErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showActionError(str);
        }
        this.viewCommands.afterApply(showActionErrorCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void openChooseContact(Bundle bundle) {
        OpenChooseContactCommand openChooseContactCommand = new OpenChooseContactCommand(this, bundle);
        this.viewCommands.beforeApply(openChooseContactCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openChooseContact(bundle);
        }
        this.viewCommands.afterApply(openChooseContactCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void renderItems(List<BaseNode> list) {
        RenderItemsCommand renderItemsCommand = new RenderItemsCommand(this, list);
        this.viewCommands.beforeApply(renderItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderItems(list);
        }
        this.viewCommands.afterApply(renderItemsCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void renderButton(String str, boolean z) {
        RenderButtonCommand renderButtonCommand = new RenderButtonCommand(this, str, z);
        this.viewCommands.beforeApply(renderButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderButton(str, z);
        }
        this.viewCommands.afterApply(renderButtonCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void renderRecipient(TLRPC$User tLRPC$User) {
        RenderRecipientCommand renderRecipientCommand = new RenderRecipientCommand(this, tLRPC$User);
        this.viewCommands.beforeApply(renderRecipientCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderRecipient(tLRPC$User);
        }
        this.viewCommands.afterApply(renderRecipientCommand);
    }

    @Override // com.iMe.p030ui.wallet.fragment.premium.FragmentPremiumView
    public void renderBalance(String str) {
        RenderBalanceCommand renderBalanceCommand = new RenderBalanceCommand(this, str);
        this.viewCommands.beforeApply(renderBalanceCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderBalance(str);
        }
        this.viewCommands.afterApply(renderBalanceCommand);
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

    /* compiled from: FragmentPremiumView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView$$State$ShowConfirmationDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowConfirmationDialogCommand extends ViewCommand<FragmentPremiumView> {
        public final DialogModel dialogModel;

        ShowConfirmationDialogCommand(FragmentPremiumView$$State fragmentPremiumView$$State, DialogModel dialogModel) {
            super("showConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentPremiumView fragmentPremiumView) {
            fragmentPremiumView.showConfirmationDialog(this.dialogModel);
        }
    }

    /* compiled from: FragmentPremiumView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView$$State$ShowActionSuccessCommand */
    /* loaded from: classes3.dex */
    public class ShowActionSuccessCommand extends ViewCommand<FragmentPremiumView> {
        ShowActionSuccessCommand(FragmentPremiumView$$State fragmentPremiumView$$State) {
            super("showActionSuccess", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentPremiumView fragmentPremiumView) {
            fragmentPremiumView.showActionSuccess();
        }
    }

    /* compiled from: FragmentPremiumView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView$$State$ShowActionErrorCommand */
    /* loaded from: classes3.dex */
    public class ShowActionErrorCommand extends ViewCommand<FragmentPremiumView> {
        public final String message;

        ShowActionErrorCommand(FragmentPremiumView$$State fragmentPremiumView$$State, String str) {
            super("showActionError", OneExecutionStateStrategy.class);
            this.message = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentPremiumView fragmentPremiumView) {
            fragmentPremiumView.showActionError(this.message);
        }
    }

    /* compiled from: FragmentPremiumView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView$$State$OpenChooseContactCommand */
    /* loaded from: classes3.dex */
    public class OpenChooseContactCommand extends ViewCommand<FragmentPremiumView> {
        public final Bundle args;

        OpenChooseContactCommand(FragmentPremiumView$$State fragmentPremiumView$$State, Bundle bundle) {
            super("openChooseContact", OneExecutionStateStrategy.class);
            this.args = bundle;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentPremiumView fragmentPremiumView) {
            fragmentPremiumView.openChooseContact(this.args);
        }
    }

    /* compiled from: FragmentPremiumView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView$$State$RenderItemsCommand */
    /* loaded from: classes3.dex */
    public class RenderItemsCommand extends ViewCommand<FragmentPremiumView> {
        public final List<BaseNode> items;

        RenderItemsCommand(FragmentPremiumView$$State fragmentPremiumView$$State, List<BaseNode> list) {
            super("renderItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentPremiumView fragmentPremiumView) {
            fragmentPremiumView.renderItems(this.items);
        }
    }

    /* compiled from: FragmentPremiumView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView$$State$RenderButtonCommand */
    /* loaded from: classes3.dex */
    public class RenderButtonCommand extends ViewCommand<FragmentPremiumView> {
        public final String buttonText;
        public final boolean isEnabled;

        RenderButtonCommand(FragmentPremiumView$$State fragmentPremiumView$$State, String str, boolean z) {
            super("renderButton", AddToEndSingleStrategy.class);
            this.buttonText = str;
            this.isEnabled = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentPremiumView fragmentPremiumView) {
            fragmentPremiumView.renderButton(this.buttonText, this.isEnabled);
        }
    }

    /* compiled from: FragmentPremiumView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView$$State$RenderRecipientCommand */
    /* loaded from: classes3.dex */
    public class RenderRecipientCommand extends ViewCommand<FragmentPremiumView> {
        public final TLRPC$User user;

        RenderRecipientCommand(FragmentPremiumView$$State fragmentPremiumView$$State, TLRPC$User tLRPC$User) {
            super("renderRecipient", AddToEndSingleStrategy.class);
            this.user = tLRPC$User;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentPremiumView fragmentPremiumView) {
            fragmentPremiumView.renderRecipient(this.user);
        }
    }

    /* compiled from: FragmentPremiumView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView$$State$RenderBalanceCommand */
    /* loaded from: classes3.dex */
    public class RenderBalanceCommand extends ViewCommand<FragmentPremiumView> {
        public final String balanceText;

        RenderBalanceCommand(FragmentPremiumView$$State fragmentPremiumView$$State, String str) {
            super("renderBalance", AddToEndSingleStrategy.class);
            this.balanceText = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentPremiumView fragmentPremiumView) {
            fragmentPremiumView.renderBalance(this.balanceText);
        }
    }

    /* compiled from: FragmentPremiumView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<FragmentPremiumView> {
        public final String text;

        ShowToastCommand(FragmentPremiumView$$State fragmentPremiumView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentPremiumView fragmentPremiumView) {
            fragmentPremiumView.showToast(this.text);
        }
    }

    /* compiled from: FragmentPremiumView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<FragmentPremiumView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(FragmentPremiumView$$State fragmentPremiumView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentPremiumView fragmentPremiumView) {
            fragmentPremiumView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: FragmentPremiumView$$State.java */
    /* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<FragmentPremiumView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(FragmentPremiumView$$State fragmentPremiumView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(FragmentPremiumView fragmentPremiumView) {
            fragmentPremiumView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
