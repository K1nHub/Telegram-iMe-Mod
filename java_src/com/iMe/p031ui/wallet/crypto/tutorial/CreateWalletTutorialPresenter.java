package com.iMe.p031ui.wallet.crypto.tutorial;

import com.iMe.model.wallet.crypto.tutorial.TutorialPage;
import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3290R;
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
        if (tutorialType instanceof TutorialType.Intro) {
            mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(new TutorialPage(C3290R.raw.fork_non_custodial, C3290R.string.wallet_create_eth_account_tutorial_backup_title, C3290R.string.wallet_create_eth_account_tutorial_backup_description), new TutorialPage(C3290R.raw.fork_tutorial_check_data, C3290R.string.wallet_create_eth_account_tutorial_check_data_title, C3290R.string.wallet_create_eth_account_tutorial_check_data_description), new TutorialPage(C3290R.raw.fork_tutorial_be_carefull, C3290R.string.wallet_create_eth_account_tutorial_carefull_title, C3290R.string.wallet_create_eth_account_tutorial_carefull_description));
            return mutableListOf2;
        } else if (tutorialType instanceof TutorialType.Backup) {
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new TutorialPage(C3290R.raw.fork_congratulations, C3290R.string.wallet_dashboard_create_eth_wallet_success_dialog_title, C3290R.string.wallet_dashboard_create_eth_wallet_success_dialog_description), new TutorialPage(C3290R.raw.fork_back_up, C3290R.string.wallet_eth_backup_info_start_dialog_title, C3290R.string.wallet_eth_backup_info_start_dialog_description));
            return mutableListOf;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final void onLastPageActionClick() {
        TutorialType tutorialType = this.tutorialType;
        if (tutorialType instanceof TutorialType.Intro) {
            ((CreateWalletTutorialView) getViewState()).openPasscodeScreen();
        } else if (tutorialType instanceof TutorialType.Backup) {
            ((CreateWalletTutorialView) getViewState()).openTutorialPassedScreen((TutorialType.Backup) this.tutorialType);
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
