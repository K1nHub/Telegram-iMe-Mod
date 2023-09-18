package ru.tinkoff.scrollingpagerindicator;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes7.dex */
public class ScrollingPagerIndicator extends View {
    private Runnable attachRunnable;
    private final ArgbEvaluator colorEvaluator;
    private PagerAttacher<?> currentAttacher;
    private int dotColor;
    private boolean dotCountInitialized;
    private final int dotMinimumSize;
    private final int dotNormalSize;
    private SparseArray<Float> dotScale;
    private final int dotSelectedSize;
    private float firstDotOffset;
    private int infiniteDotCount;
    private int itemCount;
    private boolean looped;
    private int orientation;
    private final Paint paint;
    private int selectedDotColor;
    private final int spaceBetweenDotCenters;
    private int visibleDotCount;
    private int visibleDotThreshold;
    private float visibleFramePosition;
    private float visibleFrameWidth;

    /* loaded from: classes7.dex */
    public interface PagerAttacher<T> {
        void attachToPager(ScrollingPagerIndicator scrollingPagerIndicator, T t);

        void detachFromPager();
    }

    public ScrollingPagerIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.scrollingPagerIndicatorStyle);
    }

    public ScrollingPagerIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.colorEvaluator = new ArgbEvaluator();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ScrollingPagerIndicator, i, R$style.ScrollingPagerIndicator);
        int color = obtainStyledAttributes.getColor(R$styleable.ScrollingPagerIndicator_spi_dotColor, 0);
        this.dotColor = color;
        this.selectedDotColor = obtainStyledAttributes.getColor(R$styleable.ScrollingPagerIndicator_spi_dotSelectedColor, color);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R$styleable.ScrollingPagerIndicator_spi_dotSize, 0);
        this.dotNormalSize = dimensionPixelSize;
        this.dotSelectedSize = obtainStyledAttributes.getDimensionPixelSize(R$styleable.ScrollingPagerIndicator_spi_dotSelectedSize, 0);
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R$styleable.ScrollingPagerIndicator_spi_dotMinimumSize, -1);
        this.dotMinimumSize = dimensionPixelSize2 <= dimensionPixelSize ? dimensionPixelSize2 : -1;
        this.spaceBetweenDotCenters = obtainStyledAttributes.getDimensionPixelSize(R$styleable.ScrollingPagerIndicator_spi_dotSpacing, 0) + dimensionPixelSize;
        this.looped = obtainStyledAttributes.getBoolean(R$styleable.ScrollingPagerIndicator_spi_looped, false);
        int i2 = obtainStyledAttributes.getInt(R$styleable.ScrollingPagerIndicator_spi_visibleDotCount, 0);
        setVisibleDotCount(i2);
        this.visibleDotThreshold = obtainStyledAttributes.getInt(R$styleable.ScrollingPagerIndicator_spi_visibleDotThreshold, 2);
        this.orientation = obtainStyledAttributes.getInt(R$styleable.ScrollingPagerIndicator_spi_orientation, 0);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        if (isInEditMode()) {
            setDotCount(i2);
            onPageScrolled(i2 / 2, BitmapDescriptorFactory.HUE_RED);
        }
    }

    public void setLooped(boolean z) {
        this.looped = z;
        reattach();
        invalidate();
    }

    public int getDotColor() {
        return this.dotColor;
    }

    public void setDotColor(int i) {
        this.dotColor = i;
        invalidate();
    }

    public int getSelectedDotColor() {
        return this.selectedDotColor;
    }

    public void setSelectedDotColor(int i) {
        this.selectedDotColor = i;
        invalidate();
    }

    public int getVisibleDotCount() {
        return this.visibleDotCount;
    }

    public void setVisibleDotCount(int i) {
        if (i % 2 == 0) {
            throw new IllegalArgumentException("visibleDotCount must be odd");
        }
        this.visibleDotCount = i;
        this.infiniteDotCount = i + 2;
        if (this.attachRunnable != null) {
            reattach();
        } else {
            requestLayout();
        }
    }

    public int getVisibleDotThreshold() {
        return this.visibleDotThreshold;
    }

    public void setVisibleDotThreshold(int i) {
        this.visibleDotThreshold = i;
        if (this.attachRunnable != null) {
            reattach();
        } else {
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.orientation;
    }

    public void setOrientation(int i) {
        this.orientation = i;
        if (this.attachRunnable != null) {
            reattach();
        } else {
            requestLayout();
        }
    }

    public void attachToRecyclerView(RecyclerView recyclerView) {
        attachToPager(recyclerView, new RecyclerViewAttacher());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void attachToPager(final T t, final PagerAttacher<T> pagerAttacher) {
        detachFromPager();
        pagerAttacher.attachToPager(this, t);
        this.currentAttacher = pagerAttacher;
        this.attachRunnable = new Runnable() { // from class: ru.tinkoff.scrollingpagerindicator.ScrollingPagerIndicator.1
            @Override // java.lang.Runnable
            public void run() {
                ScrollingPagerIndicator.this.itemCount = -1;
                ScrollingPagerIndicator.this.attachToPager(t, pagerAttacher);
            }
        };
    }

    public void detachFromPager() {
        PagerAttacher<?> pagerAttacher = this.currentAttacher;
        if (pagerAttacher != null) {
            pagerAttacher.detachFromPager();
            this.currentAttacher = null;
            this.attachRunnable = null;
        }
        this.dotCountInitialized = false;
    }

    public void reattach() {
        Runnable runnable = this.attachRunnable;
        if (runnable != null) {
            runnable.run();
            invalidate();
        }
    }

    public void onPageScrolled(int i, float f) {
        int i2;
        if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
            throw new IllegalArgumentException("Offset must be [0, 1]");
        }
        if (i < 0 || (i != 0 && i >= this.itemCount)) {
            throw new IndexOutOfBoundsException("page must be [0, adapter.getItemCount())");
        }
        if (!this.looped || ((i2 = this.itemCount) <= this.visibleDotCount && i2 > 1)) {
            this.dotScale.clear();
            if (this.orientation == 0) {
                scaleDotByOffset(i, f);
                int i3 = this.itemCount;
                if (i < i3 - 1) {
                    scaleDotByOffset(i + 1, 1.0f - f);
                } else if (i3 > 1) {
                    scaleDotByOffset(0, 1.0f - f);
                }
            } else {
                scaleDotByOffset(i - 1, f);
                scaleDotByOffset(i, 1.0f - f);
            }
            invalidate();
        }
        if (this.orientation == 0) {
            adjustFramePosition(f, i);
        } else {
            adjustFramePosition(f, i - 1);
        }
        invalidate();
    }

    public void setDotCount(int i) {
        initDots(i);
    }

    public void setCurrentPosition(int i) {
        if (i != 0 && (i < 0 || i >= this.itemCount)) {
            throw new IndexOutOfBoundsException("Position must be [0, adapter.getItemCount()]");
        }
        if (this.itemCount == 0) {
            return;
        }
        adjustFramePosition(BitmapDescriptorFactory.HUE_RED, i);
        updateScaleInIdleState(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0073  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            r4 = this;
            int r0 = r4.orientation
            r1 = 1073741824(0x40000000, float:2.0)
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != 0) goto L40
            boolean r5 = r4.isInEditMode()
            if (r5 == 0) goto L19
            int r5 = r4.visibleDotCount
            int r5 = r5 + (-1)
            int r0 = r4.spaceBetweenDotCenters
            int r5 = r5 * r0
            int r0 = r4.dotSelectedSize
        L17:
            int r5 = r5 + r0
            goto L2b
        L19:
            int r5 = r4.itemCount
            int r0 = r4.visibleDotCount
            if (r5 < r0) goto L23
            float r5 = r4.visibleFrameWidth
            int r5 = (int) r5
            goto L2b
        L23:
            int r5 = r5 + (-1)
            int r0 = r4.spaceBetweenDotCenters
            int r5 = r5 * r0
            int r0 = r4.dotSelectedSize
            goto L17
        L2b:
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r3 = r4.dotSelectedSize
            if (r0 == r2) goto L3b
            if (r0 == r1) goto L77
            r6 = r3
            goto L77
        L3b:
            int r6 = java.lang.Math.min(r3, r6)
            goto L77
        L40:
            boolean r6 = r4.isInEditMode()
            if (r6 == 0) goto L51
            int r6 = r4.visibleDotCount
            int r6 = r6 + (-1)
            int r0 = r4.spaceBetweenDotCenters
            int r6 = r6 * r0
            int r0 = r4.dotSelectedSize
        L4f:
            int r6 = r6 + r0
            goto L63
        L51:
            int r6 = r4.itemCount
            int r0 = r4.visibleDotCount
            if (r6 < r0) goto L5b
            float r6 = r4.visibleFrameWidth
            int r6 = (int) r6
            goto L63
        L5b:
            int r6 = r6 + (-1)
            int r0 = r4.spaceBetweenDotCenters
            int r6 = r6 * r0
            int r0 = r4.dotSelectedSize
            goto L4f
        L63:
            int r0 = android.view.View.MeasureSpec.getMode(r5)
            int r5 = android.view.View.MeasureSpec.getSize(r5)
            int r3 = r4.dotSelectedSize
            if (r0 == r2) goto L73
            if (r0 == r1) goto L77
            r5 = r3
            goto L77
        L73:
            int r5 = java.lang.Math.min(r3, r5)
        L77:
            r4.setMeasuredDimension(r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.tinkoff.scrollingpagerindicator.ScrollingPagerIndicator.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        float dotScaleAt;
        int i2;
        int i3;
        int dotCount = getDotCount();
        if (dotCount < this.visibleDotThreshold) {
            return;
        }
        int i4 = this.spaceBetweenDotCenters;
        float f = (((i - this.dotNormalSize) / 2) + i4) * 0.7f;
        float f2 = this.dotSelectedSize / 2;
        float f3 = i4 * 0.85714287f;
        float f4 = this.visibleFramePosition;
        int i5 = ((int) (f4 - this.firstDotOffset)) / i4;
        int dotOffsetAt = (((int) ((f4 + this.visibleFrameWidth) - getDotOffsetAt(i5))) / this.spaceBetweenDotCenters) + i5;
        if (i5 == 0 && dotOffsetAt + 1 > dotCount) {
            dotOffsetAt = dotCount - 1;
        }
        while (i5 <= dotOffsetAt) {
            float dotOffsetAt2 = getDotOffsetAt(i5);
            float f5 = this.visibleFramePosition;
            if (dotOffsetAt2 >= f5) {
                float f6 = this.visibleFrameWidth;
                if (dotOffsetAt2 < f5 + f6) {
                    if (!this.looped || this.itemCount <= this.visibleDotCount) {
                        dotScaleAt = getDotScaleAt(i5);
                    } else {
                        float f7 = f5 + (f6 / 2.0f);
                        dotScaleAt = (dotOffsetAt2 < f7 - f3 || dotOffsetAt2 > f7) ? (dotOffsetAt2 <= f7 || dotOffsetAt2 >= f7 + f3) ? BitmapDescriptorFactory.HUE_RED : 1.0f - ((dotOffsetAt2 - f7) / f3) : ((dotOffsetAt2 - f7) + f3) / f3;
                    }
                    float f8 = this.dotNormalSize + ((this.dotSelectedSize - i2) * dotScaleAt);
                    if (this.itemCount > this.visibleDotCount) {
                        float f9 = (this.looped || !(i5 == 0 || i5 == dotCount + (-1))) ? f : f2;
                        int width = getWidth();
                        if (this.orientation == 1) {
                            width = getHeight();
                        }
                        float f10 = this.visibleFramePosition;
                        if (dotOffsetAt2 - f10 < f9) {
                            float f11 = ((dotOffsetAt2 - f10) * f8) / f9;
                            i3 = this.dotMinimumSize;
                            if (f11 > i3) {
                                if (f11 < f8) {
                                    f8 = f11;
                                }
                            }
                            f8 = i3;
                        } else {
                            float f12 = width;
                            if (dotOffsetAt2 - f10 > f12 - f9) {
                                float f13 = ((((-dotOffsetAt2) + f10) + f12) * f8) / f9;
                                i3 = this.dotMinimumSize;
                                if (f13 > i3) {
                                    if (f13 < f8) {
                                        f8 = f13;
                                    }
                                }
                                f8 = i3;
                            }
                        }
                    }
                    this.paint.setColor(calculateDotColor(dotScaleAt));
                    if (this.orientation == 0) {
                        canvas.drawCircle(dotOffsetAt2 - this.visibleFramePosition, getMeasuredHeight() / 2, f8 / 2.0f, this.paint);
                    } else {
                        canvas.drawCircle(getMeasuredWidth() / 2, dotOffsetAt2 - this.visibleFramePosition, f8 / 2.0f, this.paint);
                    }
                }
            }
            i5++;
        }
    }

    private int calculateDotColor(float f) {
        return ((Integer) this.colorEvaluator.evaluate(f, Integer.valueOf(this.dotColor), Integer.valueOf(this.selectedDotColor))).intValue();
    }

    private void updateScaleInIdleState(int i) {
        if (!this.looped || this.itemCount < this.visibleDotCount) {
            this.dotScale.clear();
            this.dotScale.put(i, Float.valueOf(1.0f));
            invalidate();
        }
    }

    private void initDots(int i) {
        if (this.itemCount == i && this.dotCountInitialized) {
            return;
        }
        this.itemCount = i;
        this.dotCountInitialized = true;
        this.dotScale = new SparseArray<>();
        if (i < this.visibleDotThreshold) {
            requestLayout();
            invalidate();
            return;
        }
        this.firstDotOffset = (!this.looped || this.itemCount <= this.visibleDotCount) ? this.dotSelectedSize / 2 : BitmapDescriptorFactory.HUE_RED;
        this.visibleFrameWidth = ((this.visibleDotCount - 1) * this.spaceBetweenDotCenters) + this.dotSelectedSize;
        requestLayout();
        invalidate();
    }

    private int getDotCount() {
        if (this.looped && this.itemCount > this.visibleDotCount) {
            return this.infiniteDotCount;
        }
        return this.itemCount;
    }

    private void adjustFramePosition(float f, int i) {
        int i2 = this.itemCount;
        int i3 = this.visibleDotCount;
        if (i2 <= i3) {
            this.visibleFramePosition = BitmapDescriptorFactory.HUE_RED;
        } else if (!this.looped && i2 > i3) {
            this.visibleFramePosition = (getDotOffsetAt(i) + (this.spaceBetweenDotCenters * f)) - (this.visibleFrameWidth / 2.0f);
            int i4 = this.visibleDotCount / 2;
            float dotOffsetAt = getDotOffsetAt((getDotCount() - 1) - i4);
            if (this.visibleFramePosition + (this.visibleFrameWidth / 2.0f) < getDotOffsetAt(i4)) {
                this.visibleFramePosition = getDotOffsetAt(i4) - (this.visibleFrameWidth / 2.0f);
                return;
            }
            float f2 = this.visibleFramePosition;
            float f3 = this.visibleFrameWidth;
            if (f2 + (f3 / 2.0f) > dotOffsetAt) {
                this.visibleFramePosition = dotOffsetAt - (f3 / 2.0f);
            }
        } else {
            this.visibleFramePosition = (getDotOffsetAt(this.infiniteDotCount / 2) + (this.spaceBetweenDotCenters * f)) - (this.visibleFrameWidth / 2.0f);
        }
    }

    private void scaleDotByOffset(int i, float f) {
        if (this.dotScale == null || getDotCount() == 0) {
            return;
        }
        setDotScaleAt(i, 1.0f - Math.abs(f));
    }

    private float getDotOffsetAt(int i) {
        return this.firstDotOffset + (i * this.spaceBetweenDotCenters);
    }

    private float getDotScaleAt(int i) {
        Float f = this.dotScale.get(i);
        return f != null ? f.floatValue() : BitmapDescriptorFactory.HUE_RED;
    }

    private void setDotScaleAt(int i, float f) {
        if (f == BitmapDescriptorFactory.HUE_RED) {
            this.dotScale.remove(i);
        } else {
            this.dotScale.put(i, Float.valueOf(f));
        }
    }
}
