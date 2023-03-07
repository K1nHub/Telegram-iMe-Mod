package com.smedialink.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
/* compiled from: ThrowableExt.kt */
/* loaded from: classes3.dex */
public final class ThrowableExtKt {
    public static final void showToast(Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        String localizedMessage = th.getLocalizedMessage();
        if (localizedMessage == null) {
            localizedMessage = LocaleController.getString("ErrorOccurred", C3158R.string.ErrorOccurred);
        }
        Intrinsics.checkNotNullExpressionValue(localizedMessage, "localizedMessage ?: Loca…, R.string.ErrorOccurred)");
        ContextExtKt.toast(localizedMessage);
    }
}
