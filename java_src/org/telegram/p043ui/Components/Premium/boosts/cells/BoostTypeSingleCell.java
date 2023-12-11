package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.p042tl.TL_stories$TL_prepaidGiveaway;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.BoostTypeSingleCell */
/* loaded from: classes6.dex */
public class BoostTypeSingleCell extends BoostTypeCell {
    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BoostTypeCell, org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    protected boolean needCheck() {
        return false;
    }

    public BoostTypeSingleCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
    }

    public void setGiveaway(TL_stories$TL_prepaidGiveaway tL_stories$TL_prepaidGiveaway) {
        this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray3, this.resourcesProvider));
        this.avatarDrawable.setAvatarType(16);
        this.titleTextView.setText(LocaleController.formatString("BoostingPreparedGiveawayOne", C3632R.string.BoostingPreparedGiveawayOne, new Object[0]));
        setSubtitle(LocaleController.formatPluralString("BoostingPreparedGiveawaySubscriptionsPlural", tL_stories$TL_prepaidGiveaway.quantity, LocaleController.formatPluralString("Months", tL_stories$TL_prepaidGiveaway.months, new Object[0])));
        int i = tL_stories$TL_prepaidGiveaway.months;
        if (i == 12) {
            this.avatarDrawable.setColor(-31392, -2796986);
        } else if (i == 6) {
            this.avatarDrawable.setColor(-10703110, -12481584);
        } else {
            this.avatarDrawable.setColor(-6631068, -11945404);
        }
        this.imageView.setImageDrawable(this.avatarDrawable);
        this.imageView.setRoundRadius(AndroidUtilities.m104dp(20));
    }

    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BoostTypeCell, org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    protected void updateLayouts() {
        this.imageView.setLayoutParams(LayoutHelper.createFrame(40, 40, (LocaleController.isRTL ? 5 : 3) | 16, 16, 0, 16, 0));
        SimpleTextView simpleTextView = this.titleTextView;
        boolean z = LocaleController.isRTL;
        simpleTextView.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z ? 5 : 3) | 16, z ? 20 : 69, 0, z ? 69 : 20, 0));
        SimpleTextView simpleTextView2 = this.subtitleTextView;
        boolean z2 = LocaleController.isRTL;
        simpleTextView2.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z2 ? 5 : 3) | 16, z2 ? 20 : 69, 0, z2 ? 69 : 20, 0));
    }
}
