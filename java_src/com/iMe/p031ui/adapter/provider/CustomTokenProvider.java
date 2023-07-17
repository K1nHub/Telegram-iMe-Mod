package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.StringExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: CustomTokenProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CustomTokenProvider */
/* loaded from: classes.dex */
public final class CustomTokenProvider extends BaseNodeProvider<TokenItem> {
    private final int itemViewType;
    private final int layoutId;
    private final Lazy networkIconCornerSize$delegate;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (TokenItem) obj, (List<? extends Object>) list);
    }

    public CustomTokenProvider(ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.itemViewType = IdFabric$ViewTypes.TOKEN;
        this.layoutId = C3417R.layout.fork_recycle_item_custom_token;
        lazy = LazyKt__LazyJVMKt.lazy(new CustomTokenProvider$networkIconCornerSize$2(resourceManager));
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
    public void convert(BaseViewHolder helper, TokenItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleBackground = BaseQuickAdapterExtKt.setRippleBackground(helper, C3417R.C3420id.constraint_root, true);
        int i = C3417R.C3420id.text_name;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(rippleBackground, i, Theme.key_windowBackgroundWhiteBlackText);
        int i2 = C3417R.C3420id.text_address;
        BaseViewHolder loadImage$default = BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, Theme.key_windowBackgroundWhiteGrayText), C3417R.C3420id.image_token_icon, item.getAvatarUrl(), null, false, 12, null);
        int i3 = C3417R.C3420id.image_network_icon;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage$default(loadImage$default, i3, NetworksHelper.getNetworkById(item.getNetworkId()).getLogoUrl(), null, false, 12, null).setText(i, item.getName()).setText(i2, StringExtKt.shortened$default(item.getAddress(), 0, 1, null)).setText(C3417R.C3420id.text_ticker, item.getTicker()), i3, new CustomTokenProvider$convert$1(this));
    }

    public void convert(BaseViewHolder helper, TokenItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setText(C3417R.C3420id.text_name, item.getName()).setText(C3417R.C3420id.text_ticker, item.getTicker());
    }
}
