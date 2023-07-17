package com.iMe.p031ui.wallet.crypto.tutorial;

import com.iMe.model.wallet.crypto.tutorial.TutorialPage;
import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CreateWalletTutorialView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialView */
/* loaded from: classes4.dex */
public interface CreateWalletTutorialView extends BaseView {
    void openTutorialPassedScreen(TutorialType.WalletIntro walletIntro);

    @AddToEndSingle
    void showTutorialPages(List<TutorialPage> list);
}
