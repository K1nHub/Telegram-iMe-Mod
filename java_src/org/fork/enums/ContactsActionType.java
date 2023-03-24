package org.fork.enums;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
/* compiled from: ContactsActionType.kt */
/* loaded from: classes4.dex */
public enum ContactsActionType {
    DELETE(C3301R.C3303drawable.msg_delete, "Delete", C3301R.string.Delete),
    UNBLOCK(C3301R.C3303drawable.msg_block, "Unblock", C3301R.string.Unblock);
    
    public static final Companion Companion = new Companion(null);
    public static ContactsActionType defaultValue;
    private final int iconResId;
    private final String textKey;
    private final int textResId;

    public static final ContactsActionType getByPosition(int i) {
        return Companion.getByPosition(i);
    }

    public static final int[] getIconsArray() {
        return Companion.getIconsArray();
    }

    public static final String[] getTextsArray() {
        return Companion.getTextsArray();
    }

    ContactsActionType(int i, String str, int i2) {
        this.iconResId = i;
        this.textKey = str;
        this.textResId = i2;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final String getTextKey() {
        return this.textKey;
    }

    public final int getTextResId() {
        return this.textResId;
    }

    static {
        defaultValue = r0;
    }

    /* compiled from: ContactsActionType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ContactsActionType getByPosition(int i) {
            ContactsActionType contactsActionType;
            ContactsActionType[] values = ContactsActionType.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    contactsActionType = null;
                    break;
                }
                contactsActionType = values[i2];
                if (contactsActionType.ordinal() == i) {
                    break;
                }
                i2++;
            }
            return contactsActionType == null ? ContactsActionType.defaultValue : contactsActionType;
        }

        public final int[] getIconsArray() {
            int[] intArray;
            ContactsActionType[] values = ContactsActionType.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (ContactsActionType contactsActionType : values) {
                arrayList.add(Integer.valueOf(contactsActionType.getIconResId()));
            }
            intArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
            return intArray;
        }

        public final String[] getTextsArray() {
            ContactsActionType[] values = ContactsActionType.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (ContactsActionType contactsActionType : values) {
                arrayList.add(LocaleController.getString(contactsActionType.getTextKey(), contactsActionType.getTextResId()));
            }
            return (String[]) arrayList.toArray(new String[0]);
        }
    }
}
