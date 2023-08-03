package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.p031ui.custom.NetworkTypeView;
import com.iMe.storage.domain.model.crypto.Network;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: TextNetworkSwitcherCell.kt */
/* renamed from: com.iMe.fork.ui.view.TextNetworkSwitcherCell */
/* loaded from: classes3.dex */
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
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.view.TextNetworkSwitcherCell$textView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initTextView;
                initTextView = TextNetworkSwitcherCell.this.initTextView();
                return initTextView;
            }
        });
        this.textView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<NetworkTypeView>() { // from class: com.iMe.fork.ui.view.TextNetworkSwitcherCell$networkTypeView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final NetworkTypeView invoke() {
                NetworkTypeView initNetworkTypeView;
                initNetworkTypeView = TextNetworkSwitcherCell.this.initNetworkTypeView();
                return initNetworkTypeView;
            }
        });
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

    public final void setNetworkType(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        getNetworkTypeView().setNetwork(network);
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
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m73dp(50.0f), 1073741824));
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
        textView.setTextColor(Theme.getColor(this.dialog ? Theme.key_dialogTextBlack : Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 16.0f);
        textView.setLines(1);
        textView.setMaxLines(1);
        textView.setSingleLine(true);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        return textView;
    }

    /* compiled from: TextNetworkSwitcherCell.kt */
    /* renamed from: com.iMe.fork.ui.view.TextNetworkSwitcherCell$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
