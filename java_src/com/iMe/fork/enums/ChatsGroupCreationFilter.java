package com.iMe.fork.enums;

import com.iMe.common.IdFabric$Menu;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
/* compiled from: ChatsGroupCreationFilter.kt */
/* loaded from: classes4.dex */
public enum ChatsGroupCreationFilter {
    ALL_CHATS_CATEGORIES_FILTER(IdFabric$Menu.ALL_CHATS_CATEGORIES_FILTER, -1, true),
    PERSONAL_CHATS_CATEGORIES_FILTER(IdFabric$Menu.PERSONAL_CHATS_CATEGORIES_FILTER, MessagesController.DIALOG_FILTER_FLAG_CONTACTS | MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS, false, 4, null),
    GROUPS_CHATS_CATEGORIES_FILTER(IdFabric$Menu.GROUPS_CHATS_CATEGORIES_FILTER, MessagesController.DIALOG_FILTER_FLAG_GROUPS, false, 4, null),
    PRIVATE_GROUPS_CATEGORIES_FILTER(IdFabric$Menu.PRIVATE_GROUPS_CATEGORIES_FILTER, MessagesController.DIALOG_FILTER_FLAG_PRIVATE_GROUPS, false, 4, null),
    PUBLIC_GROUPS__CATEGORIES_FILTER(IdFabric$Menu.PUBLIC_GROUPS__CATEGORIES_FILTER, MessagesController.DIALOG_FILTER_FLAG_PUBLIC_GROUPS, false, 4, null),
    CHANNELS_CATEGORIES_FILTER(IdFabric$Menu.CHANNELS_CATEGORIES_FILTER, MessagesController.DIALOG_FILTER_FLAG_CHANNELS, false, 4, null),
    BOTS_CATEGORIES_FILTER(IdFabric$Menu.BOTS_CATEGORIES_FILTER, MessagesController.DIALOG_FILTER_FLAG_BOTS, false, 4, null),
    ADMIN_CATEGORIES_FILTER(IdFabric$Menu.ADMIN_CATEGORIES_FILTER, MessagesController.DIALOG_FILTER_FLAG_ADMIN, false, 4, null),
    OWNER_CATEGORIES_FILTER(IdFabric$Menu.OWNER_CATEGORIES_FILTER, MessagesController.DIALOG_FILTER_FLAG_OWNER, false, 4, null);
    
    public static final Companion Companion = new Companion(null);
    private final int fabricId;
    private final int flags;
    private boolean hasSelectedItem;

    /* compiled from: ChatsGroupCreationFilter.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChatsGroupCreationFilter.values().length];
            try {
                iArr[ChatsGroupCreationFilter.ALL_CHATS_CATEGORIES_FILTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ChatsGroupCreationFilter.PERSONAL_CHATS_CATEGORIES_FILTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ChatsGroupCreationFilter.GROUPS_CHATS_CATEGORIES_FILTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ChatsGroupCreationFilter.PRIVATE_GROUPS_CATEGORIES_FILTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ChatsGroupCreationFilter.PUBLIC_GROUPS__CATEGORIES_FILTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ChatsGroupCreationFilter.CHANNELS_CATEGORIES_FILTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ChatsGroupCreationFilter.ADMIN_CATEGORIES_FILTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ChatsGroupCreationFilter.OWNER_CATEGORIES_FILTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ChatsGroupCreationFilter.BOTS_CATEGORIES_FILTER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final ChatsGroupCreationFilter getCategoriesCreatedFolderOrTopic(int i) {
        return Companion.getCategoriesCreatedFolderOrTopic(i);
    }

    ChatsGroupCreationFilter(int i, int i2, boolean z) {
        this.fabricId = i;
        this.flags = i2;
        this.hasSelectedItem = z;
    }

    /* synthetic */ ChatsGroupCreationFilter(int i, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, (i3 & 4) != 0 ? false : z);
    }

    public final int getFabricId() {
        return this.fabricId;
    }

    public final int getFlags() {
        return this.flags;
    }

    public final boolean getHasSelectedItem() {
        return this.hasSelectedItem;
    }

    public final void setHasSelectedItem(boolean z) {
        this.hasSelectedItem = z;
    }

    public final String getTitle() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String string = LocaleController.getString("AllChats", C3473R.string.AllChats);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"AllChats\", R.string.AllChats)");
                return string;
            case 2:
                String internalString = LocaleController.getInternalString(C3473R.string.sorting_settings_tab_personal_chats_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…ersonal_chats_item_title)");
                return internalString;
            case 3:
                String internalString2 = LocaleController.getInternalString(C3473R.string.sorting_settings_tab_groups_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…gs_tab_groups_item_title)");
                return internalString2;
            case 4:
                String internalString3 = LocaleController.getInternalString(C3473R.string.sorting_settings_tab_private_groups_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(R.stri…rivate_groups_item_title)");
                return internalString3;
            case 5:
                String internalString4 = LocaleController.getInternalString(C3473R.string.sorting_settings_tab_public_groups_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString4, "getInternalString(R.stri…public_groups_item_title)");
                return internalString4;
            case 6:
                String internalString5 = LocaleController.getInternalString(C3473R.string.sorting_settings_tab_channels_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString5, "getInternalString(R.stri…_tab_channels_item_title)");
                return internalString5;
            case 7:
                String internalString6 = LocaleController.getInternalString(C3473R.string.sorting_settings_tab_admin_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString6, "getInternalString(R.stri…ngs_tab_admin_item_title)");
                return internalString6;
            case 8:
                String internalString7 = LocaleController.getInternalString(C3473R.string.sorting_settings_tab_owner_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString7, "getInternalString(R.stri…ngs_tab_owner_item_title)");
                return internalString7;
            case 9:
                String internalString8 = LocaleController.getInternalString(C3473R.string.sorting_settings_tab_bots_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString8, "getInternalString(R.stri…ings_tab_bots_item_title)");
                return internalString8;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: ChatsGroupCreationFilter.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ChatsGroupCreationFilter getCategoriesCreatedFolderOrTopic(int i) {
            ChatsGroupCreationFilter[] values;
            for (ChatsGroupCreationFilter chatsGroupCreationFilter : ChatsGroupCreationFilter.values()) {
                if (i == chatsGroupCreationFilter.getFabricId()) {
                    return chatsGroupCreationFilter;
                }
            }
            return null;
        }
    }
}
