package com.iMe.p031ui.wallet.cryptobox.statuses_description;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxStatus;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: CryptoBoxStatusInfoView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.cryptobox.statuses_description.CryptoBoxStatusInfoView */
/* loaded from: classes4.dex */
public interface CryptoBoxStatusInfoView extends BaseView {
    void renderItems(List<CryptoBoxStatus> list);
}
