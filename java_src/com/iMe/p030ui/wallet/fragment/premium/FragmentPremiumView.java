package com.iMe.p030ui.wallet.fragment.premium;

import android.os.Bundle;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: FragmentPremiumView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumView */
/* loaded from: classes4.dex */
public interface FragmentPremiumView extends BaseView {
    void openChooseContact(Bundle bundle);

    @AddToEndSingle
    void renderBalance(String str);

    @AddToEndSingle
    void renderButton(String str, boolean z);

    @AddToEndSingle
    void renderItems(List<BaseNode> list);

    @AddToEndSingle
    void renderRecipient(TLRPC$User tLRPC$User);

    void showActionError(String str);

    void showActionSuccess();

    void showConfirmationDialog(DialogModel dialogModel);
}
