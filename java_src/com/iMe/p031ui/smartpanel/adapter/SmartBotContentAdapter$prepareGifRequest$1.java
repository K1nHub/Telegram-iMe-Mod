package com.iMe.p031ui.smartpanel.adapter;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername;
import org.telegram.tgnet.TLRPC$TL_contacts_resolvedPeer;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: SmartBotContentAdapter.kt */
/* renamed from: com.iMe.ui.smartpanel.adapter.SmartBotContentAdapter$prepareGifRequest$1 */
/* loaded from: classes3.dex */
public final class SmartBotContentAdapter$prepareGifRequest$1 implements Runnable {
    final /* synthetic */ MessagesController $messagesController;
    final /* synthetic */ MessagesStorage $messagesStorage;
    final /* synthetic */ String $query;
    final /* synthetic */ SmartBotContentAdapter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmartBotContentAdapter$prepareGifRequest$1(SmartBotContentAdapter smartBotContentAdapter, String str, MessagesController messagesController, MessagesStorage messagesStorage) {
        this.this$0 = smartBotContentAdapter;
        this.$query = str;
        this.$messagesController = messagesController;
        this.$messagesStorage = messagesStorage;
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable runnable;
        TLRPC$User tLRPC$User;
        int i;
        TLRPC$User tLRPC$User2;
        runnable = this.this$0.contextQueryRunnable;
        if (Intrinsics.areEqual(runnable, this)) {
            this.this$0.contextQueryRunnable = null;
            tLRPC$User = this.this$0.foundContextBot;
            if (tLRPC$User != null) {
                SmartBotContentAdapter smartBotContentAdapter = this.this$0;
                tLRPC$User2 = smartBotContentAdapter.foundContextBot;
                smartBotContentAdapter.searchForGifResults(true, tLRPC$User2, this.$query, "");
                return;
            }
            TLObject userOrChat = this.$messagesController.getUserOrChat("gif");
            if (userOrChat instanceof TLRPC$User) {
                this.this$0.processFoundUser((TLRPC$User) userOrChat);
                return;
            }
            TLRPC$TL_contacts_resolveUsername tLRPC$TL_contacts_resolveUsername = new TLRPC$TL_contacts_resolveUsername();
            tLRPC$TL_contacts_resolveUsername.username = "gif";
            SmartBotContentAdapter smartBotContentAdapter2 = this.this$0;
            i = smartBotContentAdapter2.currentAccount;
            ConnectionsManager connectionsManager = ConnectionsManager.getInstance(i);
            final MessagesController messagesController = this.$messagesController;
            final MessagesStorage messagesStorage = this.$messagesStorage;
            final SmartBotContentAdapter smartBotContentAdapter3 = this.this$0;
            smartBotContentAdapter2.contextUsernameReqId = connectionsManager.sendRequest(tLRPC$TL_contacts_resolveUsername, new RequestDelegate() { // from class: com.iMe.ui.smartpanel.adapter.SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    SmartBotContentAdapter$prepareGifRequest$1.run$lambda$1(MessagesController.this, messagesStorage, smartBotContentAdapter3, tLObject, tLRPC$TL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void run$lambda$1(final MessagesController messagesController, final MessagesStorage messagesStorage, final SmartBotContentAdapter this$0, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.ui.smartpanel.adapter.SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SmartBotContentAdapter$prepareGifRequest$1.run$lambda$1$lambda$0(TLRPC$TL_error.this, tLObject, messagesController, messagesStorage, this$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void run$lambda$1$lambda$0(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, MessagesController messagesController, MessagesStorage messagesStorage, SmartBotContentAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TLRPC$User tLRPC$User = null;
        if (tLRPC$TL_error == null) {
            Intrinsics.checkNotNull(tLObject, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_contacts_resolvedPeer");
            TLRPC$TL_contacts_resolvedPeer tLRPC$TL_contacts_resolvedPeer = (TLRPC$TL_contacts_resolvedPeer) tLObject;
            ArrayList<TLRPC$User> arrayList = tLRPC$TL_contacts_resolvedPeer.users;
            Intrinsics.checkNotNullExpressionValue(arrayList, "res.users");
            if (!arrayList.isEmpty()) {
                TLRPC$User tLRPC$User2 = tLRPC$TL_contacts_resolvedPeer.users.get(0);
                messagesController.putUser(tLRPC$User2, false);
                messagesStorage.putUsersAndChats(tLRPC$TL_contacts_resolvedPeer.users, null, true, true);
                tLRPC$User = tLRPC$User2;
            }
        }
        this$0.processFoundUser(tLRPC$User);
    }
}
