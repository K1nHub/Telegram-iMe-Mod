package com.iMe.p031ui.drawer;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
/* compiled from: DrawerSwitchableItem.kt */
/* renamed from: com.iMe.ui.drawer.DrawerSwitchableItem */
/* loaded from: classes3.dex */
public enum DrawerSwitchableItem {
    WALLET,
    CATALOG,
    MUSIC,
    CONTACTS,
    CALLS,
    PEOPLE_NEARBY,
    CLOUD,
    ALBUMS;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: DrawerSwitchableItem.kt */
    /* renamed from: com.iMe.ui.drawer.DrawerSwitchableItem$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DrawerSwitchableItem.values().length];
            try {
                iArr[DrawerSwitchableItem.WALLET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DrawerSwitchableItem.CATALOG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DrawerSwitchableItem.MUSIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DrawerSwitchableItem.CONTACTS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DrawerSwitchableItem.CALLS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DrawerSwitchableItem.PEOPLE_NEARBY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DrawerSwitchableItem.CLOUD.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DrawerSwitchableItem.ALBUMS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Set<String> getDefaultItems() {
        return Companion.getDefaultItems();
    }

    public static final List<DrawerSwitchableItem> getSupportedItems() {
        return Companion.getSupportedItems();
    }

    public static final Set<String> mapEnumsToNames(Set<? extends DrawerSwitchableItem> set) {
        return Companion.mapEnumsToNames(set);
    }

    public static final Set<DrawerSwitchableItem> mapNamesToEnums(Set<String> set) {
        return Companion.mapNamesToEnums(set);
    }

    public final String title() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String internalString = LocaleController.getInternalString(C3417R.string.drawer_wallet_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…drawer_wallet_item_title)");
                return internalString;
            case 2:
                String internalString2 = LocaleController.getInternalString(C3417R.string.drawer_catalog_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…rawer_catalog_item_title)");
                return internalString2;
            case 3:
                String string = LocaleController.getString("AttachMusic", C3417R.string.AttachMusic);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"AttachMusic\", R.string.AttachMusic)");
                return string;
            case 4:
                String string2 = LocaleController.getString("Contacts", C3417R.string.Contacts);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(\"Contacts\", R.string.Contacts)");
                return string2;
            case 5:
                String string3 = LocaleController.getString("Calls", C3417R.string.Calls);
                Intrinsics.checkNotNullExpressionValue(string3, "getString(\"Calls\", R.string.Calls)");
                return string3;
            case 6:
                String string4 = LocaleController.getString("PeopleNearby", C3417R.string.PeopleNearby);
                Intrinsics.checkNotNullExpressionValue(string4, "getString(\"PeopleNearby\", R.string.PeopleNearby)");
                return string4;
            case 7:
                String string5 = LocaleController.getString("SavedMessages", C3417R.string.SavedMessages);
                Intrinsics.checkNotNullExpressionValue(string5, "getString(\"SavedMessages\", R.string.SavedMessages)");
                return string5;
            case 8:
                String internalString3 = LocaleController.getInternalString(C3417R.string.cloud_albums_toolbar_title);
                Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(R.stri…oud_albums_toolbar_title)");
                return internalString3;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: DrawerSwitchableItem.kt */
    /* renamed from: com.iMe.ui.drawer.DrawerSwitchableItem$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DrawerSwitchableItem mapNameToEnum(String name) {
            DrawerSwitchableItem[] values;
            Intrinsics.checkNotNullParameter(name, "name");
            for (DrawerSwitchableItem drawerSwitchableItem : DrawerSwitchableItem.values()) {
                if (Intrinsics.areEqual(drawerSwitchableItem.name(), name)) {
                    return drawerSwitchableItem;
                }
            }
            return null;
        }

        public final List<DrawerSwitchableItem> getSupportedItems() {
            DrawerSwitchableItem[] values = DrawerSwitchableItem.values();
            ArrayList arrayList = new ArrayList();
            int length = values.length;
            for (int i = 0; i < length; i++) {
                DrawerSwitchableItem drawerSwitchableItem = values[i];
                if (drawerSwitchableItem == DrawerSwitchableItem.PEOPLE_NEARBY ? AndroidUtilities.hasSystemFeature("android.hardware.location.gps") : true) {
                    arrayList.add(drawerSwitchableItem);
                }
            }
            return arrayList;
        }

        public final Set<String> getDefaultItems() {
            int collectionSizeOrDefault;
            Set<String> set;
            List<DrawerSwitchableItem> supportedItems = getSupportedItems();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(supportedItems, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (DrawerSwitchableItem drawerSwitchableItem : supportedItems) {
                arrayList.add(drawerSwitchableItem.name());
            }
            set = CollectionsKt___CollectionsKt.toSet(arrayList);
            return set;
        }

        public final Set<String> mapEnumsToNames(Set<? extends DrawerSwitchableItem> enums) {
            Set<String> mutableSet;
            Intrinsics.checkNotNullParameter(enums, "enums");
            ArrayList arrayList = new ArrayList();
            for (DrawerSwitchableItem drawerSwitchableItem : enums) {
                String name = drawerSwitchableItem != null ? drawerSwitchableItem.name() : null;
                if (name != null) {
                    arrayList.add(name);
                }
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }

        public final Set<DrawerSwitchableItem> mapNamesToEnums(Set<String> names) {
            Set<DrawerSwitchableItem> mutableSet;
            Intrinsics.checkNotNullParameter(names, "names");
            ArrayList arrayList = new ArrayList();
            for (String str : names) {
                DrawerSwitchableItem mapNameToEnum = DrawerSwitchableItem.Companion.mapNameToEnum(str);
                if (mapNameToEnum != null) {
                    arrayList.add(mapNameToEnum);
                }
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }
    }
}
