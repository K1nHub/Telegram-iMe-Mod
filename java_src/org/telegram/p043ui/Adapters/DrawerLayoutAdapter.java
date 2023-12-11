package org.telegram.p043ui.Adapters;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.fork.p023ui.view.DrawerExpandableCell;
import com.iMe.p030ui.drawer.DrawerItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Set;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.DrawerLayoutContainer;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.DividerCell;
import org.telegram.p043ui.Cells.DrawerActionCell;
import org.telegram.p043ui.Cells.DrawerAddCell;
import org.telegram.p043ui.Cells.DrawerProfileCell;
import org.telegram.p043ui.Cells.DrawerUserCell;
import org.telegram.p043ui.Cells.EmptyCell;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$TL_attachMenuBot;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots;
/* renamed from: org.telegram.ui.Adapters.DrawerLayoutAdapter */
/* loaded from: classes5.dex */
public class DrawerLayoutAdapter extends RecyclerListView.SelectionAdapter {
    private boolean accountsShown;
    private DrawerExpandableCell createButton;
    private boolean hasGps;
    public boolean isCreateGroupExpanded;
    private final RecyclerView.ItemAnimator itemAnimator;
    private Context mContext;
    private DrawerLayoutContainer mDrawerLayoutContainer;
    private View.OnClickListener onPremiumDrawableClick;
    public DrawerProfileCell profileCell;
    private final ArrayList<Item> prefixItems = new ArrayList<>();
    private final ArrayList<Item> createGroupItems = new ArrayList<>();
    private final ArrayList<Item> rectIconItems = new ArrayList<>();
    private final ArrayList<Item> items = new ArrayList<>();
    private ArrayList<Integer> accountNumbers = new ArrayList<>();

    public void toggleCreateButtonExpanded() {
        if (this.itemAnimator.isRunning()) {
            return;
        }
        int accountRowsCount = (this.accountsShown ? 2 + getAccountRowsCount() : 2) + this.prefixItems.size() + this.rectIconItems.size() + 1;
        boolean z = !this.isCreateGroupExpanded;
        this.isCreateGroupExpanded = z;
        if (z) {
            this.createButton.setExpandedState(true);
            notifyItemRangeInserted(accountRowsCount, this.createGroupItems.size());
            return;
        }
        this.createButton.setExpandedState(false);
        notifyItemRangeRemoved(accountRowsCount, this.createGroupItems.size());
    }

    public DrawerLayoutAdapter(Context context, RecyclerView.ItemAnimator itemAnimator, DrawerLayoutContainer drawerLayoutContainer) {
        this.mContext = context;
        this.mDrawerLayoutContainer = drawerLayoutContainer;
        this.itemAnimator = itemAnimator;
        boolean z = true;
        this.accountsShown = (UserConfig.getActivatedAccountsCount() <= 1 || !MessagesController.getGlobalMainSettings().getBoolean("accountsShown", true)) ? false : z;
        Theme.createCommonDialogResources(context);
        resetItems();
        try {
            this.hasGps = ApplicationLoader.applicationContext.getPackageManager().hasSystemFeature("android.hardware.location.gps");
        } catch (Throwable unused) {
            this.hasGps = false;
        }
    }

    private int getAccountRowsCount() {
        int size = this.accountNumbers.size() + 1;
        return this.accountNumbers.size() < 5 ? size + 1 : size;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int size = this.items.size() + 2;
        if (this.accountsShown) {
            size += getAccountRowsCount();
        }
        int size2 = size + this.rectIconItems.size();
        return this.isCreateGroupExpanded ? size2 + this.createGroupItems.size() : size2;
    }

    public void setAccountsShown(boolean z, boolean z2) {
        if (this.accountsShown == z || this.itemAnimator.isRunning()) {
            return;
        }
        this.accountsShown = z;
        DrawerProfileCell drawerProfileCell = this.profileCell;
        if (drawerProfileCell != null) {
            drawerProfileCell.setAccountsShown(z, z2);
        }
        MessagesController.getGlobalMainSettings().edit().putBoolean("accountsShown", this.accountsShown).commit();
        if (z2) {
            if (this.accountsShown) {
                notifyItemRangeInserted(2, getAccountRowsCount());
                return;
            } else {
                notifyItemRangeRemoved(2, getAccountRowsCount());
                return;
            }
        }
        notifyDataSetChanged();
    }

    public boolean isAccountsShown() {
        return this.accountsShown;
    }

    public void setOnPremiumDrawableClick(View.OnClickListener onClickListener) {
        this.onPremiumDrawableClick = onClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyDataSetChanged() {
        resetItems();
        super.notifyDataSetChanged();
    }

    @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        int itemViewType = viewHolder.getItemViewType();
        return itemViewType == 200 || itemViewType == 201 || itemViewType == 202 || itemViewType == 3 || itemViewType == 4 || itemViewType == 5 || itemViewType == 6;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        DrawerProfileCell drawerProfileCell;
        if (i == 201) {
            DrawerExpandableCell drawerExpandableCell = new DrawerExpandableCell(this.mContext);
            this.createButton = drawerExpandableCell;
            drawerProfileCell = drawerExpandableCell;
        } else if (i == 200 || i == 202) {
            drawerProfileCell = new DrawerActionCell(this.mContext);
        } else if (i == 0) {
            DrawerProfileCell drawerProfileCell2 = new DrawerProfileCell(this.mContext, this.mDrawerLayoutContainer, false) { // from class: org.telegram.ui.Adapters.DrawerLayoutAdapter.1
                @Override // org.telegram.p043ui.Cells.DrawerProfileCell
                protected void onPremiumClick() {
                    if (DrawerLayoutAdapter.this.onPremiumDrawableClick != null) {
                        DrawerLayoutAdapter.this.onPremiumDrawableClick.onClick(this);
                    }
                }
            };
            this.profileCell = drawerProfileCell2;
            drawerProfileCell = drawerProfileCell2;
        } else if (i == 2) {
            drawerProfileCell = new DividerCell(this.mContext);
        } else if (i == 3) {
            drawerProfileCell = new DrawerActionCell(this.mContext);
        } else if (i == 4) {
            drawerProfileCell = new DrawerUserCell(this.mContext);
        } else if (i == 5) {
            drawerProfileCell = new DrawerAddCell(this.mContext);
        } else {
            drawerProfileCell = new EmptyCell(this.mContext, AndroidUtilities.m104dp(8));
        }
        drawerProfileCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        return new RecyclerListView.Holder(drawerProfileCell);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder.getItemViewType() == 200) {
            DrawerActionCell drawerActionCell = (DrawerActionCell) viewHolder.itemView;
            int i2 = i - 2;
            if (this.accountsShown) {
                i2 -= getAccountRowsCount();
            }
            this.rectIconItems.get(i2 - this.prefixItems.size()).bind(drawerActionCell);
        } else if (viewHolder.getItemViewType() == 201) {
            DrawerExpandableCell drawerExpandableCell = (DrawerExpandableCell) viewHolder.itemView;
            Item item = this.items.get(this.prefixItems.size());
            drawerExpandableCell.setTextAndIcon(item.text, item.icon);
            drawerExpandableCell.setExpandedState(this.isCreateGroupExpanded);
        } else if (viewHolder.getItemViewType() == 202) {
            DrawerActionCell drawerActionCell2 = (DrawerActionCell) viewHolder.itemView;
            int i3 = i - 2;
            if (this.accountsShown) {
                i3 -= getAccountRowsCount();
            }
            this.createGroupItems.get(((i3 - this.prefixItems.size()) - this.rectIconItems.size()) - 1).bind(drawerActionCell2);
        } else {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                ((DrawerProfileCell) viewHolder.itemView).setUser(MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId())), this.accountsShown);
            } else if (itemViewType != 3) {
                if (itemViewType != 4) {
                    return;
                }
                ((DrawerUserCell) viewHolder.itemView).setAccount(this.accountNumbers.get(i - 2).intValue());
            } else {
                DrawerActionCell drawerActionCell3 = (DrawerActionCell) viewHolder.itemView;
                int i4 = i - 2;
                if (this.accountsShown) {
                    i4 -= getAccountRowsCount();
                }
                if (i4 >= this.prefixItems.size()) {
                    int size = (i4 - this.prefixItems.size()) - this.rectIconItems.size();
                    if (this.isCreateGroupExpanded) {
                        size -= this.createGroupItems.size();
                    }
                    i4 = size + this.prefixItems.size();
                }
                this.items.get(i4).bind(drawerActionCell3);
                drawerActionCell3.setPadding(0, 0, 0, 0);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 1;
        }
        int i2 = i - 2;
        if (this.accountsShown) {
            if (i2 < this.accountNumbers.size()) {
                return 4;
            }
            if (this.accountNumbers.size() < 5) {
                if (i2 == this.accountNumbers.size()) {
                    return 5;
                }
                if (i2 == this.accountNumbers.size() + 1) {
                    return 2;
                }
            } else if (i2 == this.accountNumbers.size()) {
                return 2;
            }
            i2 -= getAccountRowsCount();
        }
        if (i2 >= this.prefixItems.size()) {
            int size = i2 - this.prefixItems.size();
            if (size < this.rectIconItems.size()) {
                return this.rectIconItems.get(size) == null ? 2 : 200;
            }
            int size2 = size - this.rectIconItems.size();
            if (size2 == 0) {
                return 201;
            }
            int i3 = size2 - 1;
            if (this.isCreateGroupExpanded) {
                if (i3 < this.createGroupItems.size()) {
                    return 202;
                }
                i3 -= this.createGroupItems.size();
            }
            i2 = i3 + 1 + this.prefixItems.size();
        }
        return (i2 < 0 || i2 >= this.items.size() || this.items.get(i2) == null) ? 2 : 3;
    }

    public void swapElements(int i, int i2) {
        int i3 = i - 2;
        int i4 = i2 - 2;
        if (i3 < 0 || i4 < 0 || i3 >= this.accountNumbers.size() || i4 >= this.accountNumbers.size()) {
            return;
        }
        UserConfig userConfig = UserConfig.getInstance(this.accountNumbers.get(i3).intValue());
        UserConfig userConfig2 = UserConfig.getInstance(this.accountNumbers.get(i4).intValue());
        int i5 = userConfig.loginTime;
        userConfig.loginTime = userConfig2.loginTime;
        userConfig2.loginTime = i5;
        userConfig.saveConfig(false);
        userConfig2.saveConfig(false);
        Collections.swap(this.accountNumbers, i3, i4);
        notifyItemMoved(i, i2);
    }

    private void resetItems() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z;
        TLRPC$TL_attachMenuBots tLRPC$TL_attachMenuBots;
        boolean z2;
        this.accountNumbers.clear();
        for (int i15 = 0; i15 < 5; i15++) {
            if (UserConfig.getInstance(i15).isClientActivated()) {
                this.accountNumbers.add(Integer.valueOf(i15));
            }
        }
        Collections.sort(this.accountNumbers, new Comparator() { // from class: org.telegram.ui.Adapters.DrawerLayoutAdapter$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$resetItems$0;
                lambda$resetItems$0 = DrawerLayoutAdapter.lambda$resetItems$0((Integer) obj, (Integer) obj2);
                return lambda$resetItems$0;
            }
        });
        this.items.clear();
        this.prefixItems.clear();
        this.createGroupItems.clear();
        this.rectIconItems.clear();
        if (UserConfig.getInstance(UserConfig.selectedAccount).isClientActivated()) {
            int eventType = Theme.getEventType();
            if (eventType == 0) {
                i = C3632R.C3634drawable.msg_groups_ny;
                i2 = C3632R.C3634drawable.msg_contacts_ny;
                i3 = C3632R.C3634drawable.msg_calls_ny;
                i11 = C3632R.C3634drawable.msg_saved_ny;
                i4 = C3632R.C3634drawable.msg_settings_ny;
                i5 = C3632R.C3634drawable.msg_nearby_ny;
                i6 = C3632R.C3634drawable.fork_drawer_wallet_ny;
                i7 = C3632R.C3634drawable.fork_drawer_music_ny;
                i8 = C3632R.C3634drawable.fork_drawer_create_expandable_ny;
                i9 = C3632R.C3634drawable.msg_secret_ny;
                i10 = C3632R.C3634drawable.fork_drawer_channel_ny;
                i12 = C3632R.C3634drawable.fork_drawer_albums_ny;
            } else {
                if (eventType == 1) {
                    i = C3632R.C3634drawable.msg_groups_14;
                    i2 = C3632R.C3634drawable.msg_contacts_14;
                    i3 = C3632R.C3634drawable.msg_calls_14;
                    i11 = C3632R.C3634drawable.msg_saved_14;
                    i4 = C3632R.C3634drawable.msg_settings_14;
                    i5 = C3632R.C3634drawable.msg_secret_14;
                    i6 = C3632R.C3634drawable.fork_drawer_wallet_14;
                    i7 = C3632R.C3634drawable.fork_drawer_music_14;
                    i8 = C3632R.C3634drawable.fork_drawer_create_expandable_14;
                    i10 = C3632R.C3634drawable.fork_drawer_channel_14;
                    i12 = C3632R.C3634drawable.fork_drawer_albums_14;
                } else if (eventType == 2) {
                    i = C3632R.C3634drawable.msg_groups_hw;
                    i2 = C3632R.C3634drawable.msg_contacts_hw;
                    i3 = C3632R.C3634drawable.msg_calls_hw;
                    i11 = C3632R.C3634drawable.msg_saved_hw;
                    i4 = C3632R.C3634drawable.msg_settings_hw;
                    i5 = C3632R.C3634drawable.msg_secret_hw;
                    i6 = C3632R.C3634drawable.fork_drawer_wallet_hw;
                    i7 = C3632R.C3634drawable.fork_drawer_music_hw;
                    i8 = C3632R.C3634drawable.fork_drawer_create_expandable_hw;
                    i10 = C3632R.C3634drawable.fork_drawer_channel_hw;
                    i12 = C3632R.C3634drawable.fork_drawer_albums_hw;
                } else {
                    i = C3632R.C3634drawable.msg_groups;
                    i2 = C3632R.C3634drawable.msg_contacts;
                    i3 = C3632R.C3634drawable.msg_calls;
                    i4 = C3632R.C3634drawable.msg_settings_old;
                    i5 = C3632R.C3634drawable.msg_nearby;
                    i6 = C3632R.C3634drawable.fork_drawer_wallet;
                    i7 = C3632R.C3634drawable.files_music;
                    i8 = C3632R.C3634drawable.fork_drawer_create_expandable;
                    i9 = C3632R.C3634drawable.msg_secret;
                    i10 = C3632R.C3634drawable.msg_channel;
                    i11 = C3632R.C3634drawable.fork_drawer_cloud;
                    i12 = C3632R.C3634drawable.fork_drawer_albums;
                }
                i9 = i5;
            }
            UserConfig userConfig = UserConfig.getInstance(UserConfig.selectedAccount);
            if (userConfig != null && userConfig.isPremium() && (ForkCommonController.getInstance(UserConfig.selectedAccount).isShowPremiumBadgeEnabled() || ForkCommonController.getInstance(UserConfig.selectedAccount).isShowPremiumStatusEnabled())) {
                if (userConfig.getEmojiStatus() != null) {
                    i13 = i4;
                    i14 = i12;
                    this.items.add(new Item(15, LocaleController.getString("ChangeEmojiStatus", C3632R.string.ChangeEmojiStatus), C3632R.C3634drawable.msg_status_edit));
                } else {
                    i13 = i4;
                    i14 = i12;
                    this.items.add(new Item(15, LocaleController.getString("SetEmojiStatus", C3632R.string.SetEmojiStatus), C3632R.C3634drawable.msg_status_set));
                }
                z = true;
            } else {
                i13 = i4;
                i14 = i12;
                z = false;
            }
            if (!"disabled".equals(MessagesController.getInstance(UserConfig.selectedAccount).storiesPosting)) {
                this.items.add(new Item(16, LocaleController.getString("ProfileMyStories", C3632R.string.ProfileMyStories), C3632R.C3634drawable.msg_menu_stories));
                z = true;
            }
            TLRPC$TL_attachMenuBots attachMenuBots = MediaDataController.getInstance(UserConfig.selectedAccount).getAttachMenuBots();
            if (attachMenuBots != null && attachMenuBots.bots != null) {
                boolean z3 = z;
                int i16 = 0;
                while (i16 < attachMenuBots.bots.size()) {
                    TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot = attachMenuBots.bots.get(i16);
                    if (tLRPC$TL_attachMenuBot.show_in_side_menu) {
                        tLRPC$TL_attachMenuBots = attachMenuBots;
                        z2 = z3;
                        if (tLRPC$TL_attachMenuBot.bot_id != 1985737506 || SharedConfig.selectedDrawerItems.contains(DrawerItem.WALLET_BOT)) {
                            this.items.add(new Item(tLRPC$TL_attachMenuBot));
                            z3 = true;
                            i16++;
                            attachMenuBots = tLRPC$TL_attachMenuBots;
                        }
                    } else {
                        tLRPC$TL_attachMenuBots = attachMenuBots;
                        z2 = z3;
                    }
                    z3 = z2;
                    i16++;
                    attachMenuBots = tLRPC$TL_attachMenuBots;
                }
                z = z3;
            }
            if (z) {
                this.items.add(null);
            }
            this.prefixItems.addAll(this.items);
            Set<DrawerItem> set = SharedConfig.selectedDrawerItems;
            DrawerItem drawerItem = DrawerItem.WALLET;
            if (set.contains(drawerItem)) {
                this.rectIconItems.add(new Item(IdFabric$ViewTypes.DRAWER_WALLET, i6, drawerItem));
            }
            Set<DrawerItem> set2 = SharedConfig.selectedDrawerItems;
            DrawerItem drawerItem2 = DrawerItem.MUSIC;
            if (set2.contains(drawerItem2)) {
                this.rectIconItems.add(new Item(IdFabric$ViewTypes.DRAWER_MUSIC, i7, drawerItem2));
            }
            if (!this.rectIconItems.isEmpty()) {
                this.rectIconItems.add(null);
            }
            this.createGroupItems.add(new Item(2, LocaleController.getString("NewGroup", C3632R.string.NewGroup), i));
            this.createGroupItems.add(new Item(3, LocaleController.getString("NewSecretChat", C3632R.string.NewSecretChat), i9));
            this.createGroupItems.add(new Item(4, LocaleController.getString("NewChannel", C3632R.string.NewChannel), i10));
            this.items.add(new Item(IdFabric$ViewTypes.DRAWER_GROUP_CREATE, LocaleController.getInternalString(C3632R.string.drawer_create_expandable_section), i8));
            this.items.add(null);
            if (SharedConfig.selectedDrawerItems.contains(DrawerItem.CONTACTS)) {
                this.items.add(new Item(6, LocaleController.getString("Contacts", C3632R.string.Contacts), i2));
            }
            if (SharedConfig.selectedDrawerItems.contains(DrawerItem.CALLS)) {
                this.items.add(new Item(10, LocaleController.getString("Calls", C3632R.string.Calls), i3));
            }
            if (SharedConfig.selectedDrawerItems.contains(DrawerItem.PEOPLE_NEARBY) && this.hasGps) {
                this.items.add(new Item(12, LocaleController.getString("PeopleNearby", C3632R.string.PeopleNearby), i5));
            }
            if (SharedConfig.selectedDrawerItems.contains(DrawerItem.CLOUD)) {
                this.items.add(new Item(11, LocaleController.getString("SavedMessages", C3632R.string.SavedMessages), i11));
            }
            if (SharedConfig.selectedDrawerItems.contains(DrawerItem.ALBUMS)) {
                this.items.add(new Item(IdFabric$ViewTypes.DRAWER_ALBUMS, LocaleController.getInternalString(C3632R.string.cloud_albums_toolbar_title), i14));
            }
            this.items.add(new Item(8, LocaleController.getString("Settings", C3632R.string.Settings), i13));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$resetItems$0(Integer num, Integer num2) {
        int i = (UserConfig.getInstance(num.intValue()).loginTime > UserConfig.getInstance(num2.intValue()).loginTime ? 1 : (UserConfig.getInstance(num.intValue()).loginTime == UserConfig.getInstance(num2.intValue()).loginTime ? 0 : -1));
        if (i > 0) {
            return 1;
        }
        return i < 0 ? -1 : 0;
    }

    public int getId(int i) {
        Item item;
        int i2 = i - 2;
        if (this.accountsShown) {
            i2 -= getAccountRowsCount();
        }
        if (i2 < 0) {
            return -1;
        }
        if (i2 >= this.prefixItems.size()) {
            int size = i2 - this.prefixItems.size();
            if (size < this.rectIconItems.size()) {
                Item item2 = this.rectIconItems.get(size);
                if (item2 == null) {
                    return -1;
                }
                return item2.f1783id;
            }
            int size2 = size - this.rectIconItems.size();
            if (size2 == 0) {
                return IdFabric$ViewTypes.DRAWER_GROUP_CREATE;
            }
            int i3 = size2 - 1;
            if (this.isCreateGroupExpanded) {
                if (i3 < this.createGroupItems.size()) {
                    return this.createGroupItems.get(i3).f1783id;
                }
                i3 -= this.createGroupItems.size();
            }
            i2 = i3 + 1 + this.prefixItems.size();
        }
        if (i2 < 0 || i2 >= this.items.size() || (item = this.items.get(i2)) == null) {
            return -1;
        }
        return item.f1783id;
    }

    public int getFirstAccountPosition() {
        return !this.accountsShown ? -1 : 2;
    }

    public int getLastAccountPosition() {
        if (this.accountsShown) {
            return this.accountNumbers.size() + 1;
        }
        return -1;
    }

    public TLRPC$TL_attachMenuBot getAttachMenuBot(int i) {
        Item item;
        int size;
        int i2 = i - 2;
        if (this.accountsShown) {
            i2 -= getAccountRowsCount();
        }
        if (i2 < 0) {
            return null;
        }
        if (i2 >= this.prefixItems.size()) {
            int size2 = i2 - this.prefixItems.size();
            if (size2 < this.rectIconItems.size() || (size = size2 - this.rectIconItems.size()) == 0) {
                return null;
            }
            int i3 = size - 1;
            if (this.isCreateGroupExpanded) {
                if (i3 < this.createGroupItems.size()) {
                    return null;
                }
                i3 -= this.createGroupItems.size();
            }
            i2 = i3 + 1 + this.prefixItems.size();
        }
        if (i2 < 0 || i2 >= this.items.size() || (item = this.items.get(i2)) == null) {
            return null;
        }
        return item.bot;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Adapters.DrawerLayoutAdapter$Item */
    /* loaded from: classes5.dex */
    public static class Item {
        TLRPC$TL_attachMenuBot bot;
        public int icon;

        /* renamed from: id */
        public int f1783id;
        private DrawerItem rectIcon;
        public String text;

        public Item(int i, int i2, DrawerItem drawerItem) {
            this(i, drawerItem.title(), i2);
            this.rectIcon = drawerItem;
        }

        public Item(int i, String str, int i2) {
            this.icon = i2;
            this.f1783id = i;
            this.text = str;
        }

        public Item(TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot) {
            this.bot = tLRPC$TL_attachMenuBot;
            this.f1783id = (int) ((tLRPC$TL_attachMenuBot.bot_id >> 16) + 100);
        }

        public void bind(DrawerActionCell drawerActionCell) {
            TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot = this.bot;
            if (tLRPC$TL_attachMenuBot != null) {
                drawerActionCell.setBot(tLRPC$TL_attachMenuBot);
            } else {
                drawerActionCell.setTextAndIcon(this.f1783id, this.text, this.icon, this.rectIcon != null);
            }
        }
    }
}
