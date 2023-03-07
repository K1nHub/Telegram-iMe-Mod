package com.smedialink.p031ui.reaction;

import com.smedialink.model.reaction.ReactionButtonsRowsType;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: ReactionView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.reaction.ReactionView */
/* loaded from: classes3.dex */
public interface ReactionView extends BaseView {
    void messageCreated();

    void onUrlValid(int i, String str);

    @OneExecution
    void showButtonPositionDialog(ReactionButtonsRowsType reactionButtonsRowsType);
}
