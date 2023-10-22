package com.iMe.fork.p023ui.view;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.FileLog;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
import org.telegram.p042ui.Components.LayoutHelper;
/* compiled from: DrawerExpandableCell.kt */
/* renamed from: com.iMe.fork.ui.view.DrawerExpandableCell */
/* loaded from: classes3.dex */
public final class DrawerExpandableCell extends FrameLayout {
    private final Lazy arrowView$delegate;
    private boolean expandedState;
    private final Lazy textView$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawerExpandableCell(Context context) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNull(context);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.view.DrawerExpandableCell$textView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initTextView;
                initTextView = DrawerExpandableCell.this.initTextView();
                return initTextView;
            }
        });
        this.textView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ImageView>() { // from class: com.iMe.fork.ui.view.DrawerExpandableCell$arrowView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ImageView invoke() {
                ImageView initArrowView;
                initArrowView = DrawerExpandableCell.this.initArrowView();
                return initArrowView;
            }
        });
        this.arrowView$delegate = lazy2;
        addView(getTextView(), LayoutHelper.createFrame(-1, -1, 51, 19, 0, 16, 0));
        addView(getArrowView(), LayoutHelper.createFrame(59, 48, 85));
    }

    private final TextView getTextView() {
        return (TextView) this.textView$delegate.getValue();
    }

    private final ImageView getArrowView() {
        return (ImageView) this.arrowView$delegate.getValue();
    }

    public final void setTextAndIcon(String str, int i) {
        try {
            getTextView().setText(str);
            TextView textView = getTextView();
            Drawable drawable = ContextCompat.getDrawable(getContext(), i);
            Intrinsics.checkNotNull(drawable);
            Drawable mutate = drawable.mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_menuItemIcon), PorterDuff.Mode.MULTIPLY));
            textView.setCompoundDrawablesWithIntrinsicBounds(mutate, (Drawable) null, (Drawable) null, (Drawable) null);
        } catch (Throwable th) {
            FileLog.m97e(th);
        }
    }

    public final void setExpandedState(boolean z) {
        if (this.expandedState == z) {
            return;
        }
        this.expandedState = z;
        setImageByExpandedState(z);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(48), 1073741824));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getTextView().setTextColor(Theme.getColor(Theme.key_chats_menuItemText));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initTextView() {
        TextView textView = new TextView(getContext());
        ViewExtKt.withMediumTypeface(textView);
        ViewExtKt.singleLine(textView);
        textView.setGravity(19);
        textView.setCompoundDrawablePadding(AndroidUtilities.m102dp(29));
        textView.setTextColor(Theme.getColor(Theme.key_chats_menuItemText));
        textView.setTextSize(1, 15.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initArrowView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_menuItemIcon), PorterDuff.Mode.MULTIPLY));
        imageView.setImageResource(C3630R.C3632drawable.msg_expand);
        return imageView;
    }

    private final void setImageByExpandedState(boolean z) {
        getArrowView().animate().rotation(z ? 180.0f : BitmapDescriptorFactory.HUE_RED).setDuration(220L).setInterpolator(CubicBezierInterpolator.EASE_OUT).start();
    }
}
