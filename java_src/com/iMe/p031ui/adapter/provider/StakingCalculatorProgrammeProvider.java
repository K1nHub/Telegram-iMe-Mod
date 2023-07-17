package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.staking.StakingProgrammeItem;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.ActionBar.Theme;
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
        this.layoutId = C3417R.layout.fork_recycle_item_staking_calculator_programme;
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
        int i = C3417R.C3420id.text_name;
        int i2 = Theme.key_chats_actionBackground;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(helper, i, i2);
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        int i4 = C3417R.C3420id.text_apr_value;
        int i5 = C3417R.C3420id.text_apy_value;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, i4, i5);
        int i6 = Theme.key_windowBackgroundWhiteGrayText;
        int i7 = C3417R.C3420id.text_apy_title;
        int i8 = C3417R.C3420id.text_apr_title;
        BaseViewHolder loadImage$default = BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i6, i7, i8), i7, i8, i5, i4), C3417R.C3420id.image_coin_icon, item.getTokenBalance().getToken().getAvatarUrl(), null, false, 12, null);
        int i9 = C3417R.C3420id.image_info;
        BaseViewHolder text = BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(loadImage$default, i9, i2), i9).setText(i7, this.resourceManager.getString(C3417R.string.staking_programme_apy));
        BaseViewHolder text2 = text.setText(i5, item.getApy() + '%').setText(i8, this.resourceManager.getString(C3417R.string.staking_programme_apr));
        BaseViewHolder text3 = text2.setText(i4, item.getApr() + '%').setText(i, item.getName());
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setGone(BaseQuickAdapterExtKt.setGone(text3, NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApy())), i7, i5), NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApr())), i8, i4), C3417R.C3420id.image_network_icon, new StakingCalculatorProgrammeProvider$convert$1$1(item, this));
    }

    public void convert(BaseViewHolder helper, StakingProgrammeItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseViewHolder loadImage$default = BaseQuickAdapterExtKt.loadImage$default(helper, C3417R.C3420id.image_coin_icon, item.getTokenBalance().getToken().getAvatarUrl(), null, false, 12, null);
        int i = C3417R.C3420id.text_apy_value;
        BaseViewHolder text = loadImage$default.setText(i, item.getApy() + '%');
        int i2 = C3417R.C3420id.text_apr_value;
        BaseViewHolder text2 = text.setText(i2, item.getApr() + '%').setText(C3417R.C3420id.text_name, item.getName());
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setGone(BaseQuickAdapterExtKt.setGone(text2, NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApy())), C3417R.C3420id.text_apy_title, i), NumberExtKt.isZero(balanceFormatter.parseFormattedString(item.getApr())), C3417R.C3420id.text_apr_title, i2), C3417R.C3420id.image_network_icon, NetworksHelper.getNetworkById(item.getTokenBalance().getToken().getNetworkId()).getLogoUrl(), null, false, 12, null);
    }
}
