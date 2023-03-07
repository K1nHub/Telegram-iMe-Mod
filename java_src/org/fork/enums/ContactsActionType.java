package org.fork.enums;

import java.util.ArrayList;
import java.util.Objects;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
/* compiled from: ContactsActionType.kt */
/* loaded from: classes4.dex */
public enum ContactsActionType {
    DELETE(C3158R.C3160drawable.msg_delete, "Delete", C3158R.string.Delete),
    UNBLOCK(C3158R.C3160drawable.msg_block, "Unblock", C3158R.string.Unblock);
    
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
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            return (String[]) array;
        }
    }
}
