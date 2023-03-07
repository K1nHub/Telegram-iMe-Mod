package com.smedialink.p031ui.profile;

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
