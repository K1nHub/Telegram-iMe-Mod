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
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkSpanDrawable;
/* renamed from: org.telegram.ui.SponsoredMessageInfoView */
/* loaded from: classes5.dex */
public class SponsoredMessageInfoView extends FrameLayout {
    public SponsoredMessageInfoView(final Activity activity, Theme.ResourcesProvider resourcesProvider) {
        super(activity);
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(activity);
        textView.setText(LocaleController.getString("SponsoredMessageInfo", C3419R.string.SponsoredMessageInfo));
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        int i = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i, resourcesProvider));
        textView.setTextSize(1, 20.0f);
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(activity, resourcesProvider);
        linksTextView.setText(AndroidUtilities.replaceLinks(LocaleController.getString("SponsoredMessageInfo2Description1"), resourcesProvider));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
        linksTextView.setTextColor(Theme.getColor(i, resourcesProvider));
        linksTextView.setTextSize(1, 14.0f);
        linksTextView.setLineSpacing(AndroidUtilities.m72dp(2), 1.0f);
        LinkSpanDrawable.LinksTextView linksTextView2 = new LinkSpanDrawable.LinksTextView(activity);
        linksTextView2.setText(AndroidUtilities.replaceLinks(LocaleController.getString("SponsoredMessageInfo2Description2"), resourcesProvider));
        linksTextView2.setTextColor(Theme.getColor(i, resourcesProvider));
        linksTextView2.setTextSize(1, 14.0f);
        linksTextView2.setLineSpacing(AndroidUtilities.m72dp(2), 1.0f);
        LinkSpanDrawable.LinksTextView linksTextView3 = new LinkSpanDrawable.LinksTextView(activity);
        linksTextView3.setText(AndroidUtilities.replaceLinks(LocaleController.getString("SponsoredMessageInfo2Description3"), resourcesProvider));
        linksTextView3.setTextColor(Theme.getColor(i, resourcesProvider));
        linksTextView3.setTextSize(1, 14.0f);
        linksTextView3.setLineSpacing(AndroidUtilities.m72dp(2), 1.0f);
        final Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        int i2 = Theme.key_featuredStickers_addButton;
        paint.setColor(Theme.getColor(i2, resourcesProvider));
        paint.setStrokeWidth(AndroidUtilities.m72dp(1));
        TextView textView2 = new TextView(this, activity) { // from class: org.telegram.ui.SponsoredMessageInfoView.1
            @Override // android.widget.TextView, android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(AndroidUtilities.m72dp(1), AndroidUtilities.m72dp(1), getMeasuredWidth() - AndroidUtilities.m72dp(1), getMeasuredHeight() - AndroidUtilities.m72dp(1));
                canvas.drawRoundRect(rectF, AndroidUtilities.m72dp(4), AndroidUtilities.m72dp(4), paint);
            }
        };
        textView2.setOnClickListener(new View.OnClickListener(this) { // from class: org.telegram.ui.SponsoredMessageInfoView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Browser.openUrl(activity, LocaleController.getString("SponsoredMessageAlertLearnMoreUrl", C3419R.string.SponsoredMessageAlertLearnMoreUrl));
            }
        });
        textView2.setPadding(AndroidUtilities.m72dp(12), 0, AndroidUtilities.m72dp(12), 0);
        textView2.setText(LocaleController.getString("SponsoredMessageAlertLearnMoreUrl", C3419R.string.SponsoredMessageAlertLearnMoreUrl));
        textView2.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView2.setBackground(Theme.AdaptiveRipple.filledRect(Theme.getColor(Theme.key_dialogBackground, resourcesProvider), 4.0f));
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(16);
        LinkSpanDrawable.LinksTextView linksTextView4 = new LinkSpanDrawable.LinksTextView(activity);
        linksTextView4.setText(AndroidUtilities.replaceLinks(LocaleController.getString("SponsoredMessageInfo2Description4"), resourcesProvider));
        linksTextView4.setLineSpacing(AndroidUtilities.m72dp(2), 1.0f);
        linksTextView4.setTextColor(Theme.getColor(i, resourcesProvider));
        linksTextView4.setTextSize(1, 14.0f);
        textView.setPadding(AndroidUtilities.m72dp(22), 0, AndroidUtilities.m72dp(22), 0);
        linearLayout.addView(textView);
        linksTextView.setPadding(AndroidUtilities.m72dp(22), 0, AndroidUtilities.m72dp(22), 0);
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 0, 0, 18, 0, 0));
        linksTextView2.setPadding(AndroidUtilities.m72dp(22), 0, AndroidUtilities.m72dp(22), 0);
        linearLayout.addView(linksTextView2, LayoutHelper.createLinear(-1, -2, 0, 0, 24, 0, 0));
        linksTextView3.setPadding(AndroidUtilities.m72dp(22), 0, AndroidUtilities.m72dp(22), 0);
        linearLayout.addView(linksTextView3, LayoutHelper.createLinear(-1, -2, 0, 0, 24, 0, 0));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-2, 34, 1, 22, 14, 22, 0));
        linksTextView4.setPadding(AndroidUtilities.m72dp(22), 0, AndroidUtilities.m72dp(22), 0);
        linearLayout.addView(linksTextView4, LayoutHelper.createLinear(-1, -2, 0, 0, 14, 0, 0));
        ScrollView scrollView = new ScrollView(getContext());
        scrollView.addView(linearLayout);
        addView(scrollView, LayoutHelper.createFrame(-1, -2, 0, 0, 12, 0, 22));
    }
}
