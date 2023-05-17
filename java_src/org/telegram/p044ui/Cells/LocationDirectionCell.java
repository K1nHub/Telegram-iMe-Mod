package org.telegram.p044ui.Cells;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.SimpleTextView;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.LocationDirectionCell */
/* loaded from: classes5.dex */
public class LocationDirectionCell extends FrameLayout {
    private SimpleTextView buttonTextView;
    private FrameLayout frameLayout;
    private final Theme.ResourcesProvider resourcesProvider;

    public LocationDirectionCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        FrameLayout frameLayout = new FrameLayout(context);
        this.frameLayout = frameLayout;
        frameLayout.setBackground(Theme.AdaptiveRipple.filledRect(getThemedColor(Theme.key_featuredStickers_addButton), 4.0f));
        addView(this.frameLayout, LayoutHelper.createFrame(-1, 48, 51, 16, 10, 16, 0));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.buttonTextView = simpleTextView;
        simpleTextView.setPadding(AndroidUtilities.m54dp(34), 0, AndroidUtilities.m54dp(34), 0);
        this.buttonTextView.setGravity(17);
        this.buttonTextView.setDrawablePadding(AndroidUtilities.m54dp(8));
        this.buttonTextView.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
        this.buttonTextView.setTextSize(14);
        this.buttonTextView.setText(LocaleController.getString("Directions", C3290R.string.Directions));
        this.buttonTextView.setLeftDrawable(C3290R.C3292drawable.navigate);
        this.buttonTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.frameLayout.addView(this.buttonTextView, LayoutHelper.createFrame(-1, -1));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(73), 1073741824));
    }

    public void setOnButtonClick(View.OnClickListener onClickListener) {
        this.frameLayout.setOnClickListener(onClickListener);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
