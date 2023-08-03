package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RadialProgressView;
/* renamed from: org.telegram.ui.Cells.LocationLoadingCell */
/* loaded from: classes5.dex */
public class LocationLoadingCell extends FrameLayout {
    private ImageView imageView;
    private RadialProgressView progressBar;
    private final Theme.ResourcesProvider resourcesProvider;
    private TextView textView;

    public LocationLoadingCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        RadialProgressView radialProgressView = new RadialProgressView(context, resourcesProvider);
        this.progressBar = radialProgressView;
        addView(radialProgressView, LayoutHelper.createFrame(-2, -2, 17));
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setImageResource(C3419R.C3421drawable.location_empty);
        this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogEmptyImage), PorterDuff.Mode.MULTIPLY));
        addView(this.imageView, LayoutHelper.createFrame(-2, -2, 17, 0, 0, 0, 24));
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(getThemedColor(Theme.key_dialogEmptyText));
        this.textView.setGravity(17);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textView.setTextSize(1, 17.0f);
        this.textView.setText(LocaleController.getString("NoPlacesFound", C3419R.string.NoPlacesFound));
        addView(this.textView, LayoutHelper.createFrame(-2, -2, 17, 0, 34, 0, 0));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec((int) (AndroidUtilities.m72dp(56) * 2.5f), 1073741824));
    }

    public void setLoading(boolean z) {
        this.progressBar.setVisibility(z ? 0 : 4);
        this.textView.setVisibility(z ? 4 : 0);
        this.imageView.setVisibility(z ? 4 : 0);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
