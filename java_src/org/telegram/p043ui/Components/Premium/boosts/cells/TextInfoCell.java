package org.telegram.p043ui.Components.Premium.boosts.cells;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Components.CombinedDrawable;
/* renamed from: org.telegram.ui.Components.Premium.boosts.cells.TextInfoCell */
/* loaded from: classes6.dex */
public class TextInfoCell extends TextInfoPrivacyCell {
    private final Theme.ResourcesProvider resourcesProvider;

    public TextInfoCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.resourcesProvider = resourcesProvider;
    }

    public void setBackground(boolean z) {
        CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider)), Theme.getThemedDrawable(getContext(), z ? C3632R.C3634drawable.greydivider_bottom : C3632R.C3634drawable.greydivider, Theme.getColor(Theme.key_windowBackgroundGrayShadow, this.resourcesProvider)), 0, 0);
        combinedDrawable.setFullsize(true);
        setBackground(combinedDrawable);
    }
}
