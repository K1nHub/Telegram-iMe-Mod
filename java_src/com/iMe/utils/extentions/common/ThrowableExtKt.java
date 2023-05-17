package com.iMe.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
/* compiled from: ThrowableExt.kt */
/* loaded from: classes4.dex */
public final class ThrowableExtKt {
    public static final void showToast(Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        String localizedMessage = th.getLocalizedMessage();
        if (localizedMessage == null) {
            localizedMessage = LocaleController.getString("ErrorOccurred", C3290R.string.ErrorOccurred);
        }
        Intrinsics.checkNotNullExpressionValue(localizedMessage, "localizedMessage ?: Loca…, R.string.ErrorOccurred)");
        ContextExtKt.toast(localizedMessage);
    }
}
