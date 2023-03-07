package org.fork.controller;

import android.content.SharedPreferences;
import com.smedialink.common.TelegramPreferenceKeys;
import com.smedialink.storage.data.locale.p027db.dao.main.FiltersDao;
import com.smedialink.storage.data.locale.p027db.model.filter.FilterSettingsDb;
import com.smedialink.storage.data.mapper.filter.FilterSettingsMappingKt;
import com.smedialink.storage.domain.model.filters.FilterFab;
import com.smedialink.storage.domain.model.filters.FilterSettingsModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.fork.controller.FiltersController;
import org.fork.enums.SortingFilter;
import org.fork.models.SortingTabState;
import org.fork.models.backup.Backup;
import org.fork.models.backup.BackupMappingKt;
import org.fork.models.backup.SortingTabStateBackup;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.FilterCreateActivity;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: FiltersController.kt */
/* loaded from: classes4.dex */
public final class FiltersController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, FiltersController> accountInstances = new ConcurrentHashMap<>(5);
    private final List<SortingTabState> activeArchiveSortingTabs;
    private final List<SortingTabState> activeSortingTabs;
    private List<SortingTabState> archiveSortingTabs;
    private final Map<Integer, FilterSettingsModel> filterSettings;
    private final Lazy filtersDao$delegate;
    private boolean isAllChatsTabEnabled;
    private boolean isArchiveSortingChatsEnabled;
    private boolean isFoldersFirstEnabled;
    private boolean isHideFoldersEnabled;
    private boolean isIconInsteadAllChatsTabTitleEnabled;
    private boolean isSortingChatsEnabled;
    private Set<FilterFab> selectedAllChatsTabFabs;
    private List<SortingTabState> sortingTabs;

    public static final FiltersController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public FiltersController(int i) {
        super(i);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new FiltersController$special$$inlined$inject$default$1(this, null, null));
        this.filtersDao$delegate = lazy;
        this.isHideFoldersEnabled = TelegramPreferenceKeys.User.Default.isHideFoldersEnabled();
        this.isFoldersFirstEnabled = TelegramPreferenceKeys.User.Default.isFoldersFirstEnabled();
        this.isAllChatsTabEnabled = TelegramPreferenceKeys.User.Default.isAllChatsTabEnabled();
        this.isIconInsteadAllChatsTabTitleEnabled = TelegramPreferenceKeys.User.Default.isIconInsteadAllChatsTabTitleEnabled();
        this.selectedAllChatsTabFabs = new LinkedHashSet();
        this.sortingTabs = new ArrayList();
        this.archiveSortingTabs = new ArrayList();
        this.isSortingChatsEnabled = TelegramPreferenceKeys.User.Default.isSortingChatsEnabled();
        this.isArchiveSortingChatsEnabled = TelegramPreferenceKeys.User.Default.isArchiveSortingChatsEnabled();
        this.filterSettings = new LinkedHashMap();
        this.activeSortingTabs = new ArrayList();
        this.activeArchiveSortingTabs = new ArrayList();
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final FiltersDao getFiltersDao() {
        return (FiltersDao) this.filtersDao$delegate.getValue();
    }

    public final boolean isHideFoldersEnabled() {
        return this.isHideFoldersEnabled;
    }

    public final void setHideFoldersEnabled(boolean z) {
        this.isHideFoldersEnabled = z;
    }

    public final boolean isFoldersFirstEnabled() {
        return this.isFoldersFirstEnabled;
    }

    public final void setFoldersFirstEnabled(boolean z) {
        this.isFoldersFirstEnabled = z;
    }

    public final boolean isAllChatsTabEnabled() {
        return this.isAllChatsTabEnabled;
    }

    public final void setAllChatsTabEnabled(boolean z) {
        this.isAllChatsTabEnabled = z;
    }

    public final boolean isIconInsteadAllChatsTabTitleEnabled() {
        return this.isIconInsteadAllChatsTabTitleEnabled;
    }

    public final void setIconInsteadAllChatsTabTitleEnabled(boolean z) {
        this.isIconInsteadAllChatsTabTitleEnabled = z;
    }

    public final Set<FilterFab> getSelectedAllChatsTabFabs() {
        return this.selectedAllChatsTabFabs;
    }

    public final void setSelectedAllChatsTabFabs(Set<FilterFab> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.selectedAllChatsTabFabs = set;
    }

    public final List<SortingTabState> getSortingTabs() {
        return this.sortingTabs;
    }

    public final void setSortingTabs(List<SortingTabState> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.sortingTabs = list;
    }

    public final List<SortingTabState> getArchiveSortingTabs() {
        return this.archiveSortingTabs;
    }

    public final void setArchiveSortingTabs(List<SortingTabState> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.archiveSortingTabs = list;
    }

    public final void loadConfig(SharedPreferences preferences) {
        Set<String> selectedAllChatsTabFabs;
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        setHideFoldersEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isHideFoldersEnabled(), TelegramPreferenceKeys.User.Default.isHideFoldersEnabled()));
        setFoldersFirstEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isFoldersFirstEnabled(), TelegramPreferenceKeys.User.Default.isFoldersFirstEnabled()));
        setAllChatsTabEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isAllChatsTabEnabled(), TelegramPreferenceKeys.User.Default.isAllChatsTabEnabled()));
        setIconInsteadAllChatsTabTitleEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isIconInsteadAllChatsTabTitleEnabled(), TelegramPreferenceKeys.User.Default.isIconInsteadAllChatsTabTitleEnabled()));
        FilterFab.Companion companion = FilterFab.Companion;
        try {
            selectedAllChatsTabFabs = preferences.getStringSet(TelegramPreferenceKeys.User.selectedAllChatsTabFabs(), TelegramPreferenceKeys.User.Default.selectedAllChatsTabFabs());
        } catch (ClassCastException unused) {
            preferences.edit().remove(TelegramPreferenceKeys.User.selectedAllChatsTabFabs()).apply();
            selectedAllChatsTabFabs = TelegramPreferenceKeys.User.Default.selectedAllChatsTabFabs();
        }
        setSelectedAllChatsTabFabs(companion.mapNamesToEnums(selectedAllChatsTabFabs));
        this.isSortingChatsEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isSortingChatsEnabled(), TelegramPreferenceKeys.User.Default.isSortingChatsEnabled());
        this.isArchiveSortingChatsEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isArchiveSortingChatsEnabled(), TelegramPreferenceKeys.User.Default.isArchiveSortingChatsEnabled());
        loadSortingTabsConfig(false, preferences);
        loadSortingTabsConfig(true, preferences);
        refreshActiveSortingTabs(false);
        refreshActiveSortingTabs(true);
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isHideFoldersEnabled(), isHideFoldersEnabled());
        edit.putBoolean(TelegramPreferenceKeys.User.isFoldersFirstEnabled(), isFoldersFirstEnabled());
        edit.putBoolean(TelegramPreferenceKeys.User.isAllChatsTabEnabled(), isAllChatsTabEnabled());
        edit.putBoolean(TelegramPreferenceKeys.User.isIconInsteadAllChatsTabTitleEnabled(), isIconInsteadAllChatsTabTitleEnabled());
        edit.putStringSet(TelegramPreferenceKeys.User.selectedAllChatsTabFabs(), FilterFab.Companion.mapEnumsToNames(getSelectedAllChatsTabFabs()));
        edit.putBoolean(TelegramPreferenceKeys.User.isSortingChatsEnabled(), this.isSortingChatsEnabled);
        edit.putBoolean(TelegramPreferenceKeys.User.isArchiveSortingChatsEnabled(), this.isArchiveSortingChatsEnabled);
        Intrinsics.checkNotNullExpressionValue(edit, "this");
        saveSortingTabsConfig(false, edit);
        saveSortingTabsConfig(true, edit);
        edit.apply();
    }

    public final List<FilterSettingsModel> getFiltersBackupData() {
        List<FilterSettingsModel> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.filterSettings.values());
        return mutableList;
    }

    public final void restoreBackup(Backup backup) {
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.getHideFolders() != null) {
            this.isHideFoldersEnabled = backup.getHideFolders().booleanValue();
        }
        if (backup.getFoldersFirst() != null) {
            this.isFoldersFirstEnabled = backup.getFoldersFirst().booleanValue();
        }
        if (backup.getFilters() != null) {
            FiltersDao filtersDao = getFiltersDao();
            long j = getUserConfig().clientUserId;
            List<FilterSettingsModel> filters = backup.getFilters();
            ArrayList arrayList = new ArrayList();
            for (Object obj : filters) {
                if (getMessagesController().dialogFiltersById.get(((FilterSettingsModel) obj).getFilterId()) != null) {
                    arrayList.add(obj);
                }
            }
            filtersDao.restoreBackup(j, arrayList);
        }
        saveConfig();
    }

    public final void restoreAllChatsTabBackup(Backup backup) {
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.isAllChatsTabEnabled() != null) {
            this.isAllChatsTabEnabled = backup.isAllChatsTabEnabled().booleanValue();
        }
        if (backup.getIconInsteadAllChatsTabTitle() != null) {
            this.isIconInsteadAllChatsTabTitleEnabled = backup.getIconInsteadAllChatsTabTitle().booleanValue();
        }
        if (backup.getAllChatsTabFabs() != null) {
            this.selectedAllChatsTabFabs = FilterFab.Companion.mapNamesToEnums(backup.getAllChatsTabFabs());
        }
    }

    public final void restoreSortingBackup(boolean z, Backup backup, BaseFragment parentFragment) {
        Intrinsics.checkNotNullParameter(backup, "backup");
        Intrinsics.checkNotNullParameter(parentFragment, "parentFragment");
        Boolean isArchiveSortingChatsEnabled = z ? backup.isArchiveSortingChatsEnabled() : backup.isSortingChatsEnabled();
        if (isArchiveSortingChatsEnabled != null) {
            if (z) {
                this.isArchiveSortingChatsEnabled = isArchiveSortingChatsEnabled.booleanValue();
            } else {
                this.isSortingChatsEnabled = isArchiveSortingChatsEnabled.booleanValue();
            }
        }
        List<SortingTabStateBackup> archiveSortingSettings = z ? backup.getArchiveSortingSettings() : backup.getSortingSettings();
        if (archiveSortingSettings != null) {
            List<SortingTabState> sortingTabs = getSortingTabs(z);
            sortingTabs.clear();
            ArrayList arrayList = new ArrayList();
            for (SortingTabStateBackup sortingTabStateBackup : archiveSortingSettings) {
                SortingTabState mapToDomain = BackupMappingKt.mapToDomain(sortingTabStateBackup);
                if (mapToDomain != null) {
                    arrayList.add(mapToDomain);
                }
            }
            sortingTabs.addAll(arrayList);
            if (sortingTabs.size() > 1) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(sortingTabs, new Comparator() { // from class: org.fork.controller.FiltersController$restoreSortingBackup$lambda-5$$inlined$sortBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((SortingTabState) t).getPosition()), Integer.valueOf(((SortingTabState) t2).getPosition()));
                        return compareValues;
                    }
                });
            }
            refreshActiveSortingTabs(z);
        }
        Map<String, Pair<List<Long>, List<Integer>>> archiveSortingPinnedChats = z ? backup.getArchiveSortingPinnedChats() : backup.getSortingPinnedChats();
        if (archiveSortingPinnedChats != null) {
            MessagesController messagesController = getMessagesController();
            ArrayList<MessagesController.DialogFilter> filters = z ? messagesController.archiveSortingDialogFilters : messagesController.sortingDialogFilters;
            Intrinsics.checkNotNullExpressionValue(filters, "filters");
            for (MessagesController.DialogFilter dialogFilter : filters) {
                dialogFilter.alwaysShow.clear();
                dialogFilter.pinnedDialogs.clear();
                Pair<List<Long>, List<Integer>> pair = archiveSortingPinnedChats.get(SortingFilter.Companion.getFilterByIdWithExtra(z, dialogFilter.f1434id).name());
                if (pair != null) {
                    int i = 0;
                    for (Object obj : pair.getFirst()) {
                        int i2 = i + 1;
                        if (i < 0) {
                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                        }
                        long longValue = ((Number) obj).longValue();
                        dialogFilter.alwaysShow.add(Long.valueOf(longValue));
                        dialogFilter.pinnedDialogs.put(longValue, pair.getSecond().get(i).intValue());
                        i = i2;
                    }
                    FilterCreateActivity.saveFilterToServer(dialogFilter, dialogFilter.flags, dialogFilter.name, dialogFilter.alwaysShow, dialogFilter.neverShow, dialogFilter.pinnedDialogs, false, false, true, true, false, parentFragment, null);
                }
            }
        }
    }

    public final List<SortingTabStateBackup> getBackupSortingTabs(boolean z) {
        int collectionSizeOrDefault;
        List<SortingTabStateBackup> mutableList;
        List<SortingTabState> sortingTabs = getSortingTabs(z);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortingTabs, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (SortingTabState sortingTabState : sortingTabs) {
            arrayList.add(BackupMappingKt.mapToBackup(sortingTabState));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    public final List<SortingTabState> getSortingTabs(boolean z) {
        return z ? this.archiveSortingTabs : this.sortingTabs;
    }

    public final List<SortingTabState> getActiveSortingTabs(boolean z) {
        return z ? this.activeArchiveSortingTabs : this.activeSortingTabs;
    }

    public final boolean isSortingEnabled(boolean z) {
        return z ? this.isArchiveSortingChatsEnabled : this.isSortingChatsEnabled;
    }

    public final void toggleSortingEnabled(boolean z) {
        if (z) {
            this.isArchiveSortingChatsEnabled = !this.isArchiveSortingChatsEnabled;
        } else {
            this.isSortingChatsEnabled = !this.isSortingChatsEnabled;
        }
    }

    public final void setSortingEnabled(boolean z, boolean z2) {
        if (z) {
            this.isArchiveSortingChatsEnabled = z2;
        } else {
            this.isSortingChatsEnabled = z2;
        }
    }

    public final SortingTabState getSortingFilterState(SortingFilter sortingFilter) {
        Object obj;
        boolean z;
        Intrinsics.checkNotNullParameter(sortingFilter, "sortingFilter");
        Iterator<T> it = getSortingTabs(sortingFilter.isArchive()).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((SortingTabState) obj).getType() == sortingFilter) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                break;
            }
        }
        Intrinsics.checkNotNull(obj);
        return (SortingTabState) obj;
    }

    public final void disableSortingFilter(SortingFilter sortingFilter) {
        Intrinsics.checkNotNullParameter(sortingFilter, "sortingFilter");
        getSortingFilterState(sortingFilter).setEnabled(false);
        refreshActiveSortingTabs(sortingFilter.isArchive());
    }

    public final void switchSortingFilterEnabled(boolean z, int i) {
        SortingTabState sortingTabState = getSortingTabs(z).get(i);
        sortingTabState.setEnabled(!sortingTabState.isEnabled());
        refreshActiveSortingTabs(z);
    }

    public final void swapSortingFilters(boolean z, int i, int i2) {
        List<SortingTabState> sortingTabs = getSortingTabs(z);
        SortingTabState sortingTabState = sortingTabs.get(i);
        SortingTabState sortingTabState2 = sortingTabs.get(i2);
        sortingTabState.setPosition(i2);
        sortingTabState2.setPosition(i);
        sortingTabs.set(i, sortingTabState2);
        sortingTabs.set(i2, sortingTabState);
        refreshActiveSortingTabs(z);
    }

    public final int getActiveSortingTabsCount(boolean z) {
        if (isSortingEnabled(z)) {
            return getActiveSortingTabs(z).size();
        }
        return 0;
    }

    public final void loadFilterSettings() {
        int collectionSizeOrDefault;
        Map<Integer, FilterSettingsModel> map = this.filterSettings;
        map.clear();
        List<FilterSettingsDb> filterSettings = getFiltersDao().getFilterSettings(getUserConfig().clientUserId);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(filterSettings, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (FilterSettingsDb filterSettingsDb : filterSettings) {
            arrayList.add(TuplesKt.m100to(Integer.valueOf(filterSettingsDb.getFilterId()), FilterSettingsMappingKt.mapToDomain(filterSettingsDb)));
        }
        MapsKt__MapsKt.putAll(map, arrayList);
    }

    public final void addOrEditFilterSettings(final FilterSettingsModel settings) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.FiltersController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FiltersController.m1906addOrEditFilterSettings$lambda14(FiltersController.this, settings);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: addOrEditFilterSettings$lambda-14  reason: not valid java name */
    public static final void m1906addOrEditFilterSettings$lambda14(FiltersController this$0, FilterSettingsModel settings) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(settings, "$settings");
        this$0.filterSettings.put(Integer.valueOf(settings.getFilterId()), settings);
        this$0.getFiltersDao().insert((FiltersDao) FilterSettingsMappingKt.mapToDb(settings, this$0.getUserConfig().clientUserId));
    }

    public final void removeFilterSettings(int i) {
        this.filterSettings.remove(Integer.valueOf(i));
        getFiltersDao().removeFilterSettings(i, getUserConfig().clientUserId);
    }

    public final FilterSettingsModel getSettings(int i) {
        Set mutableSetOf;
        FilterSettingsModel filterSettingsModel = this.filterSettings.get(Integer.valueOf(i));
        if (filterSettingsModel == null) {
            mutableSetOf = SetsKt__SetsKt.mutableSetOf(FilterFab.CREATE_CHAT);
            return new FilterSettingsModel(i, mutableSetOf, null);
        }
        return filterSettingsModel;
    }

    public final Map<String, Pair<List<Long>, List<Integer>>> getPinnedChats(boolean z) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<String, Pair<List<Long>, List<Integer>>> mutableMap;
        MessagesController messagesController = getMessagesController();
        ArrayList<MessagesController.DialogFilter> filters = z ? messagesController.archiveSortingDialogFilters : messagesController.sortingDialogFilters;
        Intrinsics.checkNotNullExpressionValue(filters, "filters");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(filters, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (MessagesController.DialogFilter dialogFilter : filters) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            int size = dialogFilter.pinnedDialogs.size();
            if (size > 0) {
                while (true) {
                    int i2 = i + 1;
                    arrayList.add(Long.valueOf(dialogFilter.pinnedDialogs.keyAt(i)));
                    arrayList2.add(Integer.valueOf(dialogFilter.pinnedDialogs.valueAt(i)));
                    if (i2 >= size) {
                        break;
                    }
                    i = i2;
                }
            }
            Pair m100to = TuplesKt.m100to(SortingFilter.Companion.getFilterByIdWithExtra(z, dialogFilter.f1434id).name(), TuplesKt.m100to(arrayList, arrayList2));
            linkedHashMap.put(m100to.getFirst(), m100to.getSecond());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        return mutableMap;
    }

    public final List<SortingTabState> getEnabledByDefaultTabs(boolean z) {
        List<SortingTabState> sortingTabs = getSortingTabs(z);
        ArrayList arrayList = new ArrayList();
        for (Object obj : sortingTabs) {
            if (((SortingTabState) obj).getType().isEnabledByDefault()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private final void loadSortingTabsConfig(boolean z, SharedPreferences sharedPreferences) {
        Set<String> of;
        Set<String> of2;
        List<SortingTabState> sortingTabs = getSortingTabs(z);
        sortingTabs.clear();
        for (SortingFilter sortingFilter : SortingFilter.Companion.getSortingFilters(z)) {
            FilterFab.Companion companion = FilterFab.Companion;
            try {
                String buildSortingTabSelectedFabsKey = TelegramPreferenceKeys.User.buildSortingTabSelectedFabsKey(sortingFilter);
                of2 = SetsKt__SetsJVMKt.setOf(sortingFilter.getFabByDefault().name());
                of = sharedPreferences.getStringSet(buildSortingTabSelectedFabsKey, of2);
            } catch (ClassCastException unused) {
                sharedPreferences.edit().remove(TelegramPreferenceKeys.User.buildSortingTabSelectedFabsKey(sortingFilter)).apply();
                of = SetsKt__SetsJVMKt.setOf(sortingFilter.getFabByDefault().name());
            }
            sortingTabs.add(new SortingTabState(sortingFilter, companion.mapNamesToEnums(of), sharedPreferences.getInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingFilter), sortingFilter.groupOrdinal()), sharedPreferences.getBoolean(TelegramPreferenceKeys.User.buildSortingTabEnabledKey(sortingFilter), sortingFilter.isEnabledByDefault())));
        }
        if (sortingTabs.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(sortingTabs, new Comparator() { // from class: org.fork.controller.FiltersController$loadSortingTabsConfig$lambda-20$lambda-19$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((SortingTabState) t).getPosition()), Integer.valueOf(((SortingTabState) t2).getPosition()));
                    return compareValues;
                }
            });
        }
    }

    private final void saveSortingTabsConfig(boolean z, SharedPreferences.Editor editor) {
        for (SortingTabState sortingTabState : getSortingTabs(z)) {
            editor.putInt(TelegramPreferenceKeys.User.buildSortingTabPositionKey(sortingTabState.getType()), sortingTabState.getPosition());
            editor.putBoolean(TelegramPreferenceKeys.User.buildSortingTabEnabledKey(sortingTabState.getType()), sortingTabState.isEnabled());
            editor.putStringSet(TelegramPreferenceKeys.User.buildSortingTabSelectedFabsKey(sortingTabState.getType()), FilterFab.Companion.mapEnumsToNames(sortingTabState.getFabs()));
        }
    }

    private final void refreshActiveSortingTabs(boolean z) {
        List<SortingTabState> activeSortingTabs = getActiveSortingTabs(z);
        activeSortingTabs.clear();
        List<SortingTabState> sortingTabs = getSortingTabs(z);
        ArrayList arrayList = new ArrayList();
        for (Object obj : sortingTabs) {
            if (((SortingTabState) obj).isEnabled()) {
                arrayList.add(obj);
            }
        }
        activeSortingTabs.addAll(arrayList);
    }

    /* compiled from: FiltersController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: getInstance$lambda-0  reason: not valid java name */
        public static final FiltersController m1907getInstance$lambda0(int i, Integer it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new FiltersController(i);
        }

        public final FiltersController getInstance(final int i) {
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(FiltersController.accountInstances, Integer.valueOf(i), new Function() { // from class: org.fork.controller.FiltersController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    FiltersController m1907getInstance$lambda0;
                    m1907getInstance$lambda0 = FiltersController.Companion.m1907getInstance$lambda0(i, (Integer) obj);
                    return m1907getInstance$lambda0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountInstances.compute…ontroller(accountIndex) }");
            return (FiltersController) computeIfAbsent;
        }
    }
}
