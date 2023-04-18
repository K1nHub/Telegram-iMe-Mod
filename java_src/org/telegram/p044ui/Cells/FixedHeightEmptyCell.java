package org.telegram.p044ui.Cells;

import android.content.Context;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Cells.FixedHeightEmptyCell */
/* loaded from: classes5.dex */
public class FixedHeightEmptyCell extends View {
    int heightInDp;

    public FixedHeightEmptyCell(Context context, int i) {
        super(context);
        this.heightInDp = i;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(this.heightInDp), 1073741824));
    }
}
