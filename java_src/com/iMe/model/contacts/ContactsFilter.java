package com.iMe.model.contacts;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
/* compiled from: ContactsFilter.kt */
/* loaded from: classes3.dex */
public enum ContactsFilter {
    ALL(C3295R.string.contacts_filter_all, C3295R.C3297drawable.msg_contacts, false),
    ONLINE(C3295R.string.contacts_filter_online, C3295R.C3297drawable.fork_ic_online_26, false),
    MUTUAL(C3295R.string.contacts_filter_mutual, C3295R.C3297drawable.msg_groups, false),
    NOT_MUTUAL(C3295R.string.contacts_filter_not_mutual, C3295R.C3297drawable.fork_ic_unmutal_users_28, true),
    BLOCKED(C3295R.string.contacts_filter_blocked, C3295R.C3297drawable.msg_block, true);
    
    public static final Companion Companion = new Companion(null);
    private final int icon;
    private final boolean needShowDelete;
    private final int title;

    ContactsFilter(int i, int i2, boolean z) {
        this.title = i;
        this.icon = i2;
        this.needShowDelete = z;
    }

    public final int getTitle() {
        return this.title;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final boolean getNeedShowDelete() {
        return this.needShowDelete;
    }

    /* compiled from: ContactsFilter.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ContactsFilter mapNameToEnum(String str) {
            ContactsFilter contactsFilter;
            ContactsFilter[] values = ContactsFilter.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    contactsFilter = null;
                    break;
                }
                contactsFilter = values[i];
                if (Intrinsics.areEqual(contactsFilter.name(), str)) {
                    break;
                }
                i++;
            }
            return contactsFilter == null ? ContactsFilter.ALL : contactsFilter;
        }
    }
}
