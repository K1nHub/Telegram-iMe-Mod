package org.telegram.p043ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MediaController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CombinedDrawable;
/* renamed from: org.telegram.ui.Stories.recorder.AlbumButton */
/* loaded from: classes6.dex */
public class AlbumButton extends View {
    private StaticLayout countLayout;
    private float countLayoutLeft;
    private float countLayoutWidth;
    private final TextPaint countPaintLayout;
    private final ImageReceiver imageReceiver;
    private StaticLayout nameLayout;
    private float nameLayoutLeft;
    private float nameLayoutWidth;
    private final TextPaint namePaintLayout;
    private final CharSequence subtitle;
    private final CharSequence title;

    public AlbumButton(Context context, MediaController.PhotoEntry photoEntry, CharSequence charSequence, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        String str;
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.imageReceiver = imageReceiver;
        TextPaint textPaint = new TextPaint(1);
        this.namePaintLayout = textPaint;
        TextPaint textPaint2 = new TextPaint(1);
        this.countPaintLayout = textPaint2;
        setPadding(AndroidUtilities.m72dp(16), 0, AndroidUtilities.m72dp(16), 0);
        setBackground(Theme.getSelectorDrawable(false));
        setMinimumWidth(AndroidUtilities.m72dp(196));
        setLayoutParams(new LinearLayout.LayoutParams(-1, 48));
        int i2 = Theme.key_actionBarDefaultSubmenuItem;
        textPaint.setColor(Theme.getColor(i2, resourcesProvider));
        textPaint.setTextSize(AndroidUtilities.m72dp(16));
        textPaint2.setColor(Theme.getColor(i2, resourcesProvider));
        textPaint2.setAlpha(102);
        textPaint2.setTextSize(AndroidUtilities.m72dp(13));
        this.title = "" + ((Object) charSequence);
        this.subtitle = "" + i;
        imageReceiver.setRoundRadius(AndroidUtilities.m72dp(4));
        Drawable mutate = context.getResources().getDrawable(C3558R.C3560drawable.msg_media_gallery).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(1308622847, PorterDuff.Mode.MULTIPLY));
        CombinedDrawable combinedDrawable = new CombinedDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m72dp(6), -13750737), mutate);
        combinedDrawable.setFullsize(false);
        combinedDrawable.setIconSize(AndroidUtilities.m72dp(18), AndroidUtilities.m72dp(18));
        if (photoEntry != null && (str = photoEntry.thumbPath) != null) {
            imageReceiver.setImage(ImageLocation.getForPath(str), "30.0_30.0", (ImageLocation) null, (String) null, combinedDrawable, (Object) null, 0);
        } else if (photoEntry != null && photoEntry.path != null) {
            if (photoEntry.isVideo) {
                imageReceiver.setImage(ImageLocation.getForPath("vthumb://" + photoEntry.imageId + ":" + photoEntry.path), "30.0_30.0", (ImageLocation) null, (String) null, combinedDrawable, (Object) null, 0);
                return;
            }
            imageReceiver.setImage(ImageLocation.getForPath("thumb://" + photoEntry.imageId + ":" + photoEntry.path), "30.0_30.0", (ImageLocation) null, (String) null, combinedDrawable, (Object) null, 0);
        } else {
            imageReceiver.setImageBitmap(combinedDrawable);
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.imageReceiver.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.imageReceiver.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        updateLayouts((((View.MeasureSpec.getSize(i) - AndroidUtilities.m73dp(30.0f)) - AndroidUtilities.m72dp(12)) - getPaddingLeft()) - getPaddingRight());
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension((int) Math.min(getPaddingLeft() + AndroidUtilities.m73dp(30.0f) + AndroidUtilities.m72dp(12) + this.nameLayoutWidth + AndroidUtilities.m72dp(8) + this.countLayoutWidth + getPaddingRight(), View.MeasureSpec.getSize(i)), AndroidUtilities.m72dp(48));
        } else if (View.MeasureSpec.getMode(i) == 1073741824) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m72dp(48));
        }
    }

    private void updateLayouts(int i) {
        StaticLayout staticLayout = this.nameLayout;
        if (staticLayout == null || staticLayout.getWidth() != i) {
            StaticLayout staticLayout2 = new StaticLayout(TextUtils.ellipsize(this.title, this.namePaintLayout, i, TextUtils.TruncateAt.END), this.namePaintLayout, Math.max(0, i), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.nameLayout = staticLayout2;
            int lineCount = staticLayout2.getLineCount();
            float f = BitmapDescriptorFactory.HUE_RED;
            this.nameLayoutLeft = lineCount > 0 ? this.nameLayout.getLineLeft(0) : 0.0f;
            float lineWidth = this.nameLayout.getLineCount() > 0 ? this.nameLayout.getLineWidth(0) : 0.0f;
            this.nameLayoutWidth = lineWidth;
            int m72dp = i - ((int) (lineWidth + AndroidUtilities.m72dp(8)));
            StaticLayout staticLayout3 = new StaticLayout(TextUtils.ellipsize(this.subtitle, this.countPaintLayout, m72dp, TextUtils.TruncateAt.END), this.countPaintLayout, Math.max(0, m72dp), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
            this.countLayout = staticLayout3;
            this.countLayoutLeft = staticLayout3.getLineCount() > 0 ? this.countLayout.getLineLeft(0) : 0.0f;
            if (this.countLayout.getLineCount() > 0) {
                f = this.countLayout.getLineWidth(0);
            }
            this.countLayoutWidth = f;
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float paddingLeft = getPaddingLeft();
        this.imageReceiver.setImageCoords(paddingLeft, (getMeasuredHeight() - AndroidUtilities.m73dp(30.0f)) / 2.0f, AndroidUtilities.m73dp(30.0f), AndroidUtilities.m73dp(30.0f));
        this.imageReceiver.draw(canvas);
        float m73dp = paddingLeft + AndroidUtilities.m73dp(30.0f) + AndroidUtilities.m72dp(12);
        if (this.nameLayout != null) {
            canvas.save();
            canvas.translate(m73dp - this.nameLayoutLeft, (getMeasuredHeight() - this.nameLayout.getHeight()) / 2.0f);
            this.nameLayout.draw(canvas);
            m73dp = m73dp + this.nameLayoutWidth + AndroidUtilities.m72dp(6);
            canvas.restore();
        }
        if (this.countLayout != null) {
            canvas.save();
            canvas.translate(m73dp - this.countLayoutLeft, ((getMeasuredHeight() - this.countLayout.getHeight()) / 2.0f) + AndroidUtilities.dpf2(1.6f));
            this.countLayout.draw(canvas);
            canvas.restore();
        }
    }
}
