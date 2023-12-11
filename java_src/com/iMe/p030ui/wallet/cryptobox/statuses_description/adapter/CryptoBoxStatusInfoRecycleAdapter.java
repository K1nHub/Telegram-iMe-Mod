package com.iMe.p030ui.wallet.cryptobox.statuses_description.adapter;

import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxStatus;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: CryptoBoxStatusInfoRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.statuses_description.adapter.CryptoBoxStatusInfoRecycleAdapter */
/* loaded from: classes3.dex */
public final class CryptoBoxStatusInfoRecycleAdapter extends BaseQuickAdapter<CryptoBoxStatus, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoBoxStatusInfoRecycleAdapter(ResourceManager resourceManager) {
        super(C3632R.layout.fork_recycle_item_cryptobox_status, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, final CryptoBoxStatus item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3632R.C3635id.text_description;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setThemedTextColor(holder, i, Theme.key_windowBackgroundWhiteBlackText), C3632R.C3635id.view_divider, !RecycleViewExtKt.isLastItem(holder, this)).setText(i, AndroidUtilities.replaceTags(this.resourceManager.getString(item.getDescriptionResId()))), C3632R.C3635id.image_check, new Function1<AppCompatImageView, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.statuses_description.adapter.CryptoBoxStatusInfoRecycleAdapter$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                ResourceManager resourceManager;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                resourceManager = CryptoBoxStatusInfoRecycleAdapter.this.resourceManager;
                ImageViewExtKt.setImageColor(applyForView, resourceManager.getColor(item.getColorResId()));
            }
        });
    }
}
