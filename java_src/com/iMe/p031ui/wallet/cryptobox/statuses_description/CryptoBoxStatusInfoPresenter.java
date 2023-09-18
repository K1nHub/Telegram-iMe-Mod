package com.iMe.p031ui.wallet.cryptobox.statuses_description;

import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxStatus;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import moxy.InjectViewState;
/* compiled from: CryptoBoxStatusInfoPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoPresenter */
/* loaded from: classes6.dex */
public final class CryptoBoxStatusInfoPresenter extends BasePresenter<CryptoBoxStatusInfoView> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        List<CryptoBoxStatus> mutableList;
        mutableList = ArraysKt___ArraysKt.toMutableList(CryptoBoxStatus.values());
        ((CryptoBoxStatusInfoView) getViewState()).renderItems(mutableList);
    }
}
