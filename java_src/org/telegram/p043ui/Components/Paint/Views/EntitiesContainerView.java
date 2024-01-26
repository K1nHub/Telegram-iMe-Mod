package org.telegram.p043ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.zxing.common.detector.MathUtils;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.Paint.Views.EntitiesContainerView */
/* loaded from: classes6.dex */
public class EntitiesContainerView extends FrameLayout {
    private boolean cancelled;
    private EntitiesContainerViewDelegate delegate;
    public boolean drawForThumb;
    private boolean hasTransformed;

    /* renamed from: px */
    private float f1879px;

    /* renamed from: py */
    private float f1880py;

    /* renamed from: org.telegram.ui.Components.Paint.Views.EntitiesContainerView$EntitiesContainerViewDelegate */
    /* loaded from: classes6.dex */
    public interface EntitiesContainerViewDelegate {
        void onEntityDeselect();

        EntityView onSelectedEntityRequest();
    }

    public EntitiesContainerView(Context context, EntitiesContainerViewDelegate entitiesContainerViewDelegate) {
        super(context);
        this.delegate = entitiesContainerViewDelegate;
    }

    public int entitiesCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof EntityView) {
                i++;
            }
        }
        return i;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        EntitiesContainerViewDelegate entitiesContainerViewDelegate;
        EntityView onSelectedEntityRequest = this.delegate.onSelectedEntityRequest();
        if (onSelectedEntityRequest == null) {
            return false;
        }
        if (motionEvent.getPointerCount() == 1) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.hasTransformed = false;
                onSelectedEntityRequest.hasPanned = false;
                onSelectedEntityRequest.hasReleased = false;
                this.f1879px = motionEvent.getX();
                this.f1880py = motionEvent.getY();
                this.cancelled = false;
            } else if (!this.cancelled && actionMasked == 2) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (this.hasTransformed || MathUtils.distance(x, y, this.f1879px, this.f1880py) > AndroidUtilities.touchSlop) {
                    this.hasTransformed = true;
                    onSelectedEntityRequest.hasPanned = true;
                    onSelectedEntityRequest.pan(x - this.f1879px, y - this.f1880py);
                    this.f1879px = x;
                    this.f1880py = y;
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                onSelectedEntityRequest.hasPanned = false;
                onSelectedEntityRequest.hasReleased = true;
                if (!this.hasTransformed && (entitiesContainerViewDelegate = this.delegate) != null) {
                    entitiesContainerViewDelegate.onEntityDeselect();
                }
                invalidate();
                return false;
            }
        } else {
            onSelectedEntityRequest.hasPanned = false;
            onSelectedEntityRequest.hasReleased = true;
            this.hasTransformed = false;
            this.cancelled = true;
            invalidate();
        }
        return true;
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        if (view instanceof TextPaintView) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
            return;
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (this.drawForThumb && (view instanceof ReactionWidgetEntityView)) {
            return true;
        }
        return super.drawChild(canvas, view, j);
    }
}
