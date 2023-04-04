package com.iMe.domain.contacts;

import com.iMe.model.contacts.ContactsFilter;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
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
        lazy = LazyKt__LazyJVMKt.lazy(new FilteredByOnlineContactsDelegate$allContacts$2(this));
        this.allContacts$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new FilteredByOnlineContactsDelegate$onlineContacts$2(this));
        this.onlineContacts$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new FilteredByOnlineContactsDelegate$mutualContacts$2(this));
        this.mutualContacts$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new FilteredByOnlineContactsDelegate$notMutualContacts$2(this));
        this.notMutualContacts$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new FilteredByOnlineContactsDelegate$blockedContacts$2(this));
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
        return (tLRPC$UserStatus != null && tLRPC$UserStatus.expires > getConnectionsManager().getCurrentTime()) || getMessagesController().onlinePrivacy.containsKey(Long.valueOf(tLRPC$User.f1642id));
    }
}
