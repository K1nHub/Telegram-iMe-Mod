package com.iMe.common;

import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.FiltersController;
import com.iMe.fork.controller.MultiPanelController;
import com.iMe.fork.controller.RecentChatsController;
import com.iMe.fork.controller.ToolsController;
import com.iMe.fork.enums.DialogType;
import com.iMe.fork.enums.MessagePopupItem;
import com.iMe.fork.enums.MultiPanelButton;
import com.iMe.fork.enums.PhotoViewerMenuItem;
import com.iMe.fork.enums.RecentChatsDialogType;
import com.iMe.fork.enums.SortingFilter;
import com.iMe.fork.models.SortingTabState;
import com.iMe.p031ui.drawer.DrawerAccountData;
import com.iMe.p031ui.drawer.DrawerSwitchableItem;
import com.iMe.storage.data.utils.extentions.GsonExtKt;
import com.iMe.storage.domain.model.filters.FilterFab;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.SharedConfig;
/* compiled from: TelegramPreferenceMigrationManager.kt */
/* loaded from: classes3.dex */
public final class TelegramPreferenceMigrationManager {
    static {
        new TelegramPreferenceMigrationManager();
    }

    private TelegramPreferenceMigrationManager() {
    }

    public static final void migrateGlobalPreferences(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        for (int i = preferences.getInt("iMe_globalPreferencesVersion", 0) + 1; i < 10; i++) {
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
                        case 6:
                            if (preferences.contains(TelegramPreferenceKeys.Global.selectedDrawerItems())) {
                                preferences.edit().remove("forwardingOptionsHintShown").apply();
                                break;
                            } else {
                                continue;
                            }
                        case 7:
                            if (preferences.contains(TelegramPreferenceKeys.Global.selectedDrawerItems())) {
                                Set<DrawerSwitchableItem> set = SharedConfig.selectedDrawerItems;
                                set.add(DrawerSwitchableItem.CATALOG);
                                SharedConfig.setSelectedDrawerItems(set);
                                break;
                            } else {
                                continue;
                            }
                        case 8:
                            if (preferences.contains(TelegramPreferenceKeys.Global.selectedPhotoViewerMenuItems())) {
                                Set<PhotoViewerMenuItem> set2 = SharedConfig.selectedPhotoViewerMenuItems;
                                set2.add(PhotoViewerMenuItem.COPY_IMAGE);
                                set2.add(PhotoViewerMenuItem.CLEAR_CACHE);
                                SharedConfig.setSelectedPhotoViewerMenuItems(set2);
                                break;
                            } else {
                                continue;
                            }
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
                            } else {
                                continue;
                            }
                    }
                }
            } else if (preferences.contains(TelegramPreferenceKeys.Global.selectedDrawerItems())) {
                Set<DrawerSwitchableItem> set3 = SharedConfig.selectedDrawerItems;
                set3.add(DrawerSwitchableItem.ALBUMS);
                SharedConfig.setSelectedDrawerItems(set3);
            }
            preferences.edit().putInt("iMe_globalPreferencesVersion", i).apply();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v11 */
    public static final void migrateUserPreferences(int i, SharedPreferences preferences) {
        boolean z;
        int i2;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int i3;
        int i4;
        boolean z2;
        List sortedWith;
        int collectionSizeOrDefault3;
        List<SortingTabState> mutableList;
        List sortedWith2;
        int collectionSizeOrDefault4;
        List<SortingTabState> mutableList2;
        Set<FilterFab> mutableSetOf;
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        ?? r3 = 0;
        int i5 = 1;
        int i6 = preferences.getInt("iMe_userPreferencesVersion", 0) + 1;
        while (i6 < 14) {
            String str = null;
            switch (i6) {
                case 1:
                    if (preferences.contains(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
                        SharedPreferences.Editor edit = preferences.edit();
                        SortingFilter sortingFilter = SortingFilter.GROUPS;
                        int i7 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter), sortingFilter.groupOrdinal());
                        z = false;
                        for (SortingFilter sortingFilter2 : SortingFilter.Companion.getSortingFilters(false)) {
                            if (sortingFilter2 != SortingFilter.PRIVATE_GROUPS && sortingFilter2 != SortingFilter.PUBLIC_GROUPS && (i2 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter2), sortingFilter2.groupOrdinal())) > i7) {
                                edit.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter2), i2 + 2);
                            }
                        }
                        edit.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(SortingFilter.PRIVATE_GROUPS), i7 + 1);
                        edit.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(SortingFilter.PUBLIC_GROUPS), i7 + 2);
                        edit.apply();
                        FiltersController.Companion.getInstance(i).loadConfig(preferences);
                        break;
                    }
                    z = false;
                    break;
                case 2:
                default:
                    z = r3;
                    break;
                case 3:
                    if (preferences.contains(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
                        SharedPreferences.Editor edit2 = preferences.edit();
                        for (SortingFilter sortingFilter3 : SortingFilter.Companion.getSortingFilters(r3)) {
                            String str2 = "iMe_sortingTab_" + sortingFilter3.name() + "_fab";
                            String str3 = "iMe_sortingTab_" + sortingFilter3.name() + "_multiFabs";
                            String string = preferences.getString(str2, str);
                            if (string != null) {
                                Intrinsics.checkNotNullExpressionValue(string, "preferences.getString(ol…        ?: return@forEach");
                                String string2 = preferences.getString(str3, str);
                                if (string2 != null) {
                                    Intrinsics.checkNotNullExpressionValue(string2, "preferences.getString(ol…        ?: return@forEach");
                                    Set<FilterFab> mapOldPreferenceJsonToEnums = Intrinsics.areEqual(string, "fab_multi") ? FilterFab.Companion.mapOldPreferenceJsonToEnums(string2) : SetsKt__SetsJVMKt.setOf(FilterFab.Companion.findByOldPreferenceId(string));
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
                                }
                            }
                            str = null;
                        }
                        String string3 = preferences.getString("iMe_allChatsTabFab", null);
                        String string4 = preferences.getString("iMe_allChatsTabMultiFabs", null);
                        if (string3 != null && string4 != null) {
                            Set<FilterFab> mapOldPreferenceJsonToEnums2 = Intrinsics.areEqual(string3, "fab_multi") ? FilterFab.Companion.mapOldPreferenceJsonToEnums(string4) : SetsKt__SetsJVMKt.setOf(FilterFab.Companion.findByOldPreferenceId(string3));
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
                        edit2.apply();
                        FiltersController.Companion.getInstance(i).loadConfig(preferences);
                        z = false;
                        break;
                    }
                    z = r3;
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
                        edit3.putBoolean(TelegramPreferenceKeys.User.buildMultiPanelButtonEnabledKey(multiPanelButton3, dialogType3), i5);
                        edit3.apply();
                        MultiPanelController.Companion.getInstance(i).loadConfig(preferences);
                    }
                    z = r3;
                    break;
                case 5:
                    if (preferences.contains(TelegramPreferenceKeys.User.isMultiPanelEnabled())) {
                        SharedPreferences.Editor edit4 = preferences.edit();
                        for (MultiPanelButton multiPanelButton4 : DialogType.CHANNEL.getMultiPanelButtons()) {
                            if (multiPanelButton4 != MultiPanelButton.MUTE && multiPanelButton4 != MultiPanelButton.PINS) {
                                DialogType dialogType4 = DialogType.CHANNEL;
                                edit4.putInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton4, dialogType4), preferences.getInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton4, dialogType4), r3) + i5);
                            }
                        }
                        MultiPanelButton multiPanelButton5 = MultiPanelButton.MUTE;
                        DialogType dialogType5 = DialogType.CHANNEL;
                        edit4.putInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton5, dialogType5), r3);
                        edit4.putBoolean(TelegramPreferenceKeys.User.buildMultiPanelButtonEnabledKey(multiPanelButton5, dialogType5), i5);
                        DialogType[] values = DialogType.values();
                        int length = values.length;
                        for (int i10 = r3; i10 < length; i10++) {
                            DialogType dialogType6 = values[i10];
                            int i11 = r3;
                            for (MultiPanelButton multiPanelButton6 : dialogType6.getMultiPanelButtons()) {
                                i11 = Math.max(i11, preferences.getInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton6, dialogType6), r3));
                            }
                            MultiPanelButton multiPanelButton7 = MultiPanelButton.PINS;
                            edit4.putInt(TelegramPreferenceKeys.User.buildMultiPanelButtonPositionKey(multiPanelButton7, dialogType6), i11 + 1);
                            edit4.putBoolean(TelegramPreferenceKeys.User.buildMultiPanelButtonEnabledKey(multiPanelButton7, dialogType6), multiPanelButton7.isEnabledByDefault());
                        }
                        edit4.apply();
                        MultiPanelController.Companion.getInstance(i).loadConfig(preferences);
                    }
                    if (preferences.contains(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
                        SharedPreferences.Editor edit5 = preferences.edit();
                        SortingFilter sortingFilter4 = SortingFilter.PERSONAL;
                        int i12 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter4), sortingFilter4.groupOrdinal());
                        for (SortingFilter sortingFilter5 : SortingFilter.Companion.getSortingFilters(r3)) {
                            if (sortingFilter5 != SortingFilter.MENTIONED_CHATS && sortingFilter5 != SortingFilter.DELETED_USERS && sortingFilter5 != SortingFilter.LIVE_CHATS && (i4 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter5), sortingFilter5.groupOrdinal())) > i12) {
                                edit5.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter5), i4 + 2);
                            }
                        }
                        edit5.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(SortingFilter.MENTIONED_CHATS), i12 + 1);
                        edit5.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(SortingFilter.DELETED_USERS), i12 + 2);
                        SortingFilter sortingFilter6 = SortingFilter.CHANNELS;
                        int i13 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter6), sortingFilter6.groupOrdinal());
                        for (SortingFilter sortingFilter7 : SortingFilter.Companion.getSortingFilters(r3)) {
                            if (sortingFilter7 != SortingFilter.LIVE_CHATS && (i3 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter7), sortingFilter7.groupOrdinal())) > i13) {
                                edit5.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter7), i3 + 1);
                            }
                        }
                        edit5.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(SortingFilter.LIVE_CHATS), i13 + 1);
                        edit5.apply();
                        FiltersController.Companion.getInstance(i).loadConfig(preferences);
                    }
                    z = r3;
                    break;
                case 6:
                    if (preferences.contains(TelegramPreferenceKeys.User.selectedMessagePopupItems())) {
                        ToolsController companion = ToolsController.Companion.getInstance(i);
                        companion.getSelectedMessagePopupItems().add(MessagePopupItem.COPY_IMAGE);
                        companion.saveConfig();
                    }
                    z = r3;
                    break;
                case 7:
                    if (preferences.contains(TelegramPreferenceKeys.User.selectedMessagePopupItems())) {
                        ToolsController companion2 = ToolsController.Companion.getInstance(i);
                        companion2.getSelectedMessagePopupItems().add(MessagePopupItem.SAVE_AS);
                        companion2.saveConfig();
                    }
                    if (preferences.contains("iMe_allChatsTabFabs")) {
                        SharedPreferences.Editor edit6 = preferences.edit();
                        String string5 = preferences.getString("iMe_allChatsTabFabs", null);
                        if (string5 != null) {
                            Intrinsics.checkNotNullExpressionValue(string5, "preferences.getString(ol…          ?: return@apply");
                            edit6.remove("iMe_allChatsTabFabs");
                            String selectedAllChatsTabFabs2 = TelegramPreferenceKeys.User.selectedAllChatsTabFabs();
                            FilterFab.Companion companion3 = FilterFab.Companion;
                            edit6.putStringSet(selectedAllChatsTabFabs2, companion3.mapEnumsToNames(companion3.mapOldPreferenceJsonToEnums(string5)));
                        }
                        edit6.apply();
                        z2 = i5;
                    } else {
                        z2 = r3;
                    }
                    if (preferences.contains(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
                        SharedPreferences.Editor edit7 = preferences.edit();
                        SortingFilter[] values2 = SortingFilter.values();
                        int length2 = values2.length;
                        for (int i14 = r3; i14 < length2; i14++) {
                            SortingFilter sortingFilter8 = values2[i14];
                            String str4 = "iMe_sortingTab_" + sortingFilter8.name() + "_fabs";
                            String string6 = preferences.getString(str4, null);
                            if (string6 != null) {
                                Intrinsics.checkNotNullExpressionValue(string6, "preferences.getString(ol…        ?: return@forEach");
                                edit7.remove(str4);
                                String buildSortingTabSelectedFabsKey2 = TelegramPreferenceKeys.User.buildSortingTabSelectedFabsKey(sortingFilter8);
                                FilterFab.Companion companion4 = FilterFab.Companion;
                                edit7.putStringSet(buildSortingTabSelectedFabsKey2, companion4.mapEnumsToNames(companion4.mapOldPreferenceJsonToEnums(string6)));
                            }
                        }
                        edit7.apply();
                        z2 = i5;
                    }
                    if (z2) {
                        FiltersController.Companion.getInstance(i).loadConfig(preferences);
                    }
                    z = r3;
                    break;
                case 8:
                    if (preferences.contains(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
                        SharedPreferences.Editor edit8 = preferences.edit();
                        int i15 = preferences.getInt("iMe_sortingTab_ARCHIVE_MENTIONED_CHATS_position", -1);
                        if (i15 != -1) {
                            for (SortingFilter sortingFilter9 : SortingFilter.Companion.getSortingFilters(i5)) {
                                int i16 = preferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter9), sortingFilter9.groupOrdinal());
                                if (i16 > i15) {
                                    edit8.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter9), i16 - 1);
                                }
                            }
                        }
                        edit8.apply();
                        FiltersController.Companion.getInstance(i).loadConfig(preferences);
                    }
                    z = r3;
                    break;
                case 9:
                    if (preferences.contains(TelegramPreferenceKeys.User.isSortingChatsEnabled())) {
                        FiltersController companion5 = FiltersController.Companion.getInstance(i);
                        sortedWith = CollectionsKt___CollectionsKt.sortedWith(companion5.getSortingTabs(), new Comparator() { // from class: com.iMe.common.TelegramPreferenceMigrationManager$migrateUserPreferences$lambda$32$$inlined$sortedBy$1
                            @Override // java.util.Comparator
                            public final int compare(T t, T t2) {
                                int compareValues;
                                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((SortingTabState) t).getPosition()), Integer.valueOf(((SortingTabState) t2).getPosition()));
                                return compareValues;
                            }
                        });
                        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10);
                        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
                        int i17 = r3;
                        for (Object obj : sortedWith) {
                            int i18 = i17 + 1;
                            if (i17 < 0) {
                                CollectionsKt__CollectionsKt.throwIndexOverflow();
                            }
                            SortingTabState sortingTabState = (SortingTabState) obj;
                            sortingTabState.setPosition(i17);
                            arrayList3.add(sortingTabState);
                            i17 = i18;
                        }
                        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList3);
                        companion5.setSortingTabs(mutableList);
                        sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(companion5.getArchiveSortingTabs(), new Comparator() { // from class: com.iMe.common.TelegramPreferenceMigrationManager$migrateUserPreferences$lambda$32$$inlined$sortedBy$2
                            @Override // java.util.Comparator
                            public final int compare(T t, T t2) {
                                int compareValues;
                                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((SortingTabState) t).getPosition()), Integer.valueOf(((SortingTabState) t2).getPosition()));
                                return compareValues;
                            }
                        });
                        collectionSizeOrDefault4 = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith2, 10);
                        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault4);
                        int i19 = r3;
                        for (Object obj2 : sortedWith2) {
                            int i20 = i19 + 1;
                            if (i19 < 0) {
                                CollectionsKt__CollectionsKt.throwIndexOverflow();
                            }
                            SortingTabState sortingTabState2 = (SortingTabState) obj2;
                            sortingTabState2.setPosition(i19);
                            arrayList4.add(sortingTabState2);
                            i19 = i20;
                        }
                        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList4);
                        companion5.setArchiveSortingTabs(mutableList2);
                        companion5.saveConfig();
                    }
                    z = r3;
                    break;
                case 10:
                    if (preferences.contains(TelegramPreferenceKeys.User.selectedMessagePopupItems())) {
                        ToolsController companion6 = ToolsController.Companion.getInstance(i);
                        companion6.getSelectedMessagePopupItems().add(MessagePopupItem.SHARE);
                        companion6.saveConfig();
                    }
                    z = r3;
                    break;
                case 11:
                    if (preferences.contains(TelegramPreferenceKeys.User.selectedRecentChatsDialogTypes())) {
                        RecentChatsController companion7 = RecentChatsController.Companion.getInstance(i);
                        companion7.getSelectedRecentChatsDialogTypes().add(RecentChatsDialogType.FORUM);
                        companion7.saveConfig();
                    }
                    z = r3;
                    break;
                case 12:
                    if (preferences.contains(TelegramPreferenceKeys.User.selectedMessagePopupItems())) {
                        ToolsController companion8 = ToolsController.Companion.getInstance(i);
                        companion8.getSelectedMessagePopupItems().add(MessagePopupItem.FORWARD_ONLY_CLOUD);
                        companion8.saveConfig();
                    }
                    z = r3;
                    break;
                case 13:
                    FiltersController companion9 = FiltersController.Companion.getInstance(i);
                    FilterFab[] filterFabArr = new FilterFab[i5];
                    filterFabArr[r3] = FilterFab.CREATE_STORY;
                    mutableSetOf = SetsKt__SetsKt.mutableSetOf(filterFabArr);
                    companion9.setSelectedAllChatsTabFabs(mutableSetOf);
                    companion9.saveConfig();
                    z = r3;
                    break;
            }
            preferences.edit().putInt("iMe_userPreferencesVersion", i6).apply();
            i6++;
            r3 = z;
            i5 = 1;
        }
    }
}
