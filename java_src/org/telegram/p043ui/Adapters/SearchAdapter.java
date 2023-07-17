package org.telegram.p043ui.Adapters;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import org.telegram.PhoneFormat.C3333PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Adapters.SearchAdapterHelper;
import org.telegram.p043ui.Cells.GraySectionCell;
import org.telegram.p043ui.Cells.ProfileSearchCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.UserCell;
import org.telegram.p043ui.Components.ForegroundColorSpanThemable;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_contact;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Adapters.SearchAdapter */
/* loaded from: classes5.dex */
public class SearchAdapter extends RecyclerListView.SelectionAdapter {
    private ArrayList<ContactEntry> allUnregistredContacts;
    private boolean allowBots;
    private boolean allowChats;
    private boolean allowPhoneNumbers;
    private boolean allowSelf;
    private boolean allowUsernameSearch;
    private long channelId;
    private LongSparseArray<?> checkedMap;
    private LongSparseArray<TLRPC$User> ignoreUsers;
    private Context mContext;
    private boolean onlyMutual;
    private SearchAdapterHelper searchAdapterHelper;
    private boolean searchInProgress;
    private int searchPointer;
    private int searchReqId;
    private Timer searchTimer;
    int unregistredContactsHeaderRow;
    private boolean useUserCell;
    private ArrayList<Object> searchResult = new ArrayList<>();
    private ArrayList<CharSequence> searchResultNames = new ArrayList<>();
    private ArrayList<ContactsController.Contact> unregistredContacts = new ArrayList<>();

    protected void onSearchProgressChanged() {
        throw null;
    }

    public SearchAdapter(Context context, LongSparseArray<TLRPC$User> longSparseArray, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i) {
        this.mContext = context;
        this.ignoreUsers = longSparseArray;
        this.onlyMutual = z2;
        this.allowUsernameSearch = z;
        this.allowChats = z3;
        this.allowBots = z4;
        this.channelId = i;
        this.allowSelf = z5;
        this.allowPhoneNumbers = z6;
        SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(true);
        this.searchAdapterHelper = searchAdapterHelper;
        searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.Adapters.SearchAdapter.1
            @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public /* synthetic */ boolean canApplySearchResults(int i2) {
                return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$canApplySearchResults(this, i2);
            }

            @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public /* synthetic */ LongSparseArray getExcludeCallParticipants() {
                return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeCallParticipants(this);
            }

            @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public /* synthetic */ void onSetHashtags(ArrayList arrayList, HashMap hashMap) {
                SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$onSetHashtags(this, arrayList, hashMap);
            }

            @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public void onDataSetChanged(int i2) {
                SearchAdapter.this.notifyDataSetChanged();
                if (i2 != 0) {
                    SearchAdapter.this.onSearchProgressChanged();
                }
            }

            @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public LongSparseArray<TLRPC$User> getExcludeUsers() {
                return SearchAdapter.this.ignoreUsers;
            }
        });
    }

    public void searchDialogs(final String str) {
        try {
            Timer timer = this.searchTimer;
            if (timer != null) {
                timer.cancel();
            }
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        this.searchResult.clear();
        this.unregistredContacts.clear();
        this.searchResultNames.clear();
        if (this.allowUsernameSearch) {
            this.searchAdapterHelper.queryServerSearch(null, true, this.allowChats, this.allowBots, this.allowSelf, false, this.channelId, this.allowPhoneNumbers, 0, 0);
        }
        notifyDataSetChanged();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Timer timer2 = new Timer();
        this.searchTimer = timer2;
        timer2.schedule(new TimerTask() { // from class: org.telegram.ui.Adapters.SearchAdapter.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                try {
                    SearchAdapter.this.searchTimer.cancel();
                    SearchAdapter.this.searchTimer = null;
                } catch (Exception e2) {
                    FileLog.m49e(e2);
                }
                SearchAdapter.this.processSearch(str);
            }
        }, 200L, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processSearch(final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.SearchAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                SearchAdapter.this.lambda$processSearch$1(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSearch$1(final String str) {
        if (this.allowUsernameSearch) {
            this.searchAdapterHelper.queryServerSearch(str, true, this.allowChats, this.allowBots, this.allowSelf, false, this.channelId, this.allowPhoneNumbers, -1, 1);
        }
        final int i = UserConfig.selectedAccount;
        final ArrayList arrayList = new ArrayList(ContactsController.getInstance(i).contacts);
        this.searchInProgress = true;
        final int i2 = this.searchPointer;
        this.searchPointer = i2 + 1;
        this.searchReqId = i2;
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.SearchAdapter$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                SearchAdapter.this.lambda$processSearch$0(str, i2, arrayList, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSearch$0(String str, int i, ArrayList arrayList, int i2) {
        int i3;
        int i4;
        String[] strArr;
        String[] strArr2;
        boolean z;
        String lowerCase = str.trim().toLowerCase();
        if (lowerCase.length() == 0) {
            updateSearchResults(i, new ArrayList<>(), new ArrayList<>(), this.unregistredContacts);
            return;
        }
        String translitString = LocaleController.getInstance().getTranslitString(lowerCase);
        translitString = (lowerCase.equals(translitString) || translitString.length() == 0) ? null : null;
        int i5 = 0;
        int i6 = (translitString != null ? 1 : 0) + 1;
        String[] strArr3 = new String[i6];
        strArr3[0] = lowerCase;
        if (translitString != null) {
            strArr3[1] = translitString;
        }
        ArrayList<Object> arrayList2 = new ArrayList<>();
        ArrayList<CharSequence> arrayList3 = new ArrayList<>();
        ArrayList<ContactsController.Contact> arrayList4 = new ArrayList<>();
        int i7 = 0;
        while (i7 < arrayList.size()) {
            TLRPC$TL_contact tLRPC$TL_contact = (TLRPC$TL_contact) arrayList.get(i7);
            int i8 = i6;
            TLRPC$User user = MessagesController.getInstance(i2).getUser(Long.valueOf(tLRPC$TL_contact.user_id));
            if ((this.allowSelf || !user.self) && (!this.onlyMutual || user.mutual_contact)) {
                LongSparseArray<TLRPC$User> longSparseArray = this.ignoreUsers;
                if (longSparseArray == null || longSparseArray.indexOfKey(tLRPC$TL_contact.user_id) < 0) {
                    String[] strArr4 = new String[3];
                    i3 = 0;
                    strArr4[0] = ContactsController.formatName(user.first_name, user.last_name).toLowerCase();
                    strArr4[1] = LocaleController.getInstance().getTranslitString(strArr4[0]);
                    if (strArr4[0].equals(strArr4[1])) {
                        strArr4[1] = null;
                    }
                    if (UserObject.isReplyUser(user)) {
                        strArr4[2] = LocaleController.getString("RepliesTitle", C3417R.string.RepliesTitle).toLowerCase();
                    } else if (user.self) {
                        strArr4[2] = LocaleController.getString("SavedMessages", C3417R.string.SavedMessages).toLowerCase();
                    }
                    int i9 = i8;
                    int i10 = 0;
                    char c = 0;
                    while (true) {
                        i4 = i9;
                        if (i10 >= i9) {
                            strArr = strArr3;
                            break;
                        }
                        String str2 = strArr3[i10];
                        strArr = strArr3;
                        int i11 = 0;
                        while (i11 < 3) {
                            String str3 = strArr4[i11];
                            if (str3 != null) {
                                if (str3.startsWith(str2)) {
                                    strArr2 = strArr4;
                                } else {
                                    strArr2 = strArr4;
                                    if (str3.contains(" " + str2)) {
                                    }
                                }
                                c = 1;
                                break;
                            }
                            strArr2 = strArr4;
                            i11++;
                            strArr4 = strArr2;
                        }
                        strArr2 = strArr4;
                        String publicUsername = UserObject.getPublicUsername(user);
                        if (c == 0 && publicUsername != null && publicUsername.startsWith(str2)) {
                            c = 2;
                        }
                        if (c != 0) {
                            z = true;
                            if (c == 1) {
                                arrayList3.add(AndroidUtilities.generateSearchName(user.first_name, user.last_name, str2));
                            } else {
                                arrayList3.add(AndroidUtilities.generateSearchName("@" + UserObject.getPublicUsername(user), null, "@" + str2));
                            }
                            arrayList2.add(user);
                        } else {
                            i10++;
                            i9 = i4;
                            strArr3 = strArr;
                            strArr4 = strArr2;
                        }
                    }
                } else {
                    strArr = strArr3;
                    i4 = i8;
                    z = true;
                    i3 = 0;
                }
                i7++;
                i5 = i3;
                i6 = i4;
                strArr3 = strArr;
            } else {
                i3 = i5;
                strArr = strArr3;
                i4 = i8;
            }
            z = true;
            i7++;
            i5 = i3;
            i6 = i4;
            strArr3 = strArr;
        }
        int i12 = i5;
        if (this.allUnregistredContacts == null) {
            this.allUnregistredContacts = new ArrayList<>();
            Iterator<ContactsController.Contact> it = ContactsController.getInstance(i2).phoneBookContacts.iterator();
            while (it.hasNext()) {
                ContactsController.Contact next = it.next();
                ContactEntry contactEntry = new ContactEntry();
                contactEntry.contact = next;
                contactEntry.f1674q1 = (next.first_name + " " + next.last_name).toLowerCase();
                (next.last_name + " " + next.first_name).toLowerCase();
                this.allUnregistredContacts.add(contactEntry);
            }
        }
        for (int i13 = i12; i13 < this.allUnregistredContacts.size(); i13++) {
            ContactEntry contactEntry2 = this.allUnregistredContacts.get(i13);
            if ((translitString != null && (contactEntry2.f1674q1.toLowerCase().contains(translitString) || contactEntry2.f1674q1.toLowerCase().contains(translitString))) || contactEntry2.f1674q1.toLowerCase().contains(lowerCase) || contactEntry2.f1674q1.toLowerCase().contains(lowerCase)) {
                arrayList4.add(contactEntry2.contact);
            }
        }
        updateSearchResults(i, arrayList2, arrayList3, arrayList4);
    }

    private void updateSearchResults(final int i, final ArrayList<Object> arrayList, final ArrayList<CharSequence> arrayList2, final ArrayList<ContactsController.Contact> arrayList3) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.SearchAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SearchAdapter.this.lambda$updateSearchResults$2(i, arrayList, arrayList2, arrayList3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSearchResults$2(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        if (i == this.searchReqId) {
            this.searchResult = arrayList;
            this.searchResultNames = arrayList2;
            this.unregistredContacts = arrayList3;
            this.searchAdapterHelper.mergeResults(arrayList);
            this.searchInProgress = false;
            notifyDataSetChanged();
            onSearchProgressChanged();
        }
    }

    public boolean searchInProgress() {
        return this.searchInProgress || this.searchAdapterHelper.isSearchInProgress();
    }

    @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        int itemViewType = viewHolder.getItemViewType();
        return itemViewType == 0 || itemViewType == 2 || itemViewType == 3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        this.unregistredContactsHeaderRow = -1;
        int size = this.searchResult.size();
        this.unregistredContactsHeaderRow = size;
        if (!this.unregistredContacts.isEmpty()) {
            size += this.unregistredContacts.size() + 1;
        }
        int size2 = this.searchAdapterHelper.getGlobalSearch().size();
        if (size2 != 0) {
            size += size2 + 1;
        }
        int size3 = this.searchAdapterHelper.getPhoneSearch().size();
        return size3 != 0 ? size + size3 : size;
    }

    public boolean isGlobalSearch(int i) {
        int size = this.searchResult.size();
        int size2 = this.unregistredContacts.size();
        int size3 = this.searchAdapterHelper.getGlobalSearch().size();
        int size4 = this.searchAdapterHelper.getPhoneSearch().size();
        if (i < 0 || i >= size) {
            if (i <= size || i >= size + size2 + 1) {
                return (i <= (size + size2) + 1 || i >= ((size + size4) + size2) + 1) && i > ((size + size4) + size2) + 1 && i <= (((size3 + size4) + size) + size2) + 1;
            }
            return false;
        }
        return false;
    }

    public Object getItem(int i) {
        int size = this.searchResult.size();
        int size2 = this.unregistredContacts.size();
        int size3 = this.searchAdapterHelper.getGlobalSearch().size();
        int size4 = this.searchAdapterHelper.getPhoneSearch().size();
        if (i < 0 || i >= size) {
            int i2 = i - size;
            if (size2 > 0) {
                if (i2 == 0) {
                    return null;
                }
                if (i2 > 0 && i2 <= size2) {
                    return this.unregistredContacts.get(i2 - 1);
                }
                i2 -= size2 + 1;
            }
            if (i2 < 0 || i2 >= size4) {
                int i3 = i2 - size4;
                if (i3 <= 0 || i3 > size3) {
                    return null;
                }
                return this.searchAdapterHelper.getGlobalSearch().get(i3 - 1);
            }
            return this.searchAdapterHelper.getPhoneSearch().get(i2);
        }
        return this.searchResult.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View profileSearchCell;
        if (i != 0) {
            if (i == 1) {
                profileSearchCell = new GraySectionCell(this.mContext);
            } else if (i != 3) {
                profileSearchCell = new TextCell(this.mContext, 16, false);
            } else {
                profileSearchCell = new ProfileSearchCell(this.mContext);
            }
        } else if (this.useUserCell) {
            UserCell userCell = new UserCell(this.mContext, 1, 1, false);
            if (this.checkedMap != null) {
                userCell.setChecked(false, false);
            }
            profileSearchCell = userCell;
        } else {
            profileSearchCell = new ProfileSearchCell(this.mContext);
        }
        return new RecyclerListView.Holder(profileSearchCell);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        long j;
        String str;
        CharSequence charSequence;
        int itemViewType = viewHolder.getItemViewType();
        boolean z2 = false;
        if (itemViewType != 0) {
            if (itemViewType == 1) {
                GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                if (i == this.unregistredContactsHeaderRow) {
                    graySectionCell.setText(LocaleController.getString("InviteToTelegramShort", C3417R.string.InviteToTelegramShort));
                    return;
                } else if (getItem(i) == null) {
                    graySectionCell.setText(LocaleController.getString("GlobalSearch", C3417R.string.GlobalSearch));
                    return;
                } else {
                    graySectionCell.setText(LocaleController.getString("PhoneNumberSearch", C3417R.string.PhoneNumberSearch));
                    return;
                }
            } else if (itemViewType == 2) {
                TextCell textCell = (TextCell) viewHolder.itemView;
                textCell.setColors(-1, Theme.key_windowBackgroundWhiteBlueText2);
                textCell.setText(LocaleController.formatString("AddContactByPhone", C3417R.string.AddContactByPhone, C3333PhoneFormat.getInstance().format("+" + ((String) getItem(i)))), false);
                return;
            } else if (itemViewType != 3) {
                return;
            } else {
                ProfileSearchCell profileSearchCell = (ProfileSearchCell) viewHolder.itemView;
                ContactsController.Contact contact = (ContactsController.Contact) getItem(i);
                profileSearchCell.useSeparator = getItem(i + 1) instanceof ContactsController.Contact;
                profileSearchCell.setData(contact, null, ContactsController.formatName(contact.first_name, contact.last_name), C3333PhoneFormat.getInstance().format("+" + contact.shortPhones.get(0)), false, false);
                return;
            }
        }
        TLObject tLObject = (TLObject) getItem(i);
        if (tLObject != null) {
            CharSequence charSequence2 = null;
            if (tLObject instanceof TLRPC$User) {
                TLRPC$User tLRPC$User = (TLRPC$User) tLObject;
                str = tLRPC$User.username;
                j = tLRPC$User.f1656id;
                z = tLRPC$User.self;
            } else if (tLObject instanceof TLRPC$Chat) {
                TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) tLObject;
                str = ChatObject.getPublicUsername(tLRPC$Chat);
                j = tLRPC$Chat.f1515id;
                z = false;
            } else {
                z = false;
                j = 0;
                str = null;
            }
            if (i < this.searchResult.size()) {
                CharSequence charSequence3 = this.searchResultNames.get(i);
                if (charSequence3 != null && str != null && str.length() > 0) {
                    if (charSequence3.toString().startsWith("@" + str)) {
                        charSequence = charSequence3;
                    }
                }
                charSequence = null;
                charSequence2 = charSequence3;
            } else if (i <= this.searchResult.size() || str == null) {
                charSequence = null;
            } else {
                String lastFoundUsername = this.searchAdapterHelper.getLastFoundUsername();
                if (lastFoundUsername != null && lastFoundUsername.startsWith("@")) {
                    lastFoundUsername = lastFoundUsername.substring(1);
                }
                try {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    spannableStringBuilder.append((CharSequence) "@");
                    spannableStringBuilder.append((CharSequence) str);
                    charSequence = spannableStringBuilder;
                    if (lastFoundUsername != null) {
                        int indexOfIgnoreCase = AndroidUtilities.indexOfIgnoreCase(str, lastFoundUsername);
                        charSequence = spannableStringBuilder;
                        if (indexOfIgnoreCase != -1) {
                            int length = lastFoundUsername.length();
                            if (indexOfIgnoreCase == 0) {
                                length++;
                            } else {
                                indexOfIgnoreCase++;
                            }
                            spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_windowBackgroundWhiteBlueText4), indexOfIgnoreCase, length + indexOfIgnoreCase, 33);
                            charSequence = spannableStringBuilder;
                        }
                    }
                } catch (Exception e) {
                    FileLog.m49e(e);
                    charSequence = str;
                }
            }
            if (this.useUserCell) {
                UserCell userCell = (UserCell) viewHolder.itemView;
                userCell.setData(tLObject, charSequence2, charSequence, 0);
                LongSparseArray<?> longSparseArray = this.checkedMap;
                if (longSparseArray != null) {
                    userCell.setChecked(longSparseArray.indexOfKey(j) >= 0, false);
                    return;
                }
                return;
            }
            ProfileSearchCell profileSearchCell2 = (ProfileSearchCell) viewHolder.itemView;
            profileSearchCell2.setData(tLObject, null, z ? LocaleController.getString("SavedMessages", C3417R.string.SavedMessages) : charSequence2, charSequence, false, z);
            if (i != getItemCount() - 1 && i != this.searchResult.size() - 1) {
                z2 = true;
            }
            profileSearchCell2.useSeparator = z2;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        Object item = getItem(i);
        if (item == null) {
            return 1;
        }
        return item instanceof String ? "section".equals((String) item) ? 1 : 2 : item instanceof ContactsController.Contact ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Adapters.SearchAdapter$ContactEntry */
    /* loaded from: classes5.dex */
    public static class ContactEntry {
        ContactsController.Contact contact;

        /* renamed from: q1 */
        String f1674q1;

        private ContactEntry() {
        }
    }
}
