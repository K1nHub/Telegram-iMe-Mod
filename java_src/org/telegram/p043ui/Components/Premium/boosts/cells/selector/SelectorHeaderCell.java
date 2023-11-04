package org.telegram.p043ui.Components.Premium.boosts.cells.selector;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.BackDrawable;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorHeaderCell */
/* loaded from: classes6.dex */
public class SelectorHeaderCell extends FrameLayout {
    public BackDrawable backDrawable;
    private final ImageView closeView;
    private final Paint dividerPaint;
    private Runnable onCloseClickListener;
    private final Theme.ResourcesProvider resourcesProvider;
    private final TextView textView;

    public SelectorHeaderCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.dividerPaint = new Paint(1);
        this.resourcesProvider = resourcesProvider;
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 20.0f);
        textView.setGravity(LocaleController.isRTL ? 5 : 3);
        int i = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.getColor(i, resourcesProvider));
        boolean z = LocaleController.isRTL;
        addView(textView, LayoutHelper.createFrame(-1, -2, 23, z ? 16 : 53, 0, z ? 53 : 16, 0));
        ImageView imageView = new ImageView(context);
        this.closeView = imageView;
        BackDrawable backDrawable = new BackDrawable(false);
        this.backDrawable = backDrawable;
        imageView.setImageDrawable(backDrawable);
        this.backDrawable.setColor(Theme.getColor(i, resourcesProvider));
        this.backDrawable.setRotatedColor(Theme.getColor(i, resourcesProvider));
        this.backDrawable.setAnimationTime(220.0f);
        addView(imageView, LayoutHelper.createFrame(24, 24, (LocaleController.isRTL ? 5 : 3) | 16, 16, 0, 16, 0));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorHeaderCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectorHeaderCell.this.lambda$new$0(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        Runnable runnable = this.onCloseClickListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.dividerPaint.setColor(Theme.getColor(Theme.key_divider, this.resourcesProvider));
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, getHeight() - AndroidUtilities.getShadowHeight(), getWidth(), getHeight(), this.dividerPaint);
    }

    public void setText(CharSequence charSequence) {
        this.textView.setText(charSequence);
    }

    public void setCloseImageVisible(boolean z) {
        this.closeView.setVisibility(z ? 0 : 8);
        TextView textView = this.textView;
        boolean z2 = LocaleController.isRTL;
        int i = 22;
        int i2 = (z2 || !z) ? 22 : 53;
        if (z2 && z) {
            i = 53;
        }
        textView.setLayoutParams(LayoutHelper.createFrame(-1, -2, 23, i2, 0, i, 0));
    }

    public void setBackImage(int i) {
        this.closeView.setImageResource(i);
    }

    public void setOnCloseClickListener(Runnable runnable) {
        this.onCloseClickListener = runnable;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(56), 1073741824));
    }
}
