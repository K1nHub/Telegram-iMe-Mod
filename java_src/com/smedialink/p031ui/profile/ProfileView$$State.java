package com.smedialink.p031ui.profile;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.storage.domain.model.crypto.level.AccountLevelInformation;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.telegram.tgnet.TLRPC$ChatParticipant;
/* renamed from: com.smedialink.ui.profile.ProfileView$$State */
/* loaded from: classes3.dex */
public class ProfileView$$State extends MvpViewState<ProfileView> implements ProfileView {
    @Override // com.smedialink.p031ui.profile.ProfileView
    public void onFilteredMembers(ArrayList<TLRPC$ChatParticipant> arrayList) {
        OnFilteredMembersCommand onFilteredMembersCommand = new OnFilteredMembersCommand(this, arrayList);
        this.viewCommands.beforeApply(onFilteredMembersCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onFilteredMembers(arrayList);
        }
        this.viewCommands.afterApply(onFilteredMembersCommand);
    }

    @Override // com.smedialink.p031ui.profile.ProfileView
    public void showUserAccountLevel(AccountLevelInformation accountLevelInformation) {
        ShowUserAccountLevelCommand showUserAccountLevelCommand = new ShowUserAccountLevelCommand(this, accountLevelInformation);
        this.viewCommands.beforeApply(showUserAccountLevelCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showUserAccountLevel(accountLevelInformation);
        }
        this.viewCommands.afterApply(showUserAccountLevelCommand);
    }

    @Override // com.smedialink.p031ui.profile.ProfileView
    public void updateTwitterItem() {
        UpdateTwitterItemCommand updateTwitterItemCommand = new UpdateTwitterItemCommand(this);
        this.viewCommands.beforeApply(updateTwitterItemCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateTwitterItem();
        }
        this.viewCommands.afterApply(updateTwitterItemCommand);
    }

    @Override // com.smedialink.p031ui.profile.ProfileView
    public void openTwitterAuthScreen(String str, String str2) {
        OpenTwitterAuthScreenCommand openTwitterAuthScreenCommand = new OpenTwitterAuthScreenCommand(this, str, str2);
        this.viewCommands.beforeApply(openTwitterAuthScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openTwitterAuthScreen(str, str2);
        }
        this.viewCommands.afterApply(openTwitterAuthScreenCommand);
    }

    @Override // com.smedialink.p031ui.profile.ProfileView
    public void openTwitterScreen(long j, long j2, String str) {
        OpenTwitterScreenCommand openTwitterScreenCommand = new OpenTwitterScreenCommand(this, j, j2, str);
        this.viewCommands.beforeApply(openTwitterScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openTwitterScreen(j, j2, str);
        }
        this.viewCommands.afterApply(openTwitterScreenCommand);
    }

    @Override // com.smedialink.p031ui.profile.ProfileView
    public void showTwitterAccountActionsDialog() {
        ShowTwitterAccountActionsDialogCommand showTwitterAccountActionsDialogCommand = new ShowTwitterAccountActionsDialogCommand(this);
        this.viewCommands.beforeApply(showTwitterAccountActionsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTwitterAccountActionsDialog();
        }
        this.viewCommands.afterApply(showTwitterAccountActionsDialogCommand);
    }

    @Override // com.smedialink.p031ui.profile.ProfileView
    public void showTwitterBotConfirmationDialogIfNeeded(DialogModel dialogModel) {
        ShowTwitterBotConfirmationDialogIfNeededCommand showTwitterBotConfirmationDialogIfNeededCommand = new ShowTwitterBotConfirmationDialogIfNeededCommand(this, dialogModel);
        this.viewCommands.beforeApply(showTwitterBotConfirmationDialogIfNeededCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTwitterBotConfirmationDialogIfNeeded(dialogModel);
        }
        this.viewCommands.afterApply(showTwitterBotConfirmationDialogIfNeededCommand);
    }

    @Override // com.smedialink.p031ui.profile.ProfileView
    public void showVpnWarningDialog(DialogModel dialogModel) {
        ShowVpnWarningDialogCommand showVpnWarningDialogCommand = new ShowVpnWarningDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showVpnWarningDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showVpnWarningDialog(dialogModel);
        }
        this.viewCommands.afterApply(showVpnWarningDialogCommand);
    }

    @Override // com.smedialink.p031ui.profile.ProfileView
    public void showTwitterUnlinkedErrorDialog(DialogModel dialogModel) {
        ShowTwitterUnlinkedErrorDialogCommand showTwitterUnlinkedErrorDialogCommand = new ShowTwitterUnlinkedErrorDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showTwitterUnlinkedErrorDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTwitterUnlinkedErrorDialog(dialogModel);
        }
        this.viewCommands.afterApply(showTwitterUnlinkedErrorDialogCommand);
    }

    @Override // com.smedialink.p031ui.profile.ProfileView
    public void showTwitterResetConfirmationDialog(DialogModel dialogModel) {
        ShowTwitterResetConfirmationDialogCommand showTwitterResetConfirmationDialogCommand = new ShowTwitterResetConfirmationDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showTwitterResetConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTwitterResetConfirmationDialog(dialogModel);
        }
        this.viewCommands.afterApply(showTwitterResetConfirmationDialogCommand);
    }

    @Override // com.smedialink.p031ui.profile.ProfileView
    public void showTwitterLinkConfirmationDialog(DialogModel dialogModel) {
        ShowTwitterLinkConfirmationDialogCommand showTwitterLinkConfirmationDialogCommand = new ShowTwitterLinkConfirmationDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showTwitterLinkConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTwitterLinkConfirmationDialog(dialogModel);
        }
        this.viewCommands.afterApply(showTwitterLinkConfirmationDialogCommand);
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

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$OnFilteredMembersCommand */
    /* loaded from: classes3.dex */
    public class OnFilteredMembersCommand extends ViewCommand<ProfileView> {
        public final ArrayList<TLRPC$ChatParticipant> members;

        OnFilteredMembersCommand(ProfileView$$State profileView$$State, ArrayList<TLRPC$ChatParticipant> arrayList) {
            super("onFilteredMembers", AddToEndSingleStrategy.class);
            this.members = arrayList;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.onFilteredMembers(this.members);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$ShowUserAccountLevelCommand */
    /* loaded from: classes3.dex */
    public class ShowUserAccountLevelCommand extends ViewCommand<ProfileView> {
        public final AccountLevelInformation level;

        ShowUserAccountLevelCommand(ProfileView$$State profileView$$State, AccountLevelInformation accountLevelInformation) {
            super("showUserAccountLevel", AddToEndSingleStrategy.class);
            this.level = accountLevelInformation;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showUserAccountLevel(this.level);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$UpdateTwitterItemCommand */
    /* loaded from: classes3.dex */
    public class UpdateTwitterItemCommand extends ViewCommand<ProfileView> {
        UpdateTwitterItemCommand(ProfileView$$State profileView$$State) {
            super("updateTwitterItem", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.updateTwitterItem();
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$OpenTwitterAuthScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenTwitterAuthScreenCommand extends ViewCommand<ProfileView> {
        public final String token;
        public final String url;

        OpenTwitterAuthScreenCommand(ProfileView$$State profileView$$State, String str, String str2) {
            super("openTwitterAuthScreen", OneExecutionStateStrategy.class);
            this.url = str;
            this.token = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.openTwitterAuthScreen(this.url, this.token);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$OpenTwitterScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenTwitterScreenCommand extends ViewCommand<ProfileView> {
        public final long telegramProfileId;
        public final long twitterUserId;
        public final String twitterUserNickname;

        OpenTwitterScreenCommand(ProfileView$$State profileView$$State, long j, long j2, String str) {
            super("openTwitterScreen", OneExecutionStateStrategy.class);
            this.telegramProfileId = j;
            this.twitterUserId = j2;
            this.twitterUserNickname = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.openTwitterScreen(this.telegramProfileId, this.twitterUserId, this.twitterUserNickname);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$ShowTwitterAccountActionsDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowTwitterAccountActionsDialogCommand extends ViewCommand<ProfileView> {
        ShowTwitterAccountActionsDialogCommand(ProfileView$$State profileView$$State) {
            super("showTwitterAccountActionsDialog", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showTwitterAccountActionsDialog();
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$ShowTwitterBotConfirmationDialogIfNeededCommand */
    /* loaded from: classes3.dex */
    public class ShowTwitterBotConfirmationDialogIfNeededCommand extends ViewCommand<ProfileView> {
        public final DialogModel dialogModel;

        ShowTwitterBotConfirmationDialogIfNeededCommand(ProfileView$$State profileView$$State, DialogModel dialogModel) {
            super("showTwitterBotConfirmationDialogIfNeeded", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showTwitterBotConfirmationDialogIfNeeded(this.dialogModel);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$ShowVpnWarningDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowVpnWarningDialogCommand extends ViewCommand<ProfileView> {
        public final DialogModel dialogModel;

        ShowVpnWarningDialogCommand(ProfileView$$State profileView$$State, DialogModel dialogModel) {
            super("showVpnWarningDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showVpnWarningDialog(this.dialogModel);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$ShowTwitterUnlinkedErrorDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowTwitterUnlinkedErrorDialogCommand extends ViewCommand<ProfileView> {
        public final DialogModel dialogModel;

        ShowTwitterUnlinkedErrorDialogCommand(ProfileView$$State profileView$$State, DialogModel dialogModel) {
            super("showTwitterUnlinkedErrorDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showTwitterUnlinkedErrorDialog(this.dialogModel);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$ShowTwitterResetConfirmationDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowTwitterResetConfirmationDialogCommand extends ViewCommand<ProfileView> {
        public final DialogModel dialogModel;

        ShowTwitterResetConfirmationDialogCommand(ProfileView$$State profileView$$State, DialogModel dialogModel) {
            super("showTwitterResetConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showTwitterResetConfirmationDialog(this.dialogModel);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$ShowTwitterLinkConfirmationDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowTwitterLinkConfirmationDialogCommand extends ViewCommand<ProfileView> {
        public final DialogModel dialogModel;

        ShowTwitterLinkConfirmationDialogCommand(ProfileView$$State profileView$$State, DialogModel dialogModel) {
            super("showTwitterLinkConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showTwitterLinkConfirmationDialog(this.dialogModel);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<ProfileView> {
        public final String text;

        ShowToastCommand(ProfileView$$State profileView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showToast(this.text);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* renamed from: com.smedialink.ui.profile.ProfileView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<ProfileView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(ProfileView$$State profileView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
