package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.SubtitleWithCounterCell */
/* loaded from: classes6.dex */
public class SubtitleWithCounterCell extends HeaderCell {
    private final AnimatedTextView counterTextView;

    public SubtitleWithCounterCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        AnimatedTextView animatedTextView = new AnimatedTextView(context, false, true, true);
        this.counterTextView = animatedTextView;
        animatedTextView.setAnimationProperties(0.45f, 0L, 240L, CubicBezierInterpolator.EASE_OUT_QUINT);
        animatedTextView.setGravity(1);
        animatedTextView.setTextSize(AndroidUtilities.m104dp(15));
        animatedTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        animatedTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader, resourcesProvider));
        addView(animatedTextView, LayoutHelper.createFrame(-2, 24, (LocaleController.isRTL ? 3 : 5) | 80, 24, 0, 24, 0));
        setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
    }

    public void updateCounter(boolean z, int i) {
        this.counterTextView.setText(LocaleController.formatPluralString("BoostingSubscriptionsCount", i, Integer.valueOf(i)), z);
    }
}
