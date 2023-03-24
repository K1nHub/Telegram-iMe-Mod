package org.fork.enums;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
/* compiled from: ChatAttachAlertButton.kt */
/* loaded from: classes4.dex */
public enum ChatAttachAlertButton {
    DOCUMENTS(C3301R.C3306raw.attach_file, "chat_attachFileBackground"),
    WALLET(C3301R.C3306raw.fork_attach_wallet, "iMe_chat_attach_walletBackground"),
    BINANCE(C3301R.C3306raw.fork_attach_binance, "iMe_chat_attach_binanceBackground"),
    GEO(C3301R.C3306raw.attach_location, "chat_attachLocationBackground"),
    POLL(C3301R.C3306raw.attach_poll, "chat_attachPollBackground"),
    MUSIC(C3301R.C3306raw.attach_music, "chat_attachAudioBackground"),
    CONTACT(C3301R.C3306raw.attach_contact, "chat_attachContactBackground");
    
    public static final Companion Companion = new Companion(null);
    private final String colorKey;
    private final int iconResId;

    /* compiled from: ChatAttachAlertButton.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChatAttachAlertButton.values().length];
            try {
                iArr[ChatAttachAlertButton.DOCUMENTS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ChatAttachAlertButton.WALLET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ChatAttachAlertButton.BINANCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ChatAttachAlertButton.GEO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ChatAttachAlertButton.POLL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ChatAttachAlertButton.MUSIC.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ChatAttachAlertButton.CONTACT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Set<String> mapEnumsToNames(Set<? extends ChatAttachAlertButton> set) {
        return Companion.mapEnumsToNames(set);
    }

    public static final Set<ChatAttachAlertButton> mapNamesToEnums(Set<String> set) {
        return Companion.mapNamesToEnums(set);
    }

    ChatAttachAlertButton(int i, String str) {
        this.iconResId = i;
        this.colorKey = str;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final String getColorKey() {
        return this.colorKey;
    }

    public final String getTitle() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String string = LocaleController.getString("ChatDocument", C3301R.string.ChatDocument);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"ChatDocument\", R.string.ChatDocument)");
                return string;
            case 2:
                String internalString = LocaleController.getInternalString(C3301R.string.drawer_wallet_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…drawer_wallet_item_title)");
                return internalString;
            case 3:
                String internalString2 = LocaleController.getInternalString(C3301R.string.wallet_binance_attach_title);
                Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…let_binance_attach_title)");
                return internalString2;
            case 4:
                String string2 = LocaleController.getString("ChatLocation", C3301R.string.ChatLocation);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(\"ChatLocation\", R.string.ChatLocation)");
                return string2;
            case 5:
                String string3 = LocaleController.getString("Poll", C3301R.string.Poll);
                Intrinsics.checkNotNullExpressionValue(string3, "getString(\"Poll\", R.string.Poll)");
                return string3;
            case 6:
                String string4 = LocaleController.getString("AttachMusic", C3301R.string.AttachMusic);
                Intrinsics.checkNotNullExpressionValue(string4, "getString(\"AttachMusic\", R.string.AttachMusic)");
                return string4;
            case 7:
                String string5 = LocaleController.getString("AttachContact", C3301R.string.AttachContact);
                Intrinsics.checkNotNullExpressionValue(string5, "getString(\"AttachContact\", R.string.AttachContact)");
                return string5;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: ChatAttachAlertButton.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ChatAttachAlertButton mapNameToEnum(String name) {
            ChatAttachAlertButton[] values;
            Intrinsics.checkNotNullParameter(name, "name");
            for (ChatAttachAlertButton chatAttachAlertButton : ChatAttachAlertButton.values()) {
                if (Intrinsics.areEqual(chatAttachAlertButton.name(), name)) {
                    return chatAttachAlertButton;
                }
            }
            return null;
        }

        public final Set<String> mapEnumsToNames(Set<? extends ChatAttachAlertButton> enums) {
            int collectionSizeOrDefault;
            Set<String> set;
            Intrinsics.checkNotNullParameter(enums, "enums");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enums, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (ChatAttachAlertButton chatAttachAlertButton : enums) {
                arrayList.add(chatAttachAlertButton.name());
            }
            set = CollectionsKt___CollectionsKt.toSet(arrayList);
            return set;
        }

        public final Set<ChatAttachAlertButton> mapNamesToEnums(Set<String> set) {
            List list;
            Set<ChatAttachAlertButton> mutableSet;
            if (set != null) {
                list = new ArrayList();
                for (String str : set) {
                    ChatAttachAlertButton mapNameToEnum = ChatAttachAlertButton.Companion.mapNameToEnum(str);
                    if (mapNameToEnum != null) {
                        list.add(mapNameToEnum);
                    }
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
