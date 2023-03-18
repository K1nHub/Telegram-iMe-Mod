package com.smedialink.storage.domain.model.filters;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.smedialink.storage.data.utils.extentions.GsonExtKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FilterFab.kt */
/* loaded from: classes3.dex */
public enum FilterFab {
    CREATE_CHAT,
    ARCHIVE,
    CLOUD,
    MARK_ALL_READ,
    WALLET,
    CONTACTS,
    MUSIC,
    ALBUMS,
    CREATE_ALBUM;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: FilterFab.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FilterFab.values().length];
            try {
                iArr[FilterFab.CREATE_CHAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FilterFab.ARCHIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FilterFab.CLOUD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FilterFab.MARK_ALL_READ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FilterFab.WALLET.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FilterFab.CONTACTS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[FilterFab.MUSIC.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[FilterFab.ALBUMS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[FilterFab.CREATE_ALBUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Set<String> mapEnumsToNames(Set<? extends FilterFab> set) {
        return Companion.mapEnumsToNames(set);
    }

    public static final Set<FilterFab> mapNamesToEnums(Set<String> set) {
        return Companion.mapNamesToEnums(set);
    }

    public final String getOldPreferenceId() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                return "fab_create";
            case 2:
                return "fab_archive";
            case 3:
                return "fab_cloud";
            case 4:
                return "fab_mark_all_read";
            case 5:
                return "fab_wallet";
            case 6:
                return "fab_contacts";
            case 7:
                return "fab_music";
            case 8:
                return "fab_albums";
            case 9:
                return "fab_create_album";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: FilterFab.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FilterFab mapNameToEnum(String name) {
            FilterFab filterFab;
            Intrinsics.checkNotNullParameter(name, "name");
            FilterFab[] values = FilterFab.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    filterFab = null;
                    break;
                }
                filterFab = values[i];
                if (Intrinsics.areEqual(filterFab.name(), name)) {
                    break;
                }
                i++;
            }
            return filterFab == null ? FilterFab.CREATE_CHAT : filterFab;
        }

        public final List<FilterFab> getFabsList() {
            FilterFab[] values = FilterFab.values();
            ArrayList arrayList = new ArrayList();
            int length = values.length;
            for (int i = 0; i < length; i++) {
                FilterFab filterFab = values[i];
                if (filterFab != FilterFab.CREATE_ALBUM) {
                    arrayList.add(filterFab);
                }
            }
            return arrayList;
        }

        public final FilterFab findByOldPreferenceId(String id) {
            FilterFab filterFab;
            Intrinsics.checkNotNullParameter(id, "id");
            FilterFab[] values = FilterFab.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    filterFab = null;
                    break;
                }
                filterFab = values[i];
                if (Intrinsics.areEqual(filterFab.getOldPreferenceId(), id)) {
                    break;
                }
                i++;
            }
            return filterFab == null ? FilterFab.CREATE_CHAT : filterFab;
        }

        public final Set<FilterFab> mapOldPreferenceJsonToEnums(String str) {
            int collectionSizeOrDefault;
            Set<FilterFab> mutableSet;
            Gson globalGson = GsonExtKt.getGlobalGson();
            if (str == null) {
                str = "[]";
            }
            Iterable<String> iterable = (Iterable) globalGson.fromJson(str, new TypeToken<List<? extends String>>() { // from class: com.smedialink.storage.domain.model.filters.FilterFab$Companion$mapOldPreferenceJsonToEnums$$inlined$fromJsonTokenType$1
            }.getType());
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (String str2 : iterable) {
                arrayList.add(FilterFab.Companion.findByOldPreferenceId(str2));
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }

        public final Set<String> mapEnumsToNames(Set<? extends FilterFab> enums) {
            int collectionSizeOrDefault;
            Set<String> mutableSet;
            Intrinsics.checkNotNullParameter(enums, "enums");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enums, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (FilterFab filterFab : enums) {
                arrayList.add(filterFab.name());
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }

        public final Set<FilterFab> mapNamesToEnums(Set<String> set) {
            List list;
            Set<FilterFab> mutableSet;
            int collectionSizeOrDefault;
            if (set != null) {
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10);
                list = new ArrayList(collectionSizeOrDefault);
                for (String str : set) {
                    list.add(FilterFab.Companion.mapNameToEnum(str));
                }
            } else {
                list = null;
            }
            if (list == null) {
                list = CollectionsKt__CollectionsKt.emptyList();
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(list);
            return mutableSet;
        }
    }
}
