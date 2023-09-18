package com.iMe.p031ui.reaction;

import com.iMe.model.reaction.ReactionButtonsRowsType;
import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: ReactionView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.reaction.ReactionView */
/* loaded from: classes4.dex */
public interface ReactionView extends BaseView {
    void messageCreated();

    void onUrlValid(int i, String str);

    @OneExecution
    void showButtonPositionDialog(ReactionButtonsRowsType reactionButtonsRowsType);
}
