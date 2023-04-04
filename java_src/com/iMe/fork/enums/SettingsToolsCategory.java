package com.iMe.fork.enums;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
/* compiled from: SettingsToolsCategory.kt */
/* loaded from: classes3.dex */
public enum SettingsToolsCategory {
    SETTINGS_CUSTOMIZATION(C3316R.C3318drawable.msg_customize),
    SETTINGS_SIDE_MENU(C3316R.C3318drawable.fork_settings_menu),
    SETTINGS_BASIC_TOOLBAR(C3316R.C3318drawable.fork_interface_settings),
    SETTINGS_CHAT_PROFILE(C3316R.C3318drawable.msg_openprofile),
    SETTINGS_CLOUD(C3316R.C3318drawable.fork_drawer_cloud),
    SETTINGS_CHAT_LIST_VIEW(C3316R.C3318drawable.fork_ic_chats_list),
    SETTINGS_CHATS(C3316R.C3318drawable.msg_msgbubble3),
    SETTINGS_MESSAGES(C3316R.C3318drawable.fork_settings_chat),
    SETTINGS_REACTIONS_BUTTON(C3316R.C3318drawable.fork_filter_icon_heart),
    SETTINGS_CONFIRMATION(C3316R.C3318drawable.msg_block2);
    
    private final int iconResId;

    /* compiled from: SettingsToolsCategory.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SettingsToolsCategory.values().length];
            try {
                iArr[SettingsToolsCategory.SETTINGS_CUSTOMIZATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SettingsToolsCategory.SETTINGS_SIDE_MENU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SettingsToolsCategory.SETTINGS_BASIC_TOOLBAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SettingsToolsCategory.SETTINGS_CHAT_PROFILE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SettingsToolsCategory.SETTINGS_CLOUD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[SettingsToolsCategory.SETTINGS_CHAT_LIST_VIEW.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[SettingsToolsCategory.SETTINGS_CHATS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[SettingsToolsCategory.SETTINGS_MESSAGES.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[SettingsToolsCategory.SETTINGS_REACTIONS_BUTTON.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[SettingsToolsCategory.SETTINGS_CONFIRMATION.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    SettingsToolsCategory(int i) {
        this.iconResId = i;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final String getTitle() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String internalString = LocaleController.getInternalString(C3316R.string.settings_tools_customization);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…ings_tools_customization)");
                return internalString;
            case 2:
                String internalString2 = LocaleController.getInternalString(C3316R.string.settings_interface_drawer_header);
                Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…_interface_drawer_header)");
                return internalString2;
            case 3:
                String internalString3 = LocaleController.getInternalString(C3316R.string.settings_tools_base_toolbar);
                Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(R.stri…tings_tools_base_toolbar)");
                return internalString3;
            case 4:
                String internalString4 = LocaleController.getInternalString(C3316R.string.settings_tools_chat_profile);
                Intrinsics.checkNotNullExpressionValue(internalString4, "getInternalString(R.stri…tings_tools_chat_profile)");
                return internalString4;
            case 5:
                String internalString5 = LocaleController.getInternalString(C3316R.string.folder_fab_settings_fab_cloud);
                Intrinsics.checkNotNullExpressionValue(internalString5, "getInternalString(R.stri…r_fab_settings_fab_cloud)");
                return internalString5;
            case 6:
                String string = LocaleController.getString("ChatList", C3316R.string.ChatList);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"ChatList\", R.string.ChatList)");
                return string;
            case 7:
                String internalString6 = LocaleController.getInternalString(C3316R.string.settings_interface_chat_header);
                Intrinsics.checkNotNullExpressionValue(internalString6, "getInternalString(R.stri…gs_interface_chat_header)");
                return internalString6;
            case 8:
                String internalString7 = LocaleController.getInternalString(C3316R.string.settings_interface_message_header);
                Intrinsics.checkNotNullExpressionValue(internalString7, "getInternalString(R.stri…interface_message_header)");
                return internalString7;
            case 9:
                String internalString8 = LocaleController.getInternalString(C3316R.string.settings_tools_reactions);
                Intrinsics.checkNotNullExpressionValue(internalString8, "getInternalString(R.stri…settings_tools_reactions)");
                return internalString8;
            case 10:
                String internalString9 = LocaleController.getInternalString(C3316R.string.settings_interface_confirmation_header);
                Intrinsics.checkNotNullExpressionValue(internalString9, "getInternalString(R.stri…face_confirmation_header)");
                return internalString9;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
