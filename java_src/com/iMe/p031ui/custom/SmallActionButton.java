package com.iMe.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: SmallActionButton.kt */
/* renamed from: com.iMe.ui.custom.SmallActionButton */
/* loaded from: classes3.dex */
public final class SmallActionButton extends ActionButton {
    public /* synthetic */ SmallActionButton(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SmallActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iMe.p031ui.custom.ActionButton
    public int calculateHorizontalPadding() {
        return AndroidUtilities.m51dp(14.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iMe.p031ui.custom.ActionButton
    public int calculateButtonHeight() {
        return AndroidUtilities.m51dp(26.0f);
    }
}
