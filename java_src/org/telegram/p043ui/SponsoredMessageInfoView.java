package org.telegram.p043ui;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.SponsoredMessageInfoView */
/* loaded from: classes5.dex */
public class SponsoredMessageInfoView extends FrameLayout {
    public SponsoredMessageInfoView(final Activity activity, Theme.ResourcesProvider resourcesProvider) {
        super(activity);
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(activity);
        textView.setText(LocaleController.getString("SponsoredMessageInfo", C3417R.string.SponsoredMessageInfo));
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        int i = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i, resourcesProvider));
        textView.setTextSize(1, 20.0f);
        TextView textView2 = new TextView(activity);
        textView2.setText(LocaleController.getString("SponsoredMessageInfoDescription1", C3417R.string.SponsoredMessageInfoDescription1));
        textView2.setTextColor(Theme.getColor(i, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        textView2.setLineSpacing(AndroidUtilities.m54dp(2), 1.0f);
        TextView textView3 = new TextView(activity);
        textView3.setText(LocaleController.getString("SponsoredMessageInfoDescription2", C3417R.string.SponsoredMessageInfoDescription2));
        textView3.setTextColor(Theme.getColor(i, resourcesProvider));
        textView3.setTextSize(1, 14.0f);
        textView3.setLineSpacing(AndroidUtilities.m54dp(2), 1.0f);
        TextView textView4 = new TextView(activity);
        textView4.setText(LocaleController.getString("SponsoredMessageInfoDescription3", C3417R.string.SponsoredMessageInfoDescription3));
        textView4.setTextColor(Theme.getColor(i, resourcesProvider));
        textView4.setTextSize(1, 14.0f);
        textView4.setLineSpacing(AndroidUtilities.m54dp(2), 1.0f);
        final Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        int i2 = Theme.key_featuredStickers_addButton;
        paint.setColor(Theme.getColor(i2, resourcesProvider));
        paint.setStrokeWidth(AndroidUtilities.m54dp(1));
        TextView textView5 = new TextView(this, activity) { // from class: org.telegram.ui.SponsoredMessageInfoView.1
            @Override // android.widget.TextView, android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(AndroidUtilities.m54dp(1), AndroidUtilities.m54dp(1), getMeasuredWidth() - AndroidUtilities.m54dp(1), getMeasuredHeight() - AndroidUtilities.m54dp(1));
                canvas.drawRoundRect(rectF, AndroidUtilities.m54dp(4), AndroidUtilities.m54dp(4), paint);
            }
        };
        textView5.setOnClickListener(new View.OnClickListener(this) { // from class: org.telegram.ui.SponsoredMessageInfoView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Browser.openUrl(activity, LocaleController.getString("SponsoredMessageAlertLearnMoreUrl", C3417R.string.SponsoredMessageAlertLearnMoreUrl));
            }
        });
        textView5.setPadding(AndroidUtilities.m54dp(12), 0, AndroidUtilities.m54dp(12), 0);
        textView5.setText(LocaleController.getString("SponsoredMessageAlertLearnMoreUrl", C3417R.string.SponsoredMessageAlertLearnMoreUrl));
        textView5.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView5.setBackground(Theme.AdaptiveRipple.filledRect(Theme.getColor(Theme.key_dialogBackground, resourcesProvider), 4.0f));
        textView5.setTextSize(1, 14.0f);
        textView5.setGravity(16);
        TextView textView6 = new TextView(activity);
        textView6.setText(LocaleController.getString("SponsoredMessageInfoDescription4", C3417R.string.SponsoredMessageInfoDescription4));
        textView6.setLineSpacing(AndroidUtilities.m54dp(2), 1.0f);
        textView6.setTextColor(Theme.getColor(i, resourcesProvider));
        textView6.setTextSize(1, 14.0f);
        linearLayout.addView(textView);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 0, 0, 18, 0, 0));
        linearLayout.addView(textView3, LayoutHelper.createLinear(-1, -2, 0, 0, 24, 0, 0));
        linearLayout.addView(textView4, LayoutHelper.createLinear(-1, -2, 0, 0, 24, 0, 0));
        linearLayout.addView(textView5, LayoutHelper.createLinear(-2, 34, 1, 0, 14, 0, 0));
        linearLayout.addView(textView6, LayoutHelper.createLinear(-1, -2, 0, 0, 14, 0, 0));
        ScrollView scrollView = new ScrollView(getContext());
        scrollView.addView(linearLayout);
        addView(scrollView, LayoutHelper.createFrame(-1, -2, 0, 22, 12, 22, 22));
    }
}
