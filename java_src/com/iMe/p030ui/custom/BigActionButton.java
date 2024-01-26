package com.iMe.p030ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: BigActionButton.kt */
/* renamed from: com.iMe.ui.custom.BigActionButton */
/* loaded from: classes3.dex */
public final class BigActionButton extends ActionButton {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BigActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ BigActionButton(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BigActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iMe.p030ui.custom.ActionButton
    public int calculateButtonHeight() {
        return AndroidUtilities.m108dp(48.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iMe.p030ui.custom.ActionButton, androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), getPreferredButtonHeight());
    }
}
