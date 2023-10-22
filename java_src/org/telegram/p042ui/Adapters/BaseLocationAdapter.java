package org.telegram.p042ui.Adapters;

import android.location.Location;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Locale;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p042ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BotInlineMessage;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaVenue;
import org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername;
import org.telegram.tgnet.TLRPC$TL_contacts_resolvedPeer;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputGeoPoint;
import org.telegram.tgnet.TLRPC$TL_inputPeerEmpty;
import org.telegram.tgnet.TLRPC$TL_messageMediaVenue;
import org.telegram.tgnet.TLRPC$TL_messages_getInlineBotResults;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* renamed from: org.telegram.ui.Adapters.BaseLocationAdapter */
/* loaded from: classes5.dex */
public abstract class BaseLocationAdapter extends RecyclerListView.SelectionAdapter {
    private int currentRequestNum;
    private BaseLocationAdapterDelegate delegate;
    private long dialogId;
    private String lastFoundQuery;
    private Location lastSearchLocation;
    private String lastSearchQuery;
    protected boolean searchInProgress;
    private Runnable searchRunnable;
    protected boolean searching;
    protected boolean searchingLocations;
    private boolean searchingUser;
    public final boolean stories;
    protected boolean searched = false;
    protected ArrayList<TLRPC$TL_messageMediaVenue> locations = new ArrayList<>();
    protected ArrayList<TLRPC$TL_messageMediaVenue> places = new ArrayList<>();
    private int currentAccount = UserConfig.selectedAccount;

    /* renamed from: org.telegram.ui.Adapters.BaseLocationAdapter$BaseLocationAdapterDelegate */
    /* loaded from: classes5.dex */
    public interface BaseLocationAdapterDelegate {
        void didLoadSearchResult(ArrayList<TLRPC$TL_messageMediaVenue> arrayList);
    }

    public BaseLocationAdapter(boolean z) {
        this.stories = z;
    }

    public void destroy() {
        if (this.currentRequestNum != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.currentRequestNum, true);
            this.currentRequestNum = 0;
        }
    }

    public void setDelegate(long j, BaseLocationAdapterDelegate baseLocationAdapterDelegate) {
        this.dialogId = j;
        this.delegate = baseLocationAdapterDelegate;
    }

    public void searchDelayed(final String str, final Location location) {
        if (str == null || str.length() == 0) {
            this.places.clear();
            this.locations.clear();
            this.searchInProgress = false;
            notifyDataSetChanged();
            return;
        }
        if (this.searchRunnable != null) {
            Utilities.searchQueue.cancelRunnable(this.searchRunnable);
            this.searchRunnable = null;
        }
        this.searchInProgress = true;
        DispatchQueue dispatchQueue = Utilities.searchQueue;
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                BaseLocationAdapter.this.lambda$searchDelayed$1(str, location);
            }
        };
        this.searchRunnable = runnable;
        dispatchQueue.postRunnable(runnable, 400L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDelayed$1(final String str, final Location location) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BaseLocationAdapter.this.lambda$searchDelayed$0(str, location);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDelayed$0(String str, Location location) {
        this.searchRunnable = null;
        this.lastSearchLocation = null;
        searchPlacesWithQuery(str, location, true);
    }

    private void searchBotUser() {
        String str;
        if (this.searchingUser) {
            return;
        }
        this.searchingUser = true;
        TLRPC$TL_contacts_resolveUsername tLRPC$TL_contacts_resolveUsername = new TLRPC$TL_contacts_resolveUsername();
        if (this.stories) {
            str = MessagesController.getInstance(this.currentAccount).venueSearchBot;
        } else {
            str = MessagesController.getInstance(this.currentAccount).venueSearchBot;
        }
        tLRPC$TL_contacts_resolveUsername.username = str;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda6
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BaseLocationAdapter.this.lambda$searchBotUser$3(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchBotUser$3(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    BaseLocationAdapter.this.lambda$searchBotUser$2(tLObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchBotUser$2(TLObject tLObject) {
        TLRPC$TL_contacts_resolvedPeer tLRPC$TL_contacts_resolvedPeer = (TLRPC$TL_contacts_resolvedPeer) tLObject;
        MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$TL_contacts_resolvedPeer.users, false);
        MessagesController.getInstance(this.currentAccount).putChats(tLRPC$TL_contacts_resolvedPeer.chats, false);
        MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tLRPC$TL_contacts_resolvedPeer.users, tLRPC$TL_contacts_resolvedPeer.chats, true, true);
        Location location = this.lastSearchLocation;
        this.lastSearchLocation = null;
        searchPlacesWithQuery(this.lastSearchQuery, location, false);
    }

    public boolean isSearching() {
        return this.searchInProgress;
    }

    public String getLastSearchString() {
        return this.lastFoundQuery;
    }

    public void searchPlacesWithQuery(String str, Location location, boolean z) {
        searchPlacesWithQuery(str, location, z, false);
    }

    public void searchPlacesWithQuery(final String str, final Location location, boolean z, boolean z2) {
        String str2;
        if (location != null || this.stories) {
            Location location2 = this.lastSearchLocation;
            if (location2 == null || location == null || location.distanceTo(location2) >= 200.0f) {
                this.lastSearchLocation = location == null ? null : new Location(location);
                this.lastSearchQuery = str;
                if (this.searching) {
                    this.searching = false;
                    if (this.currentRequestNum != 0) {
                        ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.currentRequestNum, true);
                        this.currentRequestNum = 0;
                    }
                }
                getItemCount();
                this.searching = true;
                this.searched = true;
                MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                if (this.stories) {
                    str2 = MessagesController.getInstance(this.currentAccount).venueSearchBot;
                } else {
                    str2 = MessagesController.getInstance(this.currentAccount).venueSearchBot;
                }
                TLObject userOrChat = messagesController.getUserOrChat(str2);
                if (!(userOrChat instanceof TLRPC$User)) {
                    if (z) {
                        searchBotUser();
                        return;
                    }
                    return;
                }
                TLRPC$User tLRPC$User = (TLRPC$User) userOrChat;
                TLRPC$TL_messages_getInlineBotResults tLRPC$TL_messages_getInlineBotResults = new TLRPC$TL_messages_getInlineBotResults();
                tLRPC$TL_messages_getInlineBotResults.query = str == null ? "" : str;
                tLRPC$TL_messages_getInlineBotResults.bot = MessagesController.getInstance(this.currentAccount).getInputUser(tLRPC$User);
                tLRPC$TL_messages_getInlineBotResults.offset = "";
                if (location != null) {
                    TLRPC$TL_inputGeoPoint tLRPC$TL_inputGeoPoint = new TLRPC$TL_inputGeoPoint();
                    tLRPC$TL_messages_getInlineBotResults.geo_point = tLRPC$TL_inputGeoPoint;
                    tLRPC$TL_inputGeoPoint.lat = AndroidUtilities.fixLocationCoord(location.getLatitude());
                    tLRPC$TL_messages_getInlineBotResults.geo_point._long = AndroidUtilities.fixLocationCoord(location.getLongitude());
                    tLRPC$TL_messages_getInlineBotResults.flags |= 1;
                }
                if (DialogObject.isEncryptedDialog(this.dialogId)) {
                    tLRPC$TL_messages_getInlineBotResults.peer = new TLRPC$TL_inputPeerEmpty();
                } else {
                    tLRPC$TL_messages_getInlineBotResults.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                }
                if (!TextUtils.isEmpty(str) && this.stories) {
                    this.searchingLocations = true;
                    final Locale currentLocale = LocaleController.getInstance().getCurrentLocale();
                    Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            BaseLocationAdapter.this.lambda$searchPlacesWithQuery$5(currentLocale, str, location, str);
                        }
                    });
                } else {
                    this.searchingLocations = false;
                }
                if (location == null) {
                    return;
                }
                this.currentRequestNum = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getInlineBotResults, new RequestDelegate() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda7
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        BaseLocationAdapter.this.lambda$searchPlacesWithQuery$7(str, tLObject, tLRPC$TL_error);
                    }
                });
                notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0229 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0278 A[EDGE_INSN: B:117:0x0278->B:109:0x0278 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c6 A[Catch: Exception -> 0x0278, TryCatch #0 {Exception -> 0x0278, blocks: (B:3:0x0005, B:4:0x0020, B:6:0x0026, B:8:0x0032, B:11:0x003a, B:13:0x005b, B:14:0x005f, B:17:0x0071, B:19:0x007b, B:21:0x0081, B:22:0x0084, B:39:0x00c0, B:41:0x00c6, B:43:0x00cc, B:44:0x00cf, B:46:0x00d4, B:48:0x00da, B:49:0x00dd, B:51:0x00e2, B:53:0x00ec, B:55:0x00fa, B:57:0x0106, B:59:0x0112, B:71:0x016b, B:73:0x0171, B:74:0x0174, B:76:0x017d, B:77:0x0180, B:79:0x018b, B:81:0x0193, B:83:0x019d, B:89:0x01e2, B:91:0x01ec, B:95:0x022c, B:97:0x0232, B:99:0x0250, B:100:0x0252, B:102:0x025c, B:101:0x0257, B:63:0x0126, B:65:0x013a, B:67:0x0144, B:69:0x0163, B:23:0x0088, B:25:0x0092, B:27:0x0098, B:28:0x009b, B:30:0x00a0, B:32:0x00aa, B:34:0x00b0, B:36:0x00b6, B:37:0x00b9), top: B:112:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ec A[Catch: Exception -> 0x0278, TryCatch #0 {Exception -> 0x0278, blocks: (B:3:0x0005, B:4:0x0020, B:6:0x0026, B:8:0x0032, B:11:0x003a, B:13:0x005b, B:14:0x005f, B:17:0x0071, B:19:0x007b, B:21:0x0081, B:22:0x0084, B:39:0x00c0, B:41:0x00c6, B:43:0x00cc, B:44:0x00cf, B:46:0x00d4, B:48:0x00da, B:49:0x00dd, B:51:0x00e2, B:53:0x00ec, B:55:0x00fa, B:57:0x0106, B:59:0x0112, B:71:0x016b, B:73:0x0171, B:74:0x0174, B:76:0x017d, B:77:0x0180, B:79:0x018b, B:81:0x0193, B:83:0x019d, B:89:0x01e2, B:91:0x01ec, B:95:0x022c, B:97:0x0232, B:99:0x0250, B:100:0x0252, B:102:0x025c, B:101:0x0257, B:63:0x0126, B:65:0x013a, B:67:0x0144, B:69:0x0163, B:23:0x0088, B:25:0x0092, B:27:0x0098, B:28:0x009b, B:30:0x00a0, B:32:0x00aa, B:34:0x00b0, B:36:0x00b6, B:37:0x00b9), top: B:112:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0171 A[Catch: Exception -> 0x0278, TryCatch #0 {Exception -> 0x0278, blocks: (B:3:0x0005, B:4:0x0020, B:6:0x0026, B:8:0x0032, B:11:0x003a, B:13:0x005b, B:14:0x005f, B:17:0x0071, B:19:0x007b, B:21:0x0081, B:22:0x0084, B:39:0x00c0, B:41:0x00c6, B:43:0x00cc, B:44:0x00cf, B:46:0x00d4, B:48:0x00da, B:49:0x00dd, B:51:0x00e2, B:53:0x00ec, B:55:0x00fa, B:57:0x0106, B:59:0x0112, B:71:0x016b, B:73:0x0171, B:74:0x0174, B:76:0x017d, B:77:0x0180, B:79:0x018b, B:81:0x0193, B:83:0x019d, B:89:0x01e2, B:91:0x01ec, B:95:0x022c, B:97:0x0232, B:99:0x0250, B:100:0x0252, B:102:0x025c, B:101:0x0257, B:63:0x0126, B:65:0x013a, B:67:0x0144, B:69:0x0163, B:23:0x0088, B:25:0x0092, B:27:0x0098, B:28:0x009b, B:30:0x00a0, B:32:0x00aa, B:34:0x00b0, B:36:0x00b6, B:37:0x00b9), top: B:112:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x017d A[Catch: Exception -> 0x0278, TryCatch #0 {Exception -> 0x0278, blocks: (B:3:0x0005, B:4:0x0020, B:6:0x0026, B:8:0x0032, B:11:0x003a, B:13:0x005b, B:14:0x005f, B:17:0x0071, B:19:0x007b, B:21:0x0081, B:22:0x0084, B:39:0x00c0, B:41:0x00c6, B:43:0x00cc, B:44:0x00cf, B:46:0x00d4, B:48:0x00da, B:49:0x00dd, B:51:0x00e2, B:53:0x00ec, B:55:0x00fa, B:57:0x0106, B:59:0x0112, B:71:0x016b, B:73:0x0171, B:74:0x0174, B:76:0x017d, B:77:0x0180, B:79:0x018b, B:81:0x0193, B:83:0x019d, B:89:0x01e2, B:91:0x01ec, B:95:0x022c, B:97:0x0232, B:99:0x0250, B:100:0x0252, B:102:0x025c, B:101:0x0257, B:63:0x0126, B:65:0x013a, B:67:0x0144, B:69:0x0163, B:23:0x0088, B:25:0x0092, B:27:0x0098, B:28:0x009b, B:30:0x00a0, B:32:0x00aa, B:34:0x00b0, B:36:0x00b6, B:37:0x00b9), top: B:112:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0184  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$searchPlacesWithQuery$5(java.util.Locale r26, java.lang.String r27, final android.location.Location r28, final java.lang.String r29) {
        /*
            Method dump skipped, instructions count: 647
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Adapters.BaseLocationAdapter.lambda$searchPlacesWithQuery$5(java.util.Locale, java.lang.String, android.location.Location, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchPlacesWithQuery$4(Location location, String str, ArrayList arrayList) {
        this.searchingLocations = false;
        if (location == null) {
            this.currentRequestNum = 0;
            this.searching = false;
            this.places.clear();
            this.searchInProgress = false;
            this.lastFoundQuery = str;
        }
        this.locations.clear();
        this.locations.addAll(arrayList);
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchPlacesWithQuery$7(final String str, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.BaseLocationAdapter$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                BaseLocationAdapter.this.lambda$searchPlacesWithQuery$6(tLRPC$TL_error, str, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchPlacesWithQuery$6(TLRPC$TL_error tLRPC$TL_error, String str, TLObject tLObject) {
        if (tLRPC$TL_error == null) {
            this.currentRequestNum = 0;
            this.searching = false;
            this.places.clear();
            this.searchInProgress = false;
            this.lastFoundQuery = str;
            TLRPC$messages_BotResults tLRPC$messages_BotResults = (TLRPC$messages_BotResults) tLObject;
            int size = tLRPC$messages_BotResults.results.size();
            for (int i = 0; i < size; i++) {
                TLRPC$BotInlineResult tLRPC$BotInlineResult = tLRPC$messages_BotResults.results.get(i);
                if ("venue".equals(tLRPC$BotInlineResult.type)) {
                    TLRPC$BotInlineMessage tLRPC$BotInlineMessage = tLRPC$BotInlineResult.send_message;
                    if (tLRPC$BotInlineMessage instanceof TLRPC$TL_botInlineMessageMediaVenue) {
                        TLRPC$TL_botInlineMessageMediaVenue tLRPC$TL_botInlineMessageMediaVenue = (TLRPC$TL_botInlineMessageMediaVenue) tLRPC$BotInlineMessage;
                        TLRPC$TL_messageMediaVenue tLRPC$TL_messageMediaVenue = new TLRPC$TL_messageMediaVenue();
                        tLRPC$TL_messageMediaVenue.geo = tLRPC$TL_botInlineMessageMediaVenue.geo;
                        tLRPC$TL_messageMediaVenue.address = tLRPC$TL_botInlineMessageMediaVenue.address;
                        tLRPC$TL_messageMediaVenue.title = tLRPC$TL_botInlineMessageMediaVenue.title;
                        tLRPC$TL_messageMediaVenue.icon = "https://ss3.4sqi.net/img/categories_v2/" + tLRPC$TL_botInlineMessageMediaVenue.venue_type + "_64.png";
                        tLRPC$TL_messageMediaVenue.venue_type = tLRPC$TL_botInlineMessageMediaVenue.venue_type;
                        tLRPC$TL_messageMediaVenue.venue_id = tLRPC$TL_botInlineMessageMediaVenue.venue_id;
                        tLRPC$TL_messageMediaVenue.provider = tLRPC$TL_botInlineMessageMediaVenue.provider;
                        tLRPC$TL_messageMediaVenue.query_id = tLRPC$messages_BotResults.query_id;
                        tLRPC$TL_messageMediaVenue.result_id = tLRPC$BotInlineResult.f1598id;
                        this.places.add(tLRPC$TL_messageMediaVenue);
                    }
                }
            }
        }
        BaseLocationAdapterDelegate baseLocationAdapterDelegate = this.delegate;
        if (baseLocationAdapterDelegate != null) {
            baseLocationAdapterDelegate.didLoadSearchResult(this.places);
        }
        notifyDataSetChanged();
    }
}
