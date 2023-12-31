package org.telegram.p043ui.Adapters;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.GraySectionCell;
import org.telegram.p043ui.Cells.LocationCell;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$TL_messageMediaVenue;
/* renamed from: org.telegram.ui.Adapters.LocationActivitySearchAdapter */
/* loaded from: classes5.dex */
public class LocationActivitySearchAdapter extends BaseLocationAdapter {
    private FlickerLoadingView globalGradientView;
    private Context mContext;
    private boolean myLocationDenied;
    private Theme.ResourcesProvider resourcesProvider;

    @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        return true;
    }

    public void setMyLocationDenied(boolean z) {
        if (this.myLocationDenied == z) {
            return;
        }
        this.myLocationDenied = z;
    }

    public LocationActivitySearchAdapter(Context context, Theme.ResourcesProvider resourcesProvider, boolean z) {
        super(z);
        this.myLocationDenied = false;
        this.mContext = context;
        this.resourcesProvider = resourcesProvider;
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        this.globalGradientView = flickerLoadingView;
        flickerLoadingView.setIsSingleCell(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int size = this.locations.isEmpty() ? 0 : 0 + this.locations.size() + 1;
        if (this.myLocationDenied) {
            return size;
        }
        if (isSearching()) {
            return size + 3;
        }
        if (!this.locations.isEmpty() && !this.places.isEmpty()) {
            size++;
        }
        return size + this.places.size();
    }

    public boolean isEmpty() {
        return this.places.size() == 0 && this.locations.size() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View graySectionCell;
        if (i == 0) {
            graySectionCell = new LocationCell(this.mContext, false, this.resourcesProvider);
        } else {
            graySectionCell = new GraySectionCell(this.mContext, this.resourcesProvider);
        }
        return new RecyclerListView.Holder(graySectionCell);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        boolean z = true;
        if (viewHolder.getItemViewType() == 0) {
            TLRPC$TL_messageMediaVenue tLRPC$TL_messageMediaVenue = null;
            int i3 = !this.locations.isEmpty() ? i - 1 : i;
            if (i3 >= 0 && i3 < this.locations.size()) {
                tLRPC$TL_messageMediaVenue = this.locations.get(i3);
                i2 = 2;
            } else {
                if (!isSearching()) {
                    i2 = i3 - this.locations.size();
                    if (!this.searchingLocations && !this.locations.isEmpty()) {
                        i2--;
                    }
                    if (i2 >= 0 && i2 < this.places.size()) {
                        tLRPC$TL_messageMediaVenue = this.places.get(i2);
                    }
                }
                i2 = i;
            }
            LocationCell locationCell = (LocationCell) viewHolder.itemView;
            if (i == getItemCount() - 1 || (!this.searchingLocations && !this.locations.isEmpty() && i == this.locations.size())) {
                z = false;
            }
            locationCell.setLocation(tLRPC$TL_messageMediaVenue, i2, z);
        } else if (viewHolder.getItemViewType() == 1) {
            if (i == 0 && !this.locations.isEmpty()) {
                ((GraySectionCell) viewHolder.itemView).setText(LocaleController.getString("LocationOnMap", C3632R.string.LocationOnMap));
            } else {
                ((GraySectionCell) viewHolder.itemView).setText(LocaleController.getString("NearbyVenue", C3632R.string.NearbyVenue));
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return ((i == 0 || i == this.locations.size() + 1) && !this.locations.isEmpty()) ? 1 : 0;
    }

    public TLRPC$TL_messageMediaVenue getItem(int i) {
        if (!this.locations.isEmpty()) {
            i--;
        }
        if (i >= 0 && i < this.locations.size()) {
            return this.locations.get(i);
        }
        if (isSearching()) {
            return null;
        }
        int size = i - this.locations.size();
        if (!this.locations.isEmpty()) {
            size--;
        }
        if (size < 0 || size >= this.places.size()) {
            return null;
        }
        return this.places.get(size);
    }
}
