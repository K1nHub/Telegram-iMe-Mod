package com.iMe.p031ui.contacts.view;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.Cells.TextCell;
/* compiled from: TextCellWithRightImage.kt */
/* renamed from: com.iMe.ui.contacts.view.TextCellWithRightImage */
/* loaded from: classes3.dex */
public final class TextCellWithRightImage extends TextCell {
    private final Lazy rightImage$delegate;
    private final int rightImageHeight;
    private final int rightImageOffset;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextCellWithRightImage(Context context, int i, boolean z) {
        super(context, i, z);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.rightImageOffset = AndroidUtilities.m51dp(16.0f);
        this.rightImageHeight = AndroidUtilities.m51dp(48.0f);
        lazy = LazyKt__LazyJVMKt.lazy(new TextCellWithRightImage$rightImage$2(this));
        this.rightImage$delegate = lazy;
    }

    private final ImageView getRightImage() {
        return (ImageView) this.rightImage$delegate.getValue();
    }

    public final void setRightActionClickListener(View.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        getRightImage().setOnClickListener(listener);
    }

    public final void setRightIcon(int i, int i2) {
        getRightImage().setImageResource(i);
        getRightImage().setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
    }

    public final void setRightIconVisible(boolean z) {
        getRightImage().setVisibility(z ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.Cells.TextCell, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        getRightImage().measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.rightImageHeight, Integer.MIN_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.Cells.TextCell, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        int measuredHeight = ((i4 - i2) - getRightImage().getMeasuredHeight()) / 2;
        int measuredWidth = LocaleController.isRTL ? i + this.rightImageOffset : (i5 - getRightImage().getMeasuredWidth()) - this.rightImageOffset;
        getRightImage().layout(measuredWidth, measuredHeight, getRightImage().getMeasuredWidth() + measuredWidth, getRightImage().getMeasuredHeight() + measuredHeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initRightImageView() {
        ImageView imageView = new ImageView(getContext());
        ViewExtKt.setCircleRippleBackground(imageView);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        addView(imageView);
        return imageView;
    }
}
