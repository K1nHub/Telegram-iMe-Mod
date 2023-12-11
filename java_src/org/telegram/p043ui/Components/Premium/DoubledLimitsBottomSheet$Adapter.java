package org.telegram.p043ui.Components.Premium;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.FixedHeightEmptyCell;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.Components.Premium.DoubledLimitsBottomSheet$Adapter */
/* loaded from: classes6.dex */
public class DoubledLimitsBottomSheet$Adapter extends RecyclerListView.SelectionAdapter {
    ViewGroup containerView;
    boolean drawHeader;
    PremiumGradient.PremiumGradientTools gradientTools;
    int headerRow;
    int lastViewRow;
    final ArrayList<DoubledLimitsBottomSheet$Limit> limits;
    int limitsStartRow;
    private final Theme.ResourcesProvider resourcesProvider;
    int rowCount;
    private int totalGradientHeight;

    @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        return false;
    }

    public DoubledLimitsBottomSheet$Adapter(int i, boolean z, Theme.ResourcesProvider resourcesProvider) {
        ArrayList<DoubledLimitsBottomSheet$Limit> arrayList = new ArrayList<>();
        this.limits = arrayList;
        this.drawHeader = z;
        this.resourcesProvider = resourcesProvider;
        PremiumGradient.PremiumGradientTools premiumGradientTools = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, Theme.key_premiumGradient3, Theme.key_premiumGradient4, -1, resourcesProvider);
        this.gradientTools = premiumGradientTools;
        premiumGradientTools.f1908x1 = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1910y1 = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1909x2 = BitmapDescriptorFactory.HUE_RED;
        premiumGradientTools.f1911y2 = 1.0f;
        MessagesController messagesController = MessagesController.getInstance(i);
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString("GroupsAndChannelsLimitTitle", C3632R.string.GroupsAndChannelsLimitTitle), LocaleController.formatString("GroupsAndChannelsLimitSubtitle", C3632R.string.GroupsAndChannelsLimitSubtitle, Integer.valueOf(messagesController.channelsLimitPremium)), messagesController.channelsLimitDefault, messagesController.channelsLimitPremium, null));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString("PinChatsLimitTitle", C3632R.string.PinChatsLimitTitle), LocaleController.formatString("PinChatsLimitSubtitle", C3632R.string.PinChatsLimitSubtitle, Integer.valueOf(messagesController.dialogFiltersPinnedLimitPremium)), messagesController.dialogFiltersPinnedLimitDefault, messagesController.dialogFiltersPinnedLimitPremium, null));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString("PublicLinksLimitTitle", C3632R.string.PublicLinksLimitTitle), LocaleController.formatString("PublicLinksLimitSubtitle", C3632R.string.PublicLinksLimitSubtitle, Integer.valueOf(messagesController.publicLinksLimitPremium)), messagesController.publicLinksLimitDefault, messagesController.publicLinksLimitPremium, null));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString("SavedGifsLimitTitle", C3632R.string.SavedGifsLimitTitle), LocaleController.formatString("SavedGifsLimitSubtitle", C3632R.string.SavedGifsLimitSubtitle, Integer.valueOf(messagesController.savedGifsLimitPremium)), messagesController.savedGifsLimitDefault, messagesController.savedGifsLimitPremium, null));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString("FavoriteStickersLimitTitle", C3632R.string.FavoriteStickersLimitTitle), LocaleController.formatString("FavoriteStickersLimitSubtitle", C3632R.string.FavoriteStickersLimitSubtitle, Integer.valueOf(messagesController.stickersFavedLimitPremium)), messagesController.stickersFavedLimitDefault, messagesController.stickersFavedLimitPremium, null));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString("BioLimitTitle", C3632R.string.BioLimitTitle), LocaleController.formatString("BioLimitSubtitle", C3632R.string.BioLimitSubtitle, Integer.valueOf(messagesController.stickersFavedLimitPremium)), messagesController.aboutLengthLimitDefault, messagesController.aboutLengthLimitPremium, null));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString("CaptionsLimitTitle", C3632R.string.CaptionsLimitTitle), LocaleController.formatString("CaptionsLimitSubtitle", C3632R.string.CaptionsLimitSubtitle, Integer.valueOf(messagesController.stickersFavedLimitPremium)), messagesController.captionLengthLimitDefault, messagesController.captionLengthLimitPremium, null));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString("FoldersLimitTitle", C3632R.string.FoldersLimitTitle), LocaleController.formatString("FoldersLimitSubtitle", C3632R.string.FoldersLimitSubtitle, Integer.valueOf(messagesController.dialogFiltersLimitPremium)), messagesController.dialogFiltersLimitDefault, messagesController.dialogFiltersLimitPremium, null));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString("ChatPerFolderLimitTitle", C3632R.string.ChatPerFolderLimitTitle), LocaleController.formatString("ChatPerFolderLimitSubtitle", C3632R.string.ChatPerFolderLimitSubtitle, Integer.valueOf(messagesController.dialogFiltersChatsLimitPremium)), messagesController.dialogFiltersChatsLimitDefault, messagesController.dialogFiltersChatsLimitPremium, null));
        arrayList.add(new DoubledLimitsBottomSheet$Limit(LocaleController.getString("ConnectedAccountsLimitTitle", C3632R.string.ConnectedAccountsLimitTitle), LocaleController.formatString("ConnectedAccountsLimitSubtitle", C3632R.string.ConnectedAccountsLimitSubtitle, 4), 3, 4, null));
        this.rowCount = 0;
        int i2 = 1 + 0;
        this.rowCount = i2;
        this.headerRow = 0;
        this.limitsStartRow = i2;
        this.rowCount = i2 + arrayList.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        FixedHeightEmptyCell fixedHeightEmptyCell;
        Context context = viewGroup.getContext();
        if (i != 1) {
            if (i != 2) {
                DoubledLimitsBottomSheet$LimitCell doubledLimitsBottomSheet$LimitCell = new DoubledLimitsBottomSheet$LimitCell(context, this.resourcesProvider);
                doubledLimitsBottomSheet$LimitCell.previewView.setParentViewForGradien(this.containerView);
                doubledLimitsBottomSheet$LimitCell.previewView.setStaticGradinet(this.gradientTools);
                fixedHeightEmptyCell = doubledLimitsBottomSheet$LimitCell;
            } else {
                fixedHeightEmptyCell = new FixedHeightEmptyCell(context, 16);
            }
        } else if (this.drawHeader) {
            FrameLayout frameLayout = new FrameLayout(this, context) { // from class: org.telegram.ui.Components.Premium.DoubledLimitsBottomSheet$Adapter.1
                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i2, int i3) {
                    super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(86), 1073741824));
                }
            };
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            ImageView imageView = new ImageView(context);
            imageView.setImageDrawable(PremiumGradient.getInstance().createGradientDrawable(ContextCompat.getDrawable(context, C3632R.C3634drawable.other_2x_large)));
            linearLayout.addView(imageView, LayoutHelper.createFrame(40, 28, 16, 0, 0, 8, 0));
            TextView textView = new TextView(context);
            textView.setText(LocaleController.getString("DoubledLimits", C3632R.string.DoubledLimits));
            textView.setGravity(17);
            textView.setTextSize(1, 20.0f);
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider));
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            linearLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 16));
            frameLayout.addView(linearLayout, LayoutHelper.createFrame(-2, -2, 17));
            fixedHeightEmptyCell = frameLayout;
        } else {
            fixedHeightEmptyCell = new FixedHeightEmptyCell(context, 64);
        }
        fixedHeightEmptyCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        return new RecyclerListView.Holder(fixedHeightEmptyCell);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder.getItemViewType() == 0) {
            DoubledLimitsBottomSheet$LimitCell doubledLimitsBottomSheet$LimitCell = (DoubledLimitsBottomSheet$LimitCell) viewHolder.itemView;
            doubledLimitsBottomSheet$LimitCell.setData(this.limits.get(i - this.limitsStartRow));
            doubledLimitsBottomSheet$LimitCell.previewView.gradientYOffset = this.limits.get(i - this.limitsStartRow).yOffset;
            doubledLimitsBottomSheet$LimitCell.previewView.gradientTotalHeight = this.totalGradientHeight;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.rowCount;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i == this.headerRow) {
            return 1;
        }
        return i == this.lastViewRow ? 2 : 0;
    }

    public void measureGradient(Context context, int i, int i2) {
        DoubledLimitsBottomSheet$LimitCell doubledLimitsBottomSheet$LimitCell = new DoubledLimitsBottomSheet$LimitCell(context, this.resourcesProvider);
        int i3 = 0;
        for (int i4 = 0; i4 < this.limits.size(); i4++) {
            doubledLimitsBottomSheet$LimitCell.setData(this.limits.get(i4));
            doubledLimitsBottomSheet$LimitCell.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
            this.limits.get(i4).yOffset = i3;
            i3 += doubledLimitsBottomSheet$LimitCell.getMeasuredHeight();
        }
        this.totalGradientHeight = i3;
    }
}
