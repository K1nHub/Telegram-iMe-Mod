package org.telegram.p043ui.Components.Premium;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Components.Premium.DoubledLimitsBottomSheet$LimitCell */
/* loaded from: classes7.dex */
class DoubledLimitsBottomSheet$LimitCell extends LinearLayout {
    LimitPreviewView previewView;
    TextView subtitle;
    TextView title;

    public DoubledLimitsBottomSheet$LimitCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        setOrientation(1);
        setPadding(AndroidUtilities.m72dp(6), 0, AndroidUtilities.m72dp(6), 0);
        TextView textView = new TextView(context);
        this.title = textView;
        textView.setTextSize(1, 15.0f);
        this.title.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.title.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        addView(this.title, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 0, 16, 0, 16, 0));
        TextView textView2 = new TextView(context);
        this.subtitle = textView2;
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        this.subtitle.setTextSize(1, 14.0f);
        addView(this.subtitle, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 0, 16, 1, 16, 0));
        LimitPreviewView limitPreviewView = new LimitPreviewView(context, 0, 10, 20, resourcesProvider);
        this.previewView = limitPreviewView;
        addView(limitPreviewView, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 0, 0, 8, 0, 21));
    }

    public void setData(DoubledLimitsBottomSheet$Limit doubledLimitsBottomSheet$Limit) {
        this.title.setText(doubledLimitsBottomSheet$Limit.title);
        this.subtitle.setText(doubledLimitsBottomSheet$Limit.subtitle);
        this.previewView.premiumCount.setText(String.format("%d", Integer.valueOf(doubledLimitsBottomSheet$Limit.premiumLimit)));
        this.previewView.defaultCount.setText(String.format("%d", Integer.valueOf(doubledLimitsBottomSheet$Limit.defaultLimit)));
    }
}
