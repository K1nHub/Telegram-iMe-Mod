package com.iMe.p031ui.drawer;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
/* compiled from: DrawerAccountData.kt */
/* renamed from: com.iMe.ui.drawer.DrawerAccountData */
/* loaded from: classes3.dex */
public enum DrawerAccountData {
    PHONE(C3417R.string.drawer_profile_cell_alert_phone_number),
    USERNAME(C3417R.string.drawer_profile_cell_alert_username),
    NAME(C3417R.string.drawer_profile_cell_alert_name),
    USER_ID(C3417R.string.drawer_profile_cell_alert_user_id);
    
    public static final Companion Companion = new Companion(null);
    private final int titleResId;

    public static final DrawerAccountData mapNameToEnum(String str, DrawerAccountData drawerAccountData) {
        return Companion.mapNameToEnum(str, drawerAccountData);
    }

    DrawerAccountData(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final String getTitle() {
        String internalString = LocaleController.getInternalString(this.titleResId);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(titleResId)");
        return internalString;
    }

    /* compiled from: DrawerAccountData.kt */
    /* renamed from: com.iMe.ui.drawer.DrawerAccountData$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DrawerAccountData mapNameToEnum(String str, DrawerAccountData defaultValue) {
            DrawerAccountData drawerAccountData;
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            DrawerAccountData[] values = DrawerAccountData.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    drawerAccountData = null;
                    break;
                }
                drawerAccountData = values[i];
                if (Intrinsics.areEqual(drawerAccountData.name(), str)) {
                    break;
                }
                i++;
            }
            return drawerAccountData == null ? defaultValue : drawerAccountData;
        }
    }
}
