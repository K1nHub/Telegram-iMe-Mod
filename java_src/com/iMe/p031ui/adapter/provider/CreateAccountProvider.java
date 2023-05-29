package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.AccountItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: CreateAccountProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CreateAccountProvider */
/* loaded from: classes.dex */
public final class CreateAccountProvider extends BaseNodeProvider<AccountItem.Create> {
    private final int itemViewType = IdFabric$ViewTypes.CREATE_ACCOUNT;
    private final int layoutId = C3295R.layout.fork_recycle_item_wallet_dashboard_account_empty;

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
        int i = C3295R.C3298id.card_empty_account;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setForeground(BaseQuickAdapterExtKt.setAlpha(BaseQuickAdapterExtKt.setThemedCardBackground(helper, i, Theme.key_windowBackgroundWhite), C3295R.C3298id.frame_root, 1.0f), i, Theme.getSelectorDrawable(false)), C3295R.C3298id.horizontal_action_buttons, new CreateAccountProvider$convert$1(item));
    }

    public void convert(BaseViewHolder helper, AccountItem.Create item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(helper, C3295R.C3298id.horizontal_action_buttons, new CreateAccountProvider$convert$2(item));
    }
}
