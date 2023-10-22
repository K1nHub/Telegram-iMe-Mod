package org.telegram.p042ui;

import com.iMe.p030ui.wallet.donations.WalletDonationsPresenter;
import com.iMe.p030ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayPresenter;
import com.iMe.p030ui.wallet.staking.calculator.StakingCalculatorPresenter;
import java.util.ArrayList;
import java.util.List;
import moxy.MvpPresenter;
import moxy.PresenterBinder;
import moxy.presenter.PresenterField;
/* renamed from: org.telegram.ui.ManageLinksActivity$$PresentersBinder */
/* loaded from: classes5.dex */
public class ManageLinksActivity$$PresentersBinder extends PresenterBinder<ManageLinksActivity> {
    @Override // moxy.PresenterBinder
    public List<PresenterField<? super ManageLinksActivity>> getPresenterFields() {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(new BinanceReceivePresenterBinder(this));
        arrayList.add(new DonationsPresenterBinder(this));
        arrayList.add(new StakingCalculatorPresenterBinder(this));
        return arrayList;
    }

    /* compiled from: ManageLinksActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.ManageLinksActivity$$PresentersBinder$BinanceReceivePresenterBinder */
    /* loaded from: classes5.dex */
    public class BinanceReceivePresenterBinder extends PresenterField<ManageLinksActivity> {
        public BinanceReceivePresenterBinder(ManageLinksActivity$$PresentersBinder manageLinksActivity$$PresentersBinder) {
            super("binanceReceivePresenter", null, WalletReceiveBinancePayPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(ManageLinksActivity manageLinksActivity, MvpPresenter mvpPresenter) {
            manageLinksActivity.binanceReceivePresenter = (WalletReceiveBinancePayPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(ManageLinksActivity manageLinksActivity) {
            return manageLinksActivity.provideBinanceReceivePresenter();
        }
    }

    /* compiled from: ManageLinksActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.ManageLinksActivity$$PresentersBinder$DonationsPresenterBinder */
    /* loaded from: classes5.dex */
    public class DonationsPresenterBinder extends PresenterField<ManageLinksActivity> {
        public DonationsPresenterBinder(ManageLinksActivity$$PresentersBinder manageLinksActivity$$PresentersBinder) {
            super("donationsPresenter", null, WalletDonationsPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(ManageLinksActivity manageLinksActivity, MvpPresenter mvpPresenter) {
            manageLinksActivity.donationsPresenter = (WalletDonationsPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(ManageLinksActivity manageLinksActivity) {
            return manageLinksActivity.provideDonationsPresenter();
        }
    }

    /* compiled from: ManageLinksActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.ManageLinksActivity$$PresentersBinder$StakingCalculatorPresenterBinder */
    /* loaded from: classes5.dex */
    public class StakingCalculatorPresenterBinder extends PresenterField<ManageLinksActivity> {
        public StakingCalculatorPresenterBinder(ManageLinksActivity$$PresentersBinder manageLinksActivity$$PresentersBinder) {
            super("stakingCalculatorPresenter", null, StakingCalculatorPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(ManageLinksActivity manageLinksActivity, MvpPresenter mvpPresenter) {
            manageLinksActivity.stakingCalculatorPresenter = (StakingCalculatorPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(ManageLinksActivity manageLinksActivity) {
            return manageLinksActivity.provideStakingCalculatorPresenter();
        }
    }
}
