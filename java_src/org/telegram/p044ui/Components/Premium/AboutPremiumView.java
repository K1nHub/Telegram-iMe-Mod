package org.telegram.p044ui.Components.Premium;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Components.Premium.AboutPremiumView */
/* loaded from: classes6.dex */
public class AboutPremiumView extends LinearLayout {
    public AboutPremiumView(Context context) {
        super(context);
        setOrientation(1);
        setPadding(AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16), AndroidUtilities.m50dp(16));
        TextView textView = new TextView(context);
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setText(LocaleController.getString("AboutPremiumTitle", C3242R.string.AboutPremiumTitle));
        addView(textView);
        TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString("AboutPremiumDescription", C3242R.string.AboutPremiumDescription)));
        addView(textView2, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 0, 0, 0, 0, 0));
        TextView textView3 = new TextView(context);
        textView3.setTextSize(1, 14.0f);
        textView3.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        textView3.setText(AndroidUtilities.replaceTags(LocaleController.getString("AboutPremiumDescription2", C3242R.string.AboutPremiumDescription2)));
        addView(textView3, LayoutHelper.createLinear(-1, -2, BitmapDescriptorFactory.HUE_RED, 0, 0, 24, 0, 0));
    }
}