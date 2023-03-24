package org.telegram.p048ui.Adapters;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.domain.contacts.FilteredByOnlineContactsDelegate;
import com.smedialink.domain.contacts.FilteredContactsByNameDelegate;
import com.smedialink.model.contacts.CollectionsFilteredContacts;
import com.smedialink.model.contacts.ContactsFilter;
import com.smedialink.p031ui.common.SimpleTextWatcher;
import com.smedialink.p031ui.contacts.view.TextCellWithRightImage;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.DividerCell;
import org.telegram.p048ui.Cells.EditTextSettingsCell;
import org.telegram.p048ui.Cells.GraySectionCell;
import org.telegram.p048ui.Cells.LetterSectionCell;
import org.telegram.p048ui.Cells.ShadowSectionCell;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.Cells.UserCell;
import org.telegram.p048ui.Components.CombinedDrawable;
import org.telegram.p048ui.Components.ContactsEmptyView;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$TL_contact;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Adapters.ContactsAdapter */
/* loaded from: classes5.dex */
public class ContactsAdapter extends RecyclerListView.SectionsAdapter {
    private boolean actionModeIsOn;
    private LongSparseArray<?> checkedMap;
    private boolean disableSections;
    private FilteredContactsByNameDelegate filteredContactsDelegate;
    private boolean hasGps;
    private LongSparseArray<TLRPC$User> ignoreUsers;
    private boolean isAdmin;
    private boolean isChannel;
    private boolean isChooseWalletTransferRecipient;
    private boolean isEmpty;
    private Context mContext;
    private boolean needPhonebook;
    private NetworkType networkType;
    private ArrayList<TLRPC$TL_contact> onlineContacts;
    private FilteredByOnlineContactsDelegate onlineContactsDelegate;
    private int onlyUsers;
    private Callbacks$Callback qrCodeAction;
    private boolean scrolling;
    private int sortType;
    private ContactsFilter filterRowModel = ContactsFilter.ALL;
    private String recipientValue = "";
    private int currentAccount = UserConfig.selectedAccount;

    public void sortOnlineContacts() {
        sortOnlineContacts(true);
    }

    public void refreshOnBlockedUsersLoaded() {
        if (this.filterRowModel == ContactsFilter.BLOCKED) {
            notifyDataSetChanged();
        }
    }

    public void setFilterModel(ContactsFilter contactsFilter) {
        this.filterRowModel = contactsFilter;
    }

    public void changeActionMode(boolean z) {
        this.actionModeIsOn = z;
        notifyDataSetChanged();
    }

    public ArrayList<TLRPC$TL_contact> getFilteredContacts(ContactsFilter contactsFilter) {
        return this.onlineContactsDelegate.getContactsByFilter(contactsFilter);
    }

    public void refreshContactsList() {
        if (this.onlineContactsDelegate != null) {
            this.onlineContacts = getFilteredContacts(this.filterRowModel);
            sortOnlineContacts();
        }
    }

    public void reCreateDelegates() {
        this.filteredContactsDelegate = new FilteredContactsByNameDelegate(this.currentAccount);
        int i = this.currentAccount;
        this.onlineContactsDelegate = new FilteredByOnlineContactsDelegate(i, ContactsController.getInstance(i).contacts);
        this.onlineContacts = getFilteredContacts(this.filterRowModel);
        sortOnlineContacts(false);
    }

    public void setNetworkType(NetworkType networkType) {
        this.networkType = networkType;
    }

    public void setChooseWalletTransferRecipientMode(boolean z) {
        this.isChooseWalletTransferRecipient = z;
    }

    public void setQrCodeAction(Callbacks$Callback callbacks$Callback) {
        this.qrCodeAction = callbacks$Callback;
    }

    public String getRecipient() {
        return this.recipientValue;
    }

    private String getHintByType(NetworkType networkType) {
        return LocaleController.formatStringInternal(C3301R.string.wallet_recipient_address_hint, LocaleController.getInternalString(networkType.getShortName()));
    }

    private boolean isFilterRow(int i) {
        boolean z = this.hasGps;
        if (z && i == 2) {
            return true;
        }
        return !z && i == 1;
    }

    private void bindFilterModel(TextCellWithRightImage textCellWithRightImage, ContactsFilter contactsFilter) {
        boolean z = false;
        textCellWithRightImage.setTextAndIcon(LocaleController.getInternalString(contactsFilter.getTitle()), contactsFilter.getIcon(), false);
        if (contactsFilter.getNeedShowDelete() && !this.actionModeIsOn && getFilteredContacts(contactsFilter).size() > 0) {
            z = true;
        }
        textCellWithRightImage.setRightIconVisible(z);
        textCellWithRightImage.setRightIcon(contactsFilter == ContactsFilter.BLOCKED ? C3301R.C3303drawable.msg_actions : C3301R.C3303drawable.msg_delete, Theme.getColor("windowBackgroundWhiteGrayIcon"));
        textCellWithRightImage.setRightActionClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Adapters.ContactsAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContactsAdapter.this.lambda$bindFilterModel$0(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$bindFilterModel$0(View view) {
        NotificationCenter.getInstance(UserConfig.selectedAccount).postNotificationName(NotificationCenter.onContactsActionsClicked, this.filterRowModel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Adapters.ContactsAdapter$3 */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class C34753 {
        static final /* synthetic */ int[] $SwitchMap$com$smedialink$model$contacts$ContactsFilter;

        static {
            int[] iArr = new int[ContactsFilter.values().length];
            $SwitchMap$com$smedialink$model$contacts$ContactsFilter = iArr;
            try {
                iArr[ContactsFilter.ONLINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$smedialink$model$contacts$ContactsFilter[ContactsFilter.MUTUAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$smedialink$model$contacts$ContactsFilter[ContactsFilter.NOT_MUTUAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$smedialink$model$contacts$ContactsFilter[ContactsFilter.BLOCKED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$smedialink$model$contacts$ContactsFilter[ContactsFilter.ALL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private CollectionsFilteredContacts getCollectionsModel() {
        HashMap<String, ArrayList<TLRPC$TL_contact>> hashMap;
        ArrayList<String> arrayList;
        if (this.needPhonebook) {
            int i = C34753.$SwitchMap$com$smedialink$model$contacts$ContactsFilter[this.filterRowModel.ordinal()];
            if (i == 1) {
                hashMap = this.filteredContactsDelegate.getOnlineContactsDictionary();
                arrayList = this.filteredContactsDelegate.getOnlineContactsArr();
            } else if (i == 2) {
                hashMap = this.filteredContactsDelegate.getMutualContacts();
                arrayList = this.filteredContactsDelegate.getMutualContactsArr();
            } else if (i == 3) {
                hashMap = this.filteredContactsDelegate.getNotMutualContacts();
                arrayList = this.filteredContactsDelegate.getNotMutualContactsArr();
            } else if (i == 4) {
                hashMap = this.filteredContactsDelegate.getBlockedUsers();
                arrayList = this.filteredContactsDelegate.getBlockedUsersArr();
            } else {
                hashMap = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).usersMutualSectionsDict : ContactsController.getInstance(this.currentAccount).usersSectionsDict;
                arrayList = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).sortedUsersMutualSectionsArray : ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray;
            }
        } else {
            hashMap = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).usersMutualSectionsDict : ContactsController.getInstance(this.currentAccount).usersSectionsDict;
            arrayList = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).sortedUsersMutualSectionsArray : ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray;
        }
        return new CollectionsFilteredContacts(hashMap, arrayList);
    }

    public ContactsAdapter(Context context, int i, boolean z, LongSparseArray<TLRPC$User> longSparseArray, int i2, boolean z2) {
        this.mContext = context;
        this.onlyUsers = i;
        this.needPhonebook = z;
        this.ignoreUsers = longSparseArray;
        this.isAdmin = i2 != 0;
        this.isChannel = i2 == 2;
        this.hasGps = z2;
        reCreateDelegates();
    }

    public void setDisableSections(boolean z) {
        this.disableSections = z;
    }

    public void setSortType(int i, boolean z) {
        this.sortType = i;
        if (i == 2) {
            if (this.onlineContacts == null || z) {
                this.onlineContacts = new ArrayList<>(ContactsController.getInstance(this.currentAccount).contacts);
                if (this.needPhonebook) {
                    this.onlineContacts = getFilteredContacts(this.filterRowModel);
                }
                long j = UserConfig.getInstance(this.currentAccount).clientUserId;
                int i2 = 0;
                int size = this.onlineContacts.size();
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (this.onlineContacts.get(i2).user_id == j) {
                        this.onlineContacts.remove(i2);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            sortOnlineContacts();
            return;
        }
        notifyDataSetChanged();
    }

    public void sortOnlineContacts(boolean z) {
        if (this.onlineContacts == null) {
            return;
        }
        try {
            final int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
            final MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            Collections.sort(this.onlineContacts, new Comparator() { // from class: org.telegram.ui.Adapters.ContactsAdapter$$ExternalSyntheticLambda2
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$sortOnlineContacts$1;
                    lambda$sortOnlineContacts$1 = ContactsAdapter.lambda$sortOnlineContacts$1(MessagesController.this, currentTime, (TLRPC$TL_contact) obj, (TLRPC$TL_contact) obj2);
                    return lambda$sortOnlineContacts$1;
                }
            });
            if (z) {
                notifyDataSetChanged();
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0048 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0053 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005c A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ int lambda$sortOnlineContacts$1(org.telegram.messenger.MessagesController r2, int r3, org.telegram.tgnet.TLRPC$TL_contact r4, org.telegram.tgnet.TLRPC$TL_contact r5) {
        /*
            long r0 = r5.user_id
            java.lang.Long r5 = java.lang.Long.valueOf(r0)
            org.telegram.tgnet.TLRPC$User r5 = r2.getUser(r5)
            long r0 = r4.user_id
            java.lang.Long r4 = java.lang.Long.valueOf(r0)
            org.telegram.tgnet.TLRPC$User r2 = r2.getUser(r4)
            r4 = 50000(0xc350, float:7.0065E-41)
            r0 = 0
            if (r5 == 0) goto L28
            boolean r1 = r5.self
            if (r1 == 0) goto L21
            int r5 = r3 + r4
            goto L29
        L21:
            org.telegram.tgnet.TLRPC$UserStatus r5 = r5.status
            if (r5 == 0) goto L28
            int r5 = r5.expires
            goto L29
        L28:
            r5 = r0
        L29:
            if (r2 == 0) goto L38
            boolean r1 = r2.self
            if (r1 == 0) goto L31
            int r3 = r3 + r4
            goto L39
        L31:
            org.telegram.tgnet.TLRPC$UserStatus r2 = r2.status
            if (r2 == 0) goto L38
            int r3 = r2.expires
            goto L39
        L38:
            r3 = r0
        L39:
            r2 = -1
            r4 = 1
            if (r5 <= 0) goto L46
            if (r3 <= 0) goto L46
            if (r5 <= r3) goto L42
            return r4
        L42:
            if (r5 >= r3) goto L45
            return r2
        L45:
            return r0
        L46:
            if (r5 >= 0) goto L51
            if (r3 >= 0) goto L51
            if (r5 <= r3) goto L4d
            return r4
        L4d:
            if (r5 >= r3) goto L50
            return r2
        L50:
            return r0
        L51:
            if (r5 >= 0) goto L55
            if (r3 > 0) goto L59
        L55:
            if (r5 != 0) goto L5a
            if (r3 == 0) goto L5a
        L59:
            return r2
        L5a:
            if (r3 >= 0) goto L5e
            if (r5 > 0) goto L62
        L5e:
            if (r3 != 0) goto L63
            if (r5 == 0) goto L63
        L62:
            return r4
        L63:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Adapters.ContactsAdapter.lambda$sortOnlineContacts$1(org.telegram.messenger.MessagesController, int, org.telegram.tgnet.TLRPC$TL_contact, org.telegram.tgnet.TLRPC$TL_contact):int");
    }

    public void setCheckedMap(LongSparseArray<?> longSparseArray) {
        this.checkedMap = longSparseArray;
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
    public Object getItem(int i, int i2) {
        HashMap<String, ArrayList<TLRPC$TL_contact>> hashMap = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).usersMutualSectionsDict : ContactsController.getInstance(this.currentAccount).usersSectionsDict;
        ArrayList<String> arrayList = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).sortedUsersMutualSectionsArray : ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray;
        if (this.needPhonebook) {
            CollectionsFilteredContacts collectionsModel = getCollectionsModel();
            HashMap<String, ArrayList<TLRPC$TL_contact>> usersSectionsDict = collectionsModel.getUsersSectionsDict();
            arrayList = collectionsModel.getSortedUsersSectionsArray();
            hashMap = usersSectionsDict;
        }
        if (this.onlyUsers != 0 && !this.isAdmin) {
            if (i < arrayList.size()) {
                ArrayList<TLRPC$TL_contact> arrayList2 = hashMap.get(arrayList.get(i));
                if (i2 < arrayList2.size()) {
                    return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(arrayList2.get(i2).user_id));
                }
            }
            return null;
        } else if (i == 0) {
            return null;
        } else {
            if (this.sortType != 2) {
                int i3 = i - 1;
                if (i3 < arrayList.size()) {
                    ArrayList<TLRPC$TL_contact> arrayList3 = hashMap.get(arrayList.get(i3));
                    if (i2 < arrayList3.size()) {
                        return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(arrayList3.get(i2).user_id));
                    }
                    return null;
                }
            } else if (i == 1) {
                if (i2 < this.onlineContacts.size()) {
                    return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.onlineContacts.get(i2).user_id));
                }
                return null;
            }
            if (!this.needPhonebook || i2 < 0 || i2 >= ContactsController.getInstance(this.currentAccount).phoneBookContacts.size()) {
                return null;
            }
            return ContactsController.getInstance(this.currentAccount).phoneBookContacts.get(i2);
        }
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder, int i, int i2) {
        HashMap<String, ArrayList<TLRPC$TL_contact>> hashMap = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).usersMutualSectionsDict : ContactsController.getInstance(this.currentAccount).usersSectionsDict;
        ArrayList<String> arrayList = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).sortedUsersMutualSectionsArray : ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray;
        if (this.needPhonebook) {
            CollectionsFilteredContacts collectionsModel = getCollectionsModel();
            HashMap<String, ArrayList<TLRPC$TL_contact>> usersSectionsDict = collectionsModel.getUsersSectionsDict();
            arrayList = collectionsModel.getSortedUsersSectionsArray();
            hashMap = usersSectionsDict;
        }
        if (this.onlyUsers != 0 && !this.isAdmin) {
            return !this.isEmpty && i2 < hashMap.get(arrayList.get(i)).size();
        } else if (i == 0) {
            if (this.isAdmin) {
                return i2 != 1;
            } else if (!this.needPhonebook) {
                return i2 != 3;
            } else {
                int i3 = i2 - 1;
                boolean z = this.hasGps;
                return (z && i3 != 2) || !(z || i3 == 1);
            }
        } else if (this.isEmpty) {
            return false;
        } else {
            if (this.sortType == 2) {
                return i != 1 || i2 < this.onlineContacts.size();
            }
            int i4 = i - 1;
            return i4 >= arrayList.size() || i2 < hashMap.get(arrayList.get(i4)).size();
            return true;
        }
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
    public int getSectionCount() {
        this.isEmpty = false;
        int i = 1;
        if (this.sortType == 2) {
            this.isEmpty = this.onlineContacts.isEmpty();
        } else {
            ArrayList<String> arrayList = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).sortedUsersMutualSectionsArray : ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray;
            if (this.needPhonebook) {
                arrayList = getCollectionsModel().getSortedUsersSectionsArray();
            }
            int size = arrayList.size();
            if (size == 0) {
                this.isEmpty = true;
            } else {
                i = size;
            }
        }
        if (this.onlyUsers == 0) {
            i++;
        }
        return this.isAdmin ? i + 1 : i;
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
    public int getCountForSection(int i) {
        HashMap<String, ArrayList<TLRPC$TL_contact>> hashMap = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).usersMutualSectionsDict : ContactsController.getInstance(this.currentAccount).usersSectionsDict;
        ArrayList<String> arrayList = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).sortedUsersMutualSectionsArray : ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray;
        if (this.needPhonebook) {
            CollectionsFilteredContacts collectionsModel = getCollectionsModel();
            HashMap<String, ArrayList<TLRPC$TL_contact>> usersSectionsDict = collectionsModel.getUsersSectionsDict();
            ArrayList<String> sortedUsersSectionsArray = collectionsModel.getSortedUsersSectionsArray();
            if (i - sortedUsersSectionsArray.size() > 20) {
                return 0;
            }
            arrayList = sortedUsersSectionsArray;
            hashMap = usersSectionsDict;
        }
        if (this.onlyUsers == 0 || this.isAdmin) {
            if (i == 0) {
                if (this.isChooseWalletTransferRecipient || this.isAdmin) {
                    return 2;
                }
                if (this.needPhonebook) {
                    return (this.hasGps ? 3 : 2) + 1;
                }
                return 4;
            } else if (this.isEmpty) {
                return 1;
            } else {
                if (this.sortType == 2) {
                    if (i != 1 || this.onlineContacts.isEmpty()) {
                        return 0;
                    }
                    return this.onlineContacts.size() + 1;
                }
                int i2 = i - 1;
                if (i2 < arrayList.size()) {
                    int size = hashMap.get(arrayList.get(i2)).size();
                    return (i2 != arrayList.size() - 1 || this.needPhonebook) ? size + 1 : size;
                }
            }
        } else if (this.isEmpty) {
            return 1;
        } else {
            if (i < arrayList.size()) {
                int size2 = hashMap.get(arrayList.get(i)).size();
                return (i != arrayList.size() - 1 || this.needPhonebook) ? size2 + 1 : size2;
            }
        }
        return 0;
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
    public View getSectionHeaderView(int i, View view) {
        if (this.onlyUsers == 2) {
            HashMap<String, ArrayList<TLRPC$TL_contact>> hashMap = ContactsController.getInstance(this.currentAccount).usersMutualSectionsDict;
        } else {
            HashMap<String, ArrayList<TLRPC$TL_contact>> hashMap2 = ContactsController.getInstance(this.currentAccount).usersSectionsDict;
        }
        ArrayList<String> arrayList = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).sortedUsersMutualSectionsArray : ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray;
        if (this.needPhonebook) {
            CollectionsFilteredContacts collectionsModel = getCollectionsModel();
            collectionsModel.getUsersSectionsDict();
            arrayList = collectionsModel.getSortedUsersSectionsArray();
        }
        if (view == null) {
            view = new LetterSectionCell(this.mContext);
        }
        LetterSectionCell letterSectionCell = (LetterSectionCell) view;
        if (this.sortType == 2 || this.disableSections || this.isEmpty) {
            letterSectionCell.setLetter("");
        } else if (this.onlyUsers == 0 || this.isAdmin) {
            if (i == 0) {
                letterSectionCell.setLetter("");
            } else {
                int i2 = i - 1;
                if (i2 < arrayList.size()) {
                    letterSectionCell.setLetter(arrayList.get(i2));
                } else {
                    letterSectionCell.setLetter("");
                }
            }
        } else if (i < arrayList.size()) {
            letterSectionCell.setLetter(arrayList.get(i));
        } else {
            letterSectionCell.setLetter("");
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(final ViewGroup viewGroup, int i) {
        EditTextSettingsCell editTextSettingsCell;
        if (i == IdFabric$ViewTypes.CONTACTS_FILTER) {
            editTextSettingsCell = new TextCellWithRightImage(this.mContext, 23, false);
        } else if (i == IdFabric$ViewTypes.CONTACTS_INPUT_ADDRESS) {
            final EditTextSettingsCell editTextSettingsCell2 = new EditTextSettingsCell(this.mContext);
            editTextSettingsCell2.addTextWatcher(new SimpleTextWatcher() { // from class: org.telegram.ui.Adapters.ContactsAdapter.1
                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    ContactsAdapter.this.recipientValue = editTextSettingsCell2.getText();
                }
            });
            editTextSettingsCell2.getTextView().setHint(getHintByType(this.networkType));
            editTextSettingsCell2.getTextView().setTextIsSelectable(true);
            editTextSettingsCell2.getTextView().setLongClickable(true);
            editTextSettingsCell2.getTextView().setInputType(1);
            editTextSettingsCell2.getTextView().setImeOptions(6);
            editTextSettingsCell = editTextSettingsCell2;
        } else if (i == 0) {
            UserCell userCell = new UserCell(this.mContext, 58, 1, false);
            editTextSettingsCell = userCell;
            if (this.needPhonebook) {
                userCell.changeCheckBoxMargins();
                editTextSettingsCell = userCell;
            }
        } else if (i == 1) {
            editTextSettingsCell = new TextCell(this.mContext);
        } else if (i == 2) {
            editTextSettingsCell = new GraySectionCell(this.mContext);
        } else if (i == 3) {
            View dividerCell = new DividerCell(this.mContext);
            dividerCell.setPadding(AndroidUtilities.m50dp(LocaleController.isRTL ? 28 : 72), AndroidUtilities.m50dp(8), AndroidUtilities.m50dp(LocaleController.isRTL ? 72 : 28), AndroidUtilities.m50dp(8));
            editTextSettingsCell = dividerCell;
        } else if (i == 4) {
            FrameLayout frameLayout = new FrameLayout(this.mContext) { // from class: org.telegram.ui.Adapters.ContactsAdapter.2
                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i2, int i3) {
                    int size = View.MeasureSpec.getSize(i3);
                    if (size == 0) {
                        size = viewGroup.getMeasuredHeight();
                    }
                    if (size == 0) {
                        size = (AndroidUtilities.displaySize.y - C3366ActionBar.getCurrentActionBarHeight()) - (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0);
                    }
                    int m50dp = AndroidUtilities.m50dp(50);
                    int m50dp2 = ContactsAdapter.this.onlyUsers != 0 ? 0 : AndroidUtilities.m50dp(30) + m50dp;
                    if (ContactsAdapter.this.hasGps) {
                        m50dp2 += m50dp;
                    }
                    if (!ContactsAdapter.this.isAdmin && !ContactsAdapter.this.needPhonebook) {
                        m50dp2 += m50dp;
                    }
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824), View.MeasureSpec.makeMeasureSpec(m50dp2 < size ? size - m50dp2 : 0, 1073741824));
                }
            };
            frameLayout.addView(new ContactsEmptyView(this.mContext), LayoutHelper.createFrame(-2, -2, 17));
            editTextSettingsCell = frameLayout;
        } else {
            View shadowSectionCell = new ShadowSectionCell(this.mContext);
            CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor("windowBackgroundGray")), Theme.getThemedDrawable(this.mContext, C3301R.C3303drawable.greydivider, "windowBackgroundGrayShadow"));
            combinedDrawable.setFullsize(true);
            shadowSectionCell.setBackgroundDrawable(combinedDrawable);
            editTextSettingsCell = shadowSectionCell;
        }
        return new RecyclerListView.Holder(editTextSettingsCell);
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
    public void onBindViewHolder(int i, int i2, RecyclerView.ViewHolder viewHolder) {
        ArrayList<TLRPC$TL_contact> arrayList;
        if (viewHolder.getItemViewType() == IdFabric$ViewTypes.CONTACTS_FILTER) {
            TextCellWithRightImage textCellWithRightImage = (TextCellWithRightImage) viewHolder.itemView;
            if (this.needPhonebook && isFilterRow(i2)) {
                bindFilterModel(textCellWithRightImage, this.filterRowModel);
                return;
            }
            return;
        }
        if (viewHolder.getItemViewType() == IdFabric$ViewTypes.CONTACTS_INPUT_ADDRESS) {
            EditTextSettingsCell editTextSettingsCell = (EditTextSettingsCell) viewHolder.itemView;
            editTextSettingsCell.getTextView().setCompoundDrawablesWithIntrinsicBounds(0, 0, C3301R.C3303drawable.msg_qrcode, 0);
            editTextSettingsCell.getTextView().setCompoundDrawablePadding(8);
            ViewExtKt.setCompoundDrawablesColor(editTextSettingsCell.getTextView(), Theme.getColor("chats_actionBackground"));
            ViewExtKt.setRightDrawableOnClickListener(editTextSettingsCell.getTextView(), new Runnable() { // from class: org.telegram.ui.Adapters.ContactsAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ContactsAdapter.this.lambda$onBindViewHolder$2();
                }
            });
            editTextSettingsCell.getTextView().setTextSize(1, 18.0f);
            return;
        }
        int itemViewType = viewHolder.getItemViewType();
        if (itemViewType == 0) {
            UserCell userCell = (UserCell) viewHolder.itemView;
            userCell.setAvatarPadding((this.sortType == 2 || this.disableSections) ? 6 : 58);
            if (this.sortType == 2) {
                arrayList = this.onlineContacts;
            } else {
                HashMap<String, ArrayList<TLRPC$TL_contact>> hashMap = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).usersMutualSectionsDict : ContactsController.getInstance(this.currentAccount).usersSectionsDict;
                ArrayList<String> arrayList2 = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).sortedUsersMutualSectionsArray : ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray;
                if (this.needPhonebook) {
                    CollectionsFilteredContacts collectionsModel = getCollectionsModel();
                    HashMap<String, ArrayList<TLRPC$TL_contact>> usersSectionsDict = collectionsModel.getUsersSectionsDict();
                    arrayList2 = collectionsModel.getSortedUsersSectionsArray();
                    hashMap = usersSectionsDict;
                }
                arrayList = hashMap.get(arrayList2.get(i - ((this.onlyUsers == 0 || this.isAdmin) ? 1 : 0)));
            }
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(arrayList.get(i2).user_id));
            userCell.setData(user, null, null, 0);
            LongSparseArray<?> longSparseArray = this.checkedMap;
            if (longSparseArray != null) {
                userCell.setChecked(longSparseArray.indexOfKey(user.f1640id) >= 0, !this.scrolling);
            }
            LongSparseArray<TLRPC$User> longSparseArray2 = this.ignoreUsers;
            if (longSparseArray2 != null) {
                if (longSparseArray2.indexOfKey(user.f1640id) >= 0) {
                    userCell.setAlpha(0.5f);
                } else {
                    userCell.setAlpha(1.0f);
                }
            }
        } else if (itemViewType != 1) {
            if (itemViewType != 2) {
                return;
            }
            GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
            if (this.isChooseWalletTransferRecipient) {
                graySectionCell.setText(LocaleController.getInternalString(C3301R.string.wallet_recipient_or_choose_title));
                return;
            }
            int i3 = this.sortType;
            if (i3 == 0) {
                graySectionCell.setText(LocaleController.getString("Contacts", C3301R.string.Contacts));
            } else if (i3 == 1) {
                graySectionCell.setText(LocaleController.getString("SortedByName", C3301R.string.SortedByName));
            } else {
                graySectionCell.setText(LocaleController.getString("SortedByLastSeen", C3301R.string.SortedByLastSeen));
            }
        } else {
            TextCell textCell = (TextCell) viewHolder.itemView;
            if (i == 0) {
                if (this.needPhonebook) {
                    if (i2 == 0) {
                        textCell.setTextAndIcon(LocaleController.getString("InviteFriends", C3301R.string.InviteFriends), C3301R.C3303drawable.msg_invite, false);
                        textCell.showDivider(!this.hasGps);
                    } else if (i2 == 1) {
                        textCell.setTextAndIcon(LocaleController.getString("AddPeopleNearby", C3301R.string.AddPeopleNearby), C3301R.C3303drawable.msg_location, false);
                        textCell.showDivider(this.hasGps);
                    }
                } else if (this.isAdmin) {
                    if (this.isChannel) {
                        textCell.setTextAndIcon(LocaleController.getString("ChannelInviteViaLink", C3301R.string.ChannelInviteViaLink), C3301R.C3303drawable.msg_link2, false);
                    } else {
                        textCell.setTextAndIcon(LocaleController.getString("InviteToGroupByLink", C3301R.string.InviteToGroupByLink), C3301R.C3303drawable.msg_link2, false);
                    }
                } else if (i2 == 0) {
                    textCell.setTextAndIcon(LocaleController.getString("NewGroup", C3301R.string.NewGroup), C3301R.C3303drawable.msg_groups, false);
                } else if (i2 == 1) {
                    textCell.setTextAndIcon(LocaleController.getString("NewSecretChat", C3301R.string.NewSecretChat), C3301R.C3303drawable.msg_secret, false);
                } else if (i2 == 2) {
                    textCell.setTextAndIcon(LocaleController.getString("NewChannel", C3301R.string.NewChannel), C3301R.C3303drawable.msg_channel, false);
                }
            } else if (ContactsController.getInstance(this.currentAccount).phoneBookContacts.size() <= i2) {
            } else {
                ContactsController.Contact contact = ContactsController.getInstance(this.currentAccount).phoneBookContacts.get(i2);
                String str = contact.first_name;
                if (str != null && contact.last_name != null) {
                    textCell.setText(contact.first_name + " " + contact.last_name, false);
                } else if (str != null && contact.last_name == null) {
                    textCell.setText(str, false);
                } else {
                    textCell.setText(contact.last_name, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$2() {
        this.qrCodeAction.invoke();
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.SectionsAdapter
    public int getItemViewType(int i, int i2) {
        HashMap<String, ArrayList<TLRPC$TL_contact>> hashMap = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).usersMutualSectionsDict : ContactsController.getInstance(this.currentAccount).usersSectionsDict;
        ArrayList<String> arrayList = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).sortedUsersMutualSectionsArray : ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray;
        if (this.needPhonebook) {
            CollectionsFilteredContacts collectionsModel = getCollectionsModel();
            HashMap<String, ArrayList<TLRPC$TL_contact>> usersSectionsDict = collectionsModel.getUsersSectionsDict();
            arrayList = collectionsModel.getSortedUsersSectionsArray();
            hashMap = usersSectionsDict;
        }
        if (this.onlyUsers != 0 && !this.isAdmin) {
            if (this.isEmpty) {
                return 4;
            }
            return i2 < hashMap.get(arrayList.get(i)).size() ? 0 : 3;
        }
        if (i == 0) {
            if (this.isChooseWalletTransferRecipient) {
                if (i2 == 0) {
                    return IdFabric$ViewTypes.CONTACTS_INPUT_ADDRESS;
                }
                if (i2 == 1) {
                    return 2;
                }
            } else if (this.isAdmin) {
                if (i2 == 1) {
                    return 2;
                }
            } else if (this.needPhonebook) {
                int i3 = i2 - 1;
                boolean z = this.hasGps;
                if ((z && i3 == 2) || (!z && i3 == 1)) {
                    return this.isEmpty ? 5 : 2;
                }
                i2 = i3 + 1;
            } else if (i2 == 3) {
                return this.isEmpty ? 5 : 2;
            }
        } else if (this.isEmpty) {
            return 4;
        } else {
            if (this.sortType != 2) {
                int i4 = i - 1;
                if (i4 < arrayList.size()) {
                    return i2 < hashMap.get(arrayList.get(i4)).size() ? 0 : 3;
                }
            } else if (i == 1) {
                return i2 < this.onlineContacts.size() ? 0 : 3;
            }
        }
        if (this.needPhonebook && isFilterRow(i2)) {
            return IdFabric$ViewTypes.CONTACTS_FILTER;
        }
        return 1;
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.FastScrollAdapter
    public String getLetter(int i) {
        if (this.sortType != 2 && !this.isEmpty) {
            ArrayList<String> arrayList = this.onlyUsers == 2 ? ContactsController.getInstance(this.currentAccount).sortedUsersMutualSectionsArray : ContactsController.getInstance(this.currentAccount).sortedUsersSectionsArray;
            if (this.needPhonebook) {
                arrayList = getCollectionsModel().getSortedUsersSectionsArray();
            }
            int sectionForPosition = getSectionForPosition(i);
            if (sectionForPosition == -1) {
                sectionForPosition = arrayList.size() - 1;
            }
            if (this.onlyUsers != 0 && !this.isAdmin) {
                if (sectionForPosition >= 0 && sectionForPosition < arrayList.size()) {
                    return arrayList.get(sectionForPosition);
                }
            } else if (sectionForPosition > 0 && sectionForPosition <= arrayList.size()) {
                return arrayList.get(sectionForPosition - 1);
            }
        }
        return null;
    }

    @Override // org.telegram.p048ui.Components.RecyclerListView.FastScrollAdapter
    public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
        iArr[0] = (int) (getItemCount() * f);
        iArr[1] = 0;
    }
}
