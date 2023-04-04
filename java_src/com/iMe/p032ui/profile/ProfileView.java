package com.iMe.p032ui.profile;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import java.util.ArrayList;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.tgnet.TLRPC$ChatParticipant;
/* compiled from: ProfileView.kt */
@OneExecution
/* renamed from: com.iMe.ui.profile.ProfileView */
/* loaded from: classes3.dex */
public interface ProfileView extends BaseView {
    @AddToEndSingle
    void onFilteredMembers(ArrayList<TLRPC$ChatParticipant> arrayList);

    void openTwitterAuthScreen(String str, String str2);

    void openTwitterScreen(long j, long j2, String str);

    void showTwitterAccountActionsDialog();

    void showTwitterBotConfirmationDialogIfNeeded(DialogModel dialogModel);

    void showTwitterLinkConfirmationDialog(DialogModel dialogModel);

    void showTwitterResetConfirmationDialog(DialogModel dialogModel);

    void showTwitterUnlinkedErrorDialog(DialogModel dialogModel);

    @AddToEndSingle
    void showUserAccountLevel(AccountLevelInformation accountLevelInformation);

    void showVpnWarningDialog(DialogModel dialogModel);

    @AddToEndSingle
    void updateTwitterItem();
}
