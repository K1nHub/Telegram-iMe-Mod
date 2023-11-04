package com.iMe.p030ui.adapter.provider;

import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.StringExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: CustomTokenProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CustomTokenProvider */
/* loaded from: classes3.dex */
public final class CustomTokenProvider extends BaseNodeProvider<TokenItem> {
    private final int itemViewType;
    private final int layoutId;
    private final Lazy networkIconCornerSize$delegate;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (TokenItem) obj, (List<? extends Object>) list);
    }

    public CustomTokenProvider(final ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.itemViewType = IdFabric$ViewTypes.TOKEN;
        this.layoutId = C3634R.layout.fork_recycle_item_custom_token;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.adapter.provider.CustomTokenProvider$networkIconCornerSize$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(ResourceManager.this.getDimens(C3634R.dimen.icon_size_small_upper) / 2);
            }
        });
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
        BaseViewHolder rippleBackground = BaseQuickAdapterExtKt.setRippleBackground(helper, C3634R.C3637id.constraint_root, true);
        int i = C3634R.C3637id.text_name;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(rippleBackground, i, Theme.key_windowBackgroundWhiteBlackText);
        int i2 = C3634R.C3637id.text_address;
        BaseViewHolder loadImage$default = BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, Theme.key_windowBackgroundWhiteGrayText), C3634R.C3637id.image_token_icon, item.getAvatarUrl(), null, false, 12, null);
        int i3 = C3634R.C3637id.image_network_icon;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage$default(loadImage$default, i3, NetworksHelper.getNetworkById(item.getNetworkId()).getLogoUrl(), null, false, 12, null).setText(i, item.getName()).setText(i2, StringExtKt.shortened$default(item.getAddress(), 0, 1, null)).setText(C3634R.C3637id.text_ticker, item.getTicker()), i3, new Function1<AppCompatImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.CustomTokenProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AppCompatImageView appCompatImageView) {
                invoke2(appCompatImageView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(AppCompatImageView applyForView) {
                float networkIconCornerSize;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
                CustomTokenProvider customTokenProvider = CustomTokenProvider.this;
                materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
                networkIconCornerSize = customTokenProvider.getNetworkIconCornerSize();
                materialShapeDrawable.setCornerSize(networkIconCornerSize);
                applyForView.setBackground(materialShapeDrawable);
            }
        });
    }

    public void convert(BaseViewHolder helper, TokenItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setText(C3634R.C3637id.text_name, item.getName()).setText(C3634R.C3637id.text_ticker, item.getTicker());
    }
}
