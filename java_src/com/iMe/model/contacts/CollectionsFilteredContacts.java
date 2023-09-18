package com.iMe.model.contacts;

import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.tgnet.TLRPC$TL_contact;
/* compiled from: CollectionsFilteredContacts.kt */
/* loaded from: classes4.dex */
public final class CollectionsFilteredContacts {
    private final ArrayList<String> sortedUsersSectionsArray;
    private final HashMap<String, ArrayList<TLRPC$TL_contact>> usersSectionsDict;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CollectionsFilteredContacts copy$default(CollectionsFilteredContacts collectionsFilteredContacts, HashMap hashMap, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            hashMap = collectionsFilteredContacts.usersSectionsDict;
        }
        if ((i & 2) != 0) {
            arrayList = collectionsFilteredContacts.sortedUsersSectionsArray;
        }
        return collectionsFilteredContacts.copy(hashMap, arrayList);
    }

    public final HashMap<String, ArrayList<TLRPC$TL_contact>> component1() {
        return this.usersSectionsDict;
    }

    public final ArrayList<String> component2() {
        return this.sortedUsersSectionsArray;
    }

    public final CollectionsFilteredContacts copy(HashMap<String, ArrayList<TLRPC$TL_contact>> usersSectionsDict, ArrayList<String> sortedUsersSectionsArray) {
        Intrinsics.checkNotNullParameter(usersSectionsDict, "usersSectionsDict");
        Intrinsics.checkNotNullParameter(sortedUsersSectionsArray, "sortedUsersSectionsArray");
        return new CollectionsFilteredContacts(usersSectionsDict, sortedUsersSectionsArray);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CollectionsFilteredContacts) {
            CollectionsFilteredContacts collectionsFilteredContacts = (CollectionsFilteredContacts) obj;
            return Intrinsics.areEqual(this.usersSectionsDict, collectionsFilteredContacts.usersSectionsDict) && Intrinsics.areEqual(this.sortedUsersSectionsArray, collectionsFilteredContacts.sortedUsersSectionsArray);
        }
        return false;
    }

    public int hashCode() {
        return (this.usersSectionsDict.hashCode() * 31) + this.sortedUsersSectionsArray.hashCode();
    }

    public String toString() {
        return "CollectionsFilteredContacts(usersSectionsDict=" + this.usersSectionsDict + ", sortedUsersSectionsArray=" + this.sortedUsersSectionsArray + ')';
    }

    public CollectionsFilteredContacts(HashMap<String, ArrayList<TLRPC$TL_contact>> usersSectionsDict, ArrayList<String> sortedUsersSectionsArray) {
        Intrinsics.checkNotNullParameter(usersSectionsDict, "usersSectionsDict");
        Intrinsics.checkNotNullParameter(sortedUsersSectionsArray, "sortedUsersSectionsArray");
        this.usersSectionsDict = usersSectionsDict;
        this.sortedUsersSectionsArray = sortedUsersSectionsArray;
    }

    public final HashMap<String, ArrayList<TLRPC$TL_contact>> getUsersSectionsDict() {
        return this.usersSectionsDict;
    }

    public final ArrayList<String> getSortedUsersSectionsArray() {
        return this.sortedUsersSectionsArray;
    }
}
