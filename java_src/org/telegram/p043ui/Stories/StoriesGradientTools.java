package org.telegram.p043ui.Stories;

import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.GradientTools;
/* renamed from: org.telegram.ui.Stories.StoriesGradientTools */
/* loaded from: classes6.dex */
public class StoriesGradientTools extends GradientTools {
    int colorKey1;
    int colorKey2;

    public StoriesGradientTools() {
        int i = Theme.key_voipgroup_overlayGreen1;
        this.colorKey1 = i;
        this.colorKey2 = Theme.key_voipgroup_overlayBlue1;
        this.isDiagonal = true;
        setColors(Theme.getColor(i), Theme.getColor(this.colorKey2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.GradientTools
    public void updateBounds() {
        setColors(Theme.getColor(this.colorKey1), Theme.getColor(this.colorKey2));
        super.updateBounds();
    }
}
