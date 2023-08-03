package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RadioButton;
/* renamed from: org.telegram.ui.Cells.LanguageCell */
/* loaded from: classes5.dex */
public class LanguageCell extends FrameLayout {
    private LocaleController.LocaleInfo currentLocale;
    private int marginEndDp;
    private int marginStartDp;
    private boolean needDivider;
    private RadioButton radioButton;
    private TextView textView;
    private TextView textView2;

    public LanguageCell(Context context) {
        super(context);
        this.marginStartDp = 62;
        this.marginEndDp = 23;
        if (Theme.dividerPaint == null) {
            Theme.createCommonResources(context);
        }
        setWillNotDraw(false);
        RadioButton radioButton = new RadioButton(context);
        this.radioButton = radioButton;
        radioButton.setSize(AndroidUtilities.m72dp(20));
        this.radioButton.setColor(Theme.getColor(Theme.key_dialogRadioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
        RadioButton radioButton2 = this.radioButton;
        boolean z = LocaleController.isRTL;
        addView(radioButton2, LayoutHelper.createFrame(22, 22, (z ? 5 : 3) | 16, z ? 0 : 20, 0, z ? 20 : 0, 0));
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setSingleLine(true);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        TextView textView2 = this.textView;
        boolean z2 = LocaleController.isRTL;
        addView(textView2, LayoutHelper.createFrame(-1, -1, (z2 ? 5 : 3) | 48, z2 ? this.marginEndDp : this.marginStartDp, 0, z2 ? this.marginStartDp : this.marginEndDp, 17));
        TextView textView3 = new TextView(context);
        this.textView2 = textView3;
        textView3.setTextColor(Theme.getColor(Theme.key_dialogTextGray3));
        this.textView2.setTextSize(1, 13.0f);
        this.textView2.setSingleLine(true);
        this.textView2.setEllipsize(TextUtils.TruncateAt.END);
        this.textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        TextView textView4 = this.textView2;
        boolean z3 = LocaleController.isRTL;
        addView(textView4, LayoutHelper.createFrame(-1, -1, (z3 ? 5 : 3) | 48, z3 ? this.marginEndDp : this.marginStartDp, 20, z3 ? this.marginStartDp : this.marginEndDp, 0));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(60) + (this.needDivider ? 1 : 0), 1073741824));
    }

    public void setLanguage(LocaleController.LocaleInfo localeInfo, String str, boolean z) {
        TextView textView = this.textView;
        if (str == null) {
            str = localeInfo.name;
        }
        textView.setText(str);
        this.textView2.setText(localeInfo.nameEnglish);
        this.currentLocale = localeInfo;
        this.needDivider = z;
    }

    public void setValue(String str, String str2) {
        this.textView.setText(str);
        this.textView2.setText(str2);
        this.radioButton.setChecked(false, false);
        this.currentLocale = null;
        this.needDivider = false;
    }

    public LocaleController.LocaleInfo getCurrentLocale() {
        return this.currentLocale;
    }

    public void setLanguageSelected(boolean z, boolean z2) {
        this.radioButton.setChecked(z, z2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m72dp(this.marginStartDp - 3), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m72dp(this.marginStartDp - 3) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }
}
