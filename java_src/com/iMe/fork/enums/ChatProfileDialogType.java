package com.iMe.fork.enums;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
/* compiled from: ChatProfileDialogType.kt */
/* loaded from: classes3.dex */
public enum ChatProfileDialogType {
    CHAT,
    GROUP,
    CHANNEL,
    BOT;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: ChatProfileDialogType.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChatProfileDialogType.values().length];
            try {
                iArr[ChatProfileDialogType.CHAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ChatProfileDialogType.GROUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ChatProfileDialogType.CHANNEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ChatProfileDialogType.BOT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Set<String> mapEnumsToNames(Set<? extends ChatProfileDialogType> set) {
        return Companion.mapEnumsToNames(set);
    }

    public static final Set<ChatProfileDialogType> mapNamesToEnums(Set<String> set) {
        return Companion.mapNamesToEnums(set);
    }

    public final String getTitle() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            String internalString = LocaleController.getInternalString(C3632R.string.multi_panel_settings_section_header_chats);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…ngs_section_header_chats)");
            return internalString;
        } else if (i == 2) {
            String internalString2 = LocaleController.getInternalString(C3632R.string.multi_panel_settings_section_header_groups);
            Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…gs_section_header_groups)");
            return internalString2;
        } else if (i == 3) {
            String internalString3 = LocaleController.getInternalString(C3632R.string.multi_panel_settings_section_header_channels);
            Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(R.stri…_section_header_channels)");
            return internalString3;
        } else if (i == 4) {
            String internalString4 = LocaleController.getInternalString(C3632R.string.multi_panel_settings_section_header_bots);
            Intrinsics.checkNotNullExpressionValue(internalString4, "getInternalString(R.stri…ings_section_header_bots)");
            return internalString4;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: ChatProfileDialogType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Set<String> mapEnumsToNames(Set<? extends ChatProfileDialogType> enums) {
            int collectionSizeOrDefault;
            Set<String> mutableSet;
            Intrinsics.checkNotNullParameter(enums, "enums");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enums, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (ChatProfileDialogType chatProfileDialogType : enums) {
                arrayList.add(chatProfileDialogType.name());
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }

        public final Set<ChatProfileDialogType> mapNamesToEnums(Set<String> set) {
            List list;
            Set<ChatProfileDialogType> mutableSet;
            int collectionSizeOrDefault;
            if (set != null) {
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10);
                list = new ArrayList(collectionSizeOrDefault);
                for (String str : set) {
                    list.add(ChatProfileDialogType.valueOf(str));
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
