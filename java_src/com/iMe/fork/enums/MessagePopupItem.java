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
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
/* compiled from: MessagePopupItem.kt */
/* loaded from: classes3.dex */
public enum MessagePopupItem {
    FORWARD_CLOUD,
    SHARE,
    FORWARD_MESSENGERS,
    TRANSLATE,
    COPY_PART,
    COPY_IMAGE,
    SAVE_AS;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: MessagePopupItem.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MessagePopupItem.values().length];
            try {
                iArr[MessagePopupItem.FORWARD_CLOUD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MessagePopupItem.SHARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MessagePopupItem.FORWARD_MESSENGERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MessagePopupItem.TRANSLATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[MessagePopupItem.COPY_PART.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[MessagePopupItem.COPY_IMAGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[MessagePopupItem.SAVE_AS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final String getTitle() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String internalString = LocaleController.getInternalString(C3242R.string.chat_message_popup_option_forward_cloud);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…pup_option_forward_cloud)");
                return internalString;
            case 2:
                String string = LocaleController.getString("ShareFile", C3242R.string.ShareFile);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"ShareFile\", R.string.ShareFile)");
                return string;
            case 3:
                String internalString2 = LocaleController.getInternalString(C3242R.string.settings_interface_message_popup_item_forward_messengers);
                Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…_item_forward_messengers)");
                return internalString2;
            case 4:
                String internalString3 = LocaleController.getInternalString(C3242R.string.chat_long_action_translate);
                Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(R.stri…at_long_action_translate)");
                return internalString3;
            case 5:
                String internalString4 = LocaleController.getInternalString(C3242R.string.chat_message_popup_option_copy_part);
                Intrinsics.checkNotNullExpressionValue(internalString4, "getInternalString(R.stri…e_popup_option_copy_part)");
                return internalString4;
            case 6:
                String internalString5 = LocaleController.getInternalString(C3242R.string.chat_message_popup_option_copy_image);
                Intrinsics.checkNotNullExpressionValue(internalString5, "getInternalString(R.stri…_popup_option_copy_image)");
                return internalString5;
            case 7:
                String internalString6 = LocaleController.getInternalString(C3242R.string.message_document_file_save_as);
                Intrinsics.checkNotNullExpressionValue(internalString6, "getInternalString(R.stri…ge_document_file_save_as)");
                return internalString6;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* compiled from: MessagePopupItem.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MessagePopupItem mapNameToEnum(String name) {
            MessagePopupItem[] values;
            Intrinsics.checkNotNullParameter(name, "name");
            for (MessagePopupItem messagePopupItem : MessagePopupItem.values()) {
                if (Intrinsics.areEqual(messagePopupItem.name(), name)) {
                    return messagePopupItem;
                }
            }
            return null;
        }

        public final Set<String> getDefaultEnumNames() {
            Set<String> set;
            MessagePopupItem[] values = MessagePopupItem.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (MessagePopupItem messagePopupItem : values) {
                arrayList.add(messagePopupItem.name());
            }
            set = CollectionsKt___CollectionsKt.toSet(arrayList);
            return set;
        }

        public final Set<String> mapEnumsToNames(Set<? extends MessagePopupItem> enums) {
            int collectionSizeOrDefault;
            Set<String> set;
            Intrinsics.checkNotNullParameter(enums, "enums");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enums, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (MessagePopupItem messagePopupItem : enums) {
                arrayList.add(messagePopupItem.name());
            }
            set = CollectionsKt___CollectionsKt.toSet(arrayList);
            return set;
        }

        public final Set<MessagePopupItem> mapNamesToEnums(Set<String> set) {
            List list;
            Set<MessagePopupItem> mutableSet;
            if (set != null) {
                list = new ArrayList();
                for (String str : set) {
                    MessagePopupItem mapNameToEnum = MessagePopupItem.Companion.mapNameToEnum(str);
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
