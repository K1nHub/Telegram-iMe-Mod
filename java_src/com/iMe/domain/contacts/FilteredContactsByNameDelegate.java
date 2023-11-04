package com.iMe.domain.contacts;

import com.iMe.fork.utils.CollectionsUtilsKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC$TL_contact;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserStatus;
/* compiled from: FilteredContactsByNameDelegate.kt */
/* loaded from: classes3.dex */
public final class FilteredContactsByNameDelegate extends BaseController {
    private final Lazy blockedUsers$delegate;
    private final Lazy blockedUsersArr$delegate;
    private final Lazy giftPremiumContacts$delegate;
    private final Lazy giftPremiumContactsArr$delegate;
    private final Lazy mutualContacts$delegate;
    private final Lazy mutualContactsArr$delegate;
    private final Lazy notMutualContacts$delegate;
    private final Lazy notMutualContactsArr$delegate;
    private final Lazy onlineContactsArr$delegate;
    private final Lazy onlineContactsDictionary$delegate;
    private final Lazy premiumContacts$delegate;
    private final Lazy premiumContactsArr$delegate;
    private final long selfId;

    public FilteredContactsByNameDelegate(int i) {
        super(i);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        Lazy lazy9;
        Lazy lazy10;
        Lazy lazy11;
        Lazy lazy12;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<HashMap<String, ArrayList<TLRPC$TL_contact>>>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$giftPremiumContacts$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final HashMap<String, ArrayList<TLRPC$TL_contact>> invoke() {
                HashMap<String, ArrayList<TLRPC$TL_contact>> usersByPredicate;
                final FilteredContactsByNameDelegate filteredContactsByNameDelegate = FilteredContactsByNameDelegate.this;
                usersByPredicate = filteredContactsByNameDelegate.getUsersByPredicate(new Function1<TLRPC$TL_contact, Boolean>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$giftPremiumContacts$2.1
                    {
                        super(1);
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:18:0x003c, code lost:
                        if (r6 == false) goto L20;
                     */
                    @Override // kotlin.jvm.functions.Function1
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Boolean invoke(org.telegram.tgnet.TLRPC$TL_contact r6) {
                        /*
                            r5 = this;
                            java.lang.String r0 = "it"
                            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                            long r0 = r6.user_id
                            com.iMe.domain.contacts.FilteredContactsByNameDelegate r2 = com.iMe.domain.contacts.FilteredContactsByNameDelegate.this
                            long r2 = com.iMe.domain.contacts.FilteredContactsByNameDelegate.access$getSelfId$p(r2)
                            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                            r1 = 1
                            r2 = 0
                            if (r0 == 0) goto L3f
                            com.iMe.domain.contacts.FilteredContactsByNameDelegate r0 = com.iMe.domain.contacts.FilteredContactsByNameDelegate.this
                            org.telegram.messenger.MessagesController r0 = com.iMe.domain.contacts.FilteredContactsByNameDelegate.access$getMessagesController(r0)
                            long r3 = r6.user_id
                            java.lang.Long r6 = java.lang.Long.valueOf(r3)
                            org.telegram.tgnet.TLRPC$User r6 = r0.getUser(r6)
                            if (r6 == 0) goto L3b
                            boolean r0 = r6.premium
                            if (r0 != 0) goto L3b
                            java.lang.String r6 = r6.username
                            if (r6 == 0) goto L36
                            int r6 = r6.length()
                            if (r6 != 0) goto L34
                            goto L36
                        L34:
                            r6 = r2
                            goto L37
                        L36:
                            r6 = r1
                        L37:
                            if (r6 != 0) goto L3b
                            r6 = r1
                            goto L3c
                        L3b:
                            r6 = r2
                        L3c:
                            if (r6 == 0) goto L3f
                            goto L40
                        L3f:
                            r1 = r2
                        L40:
                            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r1)
                            return r6
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.iMe.domain.contacts.FilteredContactsByNameDelegate$giftPremiumContacts$2.C13561.invoke(org.telegram.tgnet.TLRPC$TL_contact):java.lang.Boolean");
                    }
                });
                return usersByPredicate;
            }
        });
        this.giftPremiumContacts$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ArrayList<String>>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$giftPremiumContactsArr$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<String> invoke() {
                ArrayList<String> arrCharsByPredicate;
                final FilteredContactsByNameDelegate filteredContactsByNameDelegate = FilteredContactsByNameDelegate.this;
                arrCharsByPredicate = filteredContactsByNameDelegate.getArrCharsByPredicate(new Function1<TLRPC$TL_contact, Boolean>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$giftPremiumContactsArr$2.1
                    {
                        super(1);
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
                        if (r6 == false) goto L18;
                     */
                    @Override // kotlin.jvm.functions.Function1
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Boolean invoke(org.telegram.tgnet.TLRPC$TL_contact r6) {
                        /*
                            r5 = this;
                            java.lang.String r0 = "it"
                            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                            long r0 = r6.user_id
                            com.iMe.domain.contacts.FilteredContactsByNameDelegate r2 = com.iMe.domain.contacts.FilteredContactsByNameDelegate.this
                            long r2 = com.iMe.domain.contacts.FilteredContactsByNameDelegate.access$getSelfId$p(r2)
                            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                            r1 = 1
                            r2 = 0
                            if (r0 == 0) goto L3d
                            com.iMe.domain.contacts.FilteredContactsByNameDelegate r0 = com.iMe.domain.contacts.FilteredContactsByNameDelegate.this
                            org.telegram.messenger.MessagesController r0 = com.iMe.domain.contacts.FilteredContactsByNameDelegate.access$getMessagesController(r0)
                            long r3 = r6.user_id
                            java.lang.Long r6 = java.lang.Long.valueOf(r3)
                            org.telegram.tgnet.TLRPC$User r6 = r0.getUser(r6)
                            boolean r0 = r6.premium
                            if (r0 != 0) goto L39
                            java.lang.String r6 = r6.username
                            if (r6 == 0) goto L34
                            int r6 = r6.length()
                            if (r6 != 0) goto L32
                            goto L34
                        L32:
                            r6 = r2
                            goto L35
                        L34:
                            r6 = r1
                        L35:
                            if (r6 != 0) goto L39
                            r6 = r1
                            goto L3a
                        L39:
                            r6 = r2
                        L3a:
                            if (r6 == 0) goto L3d
                            goto L3e
                        L3d:
                            r1 = r2
                        L3e:
                            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r1)
                            return r6
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.iMe.domain.contacts.FilteredContactsByNameDelegate$giftPremiumContactsArr$2.C13571.invoke(org.telegram.tgnet.TLRPC$TL_contact):java.lang.Boolean");
                    }
                });
                return arrCharsByPredicate;
            }
        });
        this.giftPremiumContactsArr$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<HashMap<String, ArrayList<TLRPC$TL_contact>>>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$onlineContactsDictionary$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final HashMap<String, ArrayList<TLRPC$TL_contact>> invoke() {
                HashMap<String, ArrayList<TLRPC$TL_contact>> usersByPredicate;
                final FilteredContactsByNameDelegate filteredContactsByNameDelegate = FilteredContactsByNameDelegate.this;
                usersByPredicate = filteredContactsByNameDelegate.getUsersByPredicate(new Function1<TLRPC$TL_contact, Boolean>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$onlineContactsDictionary$2.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(TLRPC$TL_contact it) {
                        long j;
                        boolean z;
                        MessagesController messagesController;
                        boolean userIsOnline;
                        Intrinsics.checkNotNullParameter(it, "it");
                        long j2 = it.user_id;
                        j = FilteredContactsByNameDelegate.this.selfId;
                        if (j2 != j) {
                            FilteredContactsByNameDelegate filteredContactsByNameDelegate2 = FilteredContactsByNameDelegate.this;
                            messagesController = filteredContactsByNameDelegate2.getMessagesController();
                            TLRPC$User user = messagesController.getUser(Long.valueOf(it.user_id));
                            Intrinsics.checkNotNullExpressionValue(user, "messagesController.getUser(it.user_id)");
                            userIsOnline = filteredContactsByNameDelegate2.userIsOnline(user);
                            if (userIsOnline) {
                                z = true;
                                return Boolean.valueOf(z);
                            }
                        }
                        z = false;
                        return Boolean.valueOf(z);
                    }
                });
                return usersByPredicate;
            }
        });
        this.onlineContactsDictionary$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<ArrayList<String>>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$onlineContactsArr$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<String> invoke() {
                ArrayList<String> arrCharsByPredicate;
                final FilteredContactsByNameDelegate filteredContactsByNameDelegate = FilteredContactsByNameDelegate.this;
                arrCharsByPredicate = filteredContactsByNameDelegate.getArrCharsByPredicate(new Function1<TLRPC$TL_contact, Boolean>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$onlineContactsArr$2.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(TLRPC$TL_contact it) {
                        long j;
                        boolean z;
                        MessagesController messagesController;
                        boolean userIsOnline;
                        Intrinsics.checkNotNullParameter(it, "it");
                        long j2 = it.user_id;
                        j = FilteredContactsByNameDelegate.this.selfId;
                        if (j2 != j) {
                            FilteredContactsByNameDelegate filteredContactsByNameDelegate2 = FilteredContactsByNameDelegate.this;
                            messagesController = filteredContactsByNameDelegate2.getMessagesController();
                            TLRPC$User user = messagesController.getUser(Long.valueOf(it.user_id));
                            Intrinsics.checkNotNullExpressionValue(user, "messagesController.getUser(it.user_id)");
                            userIsOnline = filteredContactsByNameDelegate2.userIsOnline(user);
                            if (userIsOnline) {
                                z = true;
                                return Boolean.valueOf(z);
                            }
                        }
                        z = false;
                        return Boolean.valueOf(z);
                    }
                });
                return arrCharsByPredicate;
            }
        });
        this.onlineContactsArr$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<ArrayList<String>>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$premiumContactsArr$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<String> invoke() {
                ArrayList<String> arrCharsByPredicate;
                final FilteredContactsByNameDelegate filteredContactsByNameDelegate = FilteredContactsByNameDelegate.this;
                arrCharsByPredicate = filteredContactsByNameDelegate.getArrCharsByPredicate(new Function1<TLRPC$TL_contact, Boolean>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$premiumContactsArr$2.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(TLRPC$TL_contact it) {
                        long j;
                        boolean z;
                        MessagesController messagesController;
                        Intrinsics.checkNotNullParameter(it, "it");
                        long j2 = it.user_id;
                        j = FilteredContactsByNameDelegate.this.selfId;
                        if (j2 != j) {
                            messagesController = FilteredContactsByNameDelegate.this.getMessagesController();
                            if (messagesController.getUser(Long.valueOf(it.user_id)).premium) {
                                z = true;
                                return Boolean.valueOf(z);
                            }
                        }
                        z = false;
                        return Boolean.valueOf(z);
                    }
                });
                return arrCharsByPredicate;
            }
        });
        this.premiumContactsArr$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<HashMap<String, ArrayList<TLRPC$TL_contact>>>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$premiumContacts$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final HashMap<String, ArrayList<TLRPC$TL_contact>> invoke() {
                HashMap<String, ArrayList<TLRPC$TL_contact>> usersByPredicate;
                final FilteredContactsByNameDelegate filteredContactsByNameDelegate = FilteredContactsByNameDelegate.this;
                usersByPredicate = filteredContactsByNameDelegate.getUsersByPredicate(new Function1<TLRPC$TL_contact, Boolean>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$premiumContacts$2.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(TLRPC$TL_contact it) {
                        long j;
                        boolean z;
                        MessagesController messagesController;
                        Intrinsics.checkNotNullParameter(it, "it");
                        long j2 = it.user_id;
                        j = FilteredContactsByNameDelegate.this.selfId;
                        if (j2 != j) {
                            messagesController = FilteredContactsByNameDelegate.this.getMessagesController();
                            if (messagesController.getUser(Long.valueOf(it.user_id)).premium) {
                                z = true;
                                return Boolean.valueOf(z);
                            }
                        }
                        z = false;
                        return Boolean.valueOf(z);
                    }
                });
                return usersByPredicate;
            }
        });
        this.premiumContacts$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<HashMap<String, ArrayList<TLRPC$TL_contact>>>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$mutualContacts$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final HashMap<String, ArrayList<TLRPC$TL_contact>> invoke() {
                HashMap<String, ArrayList<TLRPC$TL_contact>> usersByPredicate;
                usersByPredicate = FilteredContactsByNameDelegate.this.getUsersByPredicate(new Function1<TLRPC$TL_contact, Boolean>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$mutualContacts$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(TLRPC$TL_contact it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return Boolean.valueOf(it.mutual);
                    }
                });
                return usersByPredicate;
            }
        });
        this.mutualContacts$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new Function0<ArrayList<String>>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$mutualContactsArr$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<String> invoke() {
                ArrayList<String> arrCharsByPredicate;
                arrCharsByPredicate = FilteredContactsByNameDelegate.this.getArrCharsByPredicate(new Function1<TLRPC$TL_contact, Boolean>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$mutualContactsArr$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(TLRPC$TL_contact it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return Boolean.valueOf(it.mutual);
                    }
                });
                return arrCharsByPredicate;
            }
        });
        this.mutualContactsArr$delegate = lazy8;
        lazy9 = LazyKt__LazyJVMKt.lazy(new Function0<HashMap<String, ArrayList<TLRPC$TL_contact>>>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$notMutualContacts$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final HashMap<String, ArrayList<TLRPC$TL_contact>> invoke() {
                HashMap<String, ArrayList<TLRPC$TL_contact>> usersByPredicate;
                usersByPredicate = FilteredContactsByNameDelegate.this.getUsersByPredicate(new Function1<TLRPC$TL_contact, Boolean>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$notMutualContacts$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(TLRPC$TL_contact it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return Boolean.valueOf(!it.mutual);
                    }
                });
                return usersByPredicate;
            }
        });
        this.notMutualContacts$delegate = lazy9;
        lazy10 = LazyKt__LazyJVMKt.lazy(new Function0<ArrayList<String>>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$notMutualContactsArr$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<String> invoke() {
                ArrayList<String> arrCharsByPredicate;
                arrCharsByPredicate = FilteredContactsByNameDelegate.this.getArrCharsByPredicate(new Function1<TLRPC$TL_contact, Boolean>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$notMutualContactsArr$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(TLRPC$TL_contact it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return Boolean.valueOf(!it.mutual);
                    }
                });
                return arrCharsByPredicate;
            }
        });
        this.notMutualContactsArr$delegate = lazy10;
        lazy11 = LazyKt__LazyJVMKt.lazy(new Function0<HashMap<String, ArrayList<TLRPC$TL_contact>>>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$blockedUsers$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final HashMap<String, ArrayList<TLRPC$TL_contact>> invoke() {
                HashMap<String, ArrayList<TLRPC$TL_contact>> usersByPredicate;
                final FilteredContactsByNameDelegate filteredContactsByNameDelegate = FilteredContactsByNameDelegate.this;
                usersByPredicate = filteredContactsByNameDelegate.getUsersByPredicate(new Function1<TLRPC$TL_contact, Boolean>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$blockedUsers$2.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(TLRPC$TL_contact it) {
                        long j;
                        boolean z;
                        boolean userIsBlocked;
                        Intrinsics.checkNotNullParameter(it, "it");
                        long j2 = it.user_id;
                        j = FilteredContactsByNameDelegate.this.selfId;
                        if (j2 != j) {
                            userIsBlocked = FilteredContactsByNameDelegate.this.userIsBlocked(it);
                            if (userIsBlocked) {
                                z = true;
                                return Boolean.valueOf(z);
                            }
                        }
                        z = false;
                        return Boolean.valueOf(z);
                    }
                });
                return usersByPredicate;
            }
        });
        this.blockedUsers$delegate = lazy11;
        lazy12 = LazyKt__LazyJVMKt.lazy(new Function0<ArrayList<String>>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$blockedUsersArr$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ArrayList<String> invoke() {
                ArrayList<String> arrCharsByPredicate;
                final FilteredContactsByNameDelegate filteredContactsByNameDelegate = FilteredContactsByNameDelegate.this;
                arrCharsByPredicate = filteredContactsByNameDelegate.getArrCharsByPredicate(new Function1<TLRPC$TL_contact, Boolean>() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$blockedUsersArr$2.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(TLRPC$TL_contact it) {
                        long j;
                        boolean z;
                        boolean userIsBlocked;
                        Intrinsics.checkNotNullParameter(it, "it");
                        long j2 = it.user_id;
                        j = FilteredContactsByNameDelegate.this.selfId;
                        if (j2 != j) {
                            userIsBlocked = FilteredContactsByNameDelegate.this.userIsBlocked(it);
                            if (userIsBlocked) {
                                z = true;
                                return Boolean.valueOf(z);
                            }
                        }
                        z = false;
                        return Boolean.valueOf(z);
                    }
                });
                return arrCharsByPredicate;
            }
        });
        this.blockedUsersArr$delegate = lazy12;
        this.selfId = UserConfig.getInstance(this.currentAccount).clientUserId;
    }

    public final HashMap<String, ArrayList<TLRPC$TL_contact>> getGiftPremiumContacts() {
        return (HashMap) this.giftPremiumContacts$delegate.getValue();
    }

    public final ArrayList<String> getGiftPremiumContactsArr() {
        return (ArrayList) this.giftPremiumContactsArr$delegate.getValue();
    }

    public final HashMap<String, ArrayList<TLRPC$TL_contact>> getOnlineContactsDictionary() {
        return (HashMap) this.onlineContactsDictionary$delegate.getValue();
    }

    public final ArrayList<String> getOnlineContactsArr() {
        return (ArrayList) this.onlineContactsArr$delegate.getValue();
    }

    public final ArrayList<String> getPremiumContactsArr() {
        return (ArrayList) this.premiumContactsArr$delegate.getValue();
    }

    public final HashMap<String, ArrayList<TLRPC$TL_contact>> getPremiumContacts() {
        return (HashMap) this.premiumContacts$delegate.getValue();
    }

    public final HashMap<String, ArrayList<TLRPC$TL_contact>> getMutualContacts() {
        return (HashMap) this.mutualContacts$delegate.getValue();
    }

    public final ArrayList<String> getMutualContactsArr() {
        return (ArrayList) this.mutualContactsArr$delegate.getValue();
    }

    public final HashMap<String, ArrayList<TLRPC$TL_contact>> getNotMutualContacts() {
        return (HashMap) this.notMutualContacts$delegate.getValue();
    }

    public final ArrayList<String> getNotMutualContactsArr() {
        return (ArrayList) this.notMutualContactsArr$delegate.getValue();
    }

    public final HashMap<String, ArrayList<TLRPC$TL_contact>> getBlockedUsers() {
        return (HashMap) this.blockedUsers$delegate.getValue();
    }

    public final ArrayList<String> getBlockedUsersArr() {
        return (ArrayList) this.blockedUsersArr$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean userIsOnline(TLRPC$User tLRPC$User) {
        TLRPC$UserStatus tLRPC$UserStatus = tLRPC$User.status;
        return (tLRPC$UserStatus != null && tLRPC$UserStatus.expires > getConnectionsManager().getCurrentTime()) || getMessagesController().onlinePrivacy.containsKey(Long.valueOf(tLRPC$User.f1749id));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean userIsBlocked(TLRPC$TL_contact tLRPC$TL_contact) {
        return getMessagesController().blockePeers.indexOfKey(tLRPC$TL_contact.user_id) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ArrayList<String> getArrCharsByPredicate(Function1<? super TLRPC$TL_contact, Boolean> function1) {
        List sortedWith;
        HashMap<String, ArrayList<TLRPC$TL_contact>> hashMap = getContactsController().usersSectionsDict;
        Intrinsics.checkNotNullExpressionValue(hashMap, "contactsController.usersSectionsDict");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ArrayList<TLRPC$TL_contact>> entry : hashMap.entrySet()) {
            ArrayList<TLRPC$TL_contact> value = entry.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "entry.value");
            ArrayList<TLRPC$TL_contact> arrayList = value;
            boolean z = false;
            if (!(arrayList instanceof Collection) || !arrayList.isEmpty()) {
                Iterator<T> it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    TLRPC$TL_contact it2 = (TLRPC$TL_contact) it.next();
                    Intrinsics.checkNotNullExpressionValue(it2, "it");
                    if (function1.invoke(it2).booleanValue()) {
                        z = true;
                        break;
                    }
                }
            }
            if (z) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(linkedHashMap.keySet(), new Comparator() { // from class: com.iMe.domain.contacts.FilteredContactsByNameDelegate$getArrCharsByPredicate$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues((String) t, (String) t2);
                return compareValues;
            }
        });
        return new ArrayList<>(sortedWith);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashMap<String, ArrayList<TLRPC$TL_contact>> getUsersByPredicate(Function1<? super TLRPC$TL_contact, Boolean> function1) {
        HashMap<String, ArrayList<TLRPC$TL_contact>> hashMap = new HashMap<>();
        HashMap<String, ArrayList<TLRPC$TL_contact>> hashMap2 = getContactsController().usersSectionsDict;
        Intrinsics.checkNotNullExpressionValue(hashMap2, "contactsController.usersSectionsDict");
        for (Map.Entry<String, ArrayList<TLRPC$TL_contact>> entry : hashMap2.entrySet()) {
            ArrayList<TLRPC$TL_contact> value = entry.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "entry.value");
            ArrayList arrayList = new ArrayList();
            for (Object obj : value) {
                TLRPC$TL_contact it = (TLRPC$TL_contact) obj;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                if (function1.invoke(it).booleanValue()) {
                    arrayList.add(obj);
                }
            }
            String key = entry.getKey();
            Intrinsics.checkNotNullExpressionValue(key, "entry.key");
            hashMap.put(key, CollectionsUtilsKt.toArrayList(arrayList));
            arrayList.isEmpty();
        }
        return hashMap;
    }
}
