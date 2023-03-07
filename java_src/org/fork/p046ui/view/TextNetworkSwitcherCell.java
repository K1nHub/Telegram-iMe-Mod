package org.fork.p046ui.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.p031ui.custom.NetworkTypeView;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: TextNetworkSwitcherCell.kt */
/* renamed from: org.fork.ui.view.TextNetworkSwitcherCell */
/* loaded from: classes4.dex */
public final class TextNetworkSwitcherCell extends FrameLayout {
    private final boolean dialog;
    private final Lazy networkTypeView$delegate;
    private final Lazy textView$delegate;

    static {
        new Companion(null);
    }

    public /* synthetic */ TextNetworkSwitcherCell(Context context, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? false : z);
    }

    public final boolean getDialog() {
        return this.dialog;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextNetworkSwitcherCell(Context context, boolean z) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        this.dialog = z;
        lazy = LazyKt__LazyJVMKt.lazy(new TextNetworkSwitcherCell$textView$2(this));
        this.textView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new TextNetworkSwitcherCell$networkTypeView$2(this));
        this.networkTypeView$delegate = lazy2;
        TextView textView = getTextView();
        boolean z2 = LocaleController.isRTL;
        addView(textView, LayoutHelper.createFrame(-1, -1.0f, (z2 ? 5 : 3) | 48, z2 ? 66.0f : 21.0f, (float) BitmapDescriptorFactory.HUE_RED, z2 ? 21.0f : 66.0f, (float) BitmapDescriptorFactory.HUE_RED));
        addView(getNetworkTypeView(), LayoutHelper.createFrame(-2, -2.0f, (LocaleController.isRTL ? 3 : 5) | 16, 21.0f, (float) BitmapDescriptorFactory.HUE_RED, 21.0f, (float) BitmapDescriptorFactory.HUE_RED));
    }

    private final TextView getTextView() {
        return (TextView) this.textView$delegate.getValue();
    }

    private final NetworkTypeView getNetworkTypeView() {
        return (NetworkTypeView) this.networkTypeView$delegate.getValue();
    }

    public final void setNetworkType(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        getNetworkTypeView().setNetworkType(networkType);
    }

    public final void setNetworkTypeClickListener(View.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        getNetworkTypeView().setOnClickListener(listener);
    }

    public final void setText(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        getTextView().setText(text);
    }

    public final void setTextColor(int i) {
        getTextView().setTextColor(i);
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        getNetworkTypeView().invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m51dp(50.0f), 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NetworkTypeView initNetworkTypeView() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return new NetworkTypeView(context, null, 0, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initTextView() {
        TextView textView = new TextView(getContext());
        textView.setTextColor(Theme.getColor(getDialog() ? "dialogTextBlack" : "windowBackgroundWhiteBlackText"));
        textView.setTextSize(1, 16.0f);
        textView.setLines(1);
        textView.setMaxLines(1);
        textView.setSingleLine(true);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        return textView;
    }

    /* compiled from: TextNetworkSwitcherCell.kt */
    /* renamed from: org.fork.ui.view.TextNetworkSwitcherCell$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
