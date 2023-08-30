package com.iMe.p031ui.adapter.provider;

import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.cryptobox.CryptoBoxItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.telegram.messenger.C3558R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AvatarDrawable;
/* compiled from: CryptoBoxProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CryptoBoxProvider */
/* loaded from: classes.dex */
public final class CryptoBoxProvider extends BaseNodeProvider<CryptoBoxItem> {
    private final int itemViewType;
    private final int layoutId;
    private final Lazy networkIconCornerSize$delegate;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (CryptoBoxItem) obj, (List<? extends Object>) list);
    }

    public CryptoBoxProvider(final ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.itemViewType = IdFabric$ViewTypes.CRYPTOBOX;
        this.layoutId = C3558R.layout.fork_recycle_item_cryptobox;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.iMe.ui.adapter.provider.CryptoBoxProvider$networkIconCornerSize$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(ResourceManager.this.getDimens(C3558R.dimen.icon_size_default) / 2);
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
    public void convert(BaseViewHolder helper, final CryptoBoxItem item) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleBackground = BaseQuickAdapterExtKt.setRippleBackground(helper, C3558R.C3561id.constraint_root, true);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        int i2 = C3558R.C3561id.text_name;
        int i3 = C3558R.C3561id.text_description;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(rippleBackground, i, i2, i3);
        int i4 = C3558R.C3561id.text_creation_time;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i4, Theme.key_windowBackgroundWhiteGrayText2);
        int i5 = C3558R.C3561id.text_status;
        BaseViewHolder mediumTypeface = BaseQuickAdapterExtKt.setMediumTypeface(themedTextColor2.setTextColor(i5, getContext().getColor(item.getStatusColorResId())), i2);
        int i6 = C3558R.C3561id.image_token_logo;
        BaseViewHolder text = BaseQuickAdapterExtKt.loadImage$default(mediumTypeface, i6, item.getTokenLogoUrl(), null, false, 12, null).setText(i2, item.getName()).setText(i3, item.getDescription()).setText(i4, item.getCreationTimeText()).setText(i5, item.getStatusText());
        isBlank = StringsKt__StringsJVMKt.isBlank(item.getDescription());
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(text, i3, true ^ isBlank), C3558R.C3561id.image_logo, new Function1<AppCompatImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoBoxProvider$convert$1$1
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
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                if (CryptoBoxItem.this.getChatAvatarUrl().length() > 0) {
                    ImageViewExtKt.loadFrom$default(applyForView, CryptoBoxItem.this.getChatAvatarUrl(), null, false, 6, null);
                    return;
                }
                applyForView.setImageDrawable(null);
                AvatarDrawable avatarDrawable = new AvatarDrawable();
                CryptoBoxItem cryptoBoxItem = CryptoBoxItem.this;
                avatarDrawable.setInfo(cryptoBoxItem.getChatId(), cryptoBoxItem.getChatName(), null);
                applyForView.setBackground(avatarDrawable);
            }
        }), i6, new Function1<AppCompatImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoBoxProvider$convert$1$2
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
                CryptoBoxProvider cryptoBoxProvider = CryptoBoxProvider.this;
                materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
                networkIconCornerSize = cryptoBoxProvider.getNetworkIconCornerSize();
                materialShapeDrawable.setCornerSize(networkIconCornerSize);
                applyForView.setBackground(materialShapeDrawable);
            }
        });
    }

    public void convert(BaseViewHolder helper, final CryptoBoxItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        int i = C3558R.C3561id.text_status;
        BaseViewHolder textColor = helper.setTextColor(i, getContext().getColor(item.getStatusColorResId()));
        int i2 = C3558R.C3561id.image_logo;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage$default(textColor, i2, item.getChatAvatarUrl(), null, false, 12, null).setText(C3558R.C3561id.text_name, item.getName()).setText(C3558R.C3561id.text_description, item.getDescription()).setText(C3558R.C3561id.text_creation_time, item.getCreationTimeText()).setText(i, item.getStatusText()), i2, new Function1<AppCompatImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoBoxProvider$convert$2$1
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
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                if (CryptoBoxItem.this.getChatAvatarUrl().length() > 0) {
                    ImageViewExtKt.loadFrom$default(applyForView, CryptoBoxItem.this.getChatAvatarUrl(), null, false, 6, null);
                    return;
                }
                applyForView.setImageDrawable(null);
                AvatarDrawable avatarDrawable = new AvatarDrawable();
                CryptoBoxItem cryptoBoxItem = CryptoBoxItem.this;
                avatarDrawable.setInfo(cryptoBoxItem.getChatId(), cryptoBoxItem.getChatName(), null);
                applyForView.setBackground(avatarDrawable);
            }
        });
    }
}
