package com.iMe.fork.enums;

import com.iMe.utils.extentions.common.StringExtKt;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
/* compiled from: ExtendedAvatarPreviewerItem.kt */
/* loaded from: classes3.dex */
public enum ExtendedAvatarPreviewerItem {
    MENTION_BY_NAME(null, C3632R.string.chat_avatar_previewer_mention_by_name, C3632R.C3634drawable.fork_avatar_previewer_mention_by_name),
    MENTION("Mention", C3632R.string.Mention, C3632R.C3634drawable.msg_mention),
    COPY_ID(null, C3632R.string.wallet_user_id_dialog_copy_id_action, C3632R.C3634drawable.fork_avatar_previewer_copy_id),
    COPY_USERNAME(null, C3632R.string.wallet_channel_name_dialog_copy_id_action, C3632R.C3634drawable.fork_avatar_previewer_copy_username),
    OPEN_PROFILE("OpenProfile", C3632R.string.OpenProfile, C3632R.C3634drawable.msg_openprofile),
    SEND_MESSAGE("SendMessage", C3632R.string.SendMessage, C3632R.C3634drawable.msg_discussion),
    USER_MESSAGES(null, C3632R.string.chat_avatar_previewer_user_messages, C3632R.C3634drawable.fork_filter_icon_bubbles),
    TRANSFER(null, C3632R.string.wallet_user_id_dialog_transfer_action, C3632R.C3634drawable.fork_avatar_previewer_transfer),
    ADD_TO_CONTACTS("AddContact", C3632R.string.AddContact, C3632R.C3634drawable.msg_addcontact),
    REMOVE_CONTACT("DeleteContact", C3632R.string.DeleteContact, C3632R.C3634drawable.msg_delete),
    REMOVE_FROM_GROUP("KickFromGroup", C3632R.string.KickFromGroup, C3632R.C3634drawable.msg_remove);
    
    public static final Companion Companion = new Companion(null);
    private final int iconResId;
    private final String titleKey;
    private final int titleResId;

    public static final Set<String> mapEnumsToNames(List<? extends ExtendedAvatarPreviewerItem> list) {
        return Companion.mapEnumsToNames(list);
    }

    public static final List<ExtendedAvatarPreviewerItem> mapNamesToEnums(Set<String> set) {
        return Companion.mapNamesToEnums(set);
    }

    public static final void sortedBySettings() {
        Companion.sortedBySettings();
    }

    ExtendedAvatarPreviewerItem(String str, int i, int i2) {
        this.titleKey = str;
        this.titleResId = i;
        this.iconResId = i2;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final String getTitle() {
        String title;
        String str = this.titleKey;
        if (str != null) {
            title = LocaleController.getString(str, this.titleResId);
        } else {
            title = LocaleController.getInternalString(this.titleResId);
        }
        if (this == COPY_ID) {
            Intrinsics.checkNotNullExpressionValue(title, "{\n            title\n        }");
            return title;
        }
        Intrinsics.checkNotNullExpressionValue(title, "title");
        return StringExtKt.capitalizeOnlyFirstSymbol(title);
    }

    /* compiled from: ExtendedAvatarPreviewerItem.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void sortedBySettings() {
            List<ExtendedAvatarPreviewerItem> selectedExtendedAvatarPreviewerItems = SharedConfig.selectedExtendedAvatarPreviewerItems;
            Intrinsics.checkNotNullExpressionValue(selectedExtendedAvatarPreviewerItems, "selectedExtendedAvatarPreviewerItems");
            if (selectedExtendedAvatarPreviewerItems.size() > 1) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(selectedExtendedAvatarPreviewerItems, new Comparator() { // from class: com.iMe.fork.enums.ExtendedAvatarPreviewerItem$Companion$sortedBySettings$$inlined$sortBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((ExtendedAvatarPreviewerItem) t).ordinal()), Integer.valueOf(((ExtendedAvatarPreviewerItem) t2).ordinal()));
                        return compareValues;
                    }
                });
            }
        }

        public final ExtendedAvatarPreviewerItem mapNameToEnum(String name) {
            ExtendedAvatarPreviewerItem[] values;
            Intrinsics.checkNotNullParameter(name, "name");
            for (ExtendedAvatarPreviewerItem extendedAvatarPreviewerItem : ExtendedAvatarPreviewerItem.values()) {
                if (Intrinsics.areEqual(extendedAvatarPreviewerItem.name(), name)) {
                    return extendedAvatarPreviewerItem;
                }
            }
            return null;
        }

        public final Set<String> mapEnumsToNames(List<? extends ExtendedAvatarPreviewerItem> enums) {
            int collectionSizeOrDefault;
            Set<String> mutableSet;
            Intrinsics.checkNotNullParameter(enums, "enums");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enums, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (ExtendedAvatarPreviewerItem extendedAvatarPreviewerItem : enums) {
                arrayList.add(extendedAvatarPreviewerItem.name());
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }

        public final List<ExtendedAvatarPreviewerItem> mapNamesToEnums(Set<String> names) {
            Intrinsics.checkNotNullParameter(names, "names");
            ArrayList arrayList = new ArrayList();
            for (String str : names) {
                ExtendedAvatarPreviewerItem mapNameToEnum = ExtendedAvatarPreviewerItem.Companion.mapNameToEnum(str);
                if (mapNameToEnum != null) {
                    arrayList.add(mapNameToEnum);
                }
            }
            return arrayList;
        }
    }
}
