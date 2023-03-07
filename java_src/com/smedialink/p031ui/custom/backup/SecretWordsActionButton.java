package com.smedialink.p031ui.custom.backup;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.tbuonomo.viewpagerdotsindicator.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.DialogCell;
import org.telegram.p048ui.Components.ColoredImageSpan;
/* compiled from: SecretWordsActionButton.kt */
/* renamed from: com.smedialink.ui.custom.backup.SecretWordsActionButton */
/* loaded from: classes3.dex */
public final class SecretWordsActionButton extends TextView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SecretWordsActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ SecretWordsActionButton(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecretWordsActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        ViewExtKt.setPaddingHorizontal(this, AndroidUtilities.m50dp(10));
        setGravity(17);
        setTextColor(Theme.getColor("featuredStickers_buttonText"));
        setTextSize(1, 14.0f);
        setEllipsize(TextUtils.TruncateAt.END);
        com.smedialink.utils.extentions.common.ViewExtKt.singleLine(this);
        com.smedialink.utils.extentions.common.ViewExtKt.withMediumTypeface(this);
        setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), Theme.getColor("featuredStickers_addButton"), Theme.getColor("featuredStickers_addButtonPressed")));
    }

    public final void setupView(int i, String buttonText) {
        String repeat;
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        repeat = StringsKt__StringsJVMKt.repeat(" ", 2);
        spannableStringBuilder.append((CharSequence) repeat);
        Drawable drawable = ContextCompat.getDrawable(getContext(), i);
        Intrinsics.checkNotNull(drawable);
        spannableStringBuilder.setSpan(new ColoredImageSpan(drawable), 0, 1, 0);
        spannableStringBuilder.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m50dp(8)), 1, 2, 0);
        spannableStringBuilder.append((CharSequence) buttonText);
        Unit unit = Unit.INSTANCE;
        setText(spannableStringBuilder);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(40), 1073741824));
    }
}
