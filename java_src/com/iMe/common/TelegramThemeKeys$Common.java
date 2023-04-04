package com.iMe.common;

import com.iMe.fork.enums.DialogType;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TelegramThemeKeys.kt */
/* loaded from: classes3.dex */
public final class TelegramThemeKeys$Common {
    static {
        new TelegramThemeKeys$Common();
    }

    private TelegramThemeKeys$Common() {
    }

    public static final String buildDialogTypeActiveBackgroundKey(DialogType dialogType) {
        Intrinsics.checkNotNullParameter(dialogType, "dialogType");
        StringBuilder sb = new StringBuilder();
        sb.append("iMe_dialogType_");
        String lowerCase = dialogType.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        sb.append(lowerCase);
        sb.append("_activeBackground");
        return sb.toString();
    }
}
