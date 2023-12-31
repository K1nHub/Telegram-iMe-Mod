package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import java.util.List;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.tgnet.TLRPC$TL_help_country;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.ParticipantsTypeCell */
/* loaded from: classes6.dex */
public class ParticipantsTypeCell extends BaseCell {
    public static int TYPE_ALL = 0;
    public static int TYPE_NEW = 1;
    private int selectedType;

    @Override // org.telegram.p043ui.Components.Premium.boosts.cells.BaseCell
    protected boolean needCheck() {
        return true;
    }

    public ParticipantsTypeCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.imageView.setVisibility(8);
    }

    public int getSelectedType() {
        return this.selectedType;
    }

    public void setType(int i, boolean z, boolean z2, List<TLRPC$TL_help_country> list) {
        this.selectedType = i;
        if (i == TYPE_ALL) {
            this.titleTextView.setText(LocaleController.formatString("BoostingAllSubscribers", C3632R.string.BoostingAllSubscribers, new Object[0]));
        } else if (i == TYPE_NEW) {
            this.titleTextView.setText(LocaleController.formatString("BoostingNewSubscribers", C3632R.string.BoostingNewSubscribers, new Object[0]));
        }
        this.radioButton.setChecked(z, false);
        setDivider(z2);
        this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2, this.resourcesProvider));
        if (list.size() == 0) {
            setSubtitle(withArrow(LocaleController.getString("BoostingFromAllCountries", C3632R.string.BoostingFromAllCountries)));
        } else if (list.size() <= 3) {
            if (list.size() == 1) {
                setSubtitle(withArrow(LocaleController.formatString("BoostingFromAllCountries1", C3632R.string.BoostingFromAllCountries1, list.get(0).default_name)));
            } else if (list.size() == 2) {
                setSubtitle(withArrow(LocaleController.formatString("BoostingFromAllCountries2", C3632R.string.BoostingFromAllCountries2, list.get(0).default_name, list.get(1).default_name)));
            } else {
                setSubtitle(withArrow(LocaleController.formatString("BoostingFromAllCountries3", C3632R.string.BoostingFromAllCountries3, list.get(0).default_name, list.get(1).default_name, list.get(2).default_name)));
            }
        } else {
            setSubtitle(withArrow(LocaleController.formatPluralString("BoostingFromCountriesCount", list.size(), new Object[0])));
        }
    }
}
