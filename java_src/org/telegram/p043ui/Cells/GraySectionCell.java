package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.Cells.GraySectionCell */
/* loaded from: classes5.dex */
public class GraySectionCell extends FrameLayout {
    private final Theme.ResourcesProvider resourcesProvider;
    private AnimatedTextView rightTextView;
    private TextView textView;

    public GraySectionCell(Context context) {
        this(context, null);
    }

    public GraySectionCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        setBackgroundColor(getThemedColor(Theme.key_graySection));
        TextView textView = new TextView(getContext());
        this.textView = textView;
        textView.setTextSize(1, 14.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        TextView textView2 = this.textView;
        int i = Theme.key_graySectionText;
        textView2.setTextColor(getThemedColor(i));
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        addView(this.textView, LayoutHelper.createFrame(-1, -1, (LocaleController.isRTL ? 5 : 3) | 48, 16, 0, 16, 0));
        AnimatedTextView animatedTextView = new AnimatedTextView(this, getContext(), true, true, true) { // from class: org.telegram.ui.Cells.GraySectionCell.1
            @Override // android.view.View
            public CharSequence getAccessibilityClassName() {
                return Button.class.getName();
            }
        };
        this.rightTextView = animatedTextView;
        animatedTextView.setPadding(AndroidUtilities.m72dp(2), 0, AndroidUtilities.m72dp(2), 0);
        this.rightTextView.setAnimationProperties(1.0f, 0L, 400L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.rightTextView.setTextSize(AndroidUtilities.m72dp(14));
        this.rightTextView.setTextColor(getThemedColor(i));
        this.rightTextView.setGravity(LocaleController.isRTL ? 3 : 5);
        addView(this.rightTextView, LayoutHelper.createFrame(-2, -1, (LocaleController.isRTL ? 3 : 5) | 48, 16, 0, 16, 0));
        ViewCompat.setAccessibilityHeading(this, true);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(32), 1073741824));
    }

    public void setTextColor(int i) {
        int themedColor = getThemedColor(i);
        this.textView.setTextColor(themedColor);
        this.rightTextView.setTextColor(themedColor);
    }

    public CharSequence getText() {
        return this.textView.getText();
    }

    public void setText(CharSequence charSequence) {
        this.textView.setText(charSequence);
        this.rightTextView.setVisibility(8);
        this.rightTextView.setOnClickListener(null);
    }

    public void setText(String str, String str2, View.OnClickListener onClickListener) {
        this.textView.setText(str);
        this.rightTextView.setText(str2, false);
        this.rightTextView.setOnClickListener(onClickListener);
        this.rightTextView.setVisibility(0);
    }

    public void setRightText(String str) {
        setRightText(str, true);
    }

    public void setRightText(String str, boolean z) {
        this.rightTextView.setText(str, true, z);
        this.rightTextView.setVisibility(0);
    }

    public void setRightText(String str, View.OnClickListener onClickListener) {
        this.rightTextView.setText(str, false);
        this.rightTextView.setOnClickListener(onClickListener);
        this.rightTextView.setVisibility(0);
    }

    public void setRightText(String str, boolean z, View.OnClickListener onClickListener) {
        this.rightTextView.setText(str, true, z);
        this.rightTextView.setOnClickListener(onClickListener);
        this.rightTextView.setVisibility(0);
    }

    public static void createThemeDescriptions(List<ThemeDescription> list, RecyclerListView recyclerListView) {
        int i = Theme.key_graySectionText;
        list.add(new ThemeDescription(recyclerListView, 0, new Class[]{GraySectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        list.add(new ThemeDescription(recyclerListView, 0, new Class[]{GraySectionCell.class}, new String[]{"rightTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        list.add(new ThemeDescription(recyclerListView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{GraySectionCell.class}, null, null, null, Theme.key_graySection));
    }

    public TextView getTextView() {
        return this.textView;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
