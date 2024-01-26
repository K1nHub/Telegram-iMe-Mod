package org.telegram.p043ui.Components.ListView;

import androidx.recyclerview.widget.DiffUtil;
import java.util.ArrayList;
import org.telegram.p043ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.Components.ListView.AdapterWithDiffUtils */
/* loaded from: classes6.dex */
public abstract class AdapterWithDiffUtils extends RecyclerListView.SelectionAdapter {
    DiffUtilsCallback callback = new DiffUtilsCallback();

    public void setItems(ArrayList<? extends Item> arrayList, ArrayList<? extends Item> arrayList2) {
        if (arrayList2 == null) {
            arrayList2 = new ArrayList<>();
        }
        this.callback.setItems(arrayList, arrayList2);
        DiffUtil.calculateDiff(this.callback).dispatchUpdatesTo(this);
    }

    /* renamed from: org.telegram.ui.Components.ListView.AdapterWithDiffUtils$Item */
    /* loaded from: classes6.dex */
    public static abstract class Item {
        public boolean selectable;
        public final int viewType;

        public Item(int i, boolean z) {
            this.viewType = i;
            this.selectable = z;
        }

        boolean compare(Item item) {
            return this.viewType == item.viewType && equals(item);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.ListView.AdapterWithDiffUtils$DiffUtilsCallback */
    /* loaded from: classes6.dex */
    public class DiffUtilsCallback extends DiffUtil.Callback {
        ArrayList<? extends Item> newItems;
        ArrayList<? extends Item> oldItems;

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areContentsTheSame(int i, int i2) {
            return false;
        }

        private DiffUtilsCallback(AdapterWithDiffUtils adapterWithDiffUtils) {
        }

        public void setItems(ArrayList<? extends Item> arrayList, ArrayList<? extends Item> arrayList2) {
            this.oldItems = arrayList;
            this.newItems = arrayList2;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getOldListSize() {
            return this.oldItems.size();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getNewListSize() {
            return this.newItems.size();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areItemsTheSame(int i, int i2) {
            return this.oldItems.get(i).compare(this.newItems.get(i2));
        }
    }
}
