package org.telegram.p043ui.Components.Premium.boosts.cells.statistics;

import android.content.Context;
import android.graphics.Canvas;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.UserCell;
import org.telegram.p043ui.Components.Premium.boosts.BoostRepository;
import org.telegram.tgnet.p042tl.TL_stories$TL_prepaidGiveaway;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.statistics.GiveawayCell */
/* loaded from: classes6.dex */
public class GiveawayCell extends UserCell {
    private CounterDrawable counterDrawable;
    private TL_stories$TL_prepaidGiveaway prepaidGiveaway;

    public GiveawayCell(Context context, int i, int i2, boolean z) {
        super(context, i, i2, z);
        init(context);
    }

    @Override // org.telegram.p043ui.Cells.UserCell, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m104dp(70), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m104dp(70) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    private void init(Context context) {
        this.counterDrawable = new CounterDrawable(context);
    }

    public TL_stories$TL_prepaidGiveaway getPrepaidGiveaway() {
        return this.prepaidGiveaway;
    }

    public void setImage(TL_stories$TL_prepaidGiveaway tL_stories$TL_prepaidGiveaway) {
        this.prepaidGiveaway = tL_stories$TL_prepaidGiveaway;
        this.avatarDrawable.setAvatarType(16);
        int i = tL_stories$TL_prepaidGiveaway.months;
        if (i == 12) {
            this.avatarDrawable.setColor(-31392, -2796986);
        } else if (i == 6) {
            this.avatarDrawable.setColor(-10703110, -12481584);
        } else {
            this.avatarDrawable.setColor(-6631068, -11945404);
        }
        this.counterDrawable.setText(String.valueOf(tL_stories$TL_prepaidGiveaway.quantity * BoostRepository.giveawayBoostsPerPremium()));
        this.nameTextView.setRightDrawable(this.counterDrawable);
    }
}
