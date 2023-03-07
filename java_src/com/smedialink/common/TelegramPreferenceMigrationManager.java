package com.smedialink.common;

import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.smedialink.common.TelegramPreferenceKeys;
import com.smedialink.p031ui.drawer.DrawerAccountData;
import com.smedialink.p031ui.drawer.DrawerSwitchableItem;
import com.smedialink.storage.data.utils.extentions.GsonExtKt;
import com.smedialink.storage.domain.model.filters.FilterFab;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import org.fork.controller.FiltersController;
import org.fork.controller.MultiPanelController;
import org.fork.controller.ToolsController;
import org.fork.enums.DialogType;
import org.fork.enums.MessagePopupItem;
import org.fork.enums.MultiPanelButton;
import org.fork.enums.PhotoViewerMenuItem;
import org.fork.enums.SortingFilter;
import org.fork.models.SortingTabState;
import org.fork.models.backup.FabDataBackup;
import org.telegram.messenger.SharedConfig;
/* compiled from: TelegramPreferenceMigrationManager.kt */
/* loaded from: classes3.dex */
public final class TelegramPreferenceMigrationManager {
    public static final TelegramPreferenceMigrationManager INSTANCE = new TelegramPreferenceMigrationManager();

    private TelegramPreferenceMigrationManager() {
    }

    public static final void migrateGlobalPreferences(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        int i = preferences.getInt("iMe_globalPreferencesVersion", 0) + 1;
        if (i > 9) {
            return;
        }
        while (true) {
            int i2 = i + 1;
            if (i != 1) {
                if (i == 3) {
                    SharedPreferences.Editor edit = preferences.edit();
                    String string = preferences.getString("iMe_drawerAccountData", null);
                    if (string != null) {
                        edit.remove("iMe_drawerAccountData");
                        if (Intrinsics.areEqual(string, "HIDE")) {
                            SharedConfig.isShowDrawerHeaderSubtitleEnabled = false;
                            edit.putBoolean(TelegramPreferenceKeys.Global.isShowDrawerHeaderSubtitleEnabled(), SharedConfig.isShowDrawerHeaderSubtitleEnabled);
                        } else {
                            SharedConfig.selectedDrawerHeaderSubtitle = DrawerAccountData.Companion.mapNameToEnum(string, DrawerAccountData.PHONE);
                            edit.putString(TelegramPreferenceKeys.Global.selectedDrawerHeaderSubtitle(), SharedConfig.selectedDrawerHeaderSubtitle.name());
                        }
                    }
                    edit.apply();
                } else {
                    switch (i) {
                        case 5:
                            if (preferences.contains(TelegramPreferenceKeys.Global.selectedDrawerItems())) {
                                Set<DrawerSwitchableItem> set = SharedConfig.selectedDrawerItems;
                                set.add(DrawerSwitchableItem.MANAGEMENT);
                                SharedConfig.setSelectedDrawerItems(set);
                                break;
                            }
                            break;
                        case 6:
                            if (preferences.contains(TelegramPreferenceKeys.Global.selectedDrawerItems())) {
                                preferences.edit().remove("forwardingOptionsHintShown").apply();
                                Set<DrawerSwitchableItem> set2 = SharedConfig.selectedDrawerItems;
                                set2.add(DrawerSwitchableItem.MANAGEMENT);
                                SharedConfig.setSelectedDrawerItems(set2);
                                break;
                            }
                            break;
                        case 7:
                            if (preferences.contains(TelegramPreferenceKeys.Global.selectedDrawerItems())) {
                                Set<DrawerSwitchableItem> set3 = SharedConfig.selectedDrawerItems;
                                set3.add(DrawerSwitchableItem.CATALOG);
                                SharedConfig.setSelectedDrawerItems(set3);
                                break;
                            }
                            break;
                        case 8:
                            if (preferences.contains(TelegramPreferenceKeys.Global.selectedPhotoViewerMenuItems())) {
                                Set<PhotoViewerMenuItem> set4 = SharedConfig.selectedPhotoViewerMenuItems;
                                set4.add(PhotoViewerMenuItem.COPY_IMAGE);
                                set4.add(PhotoViewerMenuItem.CLEAR_CACHE);
                                SharedConfig.setSelectedPhotoViewerMenuItems(set4);
                                break;
                            }
                            break;
                        case 9:
                            if (preferences.contains(TelegramPreferenceKeys.Global.isReadAllChatsConfirmationShown())) {
                                SharedConfig.setReadAllChatsConfirmationShown(!SharedConfig.isReadAllChatsConfirmationShown);
                            }
                            if (preferences.contains(TelegramPreferenceKeys.Global.isAlbumsIntroShown())) {
                                SharedConfig.setAlbumsIntroShown(!SharedConfig.isAlbumsIntroShown);
                            }
                            if (preferences.contains(TelegramPreferenceKeys.Global.isMusicIntroShown())) {
                                SharedConfig.setMusicIntroShown(!SharedConfig.isMusicIntroShown);
                                break;
                            }
                            break;
                    }
                }
            } else if (preferences.contains(TelegramPreferenceKeys.Global.selectedDrawerItems())) {
                Set<DrawerSwitchableItem> set5 = SharedConfig.selectedDrawerItems;
                set5.add(DrawerSwitchableItem.ALBUMS);
                SharedConfig.setSelectedDrawerItems(set5);
            }
            preferences.edit().putInt("iMe_globalPreferencesVersion", i).apply();
            if (i == 9) {
                return;
            }
            i = i2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r5v13 */
    public static final void migrateUserPreferences(int i, SharedPreferences preferences) {
        int i2;
        int collectionSizeOrDefault;
        String string;
        int collectionSizeOrDefault2;
        int i3;
        int i4;
        DialogType[] values;
        boolean z;
        SortingFilter[] values2;
        List sortedWith;
        int collectionSizeOrDefault3;
        List<SortingTabState> mutableList;
        List sortedWith2;
        int collectionSizeOrDefault4;
        List<SortingTabState> mutableList2;
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        ?? r3 = 0;
        ?? r5 = 1;
        int i5 = preferences.getInt("iMe_userPreferencesVersion", 0) + 1;
        if (i5 > 9) {
            return;
        }
        while (true) {
            int i6 = i5 + 1;
            String str = null;
            switch (i5) {
                case 1:
                    if (preferences.contains(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
                        SharedPreferences.Editor edit = preferences.edit();
                        SortingFilter sortingFilter = SortingFilter.GROUPS;
                        int i7 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter), sortingFilter.groupOrdinal());
                        for (SortingFilter sortingFilter2 : SortingFilter.Companion.getSortingFilters(false)) {
                            if (sortingFilter2 != SortingFilter.PRIVATE_GROUPS && sortingFilter2 != SortingFilter.PUBLIC_GROUPS && (i2 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter2), sortingFilter2.groupOrdinal())) > i7) {
                                edit.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter2), i2 + 2);
                            }
                        }
                        edit.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(SortingFilter.PRIVATE_GROUPS), i7 + 1);
                        edit.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(SortingFilter.PUBLIC_GROUPS), i7 + 2);
                        Unit unit = Unit.INSTANCE;
                        edit.apply();
                        FiltersController.Companion.getInstance(i).loadConfig(preferences);
                        break;
                    }
                    break;
                case 3:
                    if (preferences.contains(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
                        SharedPreferences.Editor edit2 = preferences.edit();
                        for (SortingFilter sortingFilter3 : SortingFilter.Companion.getSortingFilters(r3)) {
                            String str2 = "iMe_sortingTab_" + sortingFilter3.name() + "_fab";
                            String str3 = "iMe_sortingTab_" + sortingFilter3.name() + "_multiFabs";
                            String string2 = preferences.getString(str2, str);
                            if (string2 != null && (string = preferences.getString(str3, str)) != null) {
                                Set<FilterFab> mapOldPreferenceJsonToEnums = Intrinsics.areEqual(string2, FabDataBackup.OLD_MULTI_FAB_ID) ? FilterFab.Companion.mapOldPreferenceJsonToEnums(string) : SetsKt__SetsJVMKt.setOf(FilterFab.Companion.findByOldPreferenceId(string2));
                                String buildSortingTabSelectedFabsKey = TelegramPreferenceKeys.User.buildSortingTabSelectedFabsKey(sortingFilter3);
                                Gson globalGson = GsonExtKt.getGlobalGson();
                                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(mapOldPreferenceJsonToEnums, 10);
                                ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
                                for (FilterFab filterFab : mapOldPreferenceJsonToEnums) {
                                    arrayList.add(filterFab.getOldPreferenceId());
                                }
                                edit2.putString(buildSortingTabSelectedFabsKey, globalGson.toJson(arrayList));
                                edit2.remove(str2);
                                edit2.remove(str3);
                                str = null;
                            }
                        }
                        String string3 = preferences.getString("iMe_allChatsTabFab", null);
                        String string4 = preferences.getString("iMe_allChatsTabMultiFabs", null);
                        if (string3 != null && string4 != null) {
                            Set<FilterFab> mapOldPreferenceJsonToEnums2 = Intrinsics.areEqual(string3, FabDataBackup.OLD_MULTI_FAB_ID) ? FilterFab.Companion.mapOldPreferenceJsonToEnums(string4) : SetsKt__SetsJVMKt.setOf(FilterFab.Companion.findByOldPreferenceId(string3));
                            String selectedAllChatsTabFabs = TelegramPreferenceKeys.User.selectedAllChatsTabFabs();
                            Gson globalGson2 = GsonExtKt.getGlobalGson();
                            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(mapOldPreferenceJsonToEnums2, 10);
                            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                            for (FilterFab filterFab2 : mapOldPreferenceJsonToEnums2) {
                                arrayList2.add(filterFab2.getOldPreferenceId());
                            }
                            edit2.putString(selectedAllChatsTabFabs, globalGson2.toJson(arrayList2));
                            edit2.remove("iMe_allChatsTabFab");
                            edit2.remove("iMe_allChatsTabMultiFabs");
                        }
                        Unit unit2 = Unit.INSTANCE;
                        edit2.apply();
                        FiltersController.Companion.getInstance(i).loadConfig(preferences);
                    }
                    break;
                case 4:
                    if (preferences.contains(TelegramPreferenceKeys.User.isMultiPanelEnabled())) {
                        SharedPreferences.Editor edit3 = preferences.edit();
                        MultiPanelButton multiPanelButton = MultiPanelButton.SEARCH;
                        DialogType dialogType = DialogType.BOT;
                        int i8 = preferences.getInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton, dialogType), r3);
                        for (MultiPanelButton multiPanelButton2 : dialogType.getMultiPanelButtons()) {
                            if (multiPanelButton2 != MultiPanelButton.CACHE) {
                                DialogType dialogType2 = DialogType.BOT;
                                int i9 = preferences.getInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton2, dialogType2), r3);
                                if (i9 >= i8) {
                                    edit3.putInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton2, dialogType2), i9 + 1);
                                }
                            }
                        }
                        MultiPanelButton multiPanelButton3 = MultiPanelButton.CACHE;
                        DialogType dialogType3 = DialogType.BOT;
                        edit3.putInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton3, dialogType3), i8);
                        edit3.putBoolean(TelegramPreferenceKeys.User.buildMultiPanelButtonEnabledKey(multiPanelButton3, dialogType3), r5);
                        Unit unit3 = Unit.INSTANCE;
                        edit3.apply();
                        MultiPanelController.Companion.getInstance(i).loadConfig(preferences);
                    }
                    break;
                case 5:
                    if (preferences.contains(TelegramPreferenceKeys.User.isMultiPanelEnabled())) {
                        SharedPreferences.Editor edit4 = preferences.edit();
                        for (MultiPanelButton multiPanelButton4 : DialogType.CHANNEL.getMultiPanelButtons()) {
                            if (multiPanelButton4 != MultiPanelButton.MUTE && multiPanelButton4 != MultiPanelButton.PINS) {
                                DialogType dialogType4 = DialogType.CHANNEL;
                                edit4.putInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton4, dialogType4), preferences.getInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton4, dialogType4), r3) + r5);
                            }
                        }
                        MultiPanelButton multiPanelButton5 = MultiPanelButton.MUTE;
                        DialogType dialogType5 = DialogType.CHANNEL;
                        edit4.putInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton5, dialogType5), r3);
                        edit4.putBoolean(TelegramPreferenceKeys.User.buildMultiPanelButtonEnabledKey(multiPanelButton5, dialogType5), r5);
                        for (DialogType dialogType6 : DialogType.values()) {
                            int i10 = 0;
                            for (MultiPanelButton multiPanelButton6 : dialogType6.getMultiPanelButtons()) {
                                i10 = Math.max(i10, preferences.getInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton6, dialogType6), r3));
                            }
                            MultiPanelButton multiPanelButton7 = MultiPanelButton.PINS;
                            edit4.putInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton7, dialogType6), i10 + 1);
                            edit4.putBoolean(TelegramPreferenceKeys.User.buildMultiPanelButtonEnabledKey(multiPanelButton7, dialogType6), multiPanelButton7.isEnabledByDefault());
                        }
                        Unit unit4 = Unit.INSTANCE;
                        edit4.apply();
                        MultiPanelController.Companion.getInstance(i).loadConfig(preferences);
                    }
                    if (preferences.contains(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
                        SharedPreferences.Editor edit5 = preferences.edit();
                        SortingFilter sortingFilter4 = SortingFilter.PERSONAL;
                        int i11 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter4), sortingFilter4.groupOrdinal());
                        for (SortingFilter sortingFilter5 : SortingFilter.Companion.getSortingFilters(r3)) {
                            if (sortingFilter5 != SortingFilter.MENTIONED_CHATS && sortingFilter5 != SortingFilter.DELETED_USERS && sortingFilter5 != SortingFilter.LIVE_CHATS && (i4 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter5), sortingFilter5.groupOrdinal())) > i11) {
                                edit5.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter5), i4 + 2);
                            }
                        }
                        edit5.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(SortingFilter.MENTIONED_CHATS), i11 + 1);
                        edit5.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(SortingFilter.DELETED_USERS), i11 + 2);
                        SortingFilter sortingFilter6 = SortingFilter.CHANNELS;
                        int i12 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter6), sortingFilter6.groupOrdinal());
                        for (SortingFilter sortingFilter7 : SortingFilter.Companion.getSortingFilters(r3)) {
                            if (sortingFilter7 != SortingFilter.LIVE_CHATS && (i3 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter7), sortingFilter7.groupOrdinal())) > i12) {
                                edit5.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter7), i3 + 1);
                            }
                        }
                        edit5.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(SortingFilter.LIVE_CHATS), i12 + 1);
                        Unit unit5 = Unit.INSTANCE;
                        edit5.apply();
                        FiltersController.Companion.getInstance(i).loadConfig(preferences);
                    }
                    break;
                case 6:
                    if (preferences.contains(TelegramPreferenceKeys.User.selectedMessagePopupItems())) {
                        ToolsController companion = ToolsController.Companion.getInstance(i);
                        companion.getSelectedMessagePopupItems().add(MessagePopupItem.COPY_IMAGE);
                        companion.saveConfig();
                        Unit unit6 = Unit.INSTANCE;
                    }
                    break;
                case 7:
                    if (preferences.contains(TelegramPreferenceKeys.User.selectedMessagePopupItems())) {
                        ToolsController companion2 = ToolsController.Companion.getInstance(i);
                        companion2.getSelectedMessagePopupItems().add(MessagePopupItem.SAVE_AS);
                        companion2.saveConfig();
                        Unit unit7 = Unit.INSTANCE;
                    }
                    String stringPlus = Intrinsics.stringPlus("iMe_", "allChatsTabFabs");
                    if (preferences.contains(stringPlus)) {
                        SharedPreferences.Editor edit6 = preferences.edit();
                        String string5 = preferences.getString(stringPlus, null);
                        if (string5 != null) {
                            edit6.remove(stringPlus);
                            String selectedAllChatsTabFabs2 = TelegramPreferenceKeys.User.selectedAllChatsTabFabs();
                            FilterFab.Companion companion3 = FilterFab.Companion;
                            edit6.putStringSet(selectedAllChatsTabFabs2, companion3.mapEnumsToNames(companion3.mapOldPreferenceJsonToEnums(string5)));
                        }
                        Unit unit8 = Unit.INSTANCE;
                        edit6.apply();
                        z = true;
                    } else {
                        z = false;
                    }
                    if (preferences.contains(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
                        SharedPreferences.Editor edit7 = preferences.edit();
                        for (SortingFilter sortingFilter8 : SortingFilter.values()) {
                            String str4 = "iMe_sortingTab_" + sortingFilter8.name() + "_fabs";
                            String string6 = preferences.getString(str4, null);
                            if (string6 != null) {
                                edit7.remove(str4);
                                String buildSortingTabSelectedFabsKey2 = TelegramPreferenceKeys.User.buildSortingTabSelectedFabsKey(sortingFilter8);
                                FilterFab.Companion companion4 = FilterFab.Companion;
                                edit7.putStringSet(buildSortingTabSelectedFabsKey2, companion4.mapEnumsToNames(companion4.mapOldPreferenceJsonToEnums(string6)));
                            }
                        }
                        Unit unit9 = Unit.INSTANCE;
                        edit7.apply();
                        z = true;
                    }
                    if (z) {
                        FiltersController.Companion.getInstance(i).loadConfig(preferences);
                    }
                    break;
                case 8:
                    if (preferences.contains(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
                        SharedPreferences.Editor edit8 = preferences.edit();
                        int i13 = preferences.getInt("iMe_sortingTab_ARCHIVE_MENTIONED_CHATS_position", -1);
                        if (i13 != -1) {
                            for (SortingFilter sortingFilter9 : SortingFilter.Companion.getSortingFilters(r5)) {
                                int i14 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter9), sortingFilter9.groupOrdinal());
                                if (i14 > i13) {
                                    edit8.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter9), i14 - 1);
                                }
                            }
                        }
                        Unit unit10 = Unit.INSTANCE;
                        edit8.apply();
                        FiltersController.Companion.getInstance(i).loadConfig(preferences);
                    }
                    break;
                case 9:
                    if (preferences.contains(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
                        FiltersController companion5 = FiltersController.Companion.getInstance(i);
                        sortedWith = CollectionsKt___CollectionsKt.sortedWith(companion5.getSortingTabs(), new Comparator() { // from class: com.smedialink.common.TelegramPreferenceMigrationManager$migrateUserPreferences$lambda-34$$inlined$sortedBy$1
                            @Override // java.util.Comparator
                            public final int compare(T t, T t2) {
                                int compareValues;
                                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((SortingTabState) t).getPosition()), Integer.valueOf(((SortingTabState) t2).getPosition()));
                                return compareValues;
                            }
                        });
                        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10);
                        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
                        int i15 = 0;
                        for (Object obj : sortedWith) {
                            int i16 = i15 + 1;
                            if (i15 < 0) {
                                CollectionsKt__CollectionsKt.throwIndexOverflow();
                            }
                            SortingTabState sortingTabState = (SortingTabState) obj;
                            sortingTabState.setPosition(i15);
                            Unit unit11 = Unit.INSTANCE;
                            arrayList3.add(sortingTabState);
                            i15 = i16;
                        }
                        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList3);
                        companion5.setSortingTabs(mutableList);
                        sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(companion5.getArchiveSortingTabs(), new Comparator() { // from class: com.smedialink.common.TelegramPreferenceMigrationManager$migrateUserPreferences$lambda-34$$inlined$sortedBy$2
                            @Override // java.util.Comparator
                            public final int compare(T t, T t2) {
                                int compareValues;
                                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((SortingTabState) t).getPosition()), Integer.valueOf(((SortingTabState) t2).getPosition()));
                                return compareValues;
                            }
                        });
                        collectionSizeOrDefault4 = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith2, 10);
                        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault4);
                        int i17 = 0;
                        for (Object obj2 : sortedWith2) {
                            int i18 = i17 + 1;
                            if (i17 < 0) {
                                CollectionsKt__CollectionsKt.throwIndexOverflow();
                            }
                            SortingTabState sortingTabState2 = (SortingTabState) obj2;
                            sortingTabState2.setPosition(i17);
                            Unit unit12 = Unit.INSTANCE;
                            arrayList4.add(sortingTabState2);
                            i17 = i18;
                        }
                        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList4);
                        companion5.setArchiveSortingTabs(mutableList2);
                        companion5.saveConfig();
                        Unit unit13 = Unit.INSTANCE;
                    }
                    break;
                case 10:
                    if (preferences.contains(TelegramPreferenceKeys.User.selectedMessagePopupItems())) {
                        ToolsController companion6 = ToolsController.Companion.getInstance(i);
                        companion6.getSelectedMessagePopupItems().add(MessagePopupItem.SHARE);
                        companion6.saveConfig();
                        Unit unit14 = Unit.INSTANCE;
                    }
                    break;
            }
            preferences.edit().putInt("iMe_userPreferencesVersion", i5).apply();
            if (i5 == 9) {
                return;
            }
            i5 = i6;
            r3 = 0;
            r5 = 1;
        }
    }
}
