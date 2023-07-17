package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.AccountItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: CreateAccountProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CreateAccountProvider */
/* loaded from: classes.dex */
public final class CreateAccountProvider extends BaseNodeProvider<AccountItem.Create> {
    private final int itemViewType = IdFabric$ViewTypes.CREATE_ACCOUNT;
    private final int layoutId = C3417R.layout.fork_recycle_item_wallet_dashboard_account_empty;

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
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setAlpha(BaseQuickAdapterExtKt.setThemedCardBackground(helper, C3417R.C3420id.card_empty_account, Theme.key_windowBackgroundWhite), C3417R.C3420id.frame_root, 1.0f), C3417R.C3420id.horizontal_action_buttons, new CreateAccountProvider$convert$1(item));
    }

    public void convert(BaseViewHolder helper, AccountItem.Create item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(helper, C3417R.C3420id.horizontal_action_buttons, new CreateAccountProvider$convert$2(item));
    }
}
