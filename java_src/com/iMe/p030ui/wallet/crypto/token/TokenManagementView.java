package com.iMe.p030ui.wallet.crypto.token;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.SwitchNetworkView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.TokenListInfo;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: TokenManagementView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView */
/* loaded from: classes3.dex */
public interface TokenManagementView extends BaseView, SwitchNetworkView {
    void copyAddressToClipboard(String str);

    void openBrowserUrl(String str);

    @AddToEndSingle
    void resetImportScreen();

    @AddToEndSingle
    void setScannedAddressText(String str);

    @AddToEndSingle
    void setupActionButtonState(boolean z, boolean z2);

    @AddToEndSingle
    void setupTokenData(String str, String str2, String str3, String str4, String str5, Network network, Integer num);

    void showDeleteConfirmationDialog(DialogModel dialogModel);

    void showEnableConfirmationDialog(DialogModel dialogModel);

    void showTokensListsDialog(List<TokenListInfo> list);

    @AddToEndSingle
    void updateErrorTextVisibility(boolean z);
}
