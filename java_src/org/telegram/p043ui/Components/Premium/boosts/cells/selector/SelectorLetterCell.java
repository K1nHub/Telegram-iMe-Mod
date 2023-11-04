package org.telegram.p043ui.Components.Premium.boosts.cells.selector;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorLetterCell */
/* loaded from: classes6.dex */
public class SelectorLetterCell extends FrameLayout {
    private final Theme.ResourcesProvider resourcesProvider;
    private final TextView textView;

    public SelectorLetterCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        setBackgroundColor(getThemedColor(Theme.key_graySection));
        TextView textView = new TextView(getContext());
        this.textView = textView;
        textView.setTextSize(1, 14.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextColor(getThemedColor(Theme.key_graySectionText));
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        addView(textView, LayoutHelper.createFrame(-1, -1, (LocaleController.isRTL ? 5 : 3) | 48, 16, 0, 16, 0));
    }

    public void setLetter(String str) {
        this.textView.setText(str.toUpperCase());
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(32), 1073741824));
    }

    public void setTextColor(int i) {
        this.textView.setTextColor(getThemedColor(i));
    }
}
