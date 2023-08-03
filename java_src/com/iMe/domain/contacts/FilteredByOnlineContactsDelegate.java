package com.iMe.domain.contacts;

import com.iMe.fork.utils.CollectionsUtilsKt;
import com.iMe.model.contacts.ContactsFilter;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC$TL_contact;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserStatus;
/* compiled from: FilteredByOnlineContactsDelegate.kt */
/* loaded from: classes3.dex */
public final class FilteredByOnlineContactsDelegate extends BaseController {
    private final Lazy allContacts$delegate;
    private final Lazy blockedContacts$delegate;
    private final ArrayList<TLRPC$TL_contact> contacts;
    private final Lazy mutualContacts$delegate;
    private final Lazy notMutualContacts$delegate;
    private final Lazy onlineContacts$delegate;
    private final long selfId;

    /* compiled from: FilteredByOnlineContactsDelegate.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ContactsFilter.values().length];
            try {
                iArr[ContactsFilter.ONLINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ContactsFilter.MUTUAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ContactsFilter.NOT_MUTUAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ContactsFilter.BLOCKED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ContactsFilter.ALL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilteredByOnlineContactsDelegate(int i, ArrayList<TLRPC$TL_contact> contacts) {
        super(i);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Intrinsics.checkNotNullParameter(contacts, "contacts");
        this.contacts = contacts;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ArrayList<TLRPC$TL_contact>>() { // from class: com.iMe.domain.contacts.FilteredByOnlineContactsDelegate$allContacts$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<TLRPC$TL_contact> invoke() {
                ArrayList arrayList;
                long j;
                arrayList = FilteredByOnlineContactsDelegate.this.contacts;
                FilteredByOnlineContactsDelegate filteredByOnlineContactsDelegate = FilteredByOnlineContactsDelegate.this;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    long j2 = ((TLRPC$TL_contact) obj).user_id;
                    j = filteredByOnlineContactsDelegate.selfId;
                    if (j2 != j) {
                        arrayList2.add(obj);
                    }
                }
                return CollectionsUtilsKt.toArrayList(arrayList2);
            }
        });
        this.allContacts$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ArrayList<TLRPC$TL_contact>>() { // from class: com.iMe.domain.contacts.FilteredByOnlineContactsDelegate$onlineContacts$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0046 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:18:0x0011 A[SYNTHETIC] */
            @Override // kotlin.jvm.functions.Function0
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_contact> invoke() {
                /*
                    r9 = this;
                    com.iMe.domain.contacts.FilteredByOnlineContactsDelegate r0 = com.iMe.domain.contacts.FilteredByOnlineContactsDelegate.this
                    java.util.ArrayList r0 = com.iMe.domain.contacts.FilteredByOnlineContactsDelegate.access$getContacts$p(r0)
                    com.iMe.domain.contacts.FilteredByOnlineContactsDelegate r1 = com.iMe.domain.contacts.FilteredByOnlineContactsDelegate.this
                    java.util.ArrayList r2 = new java.util.ArrayList
                    r2.<init>()
                    java.util.Iterator r0 = r0.iterator()
                L11:
                    boolean r3 = r0.hasNext()
                    if (r3 == 0) goto L4a
                    java.lang.Object r3 = r0.next()
                    r4 = r3
                    org.telegram.tgnet.TLRPC$TL_contact r4 = (org.telegram.tgnet.TLRPC$TL_contact) r4
                    long r5 = r4.user_id
                    long r7 = com.iMe.domain.contacts.FilteredByOnlineContactsDelegate.access$getSelfId$p(r1)
                    int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                    if (r5 == 0) goto L43
                    org.telegram.messenger.MessagesController r5 = com.iMe.domain.contacts.FilteredByOnlineContactsDelegate.access$getMessagesController(r1)
                    long r6 = r4.user_id
                    java.lang.Long r4 = java.lang.Long.valueOf(r6)
                    org.telegram.tgnet.TLRPC$User r4 = r5.getUser(r4)
                    java.lang.String r5 = "messagesController.getUser(it.user_id)"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
                    boolean r4 = com.iMe.domain.contacts.FilteredByOnlineContactsDelegate.access$userIsOnline(r1, r4)
                    if (r4 == 0) goto L43
                    r4 = 1
                    goto L44
                L43:
                    r4 = 0
                L44:
                    if (r4 == 0) goto L11
                    r2.add(r3)
                    goto L11
                L4a:
                    java.util.ArrayList r0 = com.iMe.fork.utils.CollectionsUtilsKt.toArrayList(r2)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.domain.contacts.FilteredByOnlineContactsDelegate$onlineContacts$2.invoke():java.util.ArrayList");
            }
        });
        this.onlineContacts$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ArrayList<TLRPC$TL_contact>>() { // from class: com.iMe.domain.contacts.FilteredByOnlineContactsDelegate$mutualContacts$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<TLRPC$TL_contact> invoke() {
                ArrayList arrayList;
                long j;
                arrayList = FilteredByOnlineContactsDelegate.this.contacts;
                FilteredByOnlineContactsDelegate filteredByOnlineContactsDelegate = FilteredByOnlineContactsDelegate.this;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    TLRPC$TL_contact tLRPC$TL_contact = (TLRPC$TL_contact) obj;
                    long j2 = tLRPC$TL_contact.user_id;
                    j = filteredByOnlineContactsDelegate.selfId;
                    if (j2 != j && tLRPC$TL_contact.mutual) {
                        arrayList2.add(obj);
                    }
                }
                return CollectionsUtilsKt.toArrayList(arrayList2);
            }
        });
        this.mutualContacts$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<ArrayList<TLRPC$TL_contact>>() { // from class: com.iMe.domain.contacts.FilteredByOnlineContactsDelegate$notMutualContacts$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<TLRPC$TL_contact> invoke() {
                ArrayList arrayList;
                long j;
                arrayList = FilteredByOnlineContactsDelegate.this.contacts;
                FilteredByOnlineContactsDelegate filteredByOnlineContactsDelegate = FilteredByOnlineContactsDelegate.this;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    TLRPC$TL_contact tLRPC$TL_contact = (TLRPC$TL_contact) obj;
                    long j2 = tLRPC$TL_contact.user_id;
                    j = filteredByOnlineContactsDelegate.selfId;
                    if ((j2 == j || tLRPC$TL_contact.mutual) ? false : true) {
                        arrayList2.add(obj);
                    }
                }
                return CollectionsUtilsKt.toArrayList(arrayList2);
            }
        });
        this.notMutualContacts$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<ArrayList<TLRPC$TL_contact>>() { // from class: com.iMe.domain.contacts.FilteredByOnlineContactsDelegate$blockedContacts$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0033 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:18:0x0011 A[SYNTHETIC] */
            @Override // kotlin.jvm.functions.Function0
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_contact> invoke() {
                /*
                    r9 = this;
                    com.iMe.domain.contacts.FilteredByOnlineContactsDelegate r0 = com.iMe.domain.contacts.FilteredByOnlineContactsDelegate.this
                    java.util.ArrayList r0 = com.iMe.domain.contacts.FilteredByOnlineContactsDelegate.access$getContacts$p(r0)
                    com.iMe.domain.contacts.FilteredByOnlineContactsDelegate r1 = com.iMe.domain.contacts.FilteredByOnlineContactsDelegate.this
                    java.util.ArrayList r2 = new java.util.ArrayList
                    r2.<init>()
                    java.util.Iterator r0 = r0.iterator()
                L11:
                    boolean r3 = r0.hasNext()
                    if (r3 == 0) goto L37
                    java.lang.Object r3 = r0.next()
                    r4 = r3
                    org.telegram.tgnet.TLRPC$TL_contact r4 = (org.telegram.tgnet.TLRPC$TL_contact) r4
                    long r5 = r4.user_id
                    long r7 = com.iMe.domain.contacts.FilteredByOnlineContactsDelegate.access$getSelfId$p(r1)
                    int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                    if (r5 == 0) goto L30
                    boolean r4 = com.iMe.domain.contacts.FilteredByOnlineContactsDelegate.access$userIsBlocked(r1, r4)
                    if (r4 == 0) goto L30
                    r4 = 1
                    goto L31
                L30:
                    r4 = 0
                L31:
                    if (r4 == 0) goto L11
                    r2.add(r3)
                    goto L11
                L37:
                    java.util.ArrayList r0 = com.iMe.fork.utils.CollectionsUtilsKt.toArrayList(r2)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.domain.contacts.FilteredByOnlineContactsDelegate$blockedContacts$2.invoke():java.util.ArrayList");
            }
        });
        this.blockedContacts$delegate = lazy5;
        this.selfId = UserConfig.getInstance(i).clientUserId;
    }

    public final ArrayList<TLRPC$TL_contact> getAllContacts() {
        return (ArrayList) this.allContacts$delegate.getValue();
    }

    public final ArrayList<TLRPC$TL_contact> getOnlineContacts() {
        return (ArrayList) this.onlineContacts$delegate.getValue();
    }

    public final ArrayList<TLRPC$TL_contact> getMutualContacts() {
        return (ArrayList) this.mutualContacts$delegate.getValue();
    }

    public final ArrayList<TLRPC$TL_contact> getNotMutualContacts() {
        return (ArrayList) this.notMutualContacts$delegate.getValue();
    }

    public final ArrayList<TLRPC$TL_contact> getBlockedContacts() {
        return (ArrayList) this.blockedContacts$delegate.getValue();
    }

    public final ArrayList<TLRPC$TL_contact> getContactsByFilter(ContactsFilter filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        int i = WhenMappings.$EnumSwitchMapping$0[filter.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return getAllContacts();
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    return getBlockedContacts();
                }
                return getNotMutualContacts();
            }
            return getMutualContacts();
        }
        return getOnlineContacts();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean userIsBlocked(TLRPC$TL_contact tLRPC$TL_contact) {
        return getMessagesController().blockePeers.indexOfKey(tLRPC$TL_contact.user_id) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean userIsOnline(TLRPC$User tLRPC$User) {
        TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
        return (tLRPC$UserStatus != null && tLRPC$UserStatus.expires > getConnectionsManager().getCurrentTime()) || getMessagesController().onlinePrivacy.containsKey(Long.valueOf(tLRPC$User.f1675id));
    }
}
