package org.telegram.p048ui.Cells;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.StickerSetGroupInfoCell */
/* loaded from: classes5.dex */
public class StickerSetGroupInfoCell extends LinearLayout {
    private TextView addButton;
    private boolean isLast;

    public StickerSetGroupInfoCell(Context context) {
        super(context);
        setOrientation(1);
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor("chat_emojiPanelTrendingDescription"));
        textView.setTextSize(1, 14.0f);
        textView.setText(LocaleController.getString("GroupStickersInfo", C3301R.string.GroupStickersInfo));
        addView(textView, LayoutHelper.createLinear(-1, -2, 51, 17, 4, 17, 0));
        TextView textView2 = new TextView(context);
        this.addButton = textView2;
        textView2.setPadding(AndroidUtilities.m50dp(17), 0, AndroidUtilities.m50dp(17), 0);
        this.addButton.setGravity(17);
        this.addButton.setTextColor(Theme.getColor("featuredStickers_buttonText"));
        this.addButton.setTextSize(1, 14.0f);
        this.addButton.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.addButton.setBackground(Theme.AdaptiveRipple.filledRect("featuredStickers_addButton", 4.0f));
        this.addButton.setText(LocaleController.getString("ChooseStickerSet", C3301R.string.ChooseStickerSet).toUpperCase());
        addView(this.addButton, LayoutHelper.createLinear(-2, 28, 51, 17, 10, 14, 8));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        View view;
        int measuredHeight;
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), i2);
        if (!this.isLast || (view = (View) getParent()) == null || getMeasuredHeight() >= (measuredHeight = ((view.getMeasuredHeight() - view.getPaddingBottom()) - view.getPaddingTop()) - AndroidUtilities.m50dp(24))) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), measuredHeight);
    }

    public void setAddOnClickListener(View.OnClickListener onClickListener) {
        this.addButton.setOnClickListener(onClickListener);
    }

    public void setIsLast(boolean z) {
        this.isLast = z;
        requestLayout();
    }
}
