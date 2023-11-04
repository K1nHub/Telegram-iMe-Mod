package com.iMe.p030ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.Switch;
/* compiled from: FoundTokenProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.FoundTokenProvider */
/* loaded from: classes3.dex */
public final class FoundTokenProvider extends BaseNodeProvider<FoundTokenItem> {
    private boolean isLastItemDividerVisible;
    private boolean isTickerVisible;
    private final int itemViewType;
    private final int layoutId;
    private final Lazy networkIconCornerSize$delegate;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (FoundTokenItem) obj, (List<? extends Object>) list);
    }

    public FoundTokenProvider(final ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.isLastItemDividerVisible = true;
        this.itemViewType = IdFabric$ViewTypes.TOKEN;
        this.layoutId = C3634R.layout.fork_recycle_item_found_token;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.adapter.provider.FoundTokenProvider$networkIconCornerSize$2
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

    public final void setTickerVisible(boolean z) {
        this.isTickerVisible = z;
    }

    public final void setLastItemDividerVisible(boolean z) {
        this.isLastItemDividerVisible = z;
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

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0098, code lost:
        if (com.iMe.utils.extentions.common.RecycleViewExtKt.isLastItem(r23, r9) == false) goto L8;
     */
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void convert(com.chad.library.adapter.base.viewholder.BaseViewHolder r23, final com.iMe.model.wallet.home.FoundTokenItem r24) {
        /*
            r22 = this;
            r0 = r22
            r1 = r23
            r2 = r24
            java.lang.String r3 = "helper"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r3)
            java.lang.String r3 = "item"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            int r3 = org.telegram.messenger.C3634R.C3637id.constraint_root
            r4 = 0
            com.chad.library.adapter.base.viewholder.BaseViewHolder r3 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setRippleBackground(r1, r3, r4)
            int r5 = org.telegram.messenger.C3634R.C3637id.text_name
            int r6 = org.telegram.p043ui.ActionBar.Theme.key_windowBackgroundWhiteBlackText
            com.chad.library.adapter.base.viewholder.BaseViewHolder r3 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setThemedTextColor(r3, r5, r6)
            int r6 = org.telegram.messenger.C3634R.C3637id.text_address
            int r7 = org.telegram.p043ui.ActionBar.Theme.key_windowBackgroundWhiteGrayText
            com.chad.library.adapter.base.viewholder.BaseViewHolder r8 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setThemedTextColor(r3, r6, r7)
            int r9 = org.telegram.messenger.C3634R.C3637id.image_token_icon
            java.lang.String r10 = r24.getTokenLogoUrl()
            r11 = 0
            r12 = 0
            r13 = 12
            r14 = 0
            com.chad.library.adapter.base.viewholder.BaseViewHolder r15 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.loadImage$default(r8, r9, r10, r11, r12, r13, r14)
            int r3 = org.telegram.messenger.C3634R.C3637id.image_network_icon
            java.lang.String r17 = r24.getNetworkLogoUrl()
            r18 = 0
            r19 = 0
            r20 = 12
            r21 = 0
            r16 = r3
            com.chad.library.adapter.base.viewholder.BaseViewHolder r7 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.loadImage$default(r15, r16, r17, r18, r19, r20, r21)
            java.lang.String r8 = r24.getName()
            com.chad.library.adapter.base.viewholder.BaseViewHolder r5 = r7.setText(r5, r8)
            java.lang.String r7 = r24.getAddress()
            r8 = 1
            r9 = 0
            java.lang.String r7 = com.iMe.utils.extentions.common.StringExtKt.shortened$default(r7, r4, r8, r9)
            com.chad.library.adapter.base.viewholder.BaseViewHolder r5 = r5.setText(r6, r7)
            int r7 = org.telegram.messenger.C3634R.C3637id.text_ticker
            java.lang.String r9 = r24.getTicker()
            com.chad.library.adapter.base.viewholder.BaseViewHolder r5 = r5.setText(r7, r9)
            java.lang.String r9 = r24.getAddress()
            boolean r9 = kotlin.text.StringsKt.isBlank(r9)
            r9 = r9 ^ r8
            com.chad.library.adapter.base.viewholder.BaseViewHolder r5 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setVisibleElseGone(r5, r6, r9)
            boolean r6 = r0.isTickerVisible
            com.chad.library.adapter.base.viewholder.BaseViewHolder r5 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setVisibleElseGone(r5, r7, r6)
            int r6 = org.telegram.messenger.C3634R.C3637id.view_switch
            boolean r7 = r24.isSwitchable()
            com.chad.library.adapter.base.viewholder.BaseViewHolder r5 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setVisibleElseGone(r5, r6, r7)
            int r7 = org.telegram.messenger.C3634R.C3637id.divider_horizontal
            boolean r9 = r0.isLastItemDividerVisible
            if (r9 != 0) goto L9a
            com.chad.library.adapter.base.BaseNodeAdapter r9 = r22.getAdapter()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r9)
            boolean r1 = com.iMe.utils.extentions.common.RecycleViewExtKt.isLastItem(r1, r9)
            if (r1 != 0) goto L9b
        L9a:
            r4 = r8
        L9b:
            com.chad.library.adapter.base.viewholder.BaseViewHolder r1 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.setVisibleElseGone(r5, r7, r4)
            com.iMe.ui.adapter.provider.FoundTokenProvider$convert$1 r4 = new com.iMe.ui.adapter.provider.FoundTokenProvider$convert$1
            r4.<init>()
            com.chad.library.adapter.base.viewholder.BaseViewHolder r1 = com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.applyForView(r1, r6, r4)
            com.iMe.ui.adapter.provider.FoundTokenProvider$convert$2 r2 = new com.iMe.ui.adapter.provider.FoundTokenProvider$convert$2
            r2.<init>()
            com.iMe.utils.extentions.common.BaseQuickAdapterExtKt.applyForView(r1, r3, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.adapter.provider.FoundTokenProvider.convert(com.chad.library.adapter.base.viewholder.BaseViewHolder, com.iMe.model.wallet.home.FoundTokenItem):void");
    }

    public void convert(BaseViewHolder helper, final FoundTokenItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.loadImage$default(helper.setText(C3634R.C3637id.text_name, item.getName()).setText(C3634R.C3637id.text_ticker, item.getTicker()), C3634R.C3637id.image_token_icon, item.getTokenLogoUrl(), null, false, 12, null), C3634R.C3637id.image_network_icon, item.getNetworkLogoUrl(), null, false, 12, null), C3634R.C3637id.view_switch, new Function1<Switch, Unit>() { // from class: com.iMe.ui.adapter.provider.FoundTokenProvider$convert$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Switch r1) {
                invoke2(r1);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Switch applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setChecked(FoundTokenItem.this.isEnabled(), true);
                int i = Theme.key_switchTrack;
                int i2 = Theme.key_switchTrackChecked;
                int i3 = Theme.key_windowBackgroundWhite;
                applyForView.setColors(i, i2, i3, i3);
            }
        });
    }
}
