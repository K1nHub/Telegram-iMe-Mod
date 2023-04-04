package org.telegram.p043ui.Adapters;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.p043ui.Cells.LocationCell;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$TL_messageMediaVenue;
/* renamed from: org.telegram.ui.Adapters.LocationActivitySearchAdapter */
/* loaded from: classes5.dex */
public class LocationActivitySearchAdapter extends BaseLocationAdapter {
    private FlickerLoadingView globalGradientView;
    private Context mContext;

    @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        return true;
    }

    public LocationActivitySearchAdapter(Context context) {
        this.mContext = context;
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        this.globalGradientView = flickerLoadingView;
        flickerLoadingView.setIsSingleCell(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (isSearching()) {
            return 3;
        }
        return this.places.size();
    }

    public boolean isEmpty() {
        return this.places.size() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new RecyclerListView.Holder(new LocationCell(this.mContext, false, null));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((LocationCell) viewHolder.itemView).setLocation(getItem(i), (isSearching() || i < 0 || i >= this.iconUrls.size()) ? null : this.iconUrls.get(i), i, i != getItemCount() - 1);
    }

    public TLRPC$TL_messageMediaVenue getItem(int i) {
        if (!isSearching() && i >= 0 && i < this.places.size()) {
            return this.places.get(i);
        }
        return null;
    }
}