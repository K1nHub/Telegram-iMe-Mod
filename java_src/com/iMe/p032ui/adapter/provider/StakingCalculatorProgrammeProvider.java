package com.iMe.p032ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.staking.StakingProgrammeItem;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.utils.extentions.model.TokenInfoExtKt;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
/* compiled from: StakingCalculatorProgrammeProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.StakingCalculatorProgrammeProvider */
/* loaded from: classes.dex */
public final class StakingCalculatorProgrammeProvider extends BaseNodeProvider<StakingProgrammeItem> {
    private final int itemViewType;
    private final int layoutId;
    private final Lazy networkIconCornerSize$delegate;
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (StakingProgrammeItem) obj, (List<? extends Object>) list);
    }

    public StakingCalculatorProgrammeProvider(ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.STAKING_PROGRAMME;
        this.layoutId = C3316R.layout.fork_recycle_item_staking_calculator_programme;
        lazy = LazyKt__LazyJVMKt.lazy(new StakingCalculatorProgrammeProvider$networkIconCornerSize$2(this));
        this.networkIconCornerSize$delegate = lazy;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float getNetworkIconCornerSize() {
        return ((Number) this.networkIconCornerSize$delegate.getValue()).floatValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, StakingProgrammeItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3316R.C3319id.text_name;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(helper, i, "chats_actionBackground");
        int i2 = C3316R.C3319id.text_apr_value;
        int i3 = C3316R.C3319id.text_apy_value;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, "windowBackgroundWhiteBlackText", i2, i3);
        int i4 = C3316R.C3319id.text_apy_title;
        int i5 = C3316R.C3319id.text_apr_title;
        BaseViewHolder imageResource = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, "windowBackgroundWhiteGrayText", i4, i5), i4, i5, i3, i2).setImageResource(C3316R.C3319id.image_coin_icon, TokenInfoExtKt.getLogo(item.getTokenBalance().getInfo(), item.getTokenBalance().getNetworkType()));
        int i6 = C3316R.C3319id.image_network_icon;
        BaseViewHolder imageResource2 = imageResource.setImageResource(i6, item.getTokenBalance().getNetworkType().getLogo());
        int i7 = C3316R.C3319id.image_info;
        BaseViewHolder text = BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(imageResource2, i7, "chats_actionBackground"), i7).setText(i4, this.resourceManager.getString(C3316R.string.staking_programme_apy));
        BaseViewHolder text2 = text.setText(i3, item.getApy() + '%').setText(i5, this.resourceManager.getString(C3316R.string.staking_programme_apr));
        BaseViewHolder text3 = text2.setText(i2, item.getApr() + '%').setText(i, item.getName());
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setGone(BaseQuickAdapterExtKt.setGone(text3, NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApy())), i4, i3), NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApr())), i5, i2), i6, new StakingCalculatorProgrammeProvider$convert$1$1(this));
    }

    public void convert(BaseViewHolder helper, StakingProgrammeItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseViewHolder imageResource = helper.setImageResource(C3316R.C3319id.image_coin_icon, TokenInfoExtKt.getLogo(item.getTokenBalance().getInfo(), item.getTokenBalance().getNetworkType())).setImageResource(C3316R.C3319id.image_network_icon, item.getTokenBalance().getNetworkType().getLogo());
        int i = C3316R.C3319id.text_apy_value;
        BaseViewHolder text = imageResource.setText(i, item.getApy() + '%');
        int i2 = C3316R.C3319id.text_apr_value;
        BaseViewHolder text2 = text.setText(i2, item.getApr() + '%').setText(C3316R.C3319id.text_name, item.getName());
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        BaseQuickAdapterExtKt.setGone(BaseQuickAdapterExtKt.setGone(text2, NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApy())), C3316R.C3319id.text_apy_title, i), NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApr())), C3316R.C3319id.text_apr_title, i2);
    }
}
