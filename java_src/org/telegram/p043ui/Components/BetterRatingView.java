package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.BetterRatingView */
/* loaded from: classes6.dex */
public class BetterRatingView extends View {
    private Bitmap filledStar;
    private Bitmap hollowStar;
    private OnRatingChangeListener listener;
    private int numStars;
    private Paint paint;
    private int selectedRating;

    /* renamed from: org.telegram.ui.Components.BetterRatingView$OnRatingChangeListener */
    /* loaded from: classes6.dex */
    public interface OnRatingChangeListener {
        void onRatingChanged(int i);
    }

    public BetterRatingView(Context context) {
        super(context);
        this.paint = new Paint();
        this.numStars = 5;
        this.selectedRating = 0;
        this.filledStar = BitmapFactory.decodeResource(getResources(), C3634R.C3636drawable.ic_rating_star_filled).extractAlpha();
        this.hollowStar = BitmapFactory.decodeResource(getResources(), C3634R.C3636drawable.ic_rating_star).extractAlpha();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension((this.numStars * AndroidUtilities.m104dp(32)) + ((this.numStars - 1) * AndroidUtilities.m104dp(16)), AndroidUtilities.m104dp(32));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i = 0;
        while (i < this.numStars) {
            this.paint.setColor(Theme.getColor(i < this.selectedRating ? Theme.key_dialogTextBlue : Theme.key_dialogTextHint));
            canvas.drawBitmap(i < this.selectedRating ? this.filledStar : this.hollowStar, AndroidUtilities.m104dp(48) * i, BitmapDescriptorFactory.HUE_RED, this.paint);
            i++;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        float m104dp = AndroidUtilities.m104dp(-8);
        for (int i2 = 0; i2 < this.numStars; i2++) {
            if (motionEvent.getX() > m104dp && motionEvent.getX() < AndroidUtilities.m104dp(48) + m104dp && this.selectedRating != (i = i2 + 1)) {
                this.selectedRating = i;
                OnRatingChangeListener onRatingChangeListener = this.listener;
                if (onRatingChangeListener != null) {
                    onRatingChangeListener.onRatingChanged(i);
                }
                invalidate();
                return true;
            }
            m104dp += AndroidUtilities.m104dp(48);
        }
        return true;
    }

    public int getRating() {
        return this.selectedRating;
    }

    public void setOnRatingChangeListener(OnRatingChangeListener onRatingChangeListener) {
        this.listener = onRatingChangeListener;
    }
}
