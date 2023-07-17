package com.iMe.fork.enums;

import com.iMe.storage.domain.model.filters.FilterFab;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.MessagesController;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum UNREAD uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: SortingFilter.kt */
/* loaded from: classes3.dex */
public final class SortingFilter {
    private static final /* synthetic */ SortingFilter[] $VALUES;
    public static final SortingFilter ADMIN;
    public static final SortingFilter ARCHIVE_ADMIN;
    public static final SortingFilter ARCHIVE_ALBUMS;
    public static final SortingFilter ARCHIVE_BOTS;
    public static final SortingFilter ARCHIVE_CHANNELS;
    public static final SortingFilter ARCHIVE_DELETED_USERS;
    private static final int ARCHIVE_EXTRA_ID = 2000000000;
    public static final SortingFilter ARCHIVE_GROUPS;
    public static final SortingFilter ARCHIVE_LIVE_CHATS;
    public static final SortingFilter ARCHIVE_OWNER;
    public static final SortingFilter ARCHIVE_PERSONAL;
    public static final SortingFilter ARCHIVE_PRIVATE_GROUPS;
    public static final SortingFilter ARCHIVE_PUBLIC_GROUPS;
    public static final SortingFilter ARCHIVE_SECRET_CHATS;
    public static final SortingFilter ARCHIVE_UNREAD;
    public static final SortingFilter BOTS;
    public static final SortingFilter CHANNELS;
    public static final int CURRENT_DEPLOY_VERSION = 9;
    public static final Companion Companion;
    public static final SortingFilter DELETED_USERS;
    public static final SortingFilter DRAFTS;
    public static final SortingFilter GROUPS;
    public static final SortingFilter LIVE_CHATS;
    private static final int MAIN_EXTRA_ID = 1000000000;
    public static final SortingFilter MENTIONED_CHATS;
    public static final SortingFilter OWNER;
    public static final SortingFilter PERSONAL;
    public static final SortingFilter PRIVATE_GROUPS;
    public static final SortingFilter PUBLIC_GROUPS;
    public static final SortingFilter SECRET_CHATS;
    public static final SortingFilter UNREAD;
    private final int addingOrder;
    private final int defaultIconResId;
    private final FilterFab fabByDefault;
    private final int filledIconResId;
    private final int flags;
    private final boolean isArchive;
    private final boolean isEnabledByDefault;
    private final boolean isFabEditable;
    private final int titleResId;

    private static final /* synthetic */ SortingFilter[] $values() {
        return new SortingFilter[]{UNREAD, PERSONAL, GROUPS, CHANNELS, BOTS, ADMIN, OWNER, PRIVATE_GROUPS, PUBLIC_GROUPS, MENTIONED_CHATS, LIVE_CHATS, DELETED_USERS, SECRET_CHATS, DRAFTS, ARCHIVE_UNREAD, ARCHIVE_PERSONAL, ARCHIVE_GROUPS, ARCHIVE_CHANNELS, ARCHIVE_BOTS, ARCHIVE_ADMIN, ARCHIVE_OWNER, ARCHIVE_PRIVATE_GROUPS, ARCHIVE_PUBLIC_GROUPS, ARCHIVE_LIVE_CHATS, ARCHIVE_DELETED_USERS, ARCHIVE_SECRET_CHATS, ARCHIVE_ALBUMS};
    }

    public static final int getExtraId(boolean z) {
        return Companion.getExtraId(z);
    }

    public static final SortingFilter getFilterByIdWithExtra(boolean z, int i) {
        return Companion.getFilterByIdWithExtra(z, i);
    }

    public static final List<SortingFilter> getSortingFilters(boolean z) {
        return Companion.getSortingFilters(z);
    }

    public static final boolean isSortingFilter(boolean z, int i) {
        return Companion.isSortingFilter(z, i);
    }

    public static final SortingFilter mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    public static final int removeExtraFromId(boolean z, int i) {
        return Companion.removeExtraFromId(z, i);
    }

    public static SortingFilter valueOf(String str) {
        return (SortingFilter) Enum.valueOf(SortingFilter.class, str);
    }

    public static SortingFilter[] values() {
        return (SortingFilter[]) $VALUES.clone();
    }

    private SortingFilter(String str, int i, int i2, int i3, int i4, FilterFab filterFab, boolean z, int i5, boolean z2, int i6, boolean z3) {
        this.titleResId = i2;
        this.defaultIconResId = i3;
        this.filledIconResId = i4;
        this.fabByDefault = filterFab;
        this.isFabEditable = z;
        this.flags = i5;
        this.isEnabledByDefault = z2;
        this.addingOrder = i6;
        this.isArchive = z3;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final int getDefaultIconResId() {
        return this.defaultIconResId;
    }

    public final int getFilledIconResId() {
        return this.filledIconResId;
    }

    public final FilterFab getFabByDefault() {
        return this.fabByDefault;
    }

    public final boolean isFabEditable() {
        return this.isFabEditable;
    }

    public final int getFlags() {
        return this.flags;
    }

    public final boolean isEnabledByDefault() {
        return this.isEnabledByDefault;
    }

    public final int getAddingOrder() {
        return this.addingOrder;
    }

    public final boolean isArchive() {
        return this.isArchive;
    }

    static {
        int i = C3417R.string.sorting_settings_tab_unread_chats_item_title;
        int i2 = C3417R.C3419drawable.fork_filter_icon_bubble_point;
        int i3 = C3417R.C3419drawable.fork_filter_icon_bubble_point_filled;
        FilterFab filterFab = FilterFab.MARK_ALL_READ;
        UNREAD = new SortingFilter("UNREAD", 0, i, i2, i3, filterFab, true, MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, true, 0, false);
        int i4 = C3417R.string.sorting_settings_tab_personal_chats_item_title;
        int i5 = C3417R.C3419drawable.fork_filter_icon_user;
        int i6 = C3417R.C3419drawable.fork_filter_icon_user_filled;
        FilterFab filterFab2 = FilterFab.CREATE_CHAT;
        PERSONAL = new SortingFilter("PERSONAL", 1, i4, i5, i6, filterFab2, true, MessagesController.DIALOG_FILTER_FLAG_CONTACTS | MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, true, 1, false);
        int i7 = C3417R.string.sorting_settings_tab_groups_item_title;
        int i8 = C3417R.C3419drawable.fork_filter_icon_users;
        int i9 = C3417R.C3419drawable.fork_filter_icon_users_filled;
        GROUPS = new SortingFilter("GROUPS", 2, i7, i8, i9, filterFab2, true, MessagesController.DIALOG_FILTER_FLAG_GROUPS | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, true, 2, false);
        int i10 = C3417R.string.sorting_settings_tab_channels_item_title;
        int i11 = C3417R.C3419drawable.fork_filter_icon_channel;
        int i12 = C3417R.C3419drawable.fork_filter_icon_channel_filled;
        CHANNELS = new SortingFilter("CHANNELS", 3, i10, i11, i12, filterFab2, true, MessagesController.DIALOG_FILTER_FLAG_CHANNELS | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, true, 3, false);
        int i13 = C3417R.string.sorting_settings_tab_bots_item_title;
        int i14 = C3417R.C3419drawable.fork_filter_icon_bot;
        int i15 = C3417R.C3419drawable.fork_filter_icon_bot_filled;
        BOTS = new SortingFilter("BOTS", 4, i13, i14, i15, filterFab2, true, MessagesController.DIALOG_FILTER_FLAG_BOTS | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, true, 4, false);
        int i16 = C3417R.string.sorting_settings_tab_admin_item_title;
        int i17 = C3417R.C3419drawable.fork_filter_icon_chat_admin;
        int i18 = C3417R.C3419drawable.fork_filter_icon_chat_admin_filled;
        ADMIN = new SortingFilter("ADMIN", 5, i16, i17, i18, filterFab2, true, MessagesController.DIALOG_FILTER_FLAG_ADMIN | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, true, 6, false);
        int i19 = C3417R.string.sorting_settings_tab_owner_item_title;
        int i20 = C3417R.C3419drawable.fork_filter_icon_owner;
        int i21 = C3417R.C3419drawable.fork_filter_icon_owner_filled;
        OWNER = new SortingFilter("OWNER", 6, i19, i20, i21, filterFab2, true, MessagesController.DIALOG_FILTER_FLAG_OWNER | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, true, 5, false);
        int i22 = C3417R.string.sorting_settings_tab_private_groups_item_title;
        int i23 = C3417R.C3419drawable.fork_filter_icon_private_groups;
        int i24 = C3417R.C3419drawable.fork_filter_icon_private_groups_filled;
        PRIVATE_GROUPS = new SortingFilter("PRIVATE_GROUPS", 7, i22, i23, i24, filterFab2, true, MessagesController.DIALOG_FILTER_FLAG_PRIVATE_GROUPS | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, false, 8, false);
        int i25 = C3417R.string.sorting_settings_tab_public_groups_item_title;
        int i26 = C3417R.C3419drawable.fork_filter_icon_public_groups;
        int i27 = C3417R.C3419drawable.fork_filter_icon_public_groups_filled;
        PUBLIC_GROUPS = new SortingFilter("PUBLIC_GROUPS", 8, i25, i26, i27, filterFab2, true, MessagesController.DIALOG_FILTER_FLAG_PUBLIC_GROUPS | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, false, 9, false);
        MENTIONED_CHATS = new SortingFilter("MENTIONED_CHATS", 9, C3417R.string.sorting_settings_tab_mentioned_chats, C3417R.C3419drawable.fork_filter_icon_mentionbutton, C3417R.C3419drawable.fork_filter_icon_mentionbutton_filled, filterFab, true, MessagesController.DIALOG_FILTER_FLAG_MENTIONED | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, false, 11, false);
        int i28 = C3417R.string.sorting_settings_tab_live_chats;
        LIVE_CHATS = new SortingFilter("LIVE_CHATS", 10, i28, C3417R.C3419drawable.fork_filter_icon_voicechat, C3417R.C3419drawable.fork_filter_icon_voicechat_filled, filterFab, true, MessagesController.DIALOG_FILTER_FLAG_LIVE_CHAT | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, false, 12, false);
        int i29 = C3417R.string.sorting_settings_tab_deleted_users;
        int i30 = C3417R.C3419drawable.fork_ic_ghost_26;
        int i31 = C3417R.C3419drawable.fork_ic_ghost_filled_26;
        DELETED_USERS = new SortingFilter("DELETED_USERS", 11, i29, i30, i31, filterFab, true, MessagesController.DIALOG_FILTER_FLAG_DELETED | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, false, 10, false);
        int i32 = C3417R.string.sorting_settings_tab_secret_chats_item_title;
        int i33 = C3417R.C3419drawable.fork_filter_icon_lock;
        int i34 = C3417R.C3419drawable.fork_filter_icon_lock_filled;
        SECRET_CHATS = new SortingFilter("SECRET_CHATS", 12, i32, i33, i34, filterFab2, true, MessagesController.DIALOG_FILTER_FLAG_SECRET_CHAT | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED, false, 7, false);
        DRAFTS = new SortingFilter("DRAFTS", 13, C3417R.string.sorting_settings_tab_drafts, C3417R.C3419drawable.fork_filter_icon_drafts, C3417R.C3419drawable.fork_filter_icon_drafts_filled, FilterFab.CLEAR_DRAFTS, false, MessagesController.DIALOG_FILTER_FLAG_DRAFTS, false, 13, false);
        ARCHIVE_UNREAD = new SortingFilter("ARCHIVE_UNREAD", 14, i, i2, i3, filterFab, false, MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS | MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, true, 0, true);
        ARCHIVE_PERSONAL = new SortingFilter("ARCHIVE_PERSONAL", 15, i4, i5, i6, filterFab, false, MessagesController.DIALOG_FILTER_FLAG_CONTACTS | MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, true, 1, true);
        ARCHIVE_GROUPS = new SortingFilter("ARCHIVE_GROUPS", 16, i7, i8, i9, filterFab, false, MessagesController.DIALOG_FILTER_FLAG_GROUPS | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, true, 2, true);
        ARCHIVE_CHANNELS = new SortingFilter("ARCHIVE_CHANNELS", 17, i10, i11, i12, filterFab, false, MessagesController.DIALOG_FILTER_FLAG_CHANNELS | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, true, 3, true);
        ARCHIVE_BOTS = new SortingFilter("ARCHIVE_BOTS", 18, i13, i14, i15, filterFab, false, MessagesController.DIALOG_FILTER_FLAG_BOTS | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, true, 4, true);
        ARCHIVE_ADMIN = new SortingFilter("ARCHIVE_ADMIN", 19, i16, i17, i18, filterFab, false, MessagesController.DIALOG_FILTER_FLAG_ADMIN | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, true, 8, true);
        ARCHIVE_OWNER = new SortingFilter("ARCHIVE_OWNER", 20, i19, i20, i21, filterFab, false, MessagesController.DIALOG_FILTER_FLAG_OWNER | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, true, 7, true);
        ARCHIVE_PRIVATE_GROUPS = new SortingFilter("ARCHIVE_PRIVATE_GROUPS", 21, i22, i23, i24, filterFab, false, MessagesController.DIALOG_FILTER_FLAG_PRIVATE_GROUPS | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, false, 5, true);
        ARCHIVE_PUBLIC_GROUPS = new SortingFilter("ARCHIVE_PUBLIC_GROUPS", 22, i25, i26, i27, filterFab, false, MessagesController.DIALOG_FILTER_FLAG_PUBLIC_GROUPS | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, false, 6, true);
        ARCHIVE_LIVE_CHATS = new SortingFilter("ARCHIVE_LIVE_CHATS", 23, i28, C3417R.C3419drawable.msg_voicechat, C3417R.C3419drawable.msg_voicechat2, filterFab, false, MessagesController.DIALOG_FILTER_FLAG_LIVE_CHAT | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, false, 12, true);
        ARCHIVE_DELETED_USERS = new SortingFilter("ARCHIVE_DELETED_USERS", 24, i29, i30, i31, filterFab, false, MessagesController.DIALOG_FILTER_FLAG_DELETED | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, false, 11, true);
        ARCHIVE_SECRET_CHATS = new SortingFilter("ARCHIVE_SECRET_CHATS", 25, i32, i33, i34, filterFab, false, MessagesController.DIALOG_FILTER_FLAG_SECRET_CHAT | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, false, 9, true);
        ARCHIVE_ALBUMS = new SortingFilter("ARCHIVE_ALBUMS", 26, C3417R.string.settings_tools_cloud_albums, C3417R.C3419drawable.fork_filter_icon_albums, C3417R.C3419drawable.fork_filter_icon_albums_filled, FilterFab.CREATE_ALBUM, false, MessagesController.DIALOG_FILTER_FLAG_ALBUMS | MessagesController.DIALOG_FILTER_FLAG_ONLY_ARCHIVED, true, 10, true);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    public final int generateIdWithExtra() {
        return Companion.getExtraId(this.isArchive) + this.addingOrder;
    }

    public final int groupOrdinal() {
        return this.isArchive ? ordinal() - Companion.getSortingFilters(false).size() : ordinal();
    }

    /* compiled from: SortingFilter.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getExtraId(boolean z) {
            return z ? SortingFilter.ARCHIVE_EXTRA_ID : SortingFilter.MAIN_EXTRA_ID;
        }

        private Companion() {
        }

        public final SortingFilter mapNameToEnum(String str) {
            SortingFilter[] values;
            for (SortingFilter sortingFilter : SortingFilter.values()) {
                if (Intrinsics.areEqual(sortingFilter.name(), str)) {
                    return sortingFilter;
                }
            }
            return null;
        }

        public final List<SortingFilter> getSortingFilters(boolean z) {
            SortingFilter[] values = SortingFilter.values();
            ArrayList arrayList = new ArrayList();
            for (SortingFilter sortingFilter : values) {
                if (sortingFilter.isArchive() == z) {
                    arrayList.add(sortingFilter);
                }
            }
            return arrayList;
        }

        public final boolean isSortingFilter(boolean z, int i) {
            return i < getExtraId(z) + getSortingFilters(z).size() && getExtraId(z) <= i;
        }

        public final SortingFilter getFilterByIdWithExtra(boolean z, int i) {
            Object obj;
            boolean z2;
            Iterator<T> it = getSortingFilters(z).iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((SortingFilter) obj).getAddingOrder() == SortingFilter.Companion.removeExtraFromId(z, i)) {
                    z2 = true;
                    continue;
                } else {
                    z2 = false;
                    continue;
                }
                if (z2) {
                    break;
                }
            }
            Intrinsics.checkNotNull(obj);
            return (SortingFilter) obj;
        }

        public final int removeExtraFromId(boolean z, int i) {
            return i - getExtraId(z);
        }
    }
}
