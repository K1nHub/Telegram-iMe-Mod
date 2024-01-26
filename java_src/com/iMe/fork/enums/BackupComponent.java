package com.iMe.fork.enums;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
/* compiled from: BackupComponent.kt */
/* loaded from: classes3.dex */
public enum BackupComponent {
    TOOLS,
    MULTI_PANEL,
    FILTERS,
    SORTING,
    ALBUMS,
    MUSIC,
    TRANSLATION,
    STORIES,
    TEMPLATES,
    TOPICS,
    HIDDEN_CHATS,
    RECENT_CHATS;

    /* compiled from: BackupComponent.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BackupComponent.values().length];
            try {
                iArr[BackupComponent.TOOLS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BackupComponent.MULTI_PANEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BackupComponent.FILTERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BackupComponent.SORTING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[BackupComponent.ALBUMS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[BackupComponent.MUSIC.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[BackupComponent.TRANSLATION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[BackupComponent.STORIES.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[BackupComponent.TEMPLATES.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[BackupComponent.TOPICS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[BackupComponent.HIDDEN_CHATS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[BackupComponent.RECENT_CHATS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final String getTitle() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String internalString = LocaleController.getInternalString(C3632R.string.settings_tools);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.string.settings_tools)");
                return internalString;
            case 2:
                String internalString2 = LocaleController.getInternalString(C3632R.string.backup_component_multi_panel);
                Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…up_component_multi_panel)");
                return internalString2;
            case 3:
                String internalString3 = LocaleController.getInternalString(C3632R.string.backup_component_filters);
                Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(R.stri…backup_component_filters)");
                return internalString3;
            case 4:
                String internalString4 = LocaleController.getInternalString(C3632R.string.backup_component_sorting);
                Intrinsics.checkNotNullExpressionValue(internalString4, "getInternalString(R.stri…backup_component_sorting)");
                return internalString4;
            case 5:
                String internalString5 = LocaleController.getInternalString(C3632R.string.backup_component_albums);
                Intrinsics.checkNotNullExpressionValue(internalString5, "getInternalString(R.stri….backup_component_albums)");
                return internalString5;
            case 6:
                String internalString6 = LocaleController.getInternalString(C3632R.string.cloud_filter_music);
                Intrinsics.checkNotNullExpressionValue(internalString6, "getInternalString(R.string.cloud_filter_music)");
                return internalString6;
            case 7:
                String internalString7 = LocaleController.getInternalString(C3632R.string.backup_component_translation);
                Intrinsics.checkNotNullExpressionValue(internalString7, "getInternalString(R.stri…up_component_translation)");
                return internalString7;
            case 8:
                String string = LocaleController.getString("ProfileStories", C3632R.string.ProfileStories);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"ProfileStorie… R.string.ProfileStories)");
                return string;
            case 9:
                String internalString8 = LocaleController.getInternalString(C3632R.string.chat_templates);
                Intrinsics.checkNotNullExpressionValue(internalString8, "getInternalString(R.string.chat_templates)");
                return internalString8;
            case 10:
                String internalString9 = LocaleController.getInternalString(C3632R.string.backup_component_topics);
                Intrinsics.checkNotNullExpressionValue(internalString9, "getInternalString(R.stri….backup_component_topics)");
                return internalString9;
            case 11:
                String internalString10 = LocaleController.getInternalString(C3632R.string.hidden_chats_title);
                Intrinsics.checkNotNullExpressionValue(internalString10, "getInternalString(R.string.hidden_chats_title)");
                return internalString10;
            case 12:
                String internalString11 = LocaleController.getInternalString(C3632R.string.settings_interface_recent_chats);
                Intrinsics.checkNotNullExpressionValue(internalString11, "getInternalString(R.stri…s_interface_recent_chats)");
                return internalString11;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
