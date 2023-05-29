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
import org.telegram.messenger.C3290R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: RecentChatsDialogType.kt */
/* loaded from: classes3.dex */
public enum RecentChatsDialogType {
    CHAT,
    GROUP,
    CHANNEL,
    BOT,
    FORUM;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: RecentChatsDialogType.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RecentChatsDialogType.values().length];
            try {
                iArr[RecentChatsDialogType.CHAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RecentChatsDialogType.GROUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RecentChatsDialogType.CHANNEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[RecentChatsDialogType.BOT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[RecentChatsDialogType.FORUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final RecentChatsDialogType getDialogType(TLObject tLObject, long j) {
        return Companion.getDialogType(tLObject, j);
    }

    public static final Set<String> mapEnumsToNames(Set<? extends RecentChatsDialogType> set) {
        return Companion.mapEnumsToNames(set);
    }

    public static final Set<RecentChatsDialogType> mapNamesToEnums(Set<String> set) {
        return Companion.mapNamesToEnums(set);
    }

    public final String getTitle() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            String internalString = LocaleController.getInternalString(C3290R.string.multi_panel_settings_section_header_chats);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…ngs_section_header_chats)");
            return internalString;
        } else if (i == 2) {
            String internalString2 = LocaleController.getInternalString(C3290R.string.multi_panel_settings_section_header_groups);
            Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…gs_section_header_groups)");
            return internalString2;
        } else if (i == 3) {
            String internalString3 = LocaleController.getInternalString(C3290R.string.multi_panel_settings_section_header_channels);
            Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(R.stri…_section_header_channels)");
            return internalString3;
        } else if (i == 4) {
            String internalString4 = LocaleController.getInternalString(C3290R.string.multi_panel_settings_section_header_bots);
            Intrinsics.checkNotNullExpressionValue(internalString4, "getInternalString(R.stri…ings_section_header_bots)");
            return internalString4;
        } else if (i == 5) {
            String string = LocaleController.getString("Topics", C3290R.string.Topics);
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"Topics\", R.string.Topics)");
            return string;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: RecentChatsDialogType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final RecentChatsDialogType getDialogType(TLObject tLObject, long j) {
            if (tLObject instanceof TLRPC$User) {
                return ((TLRPC$User) tLObject).bot ? RecentChatsDialogType.BOT : RecentChatsDialogType.CHAT;
            } else if (tLObject instanceof TLRPC$Chat) {
                TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) tLObject;
                if (!ChatObject.isChannel(tLRPC$Chat) || tLRPC$Chat.megagroup) {
                    return RecentChatsDialogType.GROUP;
                }
                return ChatObject.isForum(UserConfig.selectedAccount, j) ? RecentChatsDialogType.FORUM : RecentChatsDialogType.CHANNEL;
            } else {
                return null;
            }
        }

        public final Set<String> mapEnumsToNames(Set<? extends RecentChatsDialogType> enums) {
            int collectionSizeOrDefault;
            Set<String> mutableSet;
            Intrinsics.checkNotNullParameter(enums, "enums");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enums, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (RecentChatsDialogType recentChatsDialogType : enums) {
                arrayList.add(recentChatsDialogType.name());
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }

        public final Set<RecentChatsDialogType> mapNamesToEnums(Set<String> set) {
            List list;
            Set<RecentChatsDialogType> mutableSet;
            int collectionSizeOrDefault;
            if (set != null) {
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10);
                list = new ArrayList(collectionSizeOrDefault);
                for (String str : set) {
                    list.add(RecentChatsDialogType.valueOf(str));
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
