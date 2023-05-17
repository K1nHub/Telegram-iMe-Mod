package org.telegram.p044ui;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.ColoredImageSpan;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.Premium.PremiumButtonView;
/* renamed from: org.telegram.ui.UnlockPremiumView */
/* loaded from: classes5.dex */
public class UnlockPremiumView extends FrameLayout {
    public final PremiumButtonView premiumButtonView;

    public UnlockPremiumView(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        String string;
        LinearLayout linearLayout = new LinearLayout(context);
        addView(linearLayout, LayoutHelper.createFrame(-1, -2, 80));
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setTextColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider), 100));
        textView.setTextSize(1, 13.0f);
        textView.setGravity(17);
        if (i == 0) {
            textView.setText(LocaleController.getString("UnlockPremiumStickersDescription", C3290R.string.UnlockPremiumStickersDescription));
        } else if (i == 1) {
            textView.setText(LocaleController.getString("UnlockPremiumReactionsDescription", C3290R.string.UnlockPremiumReactionsDescription));
        }
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 0, 16, 17, 17, 16));
        PremiumButtonView premiumButtonView = new PremiumButtonView(context, false);
        this.premiumButtonView = premiumButtonView;
        if (i == 0) {
            string = LocaleController.getString("UnlockPremiumStickers", C3290R.string.UnlockPremiumStickers);
        } else {
            string = LocaleController.getString("UnlockPremiumReactions", C3290R.string.UnlockPremiumReactions);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "d ").setSpan(new ColoredImageSpan(ContextCompat.getDrawable(context, C3290R.C3292drawable.msg_premium_normal)), 0, 1, 0);
        spannableStringBuilder.append((CharSequence) string);
        premiumButtonView.buttonTextView.setText(spannableStringBuilder);
        linearLayout.addView(premiumButtonView, LayoutHelper.createLinear(-1, 48, 0, 16, 0, 16, 16));
    }
}
