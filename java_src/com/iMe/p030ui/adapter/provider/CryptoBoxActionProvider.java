package com.iMe.p030ui.adapter.provider;

import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.transaction.CryptoBoxActionItem;
import com.iMe.p030ui.custom.TimeWithClockView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: CryptoBoxActionProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CryptoBoxActionProvider */
/* loaded from: classes3.dex */
public final class CryptoBoxActionProvider extends BaseNodeProvider<CryptoBoxActionItem> {
    private final int itemViewType;
    private final int layoutId;
    private final Lazy networkIconCornerSize$delegate;
    private final ResourceManager resourceManager;

    public CryptoBoxActionProvider(ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.CRYPTOBOX_ACTION;
        this.layoutId = C3632R.layout.fork_recycle_item_wallet_transaction;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.adapter.provider.CryptoBoxActionProvider$networkIconCornerSize$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                ResourceManager resourceManager2;
                resourceManager2 = CryptoBoxActionProvider.this.resourceManager;
                return Float.valueOf(resourceManager2.getDimens(C3632R.dimen.icon_size_default) / 2);
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
    public void convert(BaseViewHolder helper, final CryptoBoxActionItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleForeground = BaseQuickAdapterExtKt.setRippleForeground(helper, C3632R.C3635id.linear_root, false);
        int i = C3632R.C3635id.text_date;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(rippleForeground, i, Theme.key_chats_date);
        int i2 = C3632R.C3635id.text_amount;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, Theme.key_chats_name);
        int i3 = C3632R.C3635id.text_status;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i3, item.getStatusColor());
        int i4 = C3632R.C3635id.text_transaction_type_title;
        BaseViewHolder themedTextColor4 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor3, i4, Theme.key_chats_message);
        int i5 = C3632R.C3635id.view_divider;
        BaseNodeAdapter<CryptoBoxActionItem> adapter = getAdapter();
        Intrinsics.checkNotNull(adapter);
        BaseViewHolder imageResource = BaseQuickAdapterExtKt.setVisibleElseGone(themedTextColor4, i5, !RecycleViewExtKt.isLastItem(helper, adapter)).setImageResource(C3632R.C3635id.image_transaction_type_icon, item.getIcon());
        int i6 = C3632R.C3635id.image_staking_icon;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.loadImage$default(imageResource, i6, item.getToken().getAvatarUrl(), null, false, 12, null), i2).setText(i3, item.getStatusText(this.resourceManager)).setText(i2, item.getAmount()).setText(i4, item.getTransactionTitle(this.resourceManager)), i, new Function1<TimeWithClockView, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoBoxActionProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TimeWithClockView timeWithClockView) {
                invoke2(timeWithClockView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(TimeWithClockView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setTime(CryptoBoxActionItem.this);
            }
        }), i6, new Function1<AppCompatImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoBoxActionProvider$convert$2
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
                CryptoBoxActionProvider cryptoBoxActionProvider = CryptoBoxActionProvider.this;
                materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
                networkIconCornerSize = cryptoBoxActionProvider.getNetworkIconCornerSize();
                materialShapeDrawable.setCornerSize(networkIconCornerSize);
                applyForView.setBackground(materialShapeDrawable);
            }
        });
    }
}
