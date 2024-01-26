package com.iMe.p030ui.wallet.home.tabs.crypto.settings.token_family;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.p030ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: TokenFamilyView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyView */
/* loaded from: classes4.dex */
public interface TokenFamilyView extends BaseView {
    void renderData(List<BaseNode> list);

    void setupScreenWithData(String str, List<BaseNode> list);
}
