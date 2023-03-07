package org.fork.enums;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
/* compiled from: ChatAttachAlertButton.kt */
/* loaded from: classes4.dex */
public enum ChatAttachAlertButton {
    DOCUMENTS(C3158R.C3164raw.attach_file, "chat_attachFileBackground"),
    WALLET(C3158R.C3164raw.fork_attach_wallet, "iMe_chat_attach_walletBackground"),
    BINANCE(C3158R.C3164raw.fork_attach_binance, "iMe_chat_attach_binanceBackground"),
    GEO(C3158R.C3164raw.attach_location, "chat_attachLocationBackground"),
    POLL(C3158R.C3164raw.attach_poll, "chat_attachPollBackground"),
    MUSIC(C3158R.C3164raw.attach_music, "chat_attachAudioBackground"),
    CONTACT(C3158R.C3164raw.attach_contact, "chat_attachContactBackground");
    
    public static final Companion Companion = new Companion(null);
    private final String colorKey;
    private final int iconResId;

    /* compiled from: ChatAttachAlertButton.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChatAttachAlertButton.values().length];
            iArr[ChatAttachAlertButton.DOCUMENTS.ordinal()] = 1;
            iArr[ChatAttachAlertButton.WALLET.ordinal()] = 2;
            iArr[ChatAttachAlertButton.BINANCE.ordinal()] = 3;
            iArr[ChatAttachAlertButton.GEO.ordinal()] = 4;
            iArr[ChatAttachAlertButton.POLL.ordinal()] = 5;
            iArr[ChatAttachAlertButton.MUSIC.ordinal()] = 6;
            iArr[ChatAttachAlertButton.CONTACT.ordinal()] = 7;
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
                String string = LocaleController.getString("ChatDocument", C3158R.string.ChatDocument);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"ChatDocument\", R.string.ChatDocument)");
                return string;
            case 2:
                String internalString = LocaleController.getInternalString(C3158R.string.drawer_wallet_item_title);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…drawer_wallet_item_title)");
                return internalString;
            case 3:
                String internalString2 = LocaleController.getInternalString(C3158R.string.wallet_binance_attach_title);
                Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…let_binance_attach_title)");
                return internalString2;
            case 4:
                String string2 = LocaleController.getString("ChatLocation", C3158R.string.ChatLocation);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(\"ChatLocation\", R.string.ChatLocation)");
                return string2;
            case 5:
                String string3 = LocaleController.getString("Poll", C3158R.string.Poll);
                Intrinsics.checkNotNullExpressionValue(string3, "getString(\"Poll\", R.string.Poll)");
                return string3;
            case 6:
                String string4 = LocaleController.getString("AttachMusic", C3158R.string.AttachMusic);
                Intrinsics.checkNotNullExpressionValue(string4, "getString(\"AttachMusic\", R.string.AttachMusic)");
                return string4;
            case 7:
                String string5 = LocaleController.getString("AttachContact", C3158R.string.AttachContact);
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
            Collection collection;
            Set<ChatAttachAlertButton> mutableSet;
            if (set == null) {
                collection = null;
            } else {
                Collection arrayList = new ArrayList();
                for (String str : set) {
                    ChatAttachAlertButton mapNameToEnum = ChatAttachAlertButton.Companion.mapNameToEnum(str);
                    if (mapNameToEnum != null) {
                        arrayList.add(mapNameToEnum);
                    }
                }
                collection = arrayList;
            }
            if (collection == null) {
                collection = CollectionsKt__CollectionsKt.emptyList();
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(collection);
            return mutableSet;
        }
    }
}
