package com.iMe.fork.enums;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
/* compiled from: DrawStatusType.kt */
/* loaded from: classes3.dex */
public enum DrawStatusType {
    UNREAD_COUNT_CHATS(C3417R.string.recent_chats_new_messages),
    MENTIONS(C3417R.string.recent_chats_mentions),
    REACTION(C3417R.string.recent_chats_reactions),
    ONLINE_USER(C3417R.string.recent_chats_online_status),
    LIVE_VIDEO(C3417R.string.recent_chats_live);
    
    public static final Companion Companion = new Companion(null);
    private final int nameResId;

    public static final Set<String> mapEnumsToNames(Set<? extends DrawStatusType> set) {
        return Companion.mapEnumsToNames(set);
    }

    public static final Set<DrawStatusType> mapNamesToEnums(Set<String> set) {
        return Companion.mapNamesToEnums(set);
    }

    DrawStatusType(int i) {
        this.nameResId = i;
    }

    public final int getNameResId() {
        return this.nameResId;
    }

    /* compiled from: DrawStatusType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Set<String> mapEnumsToNames(Set<? extends DrawStatusType> enums) {
            int collectionSizeOrDefault;
            Set<String> mutableSet;
            Intrinsics.checkNotNullParameter(enums, "enums");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enums, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (DrawStatusType drawStatusType : enums) {
                arrayList.add(drawStatusType.name());
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }

        public final Set<DrawStatusType> mapNamesToEnums(Set<String> set) {
            List list;
            Set<DrawStatusType> mutableSet;
            int collectionSizeOrDefault;
            if (set != null) {
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10);
                list = new ArrayList(collectionSizeOrDefault);
                for (String str : set) {
                    list.add(DrawStatusType.valueOf(str));
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
