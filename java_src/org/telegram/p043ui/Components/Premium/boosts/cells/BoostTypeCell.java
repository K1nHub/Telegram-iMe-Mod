package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.BoostTypeCell */
/* loaded from: classes6.dex */
public class BoostTypeCell extends BaseCell {
    public static int TYPE_GIVEAWAY = 0;
    public static int TYPE_SPECIFIC_USERS = 1;
    private int selectedType;

    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    protected boolean needCheck() {
        return true;
    }

    public BoostTypeCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
    }

    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    protected void updateLayouts() {
        this.imageView.setLayoutParams(LayoutHelper.createFrame(40, 40, (LocaleController.isRTL ? 5 : 3) | 16, 57, 0, 57, 0));
        SimpleTextView simpleTextView = this.titleTextView;
        boolean z = LocaleController.isRTL;
        simpleTextView.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z ? 5 : 3) | 16, z ? 20 : 109, 0, z ? 109 : 20, 0));
        SimpleTextView simpleTextView2 = this.subtitleTextView;
        boolean z2 = LocaleController.isRTL;
        simpleTextView2.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z2 ? 5 : 3) | 16, z2 ? 20 : 109, 0, z2 ? 109 : 20, 0));
        this.radioButton.setLayoutParams(LayoutHelper.createFrame(22, 22, (LocaleController.isRTL ? 5 : 3) | 16, 16, 0, 15, 0));
    }

    public int getSelectedType() {
        return this.selectedType;
    }

    public void setType(int i, int i2, TLRPC$User tLRPC$User, boolean z) {
        this.selectedType = i;
        if (i == TYPE_GIVEAWAY) {
            this.titleTextView.setText(LocaleController.formatString("BoostingCreateGiveaway", C3634R.string.BoostingCreateGiveaway, new Object[0]));
            setSubtitle(LocaleController.formatString("BoostingWinnersRandomly", C3634R.string.BoostingWinnersRandomly, new Object[0]));
            this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray3, this.resourcesProvider));
            this.avatarDrawable.setAvatarType(16);
            this.avatarDrawable.setColor(-15292942, -15630089);
            setDivider(true);
            setBackground(Theme.getThemedDrawableByKey(getContext(), C3634R.C3636drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
        } else if (i == TYPE_SPECIFIC_USERS) {
            this.titleTextView.setText(LocaleController.formatString("BoostingAwardSpecificUsers", C3634R.string.BoostingAwardSpecificUsers, new Object[0]));
            if (i2 == 1 && tLRPC$User != null) {
                setSubtitle(withArrow(Emoji.replaceEmoji(UserObject.getUserName(tLRPC$User), this.subtitleTextView.getPaint().getFontMetricsInt(), false)));
            } else if (i2 > 0) {
                setSubtitle(withArrow(LocaleController.formatPluralString("Recipient", i2, new Object[0])));
            } else {
                setSubtitle(withArrow(LocaleController.getString("BoostingSelectRecipients", C3634R.string.BoostingSelectRecipients)));
            }
            this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2, this.resourcesProvider));
            this.avatarDrawable.setAvatarType(6);
            this.avatarDrawable.setColor(-3905294, -6923014);
            setDivider(false);
            setBackground(Theme.getThemedDrawableByKey(getContext(), C3634R.C3636drawable.greydivider_top, Theme.key_windowBackgroundGrayShadow));
        }
        this.radioButton.setChecked(z, false);
        this.imageView.setImageDrawable(this.avatarDrawable);
        this.imageView.setRoundRadius(AndroidUtilities.m104dp(20));
    }
}
