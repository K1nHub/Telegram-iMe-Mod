package org.telegram.p048ui;

import com.iMe.p032ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.iMe.p032ui.wallet.donations.WalletDonationsPresenter;
import com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.receive.WalletReceiveBinancePayPresenter;
import com.iMe.p032ui.wallet.staking.calculator.StakingCalculatorPresenter;
import com.iMe.p032ui.wallet.staking.transaction.StakingTransactionPresenter;
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
        ArrayList arrayList = new ArrayList(5);
        arrayList.add(new BinanceReceivePresenterBinder(this));
        arrayList.add(new SendPresenterBinder(this));
        arrayList.add(new StakingTransactionPresenterBinder(this));
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
    /* renamed from: org.telegram.ui.ManageLinksActivity$$PresentersBinder$SendPresenterBinder */
    /* loaded from: classes5.dex */
    public class SendPresenterBinder extends PresenterField<ManageLinksActivity> {
        public SendPresenterBinder(ManageLinksActivity$$PresentersBinder manageLinksActivity$$PresentersBinder) {
            super("sendPresenter", null, WalletSendAmountPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(ManageLinksActivity manageLinksActivity, MvpPresenter mvpPresenter) {
            manageLinksActivity.sendPresenter = (WalletSendAmountPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(ManageLinksActivity manageLinksActivity) {
            return manageLinksActivity.provideSendPresenter();
        }
    }

    /* compiled from: ManageLinksActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.ManageLinksActivity$$PresentersBinder$StakingTransactionPresenterBinder */
    /* loaded from: classes5.dex */
    public class StakingTransactionPresenterBinder extends PresenterField<ManageLinksActivity> {
        public StakingTransactionPresenterBinder(ManageLinksActivity$$PresentersBinder manageLinksActivity$$PresentersBinder) {
            super("stakingTransactionPresenter", null, StakingTransactionPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(ManageLinksActivity manageLinksActivity, MvpPresenter mvpPresenter) {
            manageLinksActivity.stakingTransactionPresenter = (StakingTransactionPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(ManageLinksActivity manageLinksActivity) {
            return manageLinksActivity.provideStakingTransactionPresenter();
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
