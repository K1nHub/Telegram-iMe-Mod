package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.wallet.home.AccountItem;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: CreateAccountProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.CreateAccountProvider */
/* loaded from: classes3.dex */
public final class CreateAccountProvider extends BaseNodeProvider<AccountItem.Create> {
    private final int itemViewType = IdFabric$ViewTypes.CREATE_ACCOUNT;
    private final int layoutId = C3158R.layout.fork_recycle_item_wallet_dashboard_account_empty;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (AccountItem.Create) obj, (List<? extends Object>) list);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, AccountItem.Create item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3158R.C3161id.card_empty_account;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setForeground(BaseQuickAdapterExtKt.setAlpha(BaseQuickAdapterExtKt.setThemedCardBackground(helper, i, "windowBackgroundWhite"), C3158R.C3161id.frame_root, 1.0f), i, Theme.getSelectorDrawable(false)), C3158R.C3161id.horizontal_action_buttons, new CreateAccountProvider$convert$1(item));
    }

    public void convert(BaseViewHolder helper, AccountItem.Create item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(helper, C3158R.C3161id.horizontal_action_buttons, new CreateAccountProvider$convert$2(item));
    }
}
