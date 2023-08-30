package com.iMe.p031ui.wallet.staking.conditions;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3558R;
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
        String avatarUrl = stakingDetailsItem.getTokenItem().getAvatarUrl();
        String logoUrl = NetworksHelper.getNetworkById(stakingDetailsItem.getTokenItem().getNetworkId()).getLogoUrl();
        String name = stakingDetailsItem.getName();
        String author = stakingDetailsItem.getAuthor();
        String string = this.resourceManager.getString(C3558R.string.staking_details_apy_apr_values, stakingDetailsItem.getFormattedAPR(), stakingDetailsItem.getFormattedAPY());
        String startsAt = stakingDetailsItem.getStartsAt();
        String endsAt = stakingDetailsItem.getEndsAt();
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        String formatTokenBalance = balanceFormatter.formatTokenBalance(stakingDetailsItem.getCompoundAccrualThreshold(), TokenUiMappingKt.mapToDomain(stakingDetailsItem.getTokenItem()));
        ResourceManager resourceManager = this.resourceManager;
        int i = C3558R.string.staking_conditions_fee_value;
        stakingConditionsView.setupScreenWithData(avatarUrl, logoUrl, name, author, string, startsAt, endsAt, formatTokenBalance, resourceManager.getString(i, BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(this.stakingDetails.getSafeWithdrawalFeePercentage()), 0, 2, null)), this.resourceManager.getString(i, BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(this.stakingDetails.getPrematureWithdrawalFeePercentage()), 0, 2, null)), this.resourceManager.getString(i, SessionDescription.SUPPORTED_SDP_VERSION));
    }
}
