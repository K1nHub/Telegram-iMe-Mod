package com.iMe.p030ui.wallet.crypto.tutorial;

import com.iMe.model.wallet.crypto.tutorial.TutorialPage;
import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3634R;
/* compiled from: CreateWalletTutorialPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialPresenter */
/* loaded from: classes3.dex */
public final class CreateWalletTutorialPresenter extends BasePresenter<CreateWalletTutorialView> {
    private final TutorialType tutorialType;

    public CreateWalletTutorialPresenter(TutorialType tutorialType) {
        Intrinsics.checkNotNullParameter(tutorialType, "tutorialType");
        this.tutorialType = tutorialType;
    }

    private final List<TutorialPage> getTutorialPages() {
        List<TutorialPage> mutableListOf;
        List<TutorialPage> mutableListOf2;
        TutorialType tutorialType = this.tutorialType;
        if (tutorialType instanceof TutorialType.WalletCreated) {
            mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(new TutorialPage(C3634R.raw.fork_non_custodial, C3634R.string.wallet_create_eth_account_tutorial_backup_title, C3634R.string.wallet_create_eth_account_tutorial_backup_description), new TutorialPage(C3634R.raw.fork_tutorial_check_data, C3634R.string.wallet_create_eth_account_tutorial_check_data_title, C3634R.string.wallet_create_eth_account_tutorial_check_data_description), new TutorialPage(C3634R.raw.fork_tutorial_be_carefull, C3634R.string.wallet_create_eth_account_tutorial_carefull_title, C3634R.string.wallet_create_eth_account_tutorial_carefull_description));
            return mutableListOf2;
        } else if (tutorialType instanceof TutorialType.WalletIntro) {
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new TutorialPage(C3634R.raw.fork_congratulations, C3634R.string.wallet_dashboard_create_eth_wallet_success_dialog_title, C3634R.string.wallet_dashboard_create_eth_wallet_success_dialog_description));
            return mutableListOf;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final void onLastPageActionClick() {
        TutorialType tutorialType = this.tutorialType;
        if (tutorialType instanceof TutorialType.WalletCreated) {
            ((CreateWalletTutorialView) getViewState()).finishScreen();
        } else if (tutorialType instanceof TutorialType.WalletIntro) {
            ((CreateWalletTutorialView) getViewState()).openTutorialPassedScreen((TutorialType.WalletIntro) this.tutorialType);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        showTutorial();
    }

    private final void showTutorial() {
        ((CreateWalletTutorialView) getViewState()).showTutorialPages(getTutorialPages());
    }
}
