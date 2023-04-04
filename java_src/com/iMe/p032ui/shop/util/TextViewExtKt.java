package com.iMe.p032ui.shop.util;

import android.content.Context;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TextViewExt.kt */
/* renamed from: com.iMe.ui.shop.util.TextViewExtKt */
/* loaded from: classes3.dex */
public final class TextViewExtKt {
    public static final void setTextColor(TextView textView, int i) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Context context = textView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        textView.setTextColor(ContextExtKt.color(context, i));
    }
}
