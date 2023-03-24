package org.telegram.p048ui.Components;

import android.content.Context;
import android.content.DialogInterface;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.ArchivedStickerSetCell;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.StickersActivity;
import org.telegram.tgnet.TLRPC$StickerSetCovered;
/* renamed from: org.telegram.ui.Components.StickersArchiveAlert */
/* loaded from: classes6.dex */
public class StickersArchiveAlert extends AlertDialog.Builder {
    private int currentType;
    private BaseFragment parentFragment;
    private ArrayList<TLRPC$StickerSetCovered> stickerSets;

    public StickersArchiveAlert(Context context, BaseFragment baseFragment, ArrayList<TLRPC$StickerSetCovered> arrayList) {
        super(context);
        TLRPC$StickerSetCovered tLRPC$StickerSetCovered = arrayList.get(0);
        if (tLRPC$StickerSetCovered.set.masks) {
            this.currentType = 1;
            setTitle(LocaleController.getString("ArchivedMasksAlertTitle", C3301R.string.ArchivedMasksAlertTitle));
        } else {
            this.currentType = 0;
            setTitle(LocaleController.getString("ArchivedStickersAlertTitle", C3301R.string.ArchivedStickersAlertTitle));
        }
        this.stickerSets = new ArrayList<>(arrayList);
        this.parentFragment = baseFragment;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        setView(linearLayout);
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        textView.setGravity(LayoutHelper.getAbsoluteGravityStart());
        textView.setTextSize(1, 16.0f);
        textView.setPadding(AndroidUtilities.m50dp(23), AndroidUtilities.m50dp(10), AndroidUtilities.m50dp(23), 0);
        if (tLRPC$StickerSetCovered.set.masks) {
            textView.setText(LocaleController.getString("ArchivedMasksAlertInfo", C3301R.string.ArchivedMasksAlertInfo));
        } else {
            textView.setText(LocaleController.getString("ArchivedStickersAlertInfo", C3301R.string.ArchivedStickersAlertInfo));
        }
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        recyclerListView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        recyclerListView.setAdapter(new ListAdapter(context));
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setPadding(AndroidUtilities.m50dp(10), 0, AndroidUtilities.m50dp(10), 0);
        recyclerListView.setGlowColor(-657673);
        linearLayout.addView(recyclerListView, LayoutHelper.createLinear(-1, -2, 0, 10, 0, 0));
        setNegativeButton(LocaleController.getString("Close", C3301R.string.Close), StickersArchiveAlert$$ExternalSyntheticLambda1.INSTANCE);
        if (this.parentFragment != null) {
            setPositiveButton(LocaleController.getString("Settings", C3301R.string.Settings), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.StickersArchiveAlert$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    StickersArchiveAlert.this.lambda$new$1(dialogInterface, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(DialogInterface dialogInterface, int i) {
        this.parentFragment.presentFragment(new StickersActivity(this.currentType, null));
        dialogInterface.dismiss();
    }

    /* renamed from: org.telegram.ui.Components.StickersArchiveAlert$ListAdapter */
    /* loaded from: classes6.dex */
    private class ListAdapter extends RecyclerListView.SelectionAdapter {
        Context context;

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public ListAdapter(Context context) {
            this.context = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return StickersArchiveAlert.this.stickerSets.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ArchivedStickerSetCell archivedStickerSetCell = new ArchivedStickerSetCell(this.context, false);
            archivedStickerSetCell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m50dp(82)));
            return new RecyclerListView.Holder(archivedStickerSetCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ((ArchivedStickerSetCell) viewHolder.itemView).setStickersSet((TLRPC$StickerSetCovered) StickersArchiveAlert.this.stickerSets.get(i), i != StickersArchiveAlert.this.stickerSets.size() - 1);
        }
    }
}
