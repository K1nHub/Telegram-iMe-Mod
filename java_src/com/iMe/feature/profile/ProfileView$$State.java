package com.iMe.feature.profile;

import com.iMe.feature.socialMedias.SocialAuthDomain;
import com.iMe.feature.socialMedias.SocialNetwork;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.telegram.tgnet.TLRPC$ChatParticipant;
/* loaded from: classes3.dex */
public class ProfileView$$State extends MvpViewState<ProfileView> implements ProfileView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.feature.profile.ProfileView
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

    @Override // com.iMe.feature.profile.ProfileView
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

    @Override // com.iMe.feature.profile.ProfileView
    public void showNeedAuthorizeDialog(DialogModel dialogModel) {
        ShowNeedAuthorizeDialogCommand showNeedAuthorizeDialogCommand = new ShowNeedAuthorizeDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showNeedAuthorizeDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showNeedAuthorizeDialog(dialogModel);
        }
        this.viewCommands.afterApply(showNeedAuthorizeDialogCommand);
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void updateSocialCell() {
        UpdateSocialCellCommand updateSocialCellCommand = new UpdateSocialCellCommand(this);
        this.viewCommands.beforeApply(updateSocialCellCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateSocialCell();
        }
        this.viewCommands.afterApply(updateSocialCellCommand);
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void openSocialAuthScreen(SocialAuthDomain socialAuthDomain) {
        OpenSocialAuthScreenCommand openSocialAuthScreenCommand = new OpenSocialAuthScreenCommand(this, socialAuthDomain);
        this.viewCommands.beforeApply(openSocialAuthScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSocialAuthScreen(socialAuthDomain);
        }
        this.viewCommands.afterApply(openSocialAuthScreenCommand);
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void openSocialWeb(SocialNetwork socialNetwork) {
        OpenSocialWebCommand openSocialWebCommand = new OpenSocialWebCommand(this, socialNetwork);
        this.viewCommands.beforeApply(openSocialWebCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSocialWeb(socialNetwork);
        }
        this.viewCommands.afterApply(openSocialWebCommand);
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void showBeforeConnectMessage(SocialNetwork socialNetwork, DialogModel dialogModel) {
        ShowBeforeConnectMessageCommand showBeforeConnectMessageCommand = new ShowBeforeConnectMessageCommand(this, socialNetwork, dialogModel);
        this.viewCommands.beforeApply(showBeforeConnectMessageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showBeforeConnectMessage(socialNetwork, dialogModel);
        }
        this.viewCommands.afterApply(showBeforeConnectMessageCommand);
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void openTwitterScreen(long j, SocialNetwork socialNetwork) {
        OpenTwitterScreenCommand openTwitterScreenCommand = new OpenTwitterScreenCommand(this, j, socialNetwork);
        this.viewCommands.beforeApply(openTwitterScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openTwitterScreen(j, socialNetwork);
        }
        this.viewCommands.afterApply(openTwitterScreenCommand);
    }

    @Override // com.iMe.feature.profile.ProfileView
    public void showResetConfirmationDialog(DialogModel dialogModel, SocialNetwork socialNetwork) {
        ShowResetConfirmationDialogCommand showResetConfirmationDialogCommand = new ShowResetConfirmationDialogCommand(this, dialogModel, socialNetwork);
        this.viewCommands.beforeApply(showResetConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showResetConfirmationDialog(dialogModel, socialNetwork);
        }
        this.viewCommands.afterApply(showResetConfirmationDialogCommand);
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

    /* compiled from: ProfileView$$State.java */
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
    /* loaded from: classes3.dex */
    public class ShowNeedAuthorizeDialogCommand extends ViewCommand<ProfileView> {
        public final DialogModel dialogModel;

        ShowNeedAuthorizeDialogCommand(ProfileView$$State profileView$$State, DialogModel dialogModel) {
            super("showNeedAuthorizeDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showNeedAuthorizeDialog(this.dialogModel);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* loaded from: classes3.dex */
    public class UpdateSocialCellCommand extends ViewCommand<ProfileView> {
        UpdateSocialCellCommand(ProfileView$$State profileView$$State) {
            super("updateSocialCell", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.updateSocialCell();
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* loaded from: classes3.dex */
    public class OpenSocialAuthScreenCommand extends ViewCommand<ProfileView> {
        public final SocialAuthDomain socialAuthDomain;

        OpenSocialAuthScreenCommand(ProfileView$$State profileView$$State, SocialAuthDomain socialAuthDomain) {
            super("openSocialAuthScreen", OneExecutionStateStrategy.class);
            this.socialAuthDomain = socialAuthDomain;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.openSocialAuthScreen(this.socialAuthDomain);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* loaded from: classes3.dex */
    public class OpenSocialWebCommand extends ViewCommand<ProfileView> {
        public final SocialNetwork socialNetwork;

        OpenSocialWebCommand(ProfileView$$State profileView$$State, SocialNetwork socialNetwork) {
            super("openSocialWeb", OneExecutionStateStrategy.class);
            this.socialNetwork = socialNetwork;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.openSocialWeb(this.socialNetwork);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowBeforeConnectMessageCommand extends ViewCommand<ProfileView> {
        public final DialogModel prepareBeforeDialogModel;
        public final SocialNetwork socialNetwork;

        ShowBeforeConnectMessageCommand(ProfileView$$State profileView$$State, SocialNetwork socialNetwork, DialogModel dialogModel) {
            super("showBeforeConnectMessage", OneExecutionStateStrategy.class);
            this.socialNetwork = socialNetwork;
            this.prepareBeforeDialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showBeforeConnectMessage(this.socialNetwork, this.prepareBeforeDialogModel);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* loaded from: classes3.dex */
    public class OpenTwitterScreenCommand extends ViewCommand<ProfileView> {
        public final SocialNetwork network;
        public final long telegramProfileId;

        OpenTwitterScreenCommand(ProfileView$$State profileView$$State, long j, SocialNetwork socialNetwork) {
            super("openTwitterScreen", OneExecutionStateStrategy.class);
            this.telegramProfileId = j;
            this.network = socialNetwork;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.openTwitterScreen(this.telegramProfileId, this.network);
        }
    }

    /* compiled from: ProfileView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowResetConfirmationDialogCommand extends ViewCommand<ProfileView> {
        public final DialogModel dialogModel;
        public final SocialNetwork socialNetwork;

        ShowResetConfirmationDialogCommand(ProfileView$$State profileView$$State, DialogModel dialogModel, SocialNetwork socialNetwork) {
            super("showResetConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.socialNetwork = socialNetwork;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showResetConfirmationDialog(this.dialogModel, this.socialNetwork);
        }
    }

    /* compiled from: ProfileView$$State.java */
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

    /* compiled from: ProfileView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<ProfileView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(ProfileView$$State profileView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ProfileView profileView) {
            profileView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
