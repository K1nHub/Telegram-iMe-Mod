package com.iMe.common;

import com.iMe.p031ui.drawer.DrawerSwitchableItem;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TelegramThemeKeys.kt */
/* loaded from: classes3.dex */
public final class TelegramThemeKeys$Drawer {
    static {
        new TelegramThemeKeys$Drawer();
    }

    private TelegramThemeKeys$Drawer() {
    }

    public static final String buildDrawerRectIconBackgroundKey(DrawerSwitchableItem drawerItem) {
        Intrinsics.checkNotNullParameter(drawerItem, "drawerItem");
        StringBuilder sb = new StringBuilder();
        sb.append("iMe_drawer_item_");
        String lowerCase = drawerItem.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        sb.append(lowerCase);
        sb.append("_rectIcon");
        return sb.toString();
    }
}
