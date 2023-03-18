package org.fork.enums;

import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: PhotoViewerMenuItem.kt */
/* loaded from: classes4.dex */
public enum PhotoViewerMenuItem {
    PHOTO_TEXT(C3286R.string.photo_viewer_open_recognize_text),
    PHOTO_INFO(C3286R.string.photo_viewer_open_recognize_photo),
    FORWARD_MESSENGERS(C3286R.string.settings_interface_message_popup_item_forward_messengers),
    TRANSLATE(C3286R.string.chat_long_action_translate),
    COPY_IMAGE(C3286R.string.photo_viewer_image_copy),
    CLEAR_CACHE(C3286R.string.photo_viewer_clear_cache);
    
    public static final Companion Companion = new Companion(null);
    private final int titleResId;

    public static final Set<String> getDefaultEnumNames() {
        return Companion.getDefaultEnumNames();
    }

    public static final Set<String> mapEnumsToNames(Set<? extends PhotoViewerMenuItem> set) {
        return Companion.mapEnumsToNames(set);
    }

    public static final Set<PhotoViewerMenuItem> mapNamesToEnums(Set<String> set) {
        return Companion.mapNamesToEnums(set);
    }

    PhotoViewerMenuItem(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    /* compiled from: PhotoViewerMenuItem.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PhotoViewerMenuItem mapNameToEnum(String name) {
            PhotoViewerMenuItem[] values;
            Intrinsics.checkNotNullParameter(name, "name");
            for (PhotoViewerMenuItem photoViewerMenuItem : PhotoViewerMenuItem.values()) {
                if (Intrinsics.areEqual(photoViewerMenuItem.name(), name)) {
                    return photoViewerMenuItem;
                }
            }
            return null;
        }

        public final Set<String> getDefaultEnumNames() {
            Set<String> set;
            PhotoViewerMenuItem[] values = PhotoViewerMenuItem.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (PhotoViewerMenuItem photoViewerMenuItem : values) {
                arrayList.add(photoViewerMenuItem.name());
            }
            set = CollectionsKt___CollectionsKt.toSet(arrayList);
            return set;
        }

        public final Set<String> mapEnumsToNames(Set<? extends PhotoViewerMenuItem> enums) {
            int collectionSizeOrDefault;
            Set<String> mutableSet;
            Intrinsics.checkNotNullParameter(enums, "enums");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enums, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (PhotoViewerMenuItem photoViewerMenuItem : enums) {
                arrayList.add(photoViewerMenuItem.name());
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }

        public final Set<PhotoViewerMenuItem> mapNamesToEnums(Set<String> names) {
            Set<PhotoViewerMenuItem> mutableSet;
            Intrinsics.checkNotNullParameter(names, "names");
            ArrayList arrayList = new ArrayList();
            for (String str : names) {
                PhotoViewerMenuItem mapNameToEnum = PhotoViewerMenuItem.Companion.mapNameToEnum(str);
                if (mapNameToEnum != null) {
                    arrayList.add(mapNameToEnum);
                }
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
            return mutableSet;
        }
    }
}
