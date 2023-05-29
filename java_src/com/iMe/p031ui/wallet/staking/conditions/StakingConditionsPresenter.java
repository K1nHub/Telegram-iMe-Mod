package com.iMe.p031ui.wallet.staking.conditions;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.extentions.model.TokenInfoExtKt;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3295R;
/* compiled from: StakingConditionsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.staking.conditions.StakingConditionsPresenter */
/* loaded from: classes4.dex */
public final class StakingConditionsPresenter extends BasePresenter<StakingConditionsView> {
    private final ResourceManager resourceManager;
    private final StakingDetailsItem stakingDetails;

    public StakingConditionsPresenter(StakingDetailsItem stakingDetails, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.stakingDetails = stakingDetails;
        this.resourceManager = resourceManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        StakingConditionsView stakingConditionsView = (StakingConditionsView) getViewState();
        int logo = TokenInfoExtKt.getLogo(TokenInfo.Companion.map(TokenCode.Companion.map(stakingDetailsItem.getTokenTicker())), stakingDetailsItem.getNetworkType());
        int logo2 = stakingDetailsItem.getNetworkType().getLogo();
        String name = stakingDetailsItem.getName();
        String author = stakingDetailsItem.getAuthor();
        String string = this.resourceManager.getString(C3295R.string.staking_details_apy_apr_values, stakingDetailsItem.getFormattedAPR(), stakingDetailsItem.getFormattedAPY());
        String startsAt = stakingDetailsItem.getStartsAt();
        String endsAt = stakingDetailsItem.getEndsAt();
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        String formatTokenBalance = balanceFormatter.formatTokenBalance(stakingDetailsItem.getCompoundAccrualThreshold(), stakingDetailsItem.getTokenTicker(), this.resourceManager);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3295R.string.staking_conditions_fee_value;
        stakingConditionsView.setupScreenWithData(logo, logo2, name, author, string, startsAt, endsAt, formatTokenBalance, resourceManager.getString(i, BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(this.stakingDetails.getSafeWithdrawalFeePercentage()), 0, 2, null)), this.resourceManager.getString(i, BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(this.stakingDetails.getPrematureWithdrawalFeePercentage()), 0, 2, null)), this.resourceManager.getString(i, SessionDescription.SUPPORTED_SDP_VERSION));
    }
}
