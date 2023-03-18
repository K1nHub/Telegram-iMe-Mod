package com.smedialink.p031ui.wallet.staking.conditions;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.extentions.model.TokenInfoExtKt;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3286R;
/* compiled from: StakingConditionsPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.staking.conditions.StakingConditionsPresenter */
/* loaded from: classes3.dex */
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
        String string = this.resourceManager.getString(C3286R.string.staking_details_apy_apr_values, stakingDetailsItem.getFormattedAPR(), stakingDetailsItem.getFormattedAPY());
        String startsAt = stakingDetailsItem.getStartsAt();
        String endsAt = stakingDetailsItem.getEndsAt();
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        String formatTokenBalance = balanceFormatter.formatTokenBalance(stakingDetailsItem.getCompoundAccrualThreshold(), stakingDetailsItem.getTokenTicker(), this.resourceManager);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3286R.string.staking_conditions_fee_value;
        stakingConditionsView.setupScreenWithData(logo, logo2, name, author, string, startsAt, endsAt, formatTokenBalance, resourceManager.getString(i, BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(this.stakingDetails.getSafeWithdrawalFeePercentage()), 0, 2, null)), this.resourceManager.getString(i, BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(this.stakingDetails.getPrematureWithdrawalFeePercentage()), 0, 2, null)), this.resourceManager.getString(i, SessionDescription.SUPPORTED_SDP_VERSION));
    }
}
