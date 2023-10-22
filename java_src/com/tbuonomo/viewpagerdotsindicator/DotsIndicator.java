package com.tbuonomo.viewpagerdotsindicator;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DotsIndicator.kt */
@Metadata(m152bv = {1, 0, 3}, m151d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u0018B'\b\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R*\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, m150d2 = {"Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;", "Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;", "", TtmlNode.ATTR_TTS_COLOR, "", "setSelectedPointColor", AppMeasurementSdk.ConditionalUserProperty.VALUE, "selectedDotColor", "I", "getSelectedDotColor", "()I", "setSelectedDotColor", "(I)V", "Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;", "getType", "()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;", SessionDescription.ATTR_TYPE, "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "viewpagerdotsindicator_release"}, m149k = 1, m148mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class DotsIndicator extends BaseDotsIndicator {
    private final ArgbEvaluator argbEvaluator;
    private float dotsElevation;
    private float dotsWidthFactor;
    private LinearLayout linearLayout;
    private boolean progressMode;
    private int selectedDotColor;

    static {
        new Companion(null);
    }

    public DotsIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DotsIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.argbEvaluator = new ArgbEvaluator();
        init(attributeSet);
    }

    public /* synthetic */ DotsIndicator(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* compiled from: DotsIndicator.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final int getSelectedDotColor() {
        return this.selectedDotColor;
    }

    public final void setSelectedDotColor(int i) {
        this.selectedDotColor = i;
        refreshDotsColors();
    }

    private final void init(AttributeSet attributeSet) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(0);
        LinearLayout linearLayout2 = this.linearLayout;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("linearLayout");
        }
        addView(linearLayout2, -2, -2);
        this.dotsWidthFactor = 2.5f;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.DotsIndicator);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr….styleable.DotsIndicator)");
            setSelectedDotColor(obtainStyledAttributes.getColor(R$styleable.DotsIndicator_selectedDotColor, -16711681));
            float f = obtainStyledAttributes.getFloat(R$styleable.DotsIndicator_dotsWidthFactor, 2.5f);
            this.dotsWidthFactor = f;
            if (f < 1) {
                this.dotsWidthFactor = 2.5f;
            }
            this.progressMode = obtainStyledAttributes.getBoolean(R$styleable.DotsIndicator_progressMode, false);
            this.dotsElevation = obtainStyledAttributes.getDimension(R$styleable.DotsIndicator_dotsElevation, BitmapDescriptorFactory.HUE_RED);
            obtainStyledAttributes.recycle();
        }
        if (isInEditMode()) {
            addDots(5);
            refreshDots();
        }
    }

    @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator
    public void addDot(final int i) {
        View dot = LayoutInflater.from(getContext()).inflate(R$layout.dot_layout, (ViewGroup) this, false);
        ImageView imageView = (ImageView) dot.findViewById(R$id.dot);
        Intrinsics.checkNotNullExpressionValue(imageView, "imageView");
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17) {
            Intrinsics.checkNotNullExpressionValue(dot, "dot");
            dot.setLayoutDirection(0);
        }
        int dotsSize = (int) getDotsSize();
        layoutParams2.height = dotsSize;
        layoutParams2.width = dotsSize;
        layoutParams2.setMargins((int) getDotsSpacing(), 0, (int) getDotsSpacing(), 0);
        DotsGradientDrawable dotsGradientDrawable = new DotsGradientDrawable();
        dotsGradientDrawable.setCornerRadius(getDotsCornerRadius());
        if (isInEditMode()) {
            dotsGradientDrawable.setColor(i == 0 ? this.selectedDotColor : getDotsColor());
        } else {
            BaseDotsIndicator.Pager pager = getPager();
            Intrinsics.checkNotNull(pager);
            dotsGradientDrawable.setColor(pager.getCurrentItem() == i ? this.selectedDotColor : getDotsColor());
        }
        imageView.setBackgroundDrawable(dotsGradientDrawable);
        dot.setOnClickListener(new View.OnClickListener() { // from class: com.tbuonomo.viewpagerdotsindicator.DotsIndicator$addDot$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (DotsIndicator.this.getDotsClickable()) {
                    int i3 = i;
                    BaseDotsIndicator.Pager pager2 = DotsIndicator.this.getPager();
                    if (i3 < (pager2 != null ? pager2.getCount() : 0)) {
                        BaseDotsIndicator.Pager pager3 = DotsIndicator.this.getPager();
                        Intrinsics.checkNotNull(pager3);
                        pager3.setCurrentItem(i, true);
                    }
                }
            }
        });
        if (i2 >= 21) {
            Intrinsics.checkNotNullExpressionValue(dot, "dot");
            ViewExtKt.setPaddingHorizontal(dot, (int) (this.dotsElevation * 0.8f));
            ViewExtKt.setPaddingVertical(dot, (int) (this.dotsElevation * 2));
            imageView.setElevation(this.dotsElevation);
        }
        this.dots.add(imageView);
        LinearLayout linearLayout = this.linearLayout;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("linearLayout");
        }
        linearLayout.addView(dot);
    }

    @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator
    public void removeDot(int i) {
        LinearLayout linearLayout = this.linearLayout;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("linearLayout");
        }
        LinearLayout linearLayout2 = this.linearLayout;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("linearLayout");
        }
        linearLayout.removeViewAt(linearLayout2.getChildCount() - 1);
        ArrayList<ImageView> arrayList = this.dots;
        arrayList.remove(arrayList.size() - 1);
    }

    @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator
    public OnPageChangeListenerHelper buildOnPageChangedListener() {
        return new OnPageChangeListenerHelper() { // from class: com.tbuonomo.viewpagerdotsindicator.DotsIndicator$buildOnPageChangedListener$1
            @Override // com.tbuonomo.viewpagerdotsindicator.OnPageChangeListenerHelper
            public void onPageScrolled$viewpagerdotsindicator_release(int i, int i2, float f) {
                float f2;
                float f3;
                ArgbEvaluator argbEvaluator;
                ArgbEvaluator argbEvaluator2;
                boolean z;
                ImageView imageView = DotsIndicator.this.dots.get(i);
                Intrinsics.checkNotNullExpressionValue(imageView, "dots[selectedPosition]");
                ImageView imageView2 = imageView;
                float dotsSize = DotsIndicator.this.getDotsSize();
                float dotsSize2 = DotsIndicator.this.getDotsSize();
                f2 = DotsIndicator.this.dotsWidthFactor;
                float f4 = 1;
                DotsIndicator.this.setWidth(imageView2, (int) (dotsSize + (dotsSize2 * (f2 - f4) * (f4 - f))));
                DotsIndicator dotsIndicator = DotsIndicator.this;
                if (dotsIndicator.isInBounds(dotsIndicator.dots, i2)) {
                    ImageView imageView3 = DotsIndicator.this.dots.get(i2);
                    Intrinsics.checkNotNullExpressionValue(imageView3, "dots[nextPosition]");
                    ImageView imageView4 = imageView3;
                    float dotsSize3 = DotsIndicator.this.getDotsSize();
                    float dotsSize4 = DotsIndicator.this.getDotsSize();
                    f3 = DotsIndicator.this.dotsWidthFactor;
                    DotsIndicator.this.setWidth(imageView4, (int) (dotsSize3 + (dotsSize4 * (f3 - f4) * f)));
                    Drawable background = imageView2.getBackground();
                    Objects.requireNonNull(background, "null cannot be cast to non-null type com.tbuonomo.viewpagerdotsindicator.DotsGradientDrawable");
                    DotsGradientDrawable dotsGradientDrawable = (DotsGradientDrawable) background;
                    Drawable background2 = imageView4.getBackground();
                    Objects.requireNonNull(background2, "null cannot be cast to non-null type com.tbuonomo.viewpagerdotsindicator.DotsGradientDrawable");
                    DotsGradientDrawable dotsGradientDrawable2 = (DotsGradientDrawable) background2;
                    if (DotsIndicator.this.getSelectedDotColor() != DotsIndicator.this.getDotsColor()) {
                        argbEvaluator = DotsIndicator.this.argbEvaluator;
                        Object evaluate = argbEvaluator.evaluate(f, Integer.valueOf(DotsIndicator.this.getSelectedDotColor()), Integer.valueOf(DotsIndicator.this.getDotsColor()));
                        Objects.requireNonNull(evaluate, "null cannot be cast to non-null type kotlin.Int");
                        int intValue = ((Integer) evaluate).intValue();
                        argbEvaluator2 = DotsIndicator.this.argbEvaluator;
                        Object evaluate2 = argbEvaluator2.evaluate(f, Integer.valueOf(DotsIndicator.this.getDotsColor()), Integer.valueOf(DotsIndicator.this.getSelectedDotColor()));
                        Objects.requireNonNull(evaluate2, "null cannot be cast to non-null type kotlin.Int");
                        dotsGradientDrawable2.setColor(((Integer) evaluate2).intValue());
                        z = DotsIndicator.this.progressMode;
                        if (z) {
                            BaseDotsIndicator.Pager pager = DotsIndicator.this.getPager();
                            Intrinsics.checkNotNull(pager);
                            if (i <= pager.getCurrentItem()) {
                                dotsGradientDrawable.setColor(DotsIndicator.this.getSelectedDotColor());
                            }
                        }
                        dotsGradientDrawable.setColor(intValue);
                    }
                }
                DotsIndicator.this.invalidate();
            }

            @Override // com.tbuonomo.viewpagerdotsindicator.OnPageChangeListenerHelper
            public void resetPosition$viewpagerdotsindicator_release(int i) {
                DotsIndicator dotsIndicator = DotsIndicator.this;
                ImageView imageView = dotsIndicator.dots.get(i);
                Intrinsics.checkNotNullExpressionValue(imageView, "dots[position]");
                dotsIndicator.setWidth(imageView, (int) DotsIndicator.this.getDotsSize());
                DotsIndicator.this.refreshDotColor(i);
            }

            @Override // com.tbuonomo.viewpagerdotsindicator.OnPageChangeListenerHelper
            public int getPageCount$viewpagerdotsindicator_release() {
                return DotsIndicator.this.dots.size();
            }
        };
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
        if (r4 < r2.getCurrentItem()) goto L13;
     */
    @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void refreshDotColor(int r4) {
        /*
            r3 = this;
            java.util.ArrayList<android.widget.ImageView> r0 = r3.dots
            java.lang.Object r0 = r0.get(r4)
            java.lang.String r1 = "dots[index]"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            android.widget.ImageView r0 = (android.widget.ImageView) r0
            android.graphics.drawable.Drawable r1 = r0.getBackground()
            boolean r2 = r1 instanceof com.tbuonomo.viewpagerdotsindicator.DotsGradientDrawable
            if (r2 != 0) goto L16
            r1 = 0
        L16:
            com.tbuonomo.viewpagerdotsindicator.DotsGradientDrawable r1 = (com.tbuonomo.viewpagerdotsindicator.DotsGradientDrawable) r1
            if (r1 == 0) goto L46
            com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator$Pager r2 = r3.getPager()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            int r2 = r2.getCurrentItem()
            if (r4 == r2) goto L41
            boolean r2 = r3.progressMode
            if (r2 == 0) goto L39
            com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator$Pager r2 = r3.getPager()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            int r2 = r2.getCurrentItem()
            if (r4 >= r2) goto L39
            goto L41
        L39:
            int r4 = r3.getDotsColor()
            r1.setColor(r4)
            goto L46
        L41:
            int r4 = r3.selectedDotColor
            r1.setColor(r4)
        L46:
            r0.setBackgroundDrawable(r1)
            r0.invalidate()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tbuonomo.viewpagerdotsindicator.DotsIndicator.refreshDotColor(int):void");
    }

    @Override // com.tbuonomo.viewpagerdotsindicator.BaseDotsIndicator
    public BaseDotsIndicator.Type getType() {
        return BaseDotsIndicator.Type.DEFAULT;
    }

    public final void setSelectedPointColor(int i) {
        setSelectedDotColor(i);
    }
}
