package com.smedialink.p031ui.profile;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.crypto.level.AccountLevelInformation;
import java.util.ArrayList;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import org.telegram.tgnet.TLRPC$ChatParticipant;
/* compiled from: ProfileView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.profile.ProfileView */
/* loaded from: classes3.dex */
public interface ProfileView extends BaseView {
    void onFilteredMembers(ArrayList<TLRPC$ChatParticipant> arrayList);

    void showUserAccountLevel(AccountLevelInformation accountLevelInformation);
}
