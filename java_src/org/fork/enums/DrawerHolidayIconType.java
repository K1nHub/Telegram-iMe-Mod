package org.fork.enums;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
/* compiled from: DrawerHolidayIconType.kt */
/* loaded from: classes4.dex */
public enum DrawerHolidayIconType {
    DEFAULT(-1),
    NEW_YEAR(0),
    VALENTINE_DAY(1),
    HALLOWEEN(2),
    MAIN(-1);
    
    public static final Companion Companion = new Companion(null);
    private final int eventType;

    /* compiled from: DrawerHolidayIconType.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DrawerHolidayIconType.values().length];
            iArr[DrawerHolidayIconType.DEFAULT.ordinal()] = 1;
            iArr[DrawerHolidayIconType.NEW_YEAR.ordinal()] = 2;
            iArr[DrawerHolidayIconType.VALENTINE_DAY.ordinal()] = 3;
            iArr[DrawerHolidayIconType.HALLOWEEN.ordinal()] = 4;
            iArr[DrawerHolidayIconType.MAIN.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final DrawerHolidayIconType mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    DrawerHolidayIconType(int i) {
        this.eventType = i;
    }

    public final int getEventType() {
        return this.eventType;
    }

    public final String getTitle() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            String string = LocaleController.getString("Default", C3158R.string.Default);
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"Default\", R.string.Default)");
            return string;
        } else if (i == 2) {
            String internalString = LocaleController.getInternalString(C3158R.string.setting_tools_drawer_holiday_icon_menu_ny);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…wer_holiday_icon_menu_ny)");
            return internalString;
        } else if (i == 3) {
            String internalString2 = LocaleController.getInternalString(C3158R.string.setting_tools_drawer_holiday_icon_menu_14);
            Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…wer_holiday_icon_menu_14)");
            return internalString2;
        } else if (i == 4) {
            String internalString3 = LocaleController.getInternalString(C3158R.string.setting_tools_drawer_holiday_icon_menu_hw);
            Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(R.stri…wer_holiday_icon_menu_hw)");
            return internalString3;
        } else if (i == 5) {
            String string2 = LocaleController.getString("PhoneMain", C3158R.string.PhoneMain);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(\"PhoneMain\",R.string.PhoneMain)");
            return string2;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: DrawerHolidayIconType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DrawerHolidayIconType mapNameToEnum(String str) {
            DrawerHolidayIconType drawerHolidayIconType;
            DrawerHolidayIconType[] values = DrawerHolidayIconType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    drawerHolidayIconType = null;
                    break;
                }
                drawerHolidayIconType = values[i];
                if (Intrinsics.areEqual(drawerHolidayIconType.name(), str)) {
                    break;
                }
                i++;
            }
            return drawerHolidayIconType == null ? DrawerHolidayIconType.DEFAULT : drawerHolidayIconType;
        }
    }
}
