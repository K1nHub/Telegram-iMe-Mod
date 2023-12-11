package org.telegram.p043ui.Components.Premium.boosts.cells.statistics;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Date;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.UserCell;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.p042tl.TL_stories$TL_boost;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.statistics.GiftedUserCell */
/* loaded from: classes6.dex */
public class GiftedUserCell extends UserCell {
    private FrameLayout badgeLayout;
    private TextView badgeTextView;
    private TL_stories$TL_boost boost;
    private CounterDrawable counterDrawable;
    private Drawable giftDrawable;
    private Drawable giveawayDrawable;

    public GiftedUserCell(Context context, int i, int i2, boolean z) {
        super(context, i, i2, z);
        init();
    }

    @Override // org.telegram.p043ui.Cells.UserCell, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m104dp(70), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m104dp(70) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    public TL_stories$TL_boost getBoost() {
        return this.boost;
    }

    private void init() {
        this.counterDrawable = new CounterDrawable(getContext());
        this.badgeLayout = new FrameLayout(getContext());
        TextView textView = new TextView(getContext());
        this.badgeTextView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
        this.badgeTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.badgeTextView.setTextSize(12.0f);
        this.badgeTextView.setGravity(17);
        this.badgeLayout.addView(this.badgeTextView, LayoutHelper.createFrame(-2, 22));
        this.badgeLayout.setPadding(AndroidUtilities.m104dp(8), 0, AndroidUtilities.m104dp(8), 0);
        FrameLayout frameLayout = this.badgeLayout;
        boolean z = LocaleController.isRTL;
        addView(frameLayout, LayoutHelper.createFrame(-2, -2, (z ? 3 : 5) | 48, z ? 9 : 0, 9, z ? 0 : 9, 0));
    }

    private void setAvatarColorByMonths(int i) {
        if (i == 12) {
            this.avatarDrawable.setColor(-31392, -2796986);
        } else if (i == 6) {
            this.avatarDrawable.setColor(-10703110, -12481584);
        } else {
            this.avatarDrawable.setColor(-6631068, -11945404);
        }
    }

    public void setStatus(TL_stories$TL_boost tL_stories$TL_boost) {
        this.boost = tL_stories$TL_boost;
        if (tL_stories$TL_boost.gift || tL_stories$TL_boost.giveaway) {
            this.badgeLayout.setVisibility(0);
            int i = ((tL_stories$TL_boost.expires - tL_stories$TL_boost.date) / 30) / 86400;
            if (tL_stories$TL_boost.unclaimed) {
                this.nameTextView.setText(LocaleController.getString("BoostingUnclaimed", C3632R.string.BoostingUnclaimed));
                this.avatarDrawable.setAvatarType(18);
                setAvatarColorByMonths(i);
                this.avatarImageView.setForUserOrChat(null, this.avatarDrawable);
                this.nameTextView.setRightDrawable((Drawable) null);
            } else if (tL_stories$TL_boost.user_id == -1) {
                this.nameTextView.setText(LocaleController.getString("BoostingToBeDistributed", C3632R.string.BoostingToBeDistributed));
                this.avatarDrawable.setAvatarType(19);
                setAvatarColorByMonths(i);
                this.avatarImageView.setForUserOrChat(null, this.avatarDrawable);
                this.nameTextView.setRightDrawable((Drawable) null);
            }
            String format = LocaleController.getInstance().formatterScheduleDay.format(new Date(tL_stories$TL_boost.expires * 1000));
            String format2 = LocaleController.getInstance().formatterDay.format(new Date(tL_stories$TL_boost.expires * 1000));
            SimpleTextView simpleTextView = this.statusTextView;
            simpleTextView.setText(LocaleController.formatString("BoostingShortMonths", C3632R.string.BoostingShortMonths, Integer.valueOf(i)) + " • " + LocaleController.formatString("formatDateAtTime", C3632R.string.formatDateAtTime, format, format2));
            if (tL_stories$TL_boost.gift) {
                if (this.giftDrawable == null) {
                    Drawable drawable = getResources().getDrawable(C3632R.C3634drawable.mini_gift);
                    this.giftDrawable = drawable;
                    drawable.setColorFilter(new PorterDuffColorFilter(-3240417, PorterDuff.Mode.MULTIPLY));
                }
                this.badgeTextView.setTextColor(-3240417);
                this.badgeTextView.setCompoundDrawablesWithIntrinsicBounds(this.giftDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
                this.badgeTextView.setCompoundDrawablePadding(AndroidUtilities.m104dp(4));
                this.badgeTextView.setText(LocaleController.getString("BoostingGift", C3632R.string.BoostingGift));
                this.badgeLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m104dp(12), AndroidUtilities.m104dp(12), Theme.multAlpha(-3240417, 0.2f)));
            }
            if (tL_stories$TL_boost.giveaway) {
                if (this.giveawayDrawable == null) {
                    Drawable drawable2 = getResources().getDrawable(C3632R.C3634drawable.mini_giveaway);
                    this.giveawayDrawable = drawable2;
                    drawable2.setColorFilter(new PorterDuffColorFilter(-13397548, PorterDuff.Mode.MULTIPLY));
                }
                this.badgeTextView.setTextColor(-13397548);
                this.badgeTextView.setCompoundDrawablesWithIntrinsicBounds(this.giveawayDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
                this.badgeTextView.setCompoundDrawablePadding(AndroidUtilities.m104dp(4));
                this.badgeTextView.setText(LocaleController.getString("BoostingGiveaway", C3632R.string.BoostingGiveaway));
                this.badgeLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m104dp(12), AndroidUtilities.m104dp(12), Theme.multAlpha(-13397548, 0.2f)));
            }
        } else {
            this.badgeLayout.setVisibility(8);
        }
        int i2 = tL_stories$TL_boost.multiplier;
        if (i2 > 0) {
            this.counterDrawable.setText(String.valueOf(i2));
            this.nameTextView.setRightDrawable(this.counterDrawable);
        } else {
            this.nameTextView.setRightDrawable((Drawable) null);
        }
        if (this.badgeLayout.getVisibility() == 0) {
            int measureText = ((int) this.badgeTextView.getPaint().measureText(this.badgeTextView.getText().toString())) + AndroidUtilities.m104dp(22);
            SimpleTextView simpleTextView2 = this.nameTextView;
            simpleTextView2.setPadding(LocaleController.isRTL ? measureText : 0, simpleTextView2.getPaddingTop(), LocaleController.isRTL ? 0 : measureText, this.nameTextView.getPaddingBottom());
            return;
        }
        SimpleTextView simpleTextView3 = this.nameTextView;
        simpleTextView3.setPadding(0, simpleTextView3.getPaddingTop(), 0, this.nameTextView.getPaddingBottom());
    }
}
