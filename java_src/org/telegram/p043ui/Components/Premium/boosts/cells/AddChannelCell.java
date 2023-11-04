package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CombinedDrawable;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.AddChannelCell */
/* loaded from: classes6.dex */
public class AddChannelCell extends FrameLayout {
    private final ImageView imageView;
    private final Theme.ResourcesProvider resourcesProvider;
    private final SimpleTextView textView;

    public AddChannelCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.textView = simpleTextView;
        simpleTextView.setTextSize(16);
        simpleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        int i = Theme.key_windowBackgroundWhiteBlueHeader;
        simpleTextView.setTextColor(Theme.getColor(i, resourcesProvider));
        simpleTextView.setTag(Integer.valueOf(i));
        addView(simpleTextView);
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        addView(imageView);
        simpleTextView.setText(LocaleController.getString("BoostingAddChannel", C3634R.string.BoostingAddChannel));
        Drawable drawable = getResources().getDrawable(C3634R.C3636drawable.poll_add_circle);
        Drawable drawable2 = getResources().getDrawable(C3634R.C3636drawable.poll_add_plus);
        drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_switchTrackChecked, resourcesProvider), PorterDuff.Mode.MULTIPLY));
        drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck, resourcesProvider), PorterDuff.Mode.MULTIPLY));
        imageView.setImageDrawable(new CombinedDrawable(drawable, drawable2));
        setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        this.textView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m104dp(94), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(20), 1073741824));
        this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(50), 1073741824));
        setMeasuredDimension(size, AndroidUtilities.m104dp(50));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int m104dp;
        int i5 = i3 - i;
        int textHeight = ((i4 - i2) - this.textView.getTextHeight()) / 2;
        if (LocaleController.isRTL) {
            m104dp = (getMeasuredWidth() - this.textView.getMeasuredWidth()) - AndroidUtilities.m104dp(this.imageView.getVisibility() != 0 ? 23 : 68);
        } else {
            m104dp = AndroidUtilities.m104dp(this.imageView.getVisibility() != 0 ? 23 : 68);
        }
        SimpleTextView simpleTextView = this.textView;
        simpleTextView.layout(m104dp, textHeight, simpleTextView.getMeasuredWidth() + m104dp, this.textView.getMeasuredHeight() + textHeight);
        int m104dp2 = !LocaleController.isRTL ? AndroidUtilities.m104dp(24) : (i5 - this.imageView.getMeasuredWidth()) - AndroidUtilities.m104dp(24);
        ImageView imageView = this.imageView;
        imageView.layout(m104dp2, 0, imageView.getMeasuredWidth() + m104dp2, this.imageView.getMeasuredHeight());
    }
}
