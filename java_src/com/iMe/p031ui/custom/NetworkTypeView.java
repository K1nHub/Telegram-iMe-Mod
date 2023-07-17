package com.iMe.p031ui.custom;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.databinding.ForkContentNetworkTypeBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: NetworkTypeView.kt */
/* renamed from: com.iMe.ui.custom.NetworkTypeView */
/* loaded from: classes3.dex */
public final class NetworkTypeView extends FrameLayout {
    private final ForkContentNetworkTypeBinding binding;
    private final Lazy cornerRadius$delegate;
    private boolean isImmutable;
    private Network network;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NetworkTypeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ NetworkTypeView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkTypeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.network = NetworksHelper.INSTANCE.getDefault();
        ForkContentNetworkTypeBinding inflate = ForkContentNetworkTypeBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        lazy = LazyKt__LazyJVMKt.lazy(NetworkTypeView$cornerRadius$2.INSTANCE);
        this.cornerRadius$delegate = lazy;
        setupView();
    }

    public final Network getNetwork() {
        return this.network;
    }

    public final void setNetwork(Network value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.network = value;
        updateView();
    }

    private final int getCornerRadius() {
        return ((Number) this.cornerRadius$delegate.getValue()).intValue();
    }

    private final void updateView() {
        Drawable createSimpleSelectorRoundRectDrawable;
        ForkContentNetworkTypeBinding forkContentNetworkTypeBinding = this.binding;
        LinearLayout root = forkContentNetworkTypeBinding.getRoot();
        if (this.isImmutable) {
            createSimpleSelectorRoundRectDrawable = Theme.createRoundRectDrawable(getCornerRadius(), Color.parseColor(this.network.getColorHex()));
        } else {
            createSimpleSelectorRoundRectDrawable = Theme.createSimpleSelectorRoundRectDrawable(getCornerRadius(), Color.parseColor(this.network.getColorHex()), 1090519039);
        }
        root.setBackground(createSimpleSelectorRoundRectDrawable);
        AppCompatTextView updateView$lambda$2$lambda$1 = forkContentNetworkTypeBinding.textNetwork;
        updateView$lambda$2$lambda$1.setText(this.network.getFullName());
        if (!this.isImmutable) {
            updateView$lambda$2$lambda$1.setCompoundDrawablesWithIntrinsicBounds(0, 0, C3417R.C3419drawable.fork_ic_arrow_down_16, 0);
            updateView$lambda$2$lambda$1.setCompoundDrawablePadding(AndroidUtilities.m54dp(4));
            Intrinsics.checkNotNullExpressionValue(updateView$lambda$2$lambda$1, "updateView$lambda$2$lambda$1");
            ViewExtKt.setCompoundDrawablesColor(updateView$lambda$2$lambda$1, -1);
        }
        AppCompatImageView imageNetwork = forkContentNetworkTypeBinding.imageNetwork;
        Intrinsics.checkNotNullExpressionValue(imageNetwork, "imageNetwork");
        ImageViewExtKt.loadFrom$default(imageNetwork, this.network.getSmallLogoUrl(), null, false, 2, null);
    }

    private final void setupView() {
        setupColors();
        setTag("network_type_view");
        addView(this.binding.getRoot());
    }

    private final void setupColors() {
        AppCompatTextView setupColors$lambda$4$lambda$3 = this.binding.textNetwork;
        setupColors$lambda$4$lambda$3.setTextColor(-1);
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$3, "setupColors$lambda$4$lambda$3");
        ViewExtKt.withMediumTypeface(setupColors$lambda$4$lambda$3);
    }

    /* compiled from: NetworkTypeView.kt */
    /* renamed from: com.iMe.ui.custom.NetworkTypeView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
