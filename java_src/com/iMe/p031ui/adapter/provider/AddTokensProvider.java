package com.iMe.p031ui.adapter.provider;

import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.TextViewCompat;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.CryptoAddTokensItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: AddTokensProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.AddTokensProvider */
/* loaded from: classes.dex */
public final class AddTokensProvider extends BaseNodeProvider<CryptoAddTokensItem> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public AddTokensProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.ADD_TOKENS;
        this.layoutId = C3473R.layout.fork_recycle_item_wallet_crypto_add_tokens;
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
    public void convert(BaseViewHolder helper, CryptoAddTokensItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleBackground = BaseQuickAdapterExtKt.setRippleBackground(helper, C3473R.C3476id.frame_container, false);
        int i = C3473R.C3476id.text_add_tokens;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setThemedTextColor(rippleBackground, i, Theme.key_chats_actionBackground).setText(i, this.resourceManager.getString(C3473R.string.wallet_home_crypto_add_tokens)), i, new Function1<AppCompatTextView, Unit>() { // from class: com.iMe.ui.adapter.provider.AddTokensProvider$convert$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppCompatTextView appCompatTextView) {
                invoke2(appCompatTextView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(AppCompatTextView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                TextViewCompat.setCompoundDrawableTintList(applyForView, ColorStateList.valueOf(Theme.getColor(Theme.key_chats_actionBackground)));
            }
        });
    }
}
