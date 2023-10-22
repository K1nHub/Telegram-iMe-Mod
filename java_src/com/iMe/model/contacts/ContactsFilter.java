package com.iMe.model.contacts;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.LocaleController;
/* compiled from: ContactsFilter.kt */
/* loaded from: classes3.dex */
public enum ContactsFilter {
    ALL(C3630R.C3632drawable.msg_contacts, false),
    ONLINE(C3630R.C3632drawable.fork_ic_online_26, false),
    PREMIUM(C3630R.C3632drawable.photo_star, false),
    MUTUAL(C3630R.C3632drawable.msg_groups, false),
    NOT_MUTUAL(C3630R.C3632drawable.fork_ic_unmutal_users_28, true),
    BLOCKED(C3630R.C3632drawable.msg_block, true);
    
    public static final Companion Companion = new Companion(null);
    private final int icon;
    private final boolean needShowDelete;

    /* compiled from: ContactsFilter.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ContactsFilter.values().length];
            try {
                iArr[ContactsFilter.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ContactsFilter.ONLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ContactsFilter.PREMIUM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ContactsFilter.MUTUAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ContactsFilter.NOT_MUTUAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ContactsFilter.BLOCKED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    ContactsFilter(int i, boolean z) {
        this.icon = i;
        this.needShowDelete = z;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final boolean getNeedShowDelete() {
        return this.needShowDelete;
    }

    public final String getTitle() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String internalString = LocaleController.getInternalString(C3630R.string.contacts_filter_all);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.string.contacts_filter_all)");
                return internalString;
            case 2:
                String internalString2 = LocaleController.getInternalString(C3630R.string.contacts_filter_online);
                Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.string.contacts_filter_online)");
                return internalString2;
            case 3:
                String string = LocaleController.getString("LimitPremium", C3630R.string.LimitPremium);
                Intrinsics.checkNotNullExpressionValue(string, "getString(\"LimitPremium\", R.string.LimitPremium)");
                return string;
            case 4:
                String internalString3 = LocaleController.getInternalString(C3630R.string.contacts_filter_mutual);
                Intrinsics.checkNotNullExpressionValue(internalString3, "getInternalString(R.string.contacts_filter_mutual)");
                return internalString3;
            case 5:
                String internalString4 = LocaleController.getInternalString(C3630R.string.contacts_filter_not_mutual);
                Intrinsics.checkNotNullExpressionValue(internalString4, "getInternalString(R.stri…ntacts_filter_not_mutual)");
                return internalString4;
            case 6:
                String internalString5 = LocaleController.getInternalString(C3630R.string.contacts_filter_blocked);
                Intrinsics.checkNotNullExpressionValue(internalString5, "getInternalString(R.stri….contacts_filter_blocked)");
                return internalString5;
            default:
                throw new NoWhenBranchMatchedException();
        }
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
