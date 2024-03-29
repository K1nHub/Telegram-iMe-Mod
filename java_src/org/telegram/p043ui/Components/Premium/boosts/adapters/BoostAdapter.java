package org.telegram.p043ui.Components.Premium.boosts.adapters;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p043ui.Components.Premium.boosts.cells.AddChannelCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.BoostTypeCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.BoostTypeSingleCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.ChatCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.DateEndCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.DurationCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.EnterPrizeCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.HeaderCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.ParticipantsTypeCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.SliderCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.SubtitleWithCounterCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.SwitcherCell;
import org.telegram.p043ui.Components.Premium.boosts.cells.TextInfoCell;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.SlideChooseView;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$TL_inputPeerChannel;
import org.telegram.tgnet.TLRPC$TL_inputPeerChat;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.p042tl.TL_stories$TL_prepaidGiveaway;
/* renamed from: org.telegram.ui.Components.Premium.boosts.adapters.BoostAdapter */
/* loaded from: classes6.dex */
public class BoostAdapter extends AdapterWithDiffUtils {
    private EnterPrizeCell.AfterTextChangedListener afterTextChangedListener;
    private ChatCell.ChatDeleteListener chatDeleteListener;
    private HeaderCell headerCell;
    private List<Item> items = new ArrayList();
    private RecyclerListView recyclerListView;
    private final Theme.ResourcesProvider resourcesProvider;
    private SlideChooseView.Callback sliderCallback;

    public BoostAdapter(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
    }

    public void setItems(List<Item> list, RecyclerListView recyclerListView, SlideChooseView.Callback callback, ChatCell.ChatDeleteListener chatDeleteListener, EnterPrizeCell.AfterTextChangedListener afterTextChangedListener) {
        this.items = list;
        this.recyclerListView = recyclerListView;
        this.sliderCallback = callback;
        this.chatDeleteListener = chatDeleteListener;
        this.afterTextChangedListener = afterTextChangedListener;
    }

    public void updateBoostCounter(int i) {
        for (int i2 = 0; i2 < this.recyclerListView.getChildCount(); i2++) {
            View childAt = this.recyclerListView.getChildAt(i2);
            if (childAt instanceof SubtitleWithCounterCell) {
                ((SubtitleWithCounterCell) childAt).updateCounter(true, i);
            }
            if (childAt instanceof ChatCell) {
                ((ChatCell) childAt).setCounter(i);
            }
        }
        notifyItemChanged(8);
        notifyItemRangeChanged(this.items.size() - 12, 12);
    }

    public void notifyAllVisibleTextDividers() {
        for (int i = 0; i < this.items.size(); i++) {
            if (this.items.get(i).viewType == 7) {
                notifyItemChanged(i);
            }
        }
    }

    public void notifyAdditionalPrizeItem(boolean z) {
        for (int i = 0; i < this.items.size(); i++) {
            Item item = this.items.get(i);
            if (item.viewType == 15 && item.subType == SwitcherCell.TYPE_ADDITION_PRIZE) {
                if (z) {
                    notifyItemInserted(i + 1);
                    return;
                } else {
                    notifyItemRemoved(i + 1);
                    return;
                }
            }
        }
    }

    public void setPausedStars(boolean z) {
        HeaderCell headerCell = this.headerCell;
        if (headerCell != null) {
            headerCell.setPaused(z);
        }
    }

    private RecyclerView.Adapter realAdapter() {
        return this.recyclerListView.getAdapter();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyItemChanged(int i) {
        realAdapter().notifyItemChanged(i + 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyItemInserted(int i) {
        realAdapter().notifyItemInserted(i + 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyItemMoved(int i, int i2) {
        realAdapter().notifyItemMoved(i + 1, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyItemRangeChanged(int i, int i2) {
        realAdapter().notifyItemRangeChanged(i + 1, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyItemRangeChanged(int i, int i2, Object obj) {
        realAdapter().notifyItemRangeChanged(i + 1, i2, obj);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyItemRangeInserted(int i, int i2) {
        realAdapter().notifyItemRangeInserted(i + 1, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyItemRangeRemoved(int i, int i2) {
        realAdapter().notifyItemRangeRemoved(i + 1, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyItemRemoved(int i) {
        realAdapter().notifyItemRemoved(i + 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyDataSetChanged() {
        realAdapter().notifyDataSetChanged();
    }

    @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        int itemViewType = viewHolder.getItemViewType();
        return itemViewType == 2 || itemViewType == 11 || itemViewType == 8 || itemViewType == 10 || itemViewType == 15 || itemViewType == 12;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        SwitcherCell switcherCell;
        Context context = viewGroup.getContext();
        switch (i) {
            case 2:
                switcherCell = new BoostTypeCell(context, this.resourcesProvider);
                break;
            case 3:
                switcherCell = new View(context);
                break;
            case 4:
                switcherCell = new ShadowSectionCell(context, 12, Theme.getColor(Theme.key_windowBackgroundGray, this.resourcesProvider));
                break;
            case 5:
                switcherCell = new SliderCell(context, this.resourcesProvider);
                break;
            case 6:
                View headerCell = new org.telegram.p043ui.Cells.HeaderCell(context, Theme.key_windowBackgroundWhiteBlueHeader, 21, 15, 3, false, this.resourcesProvider);
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
                switcherCell = headerCell;
                break;
            case 7:
                switcherCell = new TextInfoCell(context, this.resourcesProvider);
                break;
            case 8:
                switcherCell = new AddChannelCell(context, this.resourcesProvider);
                break;
            case 9:
                switcherCell = new ChatCell(context, this.resourcesProvider);
                break;
            case 10:
                switcherCell = new DateEndCell(context, this.resourcesProvider);
                break;
            case 11:
                switcherCell = new ParticipantsTypeCell(context, this.resourcesProvider);
                break;
            case 12:
                switcherCell = new DurationCell(context, this.resourcesProvider);
                break;
            case 13:
                View subtitleWithCounterCell = new SubtitleWithCounterCell(context, this.resourcesProvider);
                subtitleWithCounterCell.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
                switcherCell = subtitleWithCounterCell;
                break;
            case 14:
                switcherCell = new BoostTypeSingleCell(context, this.resourcesProvider);
                break;
            case 15:
                SwitcherCell switcherCell2 = new SwitcherCell(context, this.resourcesProvider);
                switcherCell2.setHeight(50);
                switcherCell = switcherCell2;
                break;
            case 16:
                switcherCell = new EnterPrizeCell(context, this.resourcesProvider);
                break;
            default:
                switcherCell = new HeaderCell(context, this.resourcesProvider);
                break;
        }
        switcherCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        return new RecyclerListView.Holder(switcherCell);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        int itemViewType = viewHolder.getItemViewType();
        Item item = this.items.get(i);
        if (itemViewType == 0) {
            HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
            this.headerCell = headerCell;
            headerCell.setBoostViaGifsText();
        } else if (itemViewType == 2) {
            ((BoostTypeCell) viewHolder.itemView).setType(item.subType, item.intValue, (TLRPC$User) item.user, item.selectable);
        } else if (itemViewType == 5) {
            SliderCell sliderCell = (SliderCell) viewHolder.itemView;
            sliderCell.setValues(item.values, item.intValue);
            sliderCell.setCallBack(this.sliderCallback);
        } else if (itemViewType == 6) {
            ((org.telegram.p043ui.Cells.HeaderCell) viewHolder.itemView).setText(item.text);
        } else if (itemViewType == 7) {
            TextInfoCell textInfoCell = (TextInfoCell) viewHolder.itemView;
            textInfoCell.setText(item.text);
            textInfoCell.setBackground(item.boolValue);
        } else {
            switch (itemViewType) {
                case 9:
                    ChatCell chatCell = (ChatCell) viewHolder.itemView;
                    TLRPC$InputPeer tLRPC$InputPeer = item.peer;
                    if (tLRPC$InputPeer != null) {
                        if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerChat) {
                            chatCell.setChat(MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(tLRPC$InputPeer.chat_id)), item.intValue, item.boolValue);
                        } else if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerChannel) {
                            chatCell.setChat(MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(tLRPC$InputPeer.channel_id)), item.intValue, item.boolValue);
                        }
                    } else {
                        chatCell.setChat(item.chat, item.intValue, item.boolValue);
                    }
                    chatCell.setChatDeleteListener(this.chatDeleteListener);
                    return;
                case 10:
                    ((DateEndCell) viewHolder.itemView).setDate(item.longValue);
                    return;
                case 11:
                    ((ParticipantsTypeCell) viewHolder.itemView).setType(item.subType, item.selectable, item.boolValue, (List) item.user);
                    return;
                case 12:
                    ((DurationCell) viewHolder.itemView).setDuration(item.object, item.intValue, item.intValue2, item.longValue, item.text, item.boolValue, item.selectable);
                    return;
                case 13:
                    SubtitleWithCounterCell subtitleWithCounterCell = (SubtitleWithCounterCell) viewHolder.itemView;
                    subtitleWithCounterCell.setText(item.text);
                    subtitleWithCounterCell.updateCounter(false, item.intValue);
                    return;
                case 14:
                    ((BoostTypeSingleCell) viewHolder.itemView).setGiveaway((TL_stories$TL_prepaidGiveaway) item.user);
                    return;
                case 15:
                    ((SwitcherCell) viewHolder.itemView).setData(item.text, item.selectable, item.boolValue, item.subType);
                    return;
                case 16:
                    EnterPrizeCell enterPrizeCell = (EnterPrizeCell) viewHolder.itemView;
                    enterPrizeCell.setCount(item.intValue);
                    enterPrizeCell.setAfterTextChangedListener(this.afterTextChangedListener);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.items.get(i).viewType;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.items.size();
    }

    /* renamed from: org.telegram.ui.Components.Premium.boosts.adapters.BoostAdapter$Item */
    /* loaded from: classes6.dex */
    public static class Item extends AdapterWithDiffUtils.Item {
        public boolean boolValue;
        public TLRPC$Chat chat;
        public float floatValue;
        public int intValue;
        public int intValue2;
        public int intValue3;
        public long longValue;
        public Object object;
        public TLRPC$InputPeer peer;
        public int subType;
        public CharSequence text;
        public Object user;
        public List<Integer> values;

        private Item(int i, boolean z) {
            super(i, z);
        }

        public static Item asHeader() {
            return new Item(0, false);
        }

        public static Item asDivider() {
            return new Item(4, false);
        }

        public static Item asDivider(CharSequence charSequence, boolean z) {
            Item item = new Item(7, false);
            item.text = charSequence;
            item.boolValue = z;
            return item;
        }

        public static Item asChat(TLRPC$Chat tLRPC$Chat, boolean z, int i) {
            Item item = new Item(9, false);
            item.chat = tLRPC$Chat;
            item.peer = null;
            item.boolValue = z;
            item.intValue = i;
            return item;
        }

        public static Item asPeer(TLRPC$InputPeer tLRPC$InputPeer, boolean z, int i) {
            Item item = new Item(9, false);
            item.peer = tLRPC$InputPeer;
            item.chat = null;
            item.boolValue = z;
            item.intValue = i;
            return item;
        }

        public static Item asEnterPrize(int i) {
            Item item = new Item(16, false);
            item.intValue = i;
            return item;
        }

        public static Item asSwitcher(CharSequence charSequence, boolean z, boolean z2, int i) {
            Item item = new Item(15, z);
            item.text = charSequence;
            item.boolValue = z2;
            item.subType = i;
            return item;
        }

        public static Item asSingleBoost(Object obj) {
            Item item = new Item(14, false);
            item.user = obj;
            return item;
        }

        public static Item asBoost(int i, int i2, Object obj, int i3) {
            Item item = new Item(2, i3 == i);
            item.subType = i;
            item.intValue = i2;
            item.user = obj;
            return item;
        }

        public static Item asDateEnd(long j) {
            Item item = new Item(10, false);
            item.longValue = j;
            return item;
        }

        public static Item asSlider(List<Integer> list, int i) {
            Item item = new Item(5, false);
            item.values = list;
            item.intValue = i;
            return item;
        }

        public static Item asAddChannel() {
            return new Item(8, false);
        }

        public static Item asSubTitle(CharSequence charSequence) {
            Item item = new Item(6, false);
            item.text = charSequence;
            return item;
        }

        public static Item asSubTitleWithCounter(CharSequence charSequence, int i) {
            Item item = new Item(13, false);
            item.text = charSequence;
            item.intValue = i;
            return item;
        }

        public static Item asDuration(Object obj, int i, int i2, long j, int i3, String str, boolean z) {
            Item item = new Item(12, i == i3);
            item.intValue = i;
            item.intValue2 = i2;
            item.longValue = j;
            item.boolValue = z;
            item.text = str;
            item.object = obj;
            return item;
        }

        public static Item asParticipants(int i, int i2, boolean z, List<TLObject> list) {
            Item item = new Item(11, i2 == i);
            item.subType = i;
            item.boolValue = z;
            item.user = list;
            return item;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Item.class == obj.getClass()) {
                Item item = (Item) obj;
                if (this.viewType == item.viewType && this.chat == item.chat && this.user == item.user && this.peer == item.peer && this.object == item.object && this.boolValue == item.boolValue && this.values == item.values && this.intValue == item.intValue && this.intValue2 == item.intValue2 && this.intValue3 == item.intValue3 && this.longValue == item.longValue && this.subType == item.subType && this.floatValue == item.floatValue && TextUtils.equals(this.text, item.text)) {
                    return true;
                }
            }
            return false;
        }
    }
}
