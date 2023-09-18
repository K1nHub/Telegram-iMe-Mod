package com.iMe.feature.profile;

import com.iMe.feature.socialMedias.SocialAuthDomain;
import com.iMe.feature.socialMedias.SocialNetwork;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import java.util.ArrayList;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.tgnet.TLRPC$ChatParticipant;
/* compiled from: ProfileView.kt */
@OneExecution
/* loaded from: classes4.dex */
public interface ProfileView extends BaseView {
    @AddToEndSingle
    void onFilteredMembers(ArrayList<TLRPC$ChatParticipant> arrayList);

    void openSocialAuthScreen(SocialAuthDomain socialAuthDomain);

    void openSocialWeb(SocialNetwork socialNetwork);

    void openTwitterScreen(long j, SocialNetwork socialNetwork);

    void showBeforeConnectMessage(SocialNetwork socialNetwork, DialogModel dialogModel);

    @OneExecution
    void showNeedAuthorizeDialog(DialogModel dialogModel);

    @OneExecution
    void showResetConfirmationDialog(DialogModel dialogModel, SocialNetwork socialNetwork);

    @AddToEndSingle
    void showUserAccountLevel(AccountLevelInformation accountLevelInformation);

    void updateSocialCell();
}
