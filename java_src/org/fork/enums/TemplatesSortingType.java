package org.fork.enums;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3301R;
/* compiled from: TemplatesSortingType.kt */
/* loaded from: classes4.dex */
public enum TemplatesSortingType {
    DATE(C3301R.string.dialogs_albums_sort_date, C3301R.C3303drawable.msg_contacts_time),
    NAME(C3301R.string.dialogs_albums_sort_alphabetically, C3301R.C3303drawable.msg_contacts_name),
    USAGE(C3301R.string.sort_by_usage, C3301R.C3303drawable.fork_templates_sort_usage_rating);
    
    public static final Companion Companion = new Companion(null);
    private final int iconResId;
    private final int nameResId;

    public static final TemplatesSortingType mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    TemplatesSortingType(int i, int i2) {
        this.nameResId = i;
        this.iconResId = i2;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final int getNameResId() {
        return this.nameResId;
    }

    /* compiled from: TemplatesSortingType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TemplatesSortingType mapNameToEnum(String str) {
            TemplatesSortingType templatesSortingType;
            TemplatesSortingType[] values = TemplatesSortingType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    templatesSortingType = null;
                    break;
                }
                templatesSortingType = values[i];
                if (Intrinsics.areEqual(templatesSortingType.name(), str)) {
                    break;
                }
                i++;
            }
            return templatesSortingType == null ? TemplatesSortingType.DATE : templatesSortingType;
        }
    }
}
