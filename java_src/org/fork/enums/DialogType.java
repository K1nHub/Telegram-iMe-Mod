package org.fork.enums;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$User;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum CHAT uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: DialogType.kt */
/* loaded from: classes4.dex */
public final class DialogType {
    private static final /* synthetic */ DialogType[] $VALUES;
    public static final DialogType BOT;
    public static final DialogType CHANNEL;
    public static final DialogType CHAT;
    public static final Companion Companion;
    public static final DialogType GROUP;
    private final List<ChatAttachAlertButton> chatAttachAlertButtons;
    private final int colorResId;
    private final int iconResId;
    private final List<MultiPanelButton> multiPanelButtons;
    private final int nameResId;
    private final int noUnreadDialogsResId;
    private final int pullToGoToNextUnreadDialogResId;
    private final int pullToGoToUnreadArchivedDialogsResId;
    private final int releaseToGoToNextUnreadDialogResId;
    private final int releaseToGoToUnreadArchivedDialogsResId;

    private static final /* synthetic */ DialogType[] $values() {
        return new DialogType[]{CHAT, GROUP, CHANNEL, BOT};
    }

    public static final DialogType getDialogType(long j, MessagesController messagesController) {
        return Companion.getDialogType(j, messagesController);
    }

    public static final DialogType getDialogType(TLObject tLObject) {
        return Companion.getDialogType(tLObject);
    }

    public static final Set<String> mapEnumsToNames(Set<? extends DialogType> set) {
        return Companion.mapEnumsToNames(set);
    }

    public static final List<String> mapEnumsToTitles(Set<? extends DialogType> set) {
        return Companion.mapEnumsToTitles(set);
    }

    public static final Set<DialogType> mapNamesToEnums(Set<String> set) {
        return Companion.mapNamesToEnums(set);
    }

    public static DialogType valueOf(String str) {
        return (DialogType) Enum.valueOf(DialogType.class, str);
    }

    public static DialogType[] values() {
        return (DialogType[]) $VALUES.clone();
    }

    private DialogType(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, List list, List list2) {
        this.nameResId = i2;
        this.pullToGoToNextUnreadDialogResId = i3;
        this.releaseToGoToNextUnreadDialogResId = i4;
        this.pullToGoToUnreadArchivedDialogsResId = i5;
        this.releaseToGoToUnreadArchivedDialogsResId = i6;
        this.noUnreadDialogsResId = i7;
        this.iconResId = i8;
        this.colorResId = i9;
        this.multiPanelButtons = list;
        this.chatAttachAlertButtons = list2;
    }

    public final int getNameResId() {
        return this.nameResId;
    }

    public final int getPullToGoToNextUnreadDialogResId() {
        return this.pullToGoToNextUnreadDialogResId;
    }

    public final int getReleaseToGoToNextUnreadDialogResId() {
        return this.releaseToGoToNextUnreadDialogResId;
    }

    public final int getPullToGoToUnreadArchivedDialogsResId() {
        return this.pullToGoToUnreadArchivedDialogsResId;
    }

    public final int getReleaseToGoToUnreadArchivedDialogsResId() {
        return this.releaseToGoToUnreadArchivedDialogsResId;
    }

    public final int getNoUnreadDialogsResId() {
        return this.noUnreadDialogsResId;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final int getColorResId() {
        return this.colorResId;
    }

    public final List<MultiPanelButton> getMultiPanelButtons() {
        return this.multiPanelButtons;
    }

    public final List<ChatAttachAlertButton> getChatAttachAlertButtons() {
        return this.chatAttachAlertButtons;
    }

    static {
        List listOf;
        List listOf2;
        List listOf3;
        List listOf4;
        List listOf5;
        List listOf6;
        List listOf7;
        List listOf8;
        int i = C3286R.string.multi_panel_settings_section_header_chats;
        int i2 = C3286R.string.pull_to_go_to_next_unread_personal_chat;
        int i3 = C3286R.string.release_to_go_to_next_unread_personal_chat;
        int i4 = C3286R.string.pull_to_go_to_unread_archived_personal_chats;
        int i5 = C3286R.string.release_to_go_to_unread_archived_personal_chats;
        int i6 = C3286R.string.no_unread_personal_chats;
        int i7 = C3286R.C3288drawable.fork_topic_user;
        int i8 = C3286R.C3287color.dialog_type_personal_chat;
        MultiPanelButton multiPanelButton = MultiPanelButton.MUTE;
        MultiPanelButton multiPanelButton2 = MultiPanelButton.MEDIA;
        MultiPanelButton multiPanelButton3 = MultiPanelButton.CACHE;
        MultiPanelButton multiPanelButton4 = MultiPanelButton.SEARCH;
        MultiPanelButton multiPanelButton5 = MultiPanelButton.ADD_TO_TOPIC;
        MultiPanelButton multiPanelButton6 = MultiPanelButton.PINS;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new MultiPanelButton[]{multiPanelButton, multiPanelButton2, multiPanelButton3, multiPanelButton4, multiPanelButton5, multiPanelButton6});
        ChatAttachAlertButton chatAttachAlertButton = ChatAttachAlertButton.DOCUMENTS;
        ChatAttachAlertButton chatAttachAlertButton2 = ChatAttachAlertButton.GEO;
        ChatAttachAlertButton chatAttachAlertButton3 = ChatAttachAlertButton.MUSIC;
        ChatAttachAlertButton chatAttachAlertButton4 = ChatAttachAlertButton.CONTACT;
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new ChatAttachAlertButton[]{chatAttachAlertButton, ChatAttachAlertButton.WALLET, ChatAttachAlertButton.BINANCE, chatAttachAlertButton2, chatAttachAlertButton3, chatAttachAlertButton4});
        CHAT = new DialogType("CHAT", 0, i, i2, i3, i4, i5, i6, i7, i8, listOf, listOf2);
        int i9 = C3286R.string.multi_panel_settings_section_header_groups;
        int i10 = C3286R.string.pull_to_go_to_next_unread_group;
        int i11 = C3286R.string.release_to_go_to_next_unread_group;
        int i12 = C3286R.string.pull_to_go_to_unread_archived_groups;
        int i13 = C3286R.string.release_to_go_to_unread_archived_groups;
        int i14 = C3286R.string.no_unread_groups;
        int i15 = C3286R.C3288drawable.fork_topic_group;
        int i16 = C3286R.C3287color.dialog_type_group;
        MultiPanelButton multiPanelButton7 = MultiPanelButton.RECENT_ACTIONS;
        MultiPanelButton multiPanelButton8 = MultiPanelButton.BOOKMARKS;
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new MultiPanelButton[]{multiPanelButton, MultiPanelButton.MEMBERS, multiPanelButton2, multiPanelButton7, multiPanelButton3, multiPanelButton4, multiPanelButton5, multiPanelButton8, multiPanelButton6});
        ChatAttachAlertButton chatAttachAlertButton5 = ChatAttachAlertButton.POLL;
        listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new ChatAttachAlertButton[]{chatAttachAlertButton, chatAttachAlertButton2, chatAttachAlertButton5, chatAttachAlertButton3, chatAttachAlertButton4});
        GROUP = new DialogType("GROUP", 1, i9, i10, i11, i12, i13, i14, i15, i16, listOf3, listOf4);
        int i17 = C3286R.string.multi_panel_settings_section_header_channels;
        int i18 = C3286R.C3288drawable.fork_topic_channel;
        int i19 = C3286R.C3287color.dialog_type_channel;
        listOf5 = CollectionsKt__CollectionsKt.listOf((Object[]) new MultiPanelButton[]{multiPanelButton, MultiPanelButton.SUBSCRIBERS, multiPanelButton2, multiPanelButton7, multiPanelButton3, multiPanelButton4, multiPanelButton5, multiPanelButton8, multiPanelButton6});
        listOf6 = CollectionsKt__CollectionsKt.listOf((Object[]) new ChatAttachAlertButton[]{chatAttachAlertButton, chatAttachAlertButton2, chatAttachAlertButton5, chatAttachAlertButton3, chatAttachAlertButton4});
        CHANNEL = new DialogType("CHANNEL", 2, i17, 0, 0, 0, 0, 0, i18, i19, listOf5, listOf6);
        int i20 = C3286R.string.multi_panel_settings_section_header_bots;
        int i21 = C3286R.string.pull_to_go_to_next_unread_bot;
        int i22 = C3286R.string.release_to_go_to_next_unread_bot;
        int i23 = C3286R.string.pull_to_go_to_unread_archived_bots;
        int i24 = C3286R.string.release_to_go_to_unread_archived_bots;
        int i25 = C3286R.string.no_unread_bots;
        int i26 = C3286R.C3288drawable.msg_folders_bots;
        int i27 = C3286R.C3287color.dialog_type_bot;
        listOf7 = CollectionsKt__CollectionsKt.listOf((Object[]) new MultiPanelButton[]{multiPanelButton, multiPanelButton2, MultiPanelButton.STOP_BOT, multiPanelButton3, multiPanelButton4, multiPanelButton5, multiPanelButton6});
        listOf8 = CollectionsKt__CollectionsKt.listOf((Object[]) new ChatAttachAlertButton[]{chatAttachAlertButton, chatAttachAlertButton2, chatAttachAlertButton5, chatAttachAlertButton3, chatAttachAlertButton4});
        BOT = new DialogType("BOT", 3, i20, i21, i22, i23, i24, i25, i26, i27, listOf7, listOf8);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    /* compiled from: DialogType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DialogType mapNameToEnum(String name) {
            DialogType[] values;
            Intrinsics.checkNotNullParameter(name, "name");
            for (DialogType dialogType : DialogType.values()) {
                if (Intrinsics.areEqual(dialogType.name(), name)) {
                    return dialogType;
                }
            }
            return null;
        }

        public final DialogType getDialogType(long j, MessagesController messagesController) {
            Intrinsics.checkNotNullParameter(messagesController, "messagesController");
            return getDialogType(DialogObject.isUserDialog(j) ? messagesController.getUser(Long.valueOf(j)) : messagesController.getChat(Long.valueOf(-j)));
        }

        public final DialogType getDialogType(TLObject tLObject) {
            if (tLObject instanceof TLRPC$User) {
                return ((TLRPC$User) tLObject).bot ? DialogType.BOT : DialogType.CHAT;
            } else if (tLObject instanceof TLRPC$Chat) {
                TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) tLObject;
                if (!ChatObject.isChannel(tLRPC$Chat) || tLRPC$Chat.megagroup) {
                    return DialogType.GROUP;
                }
                return DialogType.CHANNEL;
            } else {
                return null;
            }
        }

        public final Set<String> mapEnumsToNames(Set<? extends DialogType> enums) {
            int collectionSizeOrDefault;
            Set<String> mutableSet;
            Intrinsics.checkNotNullParameter(enums, "enums");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enums, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (DialogType dialogType : enums) {
                arrayList.add(dialogType.name());
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }

        public final List<String> mapEnumsToTitles(Set<? extends DialogType> enums) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(enums, "enums");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enums, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (DialogType dialogType : enums) {
                arrayList.add(LocaleController.getInternalString(dialogType.getNameResId()));
            }
            return arrayList;
        }

        public final Set<DialogType> mapNamesToEnums(Set<String> set) {
            List list;
            Set<DialogType> mutableSet;
            int collectionSizeOrDefault;
            if (set != null) {
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10);
                list = new ArrayList(collectionSizeOrDefault);
                for (String str : set) {
                    list.add(DialogType.valueOf(str));
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
