package com.iMe.p030ui.wallet.fragment.usernames;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.p030ui.base.mvp.SwipeRefreshView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: FragmentUsernamesView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesView */
/* loaded from: classes4.dex */
public interface FragmentUsernamesView extends BaseView, SwipeRefreshView {
    @AddToEndSingle
    void renderItems(List<BaseNode> list);

    void showActionError(String str);

    void showActionSuccess();

    void showChooseSortingTypeDialog(DialogModel dialogModel, List<String> list, int i);

    void showConfirmationDialog(DialogModel dialogModel);

    void showProductDetailsDialog(TonFragmentItem.Product product);
}
