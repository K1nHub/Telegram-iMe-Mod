package org.telegram.p048ui;

import android.content.Context;
import android.graphics.Canvas;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.Switch;
import org.telegram.p048ui.PremiumPreviewFragment;
/* renamed from: org.telegram.ui.PremiumFeatureCell */
/* loaded from: classes5.dex */
public class PremiumFeatureCell extends FrameLayout {
    private Switch checkBox;
    public PremiumPreviewFragment.PremiumFeatureData data;
    private final TextView description;
    boolean drawDivider;
    public ImageView imageView;
    private int initialTitleSubtitleContainerLeftMargin;
    private ImageView nextIcon;
    private final TextView title;
    private LinearLayout titleSubtitleContainer;

    public void setCheckBoxVisible(boolean z) {
        ((ViewGroup.MarginLayoutParams) this.titleSubtitleContainer.getLayoutParams()).rightMargin = this.initialTitleSubtitleContainerLeftMargin + (z ? AndroidUtilities.m50dp(22) : 0);
        this.nextIcon.setVisibility(z ? 8 : 0);
        this.checkBox.setVisibility(z ? 0 : 8);
    }

    public void setChecked(boolean z, boolean z2) {
        this.checkBox.setChecked(z, z2);
    }

    public boolean isChecked() {
        return this.checkBox.isChecked();
    }

    public PremiumFeatureCell(Context context) {
        super(context);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        this.title = textView;
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 15.0f);
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
        TextView textView2 = new TextView(context);
        this.description = textView2;
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
        textView2.setLineSpacing(AndroidUtilities.m50dp(2), 1.0f);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 0, 0, 1, 0, 0));
        addView(linearLayout, LayoutHelper.createFrame(-1, -2, 0, 62, 8, 48, 9));
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        addView(this.imageView, LayoutHelper.createFrame(28, 28, 0, 18, 12, 0, 0));
        ImageView imageView2 = new ImageView(context);
        imageView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView2.setImageResource(C3158R.C3160drawable.msg_arrowright);
        imageView2.setColorFilter(Theme.getColor("switchTrack"));
        addView(imageView2, LayoutHelper.createFrame(24, 24, 21, 0, 0, 18, 0));
        this.initialTitleSubtitleContainerLeftMargin = ((ViewGroup.MarginLayoutParams) linearLayout.getLayoutParams()).rightMargin;
        this.titleSubtitleContainer = linearLayout;
        this.nextIcon = imageView2;
        Switch r0 = new Switch(context);
        this.checkBox = r0;
        r0.setColors("switchTrack", "switchTrackChecked", "windowBackgroundWhite", "windowBackgroundWhite");
        this.checkBox.setVisibility(8);
        addView(this.checkBox, LayoutHelper.createFrame(37, 20, (LocaleController.isRTL ? 3 : 5) | 16, 0, 0, 22, 0));
    }

    public void setData(PremiumPreviewFragment.PremiumFeatureData premiumFeatureData, boolean z) {
        this.data = premiumFeatureData;
        this.title.setText(premiumFeatureData.title);
        this.description.setText(premiumFeatureData.description);
        this.imageView.setImageResource(premiumFeatureData.icon);
        this.drawDivider = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.drawDivider) {
            canvas.drawRect(AndroidUtilities.m50dp(62), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight(), Theme.dividerPaint);
        }
    }
}
