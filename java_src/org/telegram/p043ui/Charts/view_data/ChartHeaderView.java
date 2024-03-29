package org.telegram.p043ui.Charts.view_data;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Charts.BaseChartView;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Charts.view_data.ChartHeaderView */
/* loaded from: classes5.dex */
public class ChartHeaderView extends FrameLayout {
    public TextView back;
    private TextView dates;
    private TextView datesTmp;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean showDate;
    int textMargin;
    private TextView title;
    private boolean useWeekInterval;
    private Drawable zoomIcon;

    public ChartHeaderView(Context context) {
        this(context, null);
    }

    public ChartHeaderView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.showDate = true;
        new SimpleDateFormat("d MMM yyyy");
        this.resourcesProvider = resourcesProvider;
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(14.0f);
        textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textMargin = (int) textPaint.measureText("00 MMM 0000 - 00 MMM 000");
        TextView textView = new TextView(context);
        this.title = textView;
        textView.setTextSize(1, 15.0f);
        this.title.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        addView(this.title, LayoutHelper.createFrame(-2, -2, 8388627, 16, 0, this.textMargin, 0));
        TextView textView2 = new TextView(context);
        this.back = textView2;
        textView2.setTextSize(1, 15.0f);
        this.back.setTypeface(Typeface.DEFAULT_BOLD);
        this.back.setGravity(8388627);
        addView(this.back, LayoutHelper.createFrame(-2, -2, 8388627, 8, 0, 8, 0));
        TextView textView3 = new TextView(context);
        this.dates = textView3;
        textView3.setTextSize(1, 13.0f);
        this.dates.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.dates.setGravity(8388629);
        addView(this.dates, LayoutHelper.createFrame(-2, -2, 8388629, 16, 0, 16, 0));
        TextView textView4 = new TextView(context);
        this.datesTmp = textView4;
        textView4.setTextSize(1, 13.0f);
        this.datesTmp.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.datesTmp.setGravity(8388629);
        addView(this.datesTmp, LayoutHelper.createFrame(-2, -2, 8388629, 16, 0, 16, 0));
        this.datesTmp.setVisibility(8);
        this.back.setVisibility(8);
        this.back.setText(LocaleController.getString("ZoomOut", C3632R.string.ZoomOut));
        Drawable drawable = ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.msg_zoomout_stats);
        this.zoomIcon = drawable;
        this.back.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        this.back.setCompoundDrawablePadding(AndroidUtilities.m107dp(4));
        this.back.setPadding(AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(4), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(4));
        this.back.setBackground(Theme.getRoundRectSelectorDrawable(Theme.getColor(Theme.key_featuredStickers_removeButtonText, resourcesProvider)));
        this.datesTmp.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.telegram.ui.Charts.view_data.ChartHeaderView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                ChartHeaderView.this.lambda$new$0(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        recolor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        TextView textView = this.datesTmp;
        textView.setPivotX(textView.getMeasuredWidth() * 0.7f);
        TextView textView2 = this.dates;
        textView2.setPivotX(textView2.getMeasuredWidth() * 0.7f);
    }

    public void recolor() {
        TextView textView = this.title;
        int i = Theme.key_dialogTextBlack;
        textView.setTextColor(Theme.getColor(i, this.resourcesProvider));
        this.dates.setTextColor(Theme.getColor(i, this.resourcesProvider));
        this.datesTmp.setTextColor(Theme.getColor(i, this.resourcesProvider));
        TextView textView2 = this.back;
        int i2 = Theme.key_statisticChartBackZoomColor;
        textView2.setTextColor(Theme.getColor(i2, this.resourcesProvider));
        this.zoomIcon.setColorFilter(Theme.getColor(i2, this.resourcesProvider), PorterDuff.Mode.SRC_IN);
    }

    public void setDates(long j, long j2) {
        String format;
        if (!this.showDate) {
            this.dates.setVisibility(8);
            this.datesTmp.setVisibility(8);
            return;
        }
        if (this.useWeekInterval) {
            j2 += 604800000;
        }
        if (j2 - j >= 86400000) {
            format = LocaleController.getInstance().formatterYear.format(new Date(j)) + " — " + LocaleController.getInstance().formatterYear.format(new Date(j2));
        } else {
            format = LocaleController.getInstance().formatterYear.format(new Date(j));
        }
        this.dates.setText(format);
        this.dates.setVisibility(0);
    }

    public void setTitle(String str) {
        this.title.setText(str);
    }

    public void zoomTo(BaseChartView baseChartView, long j, boolean z) {
        setDates(j, j);
        this.back.setVisibility(0);
        if (z) {
            this.back.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.back.setScaleX(0.3f);
            this.back.setScaleY(0.3f);
            this.back.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.back.setPivotY(AndroidUtilities.m107dp(40));
            this.back.animate().alpha(1.0f).scaleY(1.0f).scaleX(1.0f).setDuration(200L).start();
            this.title.setAlpha(1.0f);
            this.title.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.title.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.title.setScaleX(1.0f);
            this.title.setScaleY(1.0f);
            this.title.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.title.setPivotY(BitmapDescriptorFactory.HUE_RED);
            this.title.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleY(0.3f).scaleX(0.3f).setDuration(200L).start();
            return;
        }
        this.back.setAlpha(1.0f);
        this.back.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.back.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.back.setScaleX(1.0f);
        this.back.setScaleY(1.0f);
        this.title.setAlpha(BitmapDescriptorFactory.HUE_RED);
    }

    public void zoomOut(BaseChartView baseChartView, boolean z) {
        setDates(baseChartView.getStartDate(), baseChartView.getEndDate());
        if (z) {
            this.title.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.title.setScaleX(0.3f);
            this.title.setScaleY(0.3f);
            this.title.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.title.setPivotY(BitmapDescriptorFactory.HUE_RED);
            this.title.animate().alpha(1.0f).scaleY(1.0f).scaleX(1.0f).setDuration(200L).start();
            this.back.setAlpha(1.0f);
            this.back.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.back.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.back.setScaleX(1.0f);
            this.back.setScaleY(1.0f);
            this.back.setPivotY(AndroidUtilities.m107dp(40));
            this.back.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleY(0.3f).scaleX(0.3f).setDuration(200L).start();
            return;
        }
        this.title.setAlpha(1.0f);
        this.title.setScaleX(1.0f);
        this.title.setScaleY(1.0f);
        this.back.setAlpha(BitmapDescriptorFactory.HUE_RED);
    }

    public void setUseWeekInterval(boolean z) {
        this.useWeekInterval = z;
    }

    public void showDate(boolean z) {
        this.showDate = z;
        if (!z) {
            this.datesTmp.setVisibility(8);
            this.dates.setVisibility(8);
            this.title.setLayoutParams(LayoutHelper.createFrame(-2, -2, 8388627, 16, 0, 16, 0));
            this.title.requestLayout();
            return;
        }
        this.title.setLayoutParams(LayoutHelper.createFrame(-2, -2, 8388627, 16, 0, this.textMargin, 0));
    }
}
