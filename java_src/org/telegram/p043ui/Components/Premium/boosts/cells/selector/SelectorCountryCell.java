package org.telegram.p043ui.Components.Premium.boosts.cells.selector;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.SpannableStringBuilder;
import android.text.style.ReplacementSpan;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell;
import org.telegram.p043ui.Components.RadioButton;
import org.telegram.tgnet.TLRPC$TL_help_country;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorCountryCell */
/* loaded from: classes6.dex */
public class SelectorCountryCell extends BaseCell {
    private final CheckBox2 checkBox;
    private TLRPC$TL_help_country country;

    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    protected int dividerPadding() {
        return 22;
    }

    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    protected int getFullHeight() {
        return 44;
    }

    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    protected boolean needCheck() {
        return true;
    }

    public SelectorCountryCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.radioButton.setVisibility(8);
        this.imageView.setVisibility(8);
        CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setColor(Theme.key_dialogRoundCheckBox, Theme.key_checkboxDisabled, Theme.key_dialogRoundCheckBoxCheck);
        checkBox2.setDrawUnchecked(true);
        checkBox2.setDrawBackgroundAsArc(10);
        addView(checkBox2);
        checkBox2.setChecked(false, false);
        checkBox2.setLayoutParams(LayoutHelper.createFrame(24, 24, (LocaleController.isRTL ? 5 : 3) | 16, 13, 0, 14, 0));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    public void updateLayouts() {
        SimpleTextView simpleTextView = this.titleTextView;
        boolean z = LocaleController.isRTL;
        simpleTextView.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z ? 5 : 3) | 16, z ? 20 : 52, 0, z ? 52 : 20, 0));
        SimpleTextView simpleTextView2 = this.subtitleTextView;
        boolean z2 = LocaleController.isRTL;
        simpleTextView2.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z2 ? 5 : 3) | 16, z2 ? 20 : 52, 0, z2 ? 52 : 20, 0));
        RadioButton radioButton = this.radioButton;
        boolean z3 = LocaleController.isRTL;
        radioButton.setLayoutParams(LayoutHelper.createFrame(22, 22, (z3 ? 5 : 3) | 16, z3 ? 15 : 20, 0, z3 ? 20 : 15, 0));
    }

    public void setCountry(TLRPC$TL_help_country tLRPC$TL_help_country, boolean z) {
        this.country = tLRPC$TL_help_country;
        this.titleTextView.setText(Emoji.replaceEmoji(getCountryNameWithFlag(tLRPC$TL_help_country), this.titleTextView.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(20), false));
        setDivider(z);
    }

    private CharSequence getCountryNameWithFlag(TLRPC$TL_help_country tLRPC$TL_help_country) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String languageFlag = LocaleController.getLanguageFlag(tLRPC$TL_help_country.iso2);
        if (languageFlag != null) {
            spannableStringBuilder.append((CharSequence) languageFlag).append((CharSequence) " ");
            spannableStringBuilder.setSpan(new SpaceDrawable(16), languageFlag.length(), languageFlag.length() + 1, 0);
        } else {
            spannableStringBuilder.append((CharSequence) " ");
            spannableStringBuilder.setSpan(new SpaceDrawable(34), 0, 1, 0);
        }
        spannableStringBuilder.append((CharSequence) tLRPC$TL_help_country.default_name);
        return spannableStringBuilder;
    }

    public TLRPC$TL_help_country getCountry() {
        return this.country;
    }

    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    public void setChecked(boolean z, boolean z2) {
        if (this.checkBox.getVisibility() == 0) {
            this.checkBox.setChecked(z, z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Premium.boosts.cells.selector.SelectorCountryCell$SpaceDrawable */
    /* loaded from: classes6.dex */
    public static class SpaceDrawable extends ReplacementSpan {
        private final int size;

        @Override // android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        }

        public SpaceDrawable(int i) {
            this.size = i;
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            return AndroidUtilities.m107dp(this.size);
        }
    }
}
