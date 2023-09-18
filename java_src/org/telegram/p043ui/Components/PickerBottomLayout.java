package org.telegram.p043ui.Components;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.PickerBottomLayout */
/* loaded from: classes7.dex */
public class PickerBottomLayout extends FrameLayout {
    public TextView cancelButton;
    public LinearLayout doneButton;
    public TextView doneButtonBadgeTextView;
    public TextView doneButtonTextView;
    private Theme.ResourcesProvider resourcesProvider;

    public PickerBottomLayout(Context context, boolean z) {
        this(context, z, null);
    }

    public PickerBottomLayout(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        setBackgroundColor(Theme.getColor(z ? Theme.key_dialogBackground : Theme.key_windowBackgroundWhite, resourcesProvider));
        TextView textView = new TextView(context);
        this.cancelButton = textView;
        textView.setTextSize(1, 14.0f);
        TextView textView2 = this.cancelButton;
        int i = Theme.key_picker_enabledButton;
        textView2.setTextColor(Theme.getColor(i, resourcesProvider));
        this.cancelButton.setGravity(17);
        this.cancelButton.setBackground(Theme.createSelectorDrawable(Theme.getColor(i, resourcesProvider) & 268435455, 0));
        this.cancelButton.setPadding(AndroidUtilities.m72dp(33), 0, AndroidUtilities.m72dp(33), 0);
        this.cancelButton.setText(LocaleController.getString("Cancel", C3473R.string.Cancel).toUpperCase());
        this.cancelButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        addView(this.cancelButton, LayoutHelper.createFrame(-2, -1, 51));
        LinearLayout linearLayout = new LinearLayout(context);
        this.doneButton = linearLayout;
        linearLayout.setOrientation(0);
        this.doneButton.setBackground(Theme.createSelectorDrawable(268435455 & Theme.getColor(i, resourcesProvider), 0));
        this.doneButton.setPadding(AndroidUtilities.m72dp(33), 0, AndroidUtilities.m72dp(33), 0);
        addView(this.doneButton, LayoutHelper.createFrame(-2, -1, 53));
        TextView textView3 = new TextView(context);
        this.doneButtonBadgeTextView = textView3;
        textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.doneButtonBadgeTextView.setTextSize(1, 13.0f);
        this.doneButtonBadgeTextView.setTextColor(Theme.getColor(Theme.key_picker_badgeText, resourcesProvider));
        this.doneButtonBadgeTextView.setGravity(17);
        this.doneButtonBadgeTextView.setBackgroundDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m72dp(11), Theme.getColor(Theme.key_picker_badge, resourcesProvider)));
        this.doneButtonBadgeTextView.setMinWidth(AndroidUtilities.m72dp(23));
        this.doneButtonBadgeTextView.setPadding(AndroidUtilities.m72dp(8), 0, AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(1));
        this.doneButton.addView(this.doneButtonBadgeTextView, LayoutHelper.createLinear(-2, 23, 16, 0, 0, 10, 0));
        TextView textView4 = new TextView(context);
        this.doneButtonTextView = textView4;
        textView4.setTextSize(1, 14.0f);
        this.doneButtonTextView.setTextColor(Theme.getColor(i, resourcesProvider));
        this.doneButtonTextView.setGravity(17);
        this.doneButtonTextView.setCompoundDrawablePadding(AndroidUtilities.m72dp(8));
        this.doneButtonTextView.setText(LocaleController.getString("Send", C3473R.string.Send).toUpperCase());
        this.doneButtonTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.doneButton.addView(this.doneButtonTextView, LayoutHelper.createLinear(-2, -2, 16));
    }
}
