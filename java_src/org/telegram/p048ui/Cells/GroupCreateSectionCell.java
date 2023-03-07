package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.GroupCreateSectionCell */
/* loaded from: classes5.dex */
public class GroupCreateSectionCell extends FrameLayout {
    private Drawable drawable;
    private TextView textView;

    public GroupCreateSectionCell(Context context) {
        super(context);
        setBackgroundColor(Theme.getColor("graySection"));
        Drawable drawable = getResources().getDrawable(C3158R.C3160drawable.shadowdown);
        this.drawable = drawable;
        drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor("groupcreate_sectionShadow"), PorterDuff.Mode.MULTIPLY));
        TextView textView = new TextView(getContext());
        this.textView = textView;
        textView.setTextSize(1, 14.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textView.setTextColor(Theme.getColor("groupcreate_sectionText"));
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        addView(this.textView, LayoutHelper.createFrame(-1, -1, (LocaleController.isRTL ? 5 : 3) | 48, 16, 0, 16, 0));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(40), 1073741824));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.drawable.setBounds(0, getMeasuredHeight() - AndroidUtilities.m50dp(3), getMeasuredWidth(), getMeasuredHeight());
        this.drawable.draw(canvas);
    }

    public void setText(String str) {
        this.textView.setText(str);
    }
}
