package org.telegram.p043ui;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
/* renamed from: org.telegram.ui.LauncherIconController */
/* loaded from: classes5.dex */
public class LauncherIconController {
    public static void tryFixLauncherIconIfNeeded() {
        LauncherIcon[] values;
        for (LauncherIcon launcherIcon : LauncherIcon.values()) {
            if (!launcherIcon.premium && isEnabled(launcherIcon)) {
                return;
            }
        }
        setIcon(LauncherIcon.DEFAULT);
    }

    public static boolean isEnabled(LauncherIcon launcherIcon) {
        Context context = ApplicationLoader.applicationContext;
        int componentEnabledSetting = context.getPackageManager().getComponentEnabledSetting(launcherIcon.getComponentName(context));
        if (componentEnabledSetting != 1) {
            if (componentEnabledSetting == 0) {
                if (launcherIcon == (ApplicationLoader.isStandaloneBuild() ? LauncherIcon.ROCKET : LauncherIcon.DEFAULT)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public static void setIcon(LauncherIcon launcherIcon) {
        Context context = ApplicationLoader.applicationContext;
        PackageManager packageManager = context.getPackageManager();
        LauncherIcon[] values = LauncherIcon.values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            LauncherIcon launcherIcon2 = values[i];
            if (!launcherIcon2.premium) {
                packageManager.setComponentEnabledSetting(launcherIcon2.getComponentName(context), launcherIcon2 == launcherIcon ? 1 : 2, 1);
            }
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum DEFAULT uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: org.telegram.ui.LauncherIconController$LauncherIcon */
    /* loaded from: classes5.dex */
    public static final class LauncherIcon {
        private static final /* synthetic */ LauncherIcon[] $VALUES;
        public static final LauncherIcon AQUA;
        public static final LauncherIcon AUTUMN;
        public static final LauncherIcon BLACK;
        public static final LauncherIcon BLUE_LIGHT;
        public static final LauncherIcon BROWN;
        public static final LauncherIcon COFFEE;
        public static final LauncherIcon DEFAULT;
        public static final LauncherIcon GRAY;
        public static final LauncherIcon GREEN;
        public static final LauncherIcon INDIGO;
        public static final LauncherIcon LIME_AQUA;
        public static final LauncherIcon LIME_BEP20;
        public static final LauncherIcon LIME_BLUE_LIGHT;
        public static final LauncherIcon LIME_ERC20;
        public static final LauncherIcon LIME_NEURO;
        public static final LauncherIcon LIME_POLYGON;
        public static final LauncherIcon LIME_SUNSET;
        public static final LauncherIcon MELON;
        public static final LauncherIcon MINT;
        public static final LauncherIcon NEURO;
        public static final LauncherIcon NOX;
        public static final LauncherIcon PEACH;
        public static final LauncherIcon PINK;
        public static final LauncherIcon PREMIUM;
        public static final LauncherIcon PURPLE;
        public static final LauncherIcon RED;
        public static final LauncherIcon ROCKET;
        public static final LauncherIcon SPACE;
        public static final LauncherIcon SPRING;
        public static final LauncherIcon STAR;
        public static final LauncherIcon SUMMER;
        public static final LauncherIcon SUNSET;
        public static final LauncherIcon TURBO;
        public static final LauncherIcon WHITE;
        public static final LauncherIcon WINTER;
        public static final LauncherIcon YELLOW;
        public final int background;
        public final int backgroundColor;
        private ComponentName componentName;
        public final int foreground;
        public final String key;
        public final boolean premium;
        public final int title;

        public static LauncherIcon valueOf(String str) {
            return (LauncherIcon) Enum.valueOf(LauncherIcon.class, str);
        }

        public static LauncherIcon[] values() {
            return (LauncherIcon[]) $VALUES.clone();
        }

        static {
            int i = C3632R.mipmap.fork_launcher_foreground;
            LauncherIcon launcherIcon = new LauncherIcon("DEFAULT", 0, "Blue", 0, i, C3632R.string.settings_interface_app_icon_blue, C3632R.C3633color.ic_launcher_blue_background);
            DEFAULT = launcherIcon;
            int i2 = C3632R.mipmap.fork_launcher_aqua_background;
            LauncherIcon launcherIcon2 = new LauncherIcon("AQUA", 1, "Aqua", i2, i, C3632R.string.settings_interface_app_icon_aqua, 0);
            AQUA = launcherIcon2;
            int i3 = C3632R.mipmap.fork_launcher_sunset_background;
            LauncherIcon launcherIcon3 = new LauncherIcon("SUNSET", 2, "Sunset", i3, i, C3632R.string.settings_interface_app_icon_sunset, 0);
            SUNSET = launcherIcon3;
            int i4 = C3632R.mipmap.fork_launcher_blue_light_background;
            LauncherIcon launcherIcon4 = new LauncherIcon("BLUE_LIGHT", 3, "BlueLight", i4, i, C3632R.string.settings_interface_app_icon_blue_light, 0);
            BLUE_LIGHT = launcherIcon4;
            int i5 = C3632R.mipmap.fork_launcher_neuro_background;
            LauncherIcon launcherIcon5 = new LauncherIcon("NEURO", 4, "Neuro", i5, i, C3632R.string.settings_interface_app_icon_neuro, 0);
            NEURO = launcherIcon5;
            int i6 = C3632R.mipmap.fork_launcher_star_background;
            int i7 = C3632R.mipmap.fork_launcher_star_foreground;
            int i8 = C3632R.string.AppIconPremium;
            LauncherIcon launcherIcon6 = new LauncherIcon("STAR", 5, "Star", i6, i7, i8, 0);
            STAR = launcherIcon6;
            int i9 = C3632R.mipmap.fork_launcher_rocket_background;
            int i10 = C3632R.mipmap.fork_launcher_rocket_foreground;
            int i11 = C3632R.string.AppIconTurbo;
            LauncherIcon launcherIcon7 = new LauncherIcon("ROCKET", 6, "Rocket", i9, i10, i11, 0);
            ROCKET = launcherIcon7;
            int i12 = C3632R.mipmap.fork_launcher_space_background;
            int i13 = C3632R.string.AppIconNox;
            LauncherIcon launcherIcon8 = new LauncherIcon("SPACE", 7, "Space", i12, i, i13, 0);
            SPACE = launcherIcon8;
            int i14 = C3632R.mipmap.fork_launcher_lime_foreground;
            LauncherIcon launcherIcon9 = new LauncherIcon("LIME_ERC20", 8, "LimeERC20", 0, i14, C3632R.string.settings_interface_app_icon_lime_erc20, C3632R.C3633color.ic_launcher_lime_erc20_background);
            LIME_ERC20 = launcherIcon9;
            LauncherIcon launcherIcon10 = new LauncherIcon("LIME_BEP20", 9, "LimeBEP20", 0, i14, C3632R.string.settings_interface_app_icon_lime_bep20, C3632R.C3633color.ic_launcher_lime_bep20_background);
            LIME_BEP20 = launcherIcon10;
            LauncherIcon launcherIcon11 = new LauncherIcon("LIME_POLYGON", 10, "LimePolygon", 0, i14, C3632R.string.settings_interface_app_icon_lime_polygon, C3632R.C3633color.ic_launcher_lime_polygon_background);
            LIME_POLYGON = launcherIcon11;
            LauncherIcon launcherIcon12 = new LauncherIcon("LIME_AQUA", 11, "LimeAqua", i2, i14, C3632R.string.settings_interface_app_icon_lime_aqua, 0);
            LIME_AQUA = launcherIcon12;
            LauncherIcon launcherIcon13 = new LauncherIcon("LIME_SUNSET", 12, "LimeSunset", i3, i14, C3632R.string.settings_interface_app_icon_lime_sunset, 0);
            LIME_SUNSET = launcherIcon13;
            LauncherIcon launcherIcon14 = new LauncherIcon("LIME_BLUE_LIGHT", 13, "LimeBlueLight", i4, i14, C3632R.string.settings_interface_app_icon_lime_blue_light, 0);
            LIME_BLUE_LIGHT = launcherIcon14;
            LauncherIcon launcherIcon15 = new LauncherIcon("LIME_NEURO", 14, "LimeNeuro", i5, i14, C3632R.string.settings_interface_app_icon_lime_neuro, 0);
            LIME_NEURO = launcherIcon15;
            LauncherIcon launcherIcon16 = new LauncherIcon("BLACK", 15, "Black", 0, i, C3632R.string.settings_interface_app_icon_black, C3632R.C3633color.ic_launcher_black_background);
            BLACK = launcherIcon16;
            LauncherIcon launcherIcon17 = new LauncherIcon("WINTER", 16, "Green", C3632R.mipmap.fork_launcher_winter_background, C3632R.mipmap.fork_launcher_winter_foreground, C3632R.string.settings_interface_app_icon_winter, 0);
            WINTER = launcherIcon17;
            LauncherIcon launcherIcon18 = new LauncherIcon("SPRING", 17, "Spring", C3632R.mipmap.fork_launcher_spring_background, C3632R.mipmap.fork_launcher_spring_foreground, C3632R.string.settings_interface_app_icon_spring, 0);
            SPRING = launcherIcon18;
            LauncherIcon launcherIcon19 = new LauncherIcon("SUMMER", 18, "Summer", C3632R.mipmap.fork_launcher_summer_background, C3632R.mipmap.fork_launcher_summer_foreground, C3632R.string.settings_interface_app_icon_summer, 0);
            SUMMER = launcherIcon19;
            LauncherIcon launcherIcon20 = new LauncherIcon("AUTUMN", 19, "Autumn", C3632R.mipmap.fork_launcher_autumn_background, C3632R.mipmap.fork_launcher_autumn_foreground, C3632R.string.settings_interface_app_icon_autumn, 0);
            AUTUMN = launcherIcon20;
            LauncherIcon launcherIcon21 = new LauncherIcon("RED", 20, "Red", 0, i, C3632R.string.settings_interface_app_icon_red, C3632R.C3633color.ic_launcher_red_background);
            RED = launcherIcon21;
            LauncherIcon launcherIcon22 = new LauncherIcon("PURPLE", 21, "Purple", 0, i, C3632R.string.settings_interface_app_icon_purple, C3632R.C3633color.ic_launcher_purple_background);
            PURPLE = launcherIcon22;
            LauncherIcon launcherIcon23 = new LauncherIcon("PINK", 22, "Pink", 0, i, C3632R.string.settings_interface_app_icon_pink, C3632R.C3633color.ic_launcher_pink_background);
            PINK = launcherIcon23;
            LauncherIcon launcherIcon24 = new LauncherIcon("INDIGO", 23, "Indigo", 0, i, C3632R.string.settings_interface_app_icon_indigo, C3632R.C3633color.ic_launcher_indigo_background);
            INDIGO = launcherIcon24;
            LauncherIcon launcherIcon25 = new LauncherIcon("GREEN", 24, "RealGreen", 0, i, C3632R.string.settings_interface_app_icon_green, C3632R.C3633color.ic_launcher_green_background);
            GREEN = launcherIcon25;
            LauncherIcon launcherIcon26 = new LauncherIcon("MINT", 25, "Mint", 0, i, C3632R.string.settings_interface_app_icon_mint, C3632R.C3633color.ic_launcher_mint_background);
            MINT = launcherIcon26;
            LauncherIcon launcherIcon27 = new LauncherIcon("YELLOW", 26, "Yellow", 0, i, C3632R.string.settings_interface_app_icon_yellow, C3632R.C3633color.ic_launcher_yellow_background);
            YELLOW = launcherIcon27;
            LauncherIcon launcherIcon28 = new LauncherIcon("PEACH", 27, "Peach", 0, i, C3632R.string.settings_interface_app_icon_peach, C3632R.C3633color.ic_launcher_peach_background);
            PEACH = launcherIcon28;
            LauncherIcon launcherIcon29 = new LauncherIcon("MELON", 28, "Melon", 0, i, C3632R.string.settings_interface_app_icon_melon, C3632R.C3633color.ic_launcher_melon_background);
            MELON = launcherIcon29;
            LauncherIcon launcherIcon30 = new LauncherIcon("COFFEE", 29, "Coffee", 0, i, C3632R.string.settings_interface_app_icon_coffee, C3632R.C3633color.ic_launcher_coffee_background);
            COFFEE = launcherIcon30;
            LauncherIcon launcherIcon31 = new LauncherIcon("BROWN", 30, "Brown", 0, i, C3632R.string.settings_interface_app_icon_brown, C3632R.C3633color.ic_launcher_brown_background);
            BROWN = launcherIcon31;
            LauncherIcon launcherIcon32 = new LauncherIcon("GRAY", 31, "Gray", 0, i, C3632R.string.settings_interface_app_icon_gray, C3632R.C3633color.ic_launcher_gray_background);
            GRAY = launcherIcon32;
            LauncherIcon launcherIcon33 = new LauncherIcon("WHITE", 32, "White", 0, C3632R.mipmap.fork_launcher_white_foreground, C3632R.string.settings_interface_app_icon_white, C3632R.C3633color.ic_launcher_white_background);
            WHITE = launcherIcon33;
            LauncherIcon launcherIcon34 = new LauncherIcon("PREMIUM", 33, "PremiumIcon", C3632R.C3634drawable.icon_3_background_sa, C3632R.mipmap.icon_3_foreground_sa, i8, true);
            PREMIUM = launcherIcon34;
            LauncherIcon launcherIcon35 = new LauncherIcon("TURBO", 34, "TurboIcon", C3632R.C3634drawable.icon_5_background_sa, C3632R.mipmap.icon_5_foreground_sa, i11, true);
            TURBO = launcherIcon35;
            LauncherIcon launcherIcon36 = new LauncherIcon("NOX", 35, "NoxIcon", C3632R.C3634drawable.icon_2_background_sa, C3632R.mipmap.icon_foreground_sa, i13, true);
            NOX = launcherIcon36;
            $VALUES = new LauncherIcon[]{launcherIcon, launcherIcon2, launcherIcon3, launcherIcon4, launcherIcon5, launcherIcon6, launcherIcon7, launcherIcon8, launcherIcon9, launcherIcon10, launcherIcon11, launcherIcon12, launcherIcon13, launcherIcon14, launcherIcon15, launcherIcon16, launcherIcon17, launcherIcon18, launcherIcon19, launcherIcon20, launcherIcon21, launcherIcon22, launcherIcon23, launcherIcon24, launcherIcon25, launcherIcon26, launcherIcon27, launcherIcon28, launcherIcon29, launcherIcon30, launcherIcon31, launcherIcon32, launcherIcon33, launcherIcon34, launcherIcon35, launcherIcon36};
        }

        private LauncherIcon(String str, int i, String str2, int i2, int i3, int i4, boolean z) {
            this(str, i, str2, i2, i3, i4, z, 0);
        }

        public ComponentName getComponentName(Context context) {
            if (this.componentName == null) {
                String packageName = context.getPackageName();
                this.componentName = new ComponentName(packageName, "org.telegram.ui.LaunchActivity" + this.key + "Icon");
            }
            return this.componentName;
        }

        private LauncherIcon(String str, int i, String str2, int i2, int i3, int i4, int i5) {
            this(str, i, str2, i2, i3, i4, false, i5);
        }

        private LauncherIcon(String str, int i, String str2, int i2, int i3, int i4, boolean z, int i5) {
            this.backgroundColor = i5;
            this.key = str2;
            this.background = i2;
            this.foreground = i3;
            this.title = i4;
            this.premium = z;
        }
    }
}
