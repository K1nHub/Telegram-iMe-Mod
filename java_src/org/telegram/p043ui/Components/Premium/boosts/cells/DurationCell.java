package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.DurationCell */
/* loaded from: classes6.dex */
public class DurationCell extends BaseCell {
    private Object code;
    protected final SimpleTextView totalTextView;

    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    protected boolean needCheck() {
        return true;
    }

    public DurationCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.imageView.setVisibility(8);
        SimpleTextView simpleTextView = this.subtitleTextView;
        int i = Theme.key_windowBackgroundWhiteGrayText4;
        simpleTextView.setTextColor(Theme.getColor(i, resourcesProvider));
        SimpleTextView simpleTextView2 = new SimpleTextView(context);
        this.totalTextView = simpleTextView2;
        simpleTextView2.setTextSize(16);
        simpleTextView2.setTextColor(Theme.getColor(i, resourcesProvider));
        simpleTextView2.setGravity(LocaleController.isRTL ? 3 : 5);
        addView(simpleTextView2);
        boolean z = LocaleController.isRTL;
        simpleTextView2.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z ? 3 : 5) | 16, z ? 20 : 0, 0, z ? 0 : 20, 0));
    }

    public void setDuration(Object obj, int i, int i2, long j, CharSequence charSequence, boolean z, boolean z2) {
        this.code = obj;
        if (i >= 12) {
            this.titleTextView.setText(LocaleController.formatPluralString("Years", 1, new Object[0]));
        } else {
            this.titleTextView.setText(LocaleController.formatPluralString("Months", i, new Object[0]));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(BillingController.getInstance().formatCurrency(i2 > 0 ? j / i2 : j, charSequence.toString()));
        sb.append(" x ");
        sb.append(i2);
        setSubtitle(sb.toString());
        SimpleTextView simpleTextView = this.totalTextView;
        BillingController billingController = BillingController.getInstance();
        if (i2 <= 0) {
            j = 0;
        }
        simpleTextView.setText(billingController.formatCurrency(j, charSequence.toString()));
        setDivider(z);
        this.radioButton.setChecked(z2, false);
    }

    public Object getGifCode() {
        return this.code;
    }
}
