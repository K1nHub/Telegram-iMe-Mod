package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.boosts.DiscountSpan;
import org.telegram.tgnet.TLRPC$TL_premiumGiftCodeOption;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.DurationWithDiscountCell */
/* loaded from: classes6.dex */
public class DurationWithDiscountCell extends DurationCell {
    protected final CheckBox2 checkBox;
    private TLRPC$TL_premiumGiftCodeOption option;

    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.DurationCell, org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    protected boolean needCheck() {
        return true;
    }

    public DurationWithDiscountCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setColor(Theme.key_premiumGradient1, Theme.key_checkboxDisabled, Theme.key_dialogRoundCheckBoxCheck);
        checkBox2.setDrawUnchecked(true);
        checkBox2.setDrawBackgroundAsArc(10);
        addView(checkBox2);
        this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.radioButton.setVisibility(8);
        updateLayouts();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    public void updateLayouts() {
        super.updateLayouts();
        SimpleTextView simpleTextView = this.titleTextView;
        boolean z = LocaleController.isRTL;
        simpleTextView.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z ? 5 : 3) | 16, z ? 20 : 102, 0, z ? 102 : 20, 0));
        SimpleTextView simpleTextView2 = this.subtitleTextView;
        boolean z2 = LocaleController.isRTL;
        simpleTextView2.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z2 ? 5 : 3) | 16, z2 ? 20 : 102, 0, z2 ? 102 : 20, 0));
        CheckBox2 checkBox2 = this.checkBox;
        if (checkBox2 != null) {
            boolean z3 = LocaleController.isRTL;
            checkBox2.setLayoutParams(LayoutHelper.createFrame(22, 22, (z3 ? 5 : 3) | 16, z3 ? 15 : 20, 0, z3 ? 20 : 15, 0));
        }
    }

    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    public void setChecked(boolean z, boolean z2) {
        if (this.checkBox.getVisibility() == 0) {
            this.checkBox.setChecked(z, z2);
        }
    }

    public void setDuration(TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption, TLRPC$TL_premiumGiftCodeOption tLRPC$TL_premiumGiftCodeOption2, int i, boolean z, boolean z2) {
        String formatString;
        this.option = tLRPC$TL_premiumGiftCodeOption;
        long j = tLRPC$TL_premiumGiftCodeOption.amount;
        String str = tLRPC$TL_premiumGiftCodeOption.currency;
        this.titleTextView.setText(LocaleController.formatPluralString("Months", tLRPC$TL_premiumGiftCodeOption.months, new Object[0]));
        int i2 = (int) ((1.0d - ((tLRPC$TL_premiumGiftCodeOption.amount / tLRPC$TL_premiumGiftCodeOption.months) / (tLRPC$TL_premiumGiftCodeOption2.amount / tLRPC$TL_premiumGiftCodeOption2.months))) * 100.0d);
        if (i > 1) {
            formatString = BillingController.getInstance().formatCurrency(j / i, str.toString()) + " x " + i;
        } else {
            formatString = LocaleController.formatString(C3632R.string.PricePerMonth, BillingController.getInstance().formatCurrency(j / tLRPC$TL_premiumGiftCodeOption.months, str.toString()));
        }
        if (i2 > 0) {
            setSubtitle(DiscountSpan.applySpan(formatString, i2));
        } else {
            setSubtitle(formatString);
        }
        SimpleTextView simpleTextView = this.totalTextView;
        BillingController billingController = BillingController.getInstance();
        if (i <= 0) {
            j = 0;
        }
        simpleTextView.setText(billingController.formatCurrency(j, str.toString()));
        setDivider(z);
        this.checkBox.setChecked(z2, false);
    }

    public TLRPC$TL_premiumGiftCodeOption getOption() {
        return this.option;
    }
}
