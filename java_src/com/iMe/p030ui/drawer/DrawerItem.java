package com.iMe.p030ui.drawer;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
/* compiled from: DrawerItem.kt */
/* renamed from: com.iMe.ui.drawer.DrawerItem */
/* loaded from: classes3.dex */
public enum DrawerItem {
    WALLET,
    CATALOG,
    MUSIC,
    CONTACTS,
    CALLS,
    PEOPLE_NEARBY,
    CLOUD,
    ALBUMS,
    WALLET_BOT;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: DrawerItem.kt */
    /* renamed from: com.iMe.ui.drawer.DrawerItem$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DrawerItem.values().length];
            try {
                iArr[DrawerItem.WALLET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DrawerItem.CATALOG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DrawerItem.MUSIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DrawerItem.CONTACTS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DrawerItem.CALLS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DrawerItem.PEOPLE_NEARBY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DrawerItem.CLOUD.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DrawerItem.ALBUMS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DrawerItem.WALLET_BOT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Set<String> getDefaultItems() {
        return Companion.getDefaultItems();
    }

    public static final List<DrawerItem> getSupportedItems() {
        return Companion.getSupportedItems();
    }

    public static final Set<String> mapEnumsToNames(Set<? extends DrawerItem> set) {
        return Companion.mapEnumsToNames(set);
    }

    public static final Set<DrawerItem> mapNamesToEnums(Set<String> set) {
        return Companion.mapNamesToEnums(set);
    }

    public final String title() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String internalString = LocaleController.getInternalString(C3632R.string.drawer_wallet_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…drawer_wallet_item_title)");
                return internalString;
            case 2:
                String internalString2 = LocaleController.getInternalString(C3632R.string.drawer_catalog_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…rawer_catalog_item_title)");
                return internalString2;
            case 3:
                String string = LocaleController.getString("AttachMusic", C3632R.string.AttachMusic);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"AttachMusic\", R.string.AttachMusic)");
                return string;
            case 4:
                String string2 = LocaleController.getString("Contacts", C3632R.string.Contacts);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(\"Contacts\", R.string.Contacts)");
                return string2;
            case 5:
                String string3 = LocaleController.getString("Calls", C3632R.string.Calls);
                Intrinsics.checkNotNullExpressionValue(string3, "getString(\"Calls\", R.string.Calls)");
                return string3;
            case 6:
                String string4 = LocaleController.getString("PeopleNearby", C3632R.string.PeopleNearby);
                Intrinsics.checkNotNullExpressionValue(string4, "getString(\"PeopleNearby\", R.string.PeopleNearby)");
                return string4;
            case 7:
                String string5 = LocaleController.getString("SavedMessages", C3632R.string.SavedMessages);
                Intrinsics.checkNotNullExpressionValue(string5, "getString(\"SavedMessages\", R.string.SavedMessages)");
                return string5;
            case 8:
                String internalString3 = LocaleController.getInternalString(C3632R.string.cloud_albums_toolbar_title);
                Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(R.stri…oud_albums_toolbar_title)");
                return internalString3;
            case 9:
                String internalString4 = LocaleController.getInternalString(C3632R.string.drawer_wallet_bot);
                Intrinsics.checkNotNullExpressionValue(internalString4, "getInternalString(R.string.drawer_wallet_bot)");
                return internalString4;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: DrawerItem.kt */
    /* renamed from: com.iMe.ui.drawer.DrawerItem$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {

        /* compiled from: DrawerItem.kt */
        /* renamed from: com.iMe.ui.drawer.DrawerItem$Companion$WhenMappings */
        /* loaded from: classes3.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[DrawerItem.values().length];
                try {
                    iArr[DrawerItem.PEOPLE_NEARBY.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[DrawerItem.WALLET_BOT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[DrawerItem.CATALOG.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DrawerItem mapNameToEnum(String name) {
            DrawerItem[] values;
            Intrinsics.checkNotNullParameter(name, "name");
            for (DrawerItem drawerItem : DrawerItem.values()) {
                if (Intrinsics.areEqual(drawerItem.name(), name)) {
                    return drawerItem;
                }
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x005f, code lost:
            if (r6 == true) goto L10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
            if (r6 != 3) goto L10;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.List<com.iMe.p030ui.drawer.DrawerItem> getSupportedItems() {
            /*
                r12 = this;
                com.iMe.ui.drawer.DrawerItem[] r0 = com.iMe.p030ui.drawer.DrawerItem.values()
                java.util.ArrayList r1 = new java.util.ArrayList
                r1.<init>()
                int r2 = r0.length
                r3 = 0
                r4 = r3
            Lc:
                if (r4 >= r2) goto L76
                r5 = r0[r4]
                int[] r6 = com.iMe.p030ui.drawer.DrawerItem.Companion.WhenMappings.$EnumSwitchMapping$0
                int r7 = r5.ordinal()
                r6 = r6[r7]
                r7 = 1
                if (r6 == r7) goto L62
                r8 = 2
                if (r6 == r8) goto L24
                r8 = 3
                if (r6 == r8) goto L22
                goto L6e
            L22:
                r7 = r3
                goto L6e
            L24:
                int r6 = org.telegram.messenger.UserConfig.selectedAccount
                org.telegram.messenger.MediaDataController r6 = org.telegram.messenger.MediaDataController.getInstance(r6)
                org.telegram.tgnet.TLRPC$TL_attachMenuBots r6 = r6.getAttachMenuBots()
                if (r6 == 0) goto L22
                java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_attachMenuBot> r6 = r6.bots
                if (r6 == 0) goto L22
                boolean r8 = r6.isEmpty()
                if (r8 == 0) goto L3c
            L3a:
                r6 = r3
                goto L5f
            L3c:
                java.util.Iterator r6 = r6.iterator()
            L40:
                boolean r8 = r6.hasNext()
                if (r8 == 0) goto L3a
                java.lang.Object r8 = r6.next()
                org.telegram.tgnet.TLRPC$TL_attachMenuBot r8 = (org.telegram.tgnet.TLRPC$TL_attachMenuBot) r8
                boolean r9 = r8.show_in_side_menu
                if (r9 == 0) goto L5b
                long r8 = r8.bot_id
                r10 = 1985737506(0x765bf322, double:9.810846834E-315)
                int r8 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
                if (r8 != 0) goto L5b
                r8 = r7
                goto L5c
            L5b:
                r8 = r3
            L5c:
                if (r8 == 0) goto L40
                r6 = r7
            L5f:
                if (r6 != r7) goto L22
                goto L6e
            L62:
                android.content.Context r6 = org.telegram.messenger.ApplicationLoader.applicationContext
                android.content.pm.PackageManager r6 = r6.getPackageManager()
                java.lang.String r7 = "android.hardware.location.gps"
                boolean r7 = r6.hasSystemFeature(r7)
            L6e:
                if (r7 == 0) goto L73
                r1.add(r5)
            L73:
                int r4 = r4 + 1
                goto Lc
            L76:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.drawer.DrawerItem.Companion.getSupportedItems():java.util.List");
        }

        public final Set<String> getDefaultItems() {
            Set<String> set;
            DrawerItem[] values = DrawerItem.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (DrawerItem drawerItem : values) {
                arrayList.add(drawerItem.name());
            }
            set = CollectionsKt___CollectionsKt.toSet(arrayList);
            return set;
        }

        public final Set<String> mapEnumsToNames(Set<? extends DrawerItem> enums) {
            Set<String> mutableSet;
            Intrinsics.checkNotNullParameter(enums, "enums");
            ArrayList arrayList = new ArrayList();
            for (DrawerItem drawerItem : enums) {
                String name = drawerItem != null ? drawerItem.name() : null;
                if (name != null) {
                    arrayList.add(name);
                }
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }

        public final Set<DrawerItem> mapNamesToEnums(Set<String> names) {
            Set<DrawerItem> mutableSet;
            Intrinsics.checkNotNullParameter(names, "names");
            ArrayList arrayList = new ArrayList();
            for (String str : names) {
                DrawerItem mapNameToEnum = DrawerItem.Companion.mapNameToEnum(str);
                if (mapNameToEnum != null) {
                    arrayList.add(mapNameToEnum);
                }
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }
    }
}
