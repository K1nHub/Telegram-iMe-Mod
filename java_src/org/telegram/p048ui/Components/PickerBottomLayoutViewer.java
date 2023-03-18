package org.telegram.p048ui.Components;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.PickerBottomLayoutViewer */
/* loaded from: classes6.dex */
public class PickerBottomLayoutViewer extends FrameLayout {
    public TextView cancelButton;
    public TextView doneButton;
    public TextView doneButtonBadgeTextView;
    private boolean isDarkTheme;

    public PickerBottomLayoutViewer(Context context) {
        this(context, true);
    }

    public PickerBottomLayoutViewer(Context context, boolean z) {
        super(context);
        this.isDarkTheme = z;
        setBackgroundColor(z ? -15066598 : -1);
        TextView textView = new TextView(context);
        this.cancelButton = textView;
        textView.setTextSize(1, 14.0f);
        this.cancelButton.setTextColor(this.isDarkTheme ? -1 : -15095832);
        this.cancelButton.setGravity(17);
        this.cancelButton.setBackgroundDrawable(Theme.createSelectorDrawable(this.isDarkTheme ? -12763843 : 788529152, 0));
        this.cancelButton.setPadding(AndroidUtilities.m50dp(20), 0, AndroidUtilities.m50dp(20), 0);
        this.cancelButton.setText(LocaleController.getString("Cancel", C3286R.string.Cancel).toUpperCase());
        this.cancelButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        addView(this.cancelButton, LayoutHelper.createFrame(-2, -1, 51));
        TextView textView2 = new TextView(context);
        this.doneButton = textView2;
        textView2.setTextSize(1, 14.0f);
        this.doneButton.setTextColor(this.isDarkTheme ? -1 : -15095832);
        this.doneButton.setGravity(17);
        this.doneButton.setBackgroundDrawable(Theme.createSelectorDrawable(this.isDarkTheme ? -12763843 : 788529152, 0));
        this.doneButton.setPadding(AndroidUtilities.m50dp(20), 0, AndroidUtilities.m50dp(20), 0);
        this.doneButton.setText(LocaleController.getString("Send", C3286R.string.Send).toUpperCase());
        this.doneButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        addView(this.doneButton, LayoutHelper.createFrame(-2, -1, 53));
        TextView textView3 = new TextView(context);
        this.doneButtonBadgeTextView = textView3;
        textView3.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.doneButtonBadgeTextView.setTextSize(1, 13.0f);
        this.doneButtonBadgeTextView.setTextColor(-1);
        this.doneButtonBadgeTextView.setGravity(17);
        this.doneButtonBadgeTextView.setBackgroundResource(this.isDarkTheme ? C3286R.C3288drawable.photobadge : C3286R.C3288drawable.bluecounter);
        this.doneButtonBadgeTextView.setMinWidth(AndroidUtilities.m50dp(23));
        this.doneButtonBadgeTextView.setPadding(AndroidUtilities.m50dp(8), 0, AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(1));
        addView(this.doneButtonBadgeTextView, LayoutHelper.createFrame(-2, 23, 53, 0, 0, 7, 0));
    }

    public void updateSelectedCount(int i, boolean z) {
        if (i == 0) {
            this.doneButtonBadgeTextView.setVisibility(8);
            if (z) {
                this.doneButton.setTextColor(-6710887);
                this.doneButton.setEnabled(false);
                return;
            }
            this.doneButton.setTextColor(this.isDarkTheme ? -1 : -15095832);
            return;
        }
        this.doneButtonBadgeTextView.setVisibility(0);
        this.doneButtonBadgeTextView.setText(String.format("%d", Integer.valueOf(i)));
        this.doneButton.setTextColor(this.isDarkTheme ? -1 : -15095832);
        if (z) {
            this.doneButton.setEnabled(true);
        }
    }
}
