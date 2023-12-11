package com.iMe.fork.p023ui.view;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieImageView;
/* compiled from: EmptyView.kt */
/* renamed from: com.iMe.fork.ui.view.EmptyView */
/* loaded from: classes3.dex */
public final class EmptyView extends FrameLayout {
    private final RLottieImageView animationView;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmptyView(Context context, String message) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(message, "message");
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C3632R.raw.fork_catalog_empty, 100, 100);
        ViewExtKt.setHorizontalPadding(rLottieImageView, 32);
        this.animationView = rLottieImageView;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(rLottieImageView);
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 16.0f);
        ViewExtKt.withMediumTypeface(textView);
        textView.setGravity(17);
        textView.setText(message);
        textView.setPadding(32, 32, 32, 32);
        linearLayout.addView(textView);
        addView(linearLayout, LayoutHelper.createFrame(-1, -1, 17));
    }

    public final RLottieImageView getAnimationView() {
        return this.animationView;
    }

    /* compiled from: EmptyView.kt */
    /* renamed from: com.iMe.fork.ui.view.EmptyView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
