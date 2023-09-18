package org.telegram.p043ui.Adapters;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.ForkTopicsController;
import com.iMe.p031ui.dialogs.EmptyCellType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Adapters.DialogsAdapter;
import org.telegram.p043ui.Cells.ArchiveHintCell;
import org.telegram.p043ui.Cells.DialogCell;
import org.telegram.p043ui.Cells.DialogMeUrlCell;
import org.telegram.p043ui.Cells.DialogsEmptyCell;
import org.telegram.p043ui.Cells.DialogsHintCell;
import org.telegram.p043ui.Cells.DialogsRequestedEmptyCell;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ProfileSearchCell;
import org.telegram.p043ui.Cells.RequestPeerRequirementsCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.UserCell;
import org.telegram.p043ui.Components.ArchiveHelp;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p043ui.Components.PullForegroundDrawable;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.StoriesListPlaceProvider;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$RecentMeUrl;
import org.telegram.tgnet.TLRPC$RequestPeerType;
import org.telegram.tgnet.TLRPC$TL_chatlists_chatlistUpdates;
import org.telegram.tgnet.TLRPC$TL_contact;
import org.telegram.tgnet.TLRPC$TL_requestPeerTypeBroadcast;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Adapters.DialogsAdapter */
/* loaded from: classes3.dex */
public class DialogsAdapter extends RecyclerListView.SelectionAdapter implements DialogCell.DialogCellDelegate {
    private ArchiveHintCell archiveHintCell;
    private Drawable arrowDrawable;
    private boolean collapsedView;
    private int currentAccount;
    private int currentCount;
    private int dialogsCount;
    private boolean dialogsListFrozen;
    private int dialogsType;
    private int folderId;
    private boolean forceShowEmptyCell;
    private boolean forceUpdatingContacts;
    private boolean hasChatlistHint;
    private boolean hasHints;
    private int initialDialogsType;
    public boolean isEmpty;
    private boolean isOnlySelect;
    private boolean isReordering;
    private boolean isTransitionSupport;
    private boolean isWalletBotHidden;
    private long lastSortTime;
    private Context mContext;
    private ArrayList<TLRPC$TL_contact> onlineContacts;
    private long openedDialogId;
    private DialogsActivity parentFragment;
    private DialogsPreloader preloader;
    private PullForegroundDrawable pullForegroundDrawable;
    RecyclerListView recyclerListView;
    private TLRPC$RequestPeerType requestPeerType;
    private ArrayList<Long> selectedDialogs;
    ArrayList<ItemInternal> itemInternals = new ArrayList<>();
    ArrayList<ItemInternal> oldItems = new ArrayList<>();
    int stableIdPointer = 10;
    LongSparseIntArray dialogsStableIds = new LongSparseIntArray();
    public int lastDialogsEmptyType = -1;

    public boolean isDataSetChanged() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onArchiveSettingsClick() {
    }

    @Override // org.telegram.p043ui.Cells.DialogCell.DialogCellDelegate
    public void onButtonClicked(DialogCell dialogCell) {
    }

    @Override // org.telegram.p043ui.Cells.DialogCell.DialogCellDelegate
    public void onButtonLongPress(DialogCell dialogCell) {
    }

    public void onCreateGroupForThisClick() {
    }

    public void setFolderId(int i) {
        this.folderId = i;
    }

    public void setInitialDialogsType(int i) {
        this.initialDialogsType = i;
    }

    public void setWalletBotHidden(boolean z) {
        if (this.isWalletBotHidden == z) {
            return;
        }
        this.isWalletBotHidden = z;
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isArchive() {
        return this.folderId == 1;
    }

    private boolean isHiddenChats() {
        return this.folderId == 2;
    }

    public DialogsAdapter(DialogsActivity dialogsActivity, Context context, int i, int i2, boolean z, ArrayList<Long> arrayList, int i3, TLRPC$RequestPeerType tLRPC$RequestPeerType) {
        this.mContext = context;
        this.parentFragment = dialogsActivity;
        this.dialogsType = i;
        this.folderId = i2;
        this.isOnlySelect = z;
        this.hasHints = i2 == 0 && i == 0 && !z;
        this.selectedDialogs = arrayList;
        this.currentAccount = i3;
        if (i2 == 0) {
            this.preloader = new DialogsPreloader();
        }
        this.requestPeerType = tLRPC$RequestPeerType;
    }

    public void setRecyclerListView(RecyclerListView recyclerListView) {
        this.recyclerListView = recyclerListView;
    }

    public void setOpenedDialogId(long j) {
        this.openedDialogId = j;
    }

    public void onReorderStateChanged(boolean z) {
        this.isReordering = z;
    }

    public int fixPosition(int i) {
        if (this.hasChatlistHint) {
            i--;
        }
        if (this.hasHints) {
            i -= MessagesController.getInstance(this.currentAccount).hintDialogs.size() + 2;
        }
        int i2 = this.dialogsType;
        return (i2 == 11 || i2 == 13) ? i - 2 : i2 == 12 ? i - 1 : i;
    }

    public void setDialogsType(int i) {
        this.dialogsType = i;
        notifyDataSetChanged();
    }

    public int getDialogsType() {
        return this.dialogsType;
    }

    public int getDialogsCount() {
        return this.dialogsCount;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.itemInternals.get(i).stableId;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int size = this.itemInternals.size();
        this.currentCount = size;
        return size;
    }

    public int findDialogPosition(long j) {
        for (int i = 0; i < this.itemInternals.size(); i++) {
            if (this.itemInternals.get(i).dialog != null && this.itemInternals.get(i).dialog.f1528id == j) {
                return i;
            }
        }
        return -1;
    }

    public int fixScrollGap(RecyclerListView recyclerListView, int i, int i2, boolean z, boolean z2, boolean z3, boolean z4) {
        getItemCount();
        int m72dp = AndroidUtilities.m72dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72);
        recyclerListView.getPaddingTop();
        int paddingTop = ((recyclerListView.getPaddingTop() + i2) - (i * m72dp)) - i;
        if (z2) {
            AndroidUtilities.m72dp(81);
        } else if (z3) {
            AndroidUtilities.m72dp(44);
        }
        if (z) {
            paddingTop += m72dp;
        }
        int paddingTop2 = recyclerListView.getPaddingTop();
        return paddingTop > paddingTop2 ? (i2 + paddingTop2) - paddingTop : i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Adapters.DialogsAdapter$ItemInternal */
    /* loaded from: classes3.dex */
    public class ItemInternal extends AdapterWithDiffUtils.Item {
        TLRPC$TL_chatlists_chatlistUpdates chatlistUpdates;
        TLRPC$TL_contact contact;
        TLRPC$Dialog dialog;
        private int emptyType;
        private boolean isFolder;
        boolean isForumCell;
        private boolean pinned;
        TLRPC$RecentMeUrl recentMeUrl;
        private final int stableId;

        public ItemInternal(DialogsAdapter dialogsAdapter, TLRPC$TL_chatlists_chatlistUpdates tLRPC$TL_chatlists_chatlistUpdates) {
            super(17, true);
            this.chatlistUpdates = tLRPC$TL_chatlists_chatlistUpdates;
            int i = dialogsAdapter.stableIdPointer;
            dialogsAdapter.stableIdPointer = i + 1;
            this.stableId = i;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ItemInternal(DialogsAdapter dialogsAdapter, int i, TLRPC$Dialog tLRPC$Dialog) {
            super(i, true);
            boolean z = true;
            this.dialog = tLRPC$Dialog;
            if (tLRPC$Dialog != null) {
                int i2 = dialogsAdapter.dialogsStableIds.get(tLRPC$Dialog.f1528id, -1);
                if (i2 >= 0) {
                    this.stableId = i2;
                } else {
                    int i3 = dialogsAdapter.stableIdPointer;
                    dialogsAdapter.stableIdPointer = i3 + 1;
                    this.stableId = i3;
                    dialogsAdapter.dialogsStableIds.put(tLRPC$Dialog.f1528id, i3);
                }
            } else if (i == 19) {
                this.stableId = 5;
            } else {
                int i4 = dialogsAdapter.stableIdPointer;
                dialogsAdapter.stableIdPointer = i4 + 1;
                this.stableId = i4;
            }
            if (tLRPC$Dialog != null) {
                if (dialogsAdapter.dialogsType == 7 || dialogsAdapter.dialogsType == 8) {
                    MessagesController.DialogFilter dialogFilter = MessagesController.getInstance(dialogsAdapter.currentAccount).getSelectedDialogFilter(dialogsAdapter.initialDialogsType == 3, dialogsAdapter.isArchive())[dialogsAdapter.dialogsType == 8 ? (char) 1 : (char) 0];
                    this.pinned = (dialogFilter == null || dialogFilter.pinnedDialogs.indexOfKey(tLRPC$Dialog.f1528id) < 0) ? false : z;
                } else {
                    this.pinned = tLRPC$Dialog.pinned;
                }
                this.isFolder = tLRPC$Dialog.isFolder;
                this.isForumCell = MessagesController.getInstance(dialogsAdapter.currentAccount).isForum(tLRPC$Dialog.f1528id);
            }
        }

        public ItemInternal(DialogsAdapter dialogsAdapter, int i, TLRPC$RecentMeUrl tLRPC$RecentMeUrl) {
            super(i, true);
            this.recentMeUrl = tLRPC$RecentMeUrl;
            int i2 = dialogsAdapter.stableIdPointer;
            dialogsAdapter.stableIdPointer = i2 + 1;
            this.stableId = i2;
        }

        public ItemInternal(DialogsAdapter dialogsAdapter, int i) {
            super(i, true);
            this.emptyType = i;
            if (i == 10) {
                this.stableId = 1;
            } else if (this.viewType == 19) {
                this.stableId = 5;
            } else {
                int i2 = dialogsAdapter.stableIdPointer;
                dialogsAdapter.stableIdPointer = i2 + 1;
                this.stableId = i2;
            }
        }

        public ItemInternal(DialogsAdapter dialogsAdapter, int i, int i2) {
            super(i, true);
            this.emptyType = i2;
            int i3 = dialogsAdapter.stableIdPointer;
            dialogsAdapter.stableIdPointer = i3 + 1;
            this.stableId = i3;
        }

        public ItemInternal(DialogsAdapter dialogsAdapter, int i, TLRPC$TL_contact tLRPC$TL_contact) {
            super(i, true);
            this.contact = tLRPC$TL_contact;
            if (tLRPC$TL_contact != null) {
                int i2 = dialogsAdapter.dialogsStableIds.get(tLRPC$TL_contact.user_id, -1);
                if (i2 > 0) {
                    this.stableId = i2;
                    return;
                }
                int i3 = dialogsAdapter.stableIdPointer;
                dialogsAdapter.stableIdPointer = i3 + 1;
                this.stableId = i3;
                dialogsAdapter.dialogsStableIds.put(this.contact.user_id, i3);
                return;
            }
            int i4 = dialogsAdapter.stableIdPointer;
            dialogsAdapter.stableIdPointer = i4 + 1;
            this.stableId = i4;
        }

        boolean compare(ItemInternal itemInternal) {
            TLRPC$TL_contact tLRPC$TL_contact;
            String str;
            TLRPC$Dialog tLRPC$Dialog;
            TLRPC$Dialog tLRPC$Dialog2;
            int i = this.viewType;
            if (i != itemInternal.viewType) {
                return false;
            }
            if (i == 0) {
                TLRPC$Dialog tLRPC$Dialog3 = this.dialog;
                return tLRPC$Dialog3 != null && (tLRPC$Dialog2 = itemInternal.dialog) != null && tLRPC$Dialog3.f1528id == tLRPC$Dialog2.f1528id && this.isFolder == itemInternal.isFolder && this.isForumCell == itemInternal.isForumCell && this.pinned == itemInternal.pinned;
            } else if (i == 14) {
                TLRPC$Dialog tLRPC$Dialog4 = this.dialog;
                return tLRPC$Dialog4 != null && (tLRPC$Dialog = itemInternal.dialog) != null && tLRPC$Dialog4.f1528id == tLRPC$Dialog.f1528id && tLRPC$Dialog4.isFolder == tLRPC$Dialog.isFolder;
            } else if (i == 4) {
                TLRPC$RecentMeUrl tLRPC$RecentMeUrl = this.recentMeUrl;
                return (tLRPC$RecentMeUrl == null || itemInternal.recentMeUrl == null || (str = tLRPC$RecentMeUrl.url) == null || !str.equals(str)) ? false : true;
            } else if (i != 6) {
                return i == 5 ? this.emptyType == itemInternal.emptyType : i != 10;
            } else {
                TLRPC$TL_contact tLRPC$TL_contact2 = this.contact;
                return (tLRPC$TL_contact2 == null || (tLRPC$TL_contact = itemInternal.contact) == null || tLRPC$TL_contact2.user_id != tLRPC$TL_contact.user_id) ? false : true;
            }
        }

        public int hashCode() {
            return Objects.hash(this.dialog, this.recentMeUrl, this.contact);
        }
    }

    public TLObject getItem(int i) {
        if (i >= 0 && i < this.itemInternals.size()) {
            if (this.itemInternals.get(i).dialog != null) {
                return this.itemInternals.get(i).dialog;
            }
            if (this.itemInternals.get(i).contact != null) {
                return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.itemInternals.get(i).contact.user_id));
            }
            if (this.itemInternals.get(i).recentMeUrl != null) {
                return this.itemInternals.get(i).recentMeUrl;
            }
        }
        return null;
    }

    public void sortOnlineContacts(boolean z) {
        if (this.onlineContacts != null) {
            if (!z || SystemClock.elapsedRealtime() - this.lastSortTime >= ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
                this.lastSortTime = SystemClock.elapsedRealtime();
                try {
                    final int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
                    final MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                    Collections.sort(this.onlineContacts, new Comparator() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda4
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            int lambda$sortOnlineContacts$0;
                            lambda$sortOnlineContacts$0 = DialogsAdapter.lambda$sortOnlineContacts$0(MessagesController.this, currentTime, (TLRPC$TL_contact) obj, (TLRPC$TL_contact) obj2);
                            return lambda$sortOnlineContacts$0;
                        }
                    });
                    if (z) {
                        notifyDataSetChanged();
                    }
                } catch (Exception e) {
                    FileLog.m67e(e);
                }
            }
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
    public static /* synthetic */ int lambda$sortOnlineContacts$0(org.telegram.messenger.MessagesController r2, int r3, org.telegram.tgnet.TLRPC$TL_contact r4, org.telegram.tgnet.TLRPC$TL_contact r5) {
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
            if (r3 < 0) goto L60
            if (r5 == 0) goto L5f
            goto L60
        L5f:
            return r0
        L60:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Adapters.DialogsAdapter.lambda$sortOnlineContacts$0(org.telegram.messenger.MessagesController, int, org.telegram.tgnet.TLRPC$TL_contact, org.telegram.tgnet.TLRPC$TL_contact):int");
    }

    public void setDialogsListFrozen(boolean z) {
        this.dialogsListFrozen = z;
    }

    public boolean getDialogsListIsFrozen() {
        return this.dialogsListFrozen;
    }

    public ViewPager getArchiveHintCellPager() {
        ArchiveHintCell archiveHintCell = this.archiveHintCell;
        if (archiveHintCell != null) {
            return archiveHintCell.getViewPager();
        }
        return null;
    }

    public void updateHasHints() {
        this.hasHints = this.folderId == 0 && this.dialogsType == 0 && !this.isOnlySelect && !MessagesController.getInstance(this.currentAccount).hintDialogs.isEmpty();
    }

    public void updateList(RecyclerListView recyclerListView, boolean z, float f, boolean z2) {
        this.oldItems.clear();
        this.oldItems.addAll(this.itemInternals);
        updateItemList();
        if (recyclerListView != null && recyclerListView.getScrollState() == 0 && recyclerListView.getChildCount() > 0 && recyclerListView.getLayoutManager() != null) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerListView.getLayoutManager();
            View view = null;
            int i = Integer.MAX_VALUE;
            int i2 = -1;
            for (int i3 = 0; i3 < recyclerListView.getChildCount(); i3++) {
                int childAdapterPosition = recyclerListView.getChildAdapterPosition(recyclerListView.getChildAt(i3));
                View childAt = recyclerListView.getChildAt(i3);
                if (childAdapterPosition != -1 && childAt != null && childAt.getTop() < i) {
                    i = childAt.getTop();
                    i2 = childAdapterPosition;
                    view = childAt;
                }
            }
            if (view != null) {
                float top = view.getTop() - recyclerListView.getPaddingTop();
                if (z2) {
                    f = 0.0f;
                }
                if (recyclerListView.getScrollState() != 1) {
                    if (z && i2 == 0 && ((recyclerListView.getPaddingTop() - view.getTop()) - view.getMeasuredHeight()) + f < BitmapDescriptorFactory.HUE_RED) {
                        top = f;
                        i2 = 1;
                    }
                    linearLayoutManager.scrollToPositionWithOffset(i2, (int) top);
                }
            }
        }
        DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: org.telegram.ui.Adapters.DialogsAdapter.1
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getOldListSize() {
                return DialogsAdapter.this.oldItems.size();
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getNewListSize() {
                return DialogsAdapter.this.itemInternals.size();
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areItemsTheSame(int i4, int i5) {
                return DialogsAdapter.this.oldItems.get(i4).compare(DialogsAdapter.this.itemInternals.get(i5));
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areContentsTheSame(int i4, int i5) {
                return DialogsAdapter.this.oldItems.get(i4).viewType == DialogsAdapter.this.itemInternals.get(i5).viewType;
            }
        }).dispatchUpdatesTo(this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyDataSetChanged() {
        updateItemList();
        super.notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        if (view instanceof DialogCell) {
            DialogCell dialogCell = (DialogCell) view;
            dialogCell.onReorderStateChanged(this.isReordering, false);
            dialogCell.checkCurrentDialogIndex(this.dialogsListFrozen);
            dialogCell.setChecked(this.selectedDialogs.contains(Long.valueOf(dialogCell.getDialogId())), false);
        }
    }

    @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        int itemViewType = viewHolder.getItemViewType();
        return (itemViewType == 1 || itemViewType == 5 || itemViewType == 3 || itemViewType == 8 || itemViewType == 7 || itemViewType == 10 || itemViewType == 11 || itemViewType == 13 || itemViewType == 15 || itemViewType == 16 || itemViewType == 18 || itemViewType == 19) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateViewHolder$1(View view) {
        MessagesController.getInstance(this.currentAccount).hintDialogs.clear();
        MessagesController.getGlobalMainSettings().edit().remove("installReferer").commit();
        notifyDataSetChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [org.telegram.ui.Cells.ShadowSectionCell, android.view.View] */
    /* JADX WARN: Type inference failed for: r3v11, types: [org.telegram.ui.Adapters.DialogsAdapter$LastEmptyView] */
    /* JADX WARN: Type inference failed for: r3v12, types: [android.view.View, org.telegram.ui.Adapters.DialogsAdapter$4] */
    /* JADX WARN: Type inference failed for: r3v13, types: [android.view.View, org.telegram.ui.Cells.HeaderCell] */
    /* JADX WARN: Type inference failed for: r3v14, types: [org.telegram.ui.Cells.RequestPeerRequirementsCell] */
    /* JADX WARN: Type inference failed for: r3v15, types: [org.telegram.ui.Adapters.DialogsAdapter$3] */
    /* JADX WARN: Type inference failed for: r3v16, types: [org.telegram.ui.Cells.DialogsHintCell] */
    /* JADX WARN: Type inference failed for: r3v17, types: [org.telegram.ui.Adapters.DialogsAdapter$5] */
    /* JADX WARN: Type inference failed for: r3v18, types: [android.widget.FrameLayout, org.telegram.ui.Adapters.DialogsAdapter$LastEmptyView] */
    /* JADX WARN: Type inference failed for: r3v19, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v3, types: [org.telegram.ui.Components.FlickerLoadingView] */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.widget.FrameLayout, org.telegram.ui.Cells.HeaderCell] */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.widget.FrameLayout, org.telegram.ui.Adapters.DialogsAdapter$2] */
    /* JADX WARN: Type inference failed for: r3v6, types: [org.telegram.ui.Cells.DialogMeUrlCell] */
    /* JADX WARN: Type inference failed for: r3v7, types: [org.telegram.ui.Cells.DialogsEmptyCell] */
    /* JADX WARN: Type inference failed for: r3v8, types: [org.telegram.ui.Cells.UserCell] */
    /* JADX WARN: Type inference failed for: r3v9, types: [android.view.View, org.telegram.ui.Cells.HeaderCell] */
    /* JADX WARN: Type inference failed for: r5v6, types: [org.telegram.ui.Cells.DialogCell] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View view;
        ?? flickerLoadingView;
        View view2;
        switch (i) {
            case 0:
                int i2 = this.dialogsType;
                if (i2 == 2 || i2 == 15 || DialogsActivity.isAlbumsDialogsType(this.initialDialogsType)) {
                    view = new ProfileSearchCell(this.mContext);
                } else {
                    ?? dialogCell = new DialogCell(this.parentFragment, this.mContext, true, false, this.currentAccount, null);
                    dialogCell.setArchivedPullAnimation(this.pullForegroundDrawable);
                    dialogCell.setPreloader(this.preloader);
                    dialogCell.setDialogCellDelegate(this);
                    dialogCell.setIsTransitionSupport(this.isTransitionSupport);
                    view = dialogCell;
                }
                view2 = view;
                if (this.dialogsType == 15) {
                    view.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    view2 = view;
                }
                flickerLoadingView = view2;
                break;
            case 1:
            case 13:
                flickerLoadingView = new FlickerLoadingView(this.mContext);
                flickerLoadingView.setIsSingleCell(true);
                int i3 = i == 13 ? 18 : 7;
                flickerLoadingView.setViewType(i3);
                if (i3 == 18) {
                    flickerLoadingView.setIgnoreHeightCheck(true);
                }
                if (i == 13) {
                    flickerLoadingView.setItemsCount((int) ((AndroidUtilities.displaySize.y * 0.5f) / AndroidUtilities.m72dp(64)));
                    break;
                }
                break;
            case 2:
                flickerLoadingView = new HeaderCell(this.mContext);
                flickerLoadingView.setText(LocaleController.getString("RecentlyViewed", C3473R.string.RecentlyViewed));
                TextView textView = new TextView(this.mContext);
                textView.setTextSize(1, 15.0f);
                textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader));
                textView.setText(LocaleController.getString("RecentlyViewedHide", C3473R.string.RecentlyViewedHide));
                textView.setGravity((LocaleController.isRTL ? 3 : 5) | 16);
                flickerLoadingView.addView(textView, LayoutHelper.createFrame(-1, -1, (LocaleController.isRTL ? 3 : 5) | 48, 17, 15, 17, 0));
                textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        DialogsAdapter.this.lambda$onCreateViewHolder$1(view3);
                    }
                });
                break;
            case 3:
                flickerLoadingView = new FrameLayout(this, this.mContext) { // from class: org.telegram.ui.Adapters.DialogsAdapter.2
                    @Override // android.widget.FrameLayout, android.view.View
                    protected void onMeasure(int i4, int i5) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i4), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(12), 1073741824));
                    }
                };
                flickerLoadingView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
                View view3 = new View(this.mContext);
                view3.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C3473R.C3475drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                flickerLoadingView.addView(view3, LayoutHelper.createFrame(-1, -1));
                break;
            case 4:
                flickerLoadingView = new DialogMeUrlCell(this.mContext);
                break;
            case 5:
                flickerLoadingView = new DialogsEmptyCell(this.mContext);
                break;
            case 6:
                flickerLoadingView = new UserCell(this.mContext, 8, 0, false);
                break;
            case 7:
                flickerLoadingView = new HeaderCell(this.mContext);
                flickerLoadingView.setPadding(0, 0, 0, AndroidUtilities.m72dp(12));
                break;
            case 8:
                flickerLoadingView = new ShadowSectionCell(this.mContext);
                CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundGray)), Theme.getThemedDrawableByKey(this.mContext, C3473R.C3475drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                combinedDrawable.setFullsize(true);
                flickerLoadingView.setBackgroundDrawable(combinedDrawable);
                break;
            case 9:
            case 12:
            default:
                View textCell = new TextCell(this.mContext);
                view2 = textCell;
                if (this.dialogsType == 15) {
                    textCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    view2 = textCell;
                }
                flickerLoadingView = view2;
                break;
            case 10:
                flickerLoadingView = new LastEmptyView(this.mContext);
                break;
            case 11:
                flickerLoadingView = new TextInfoPrivacyCell(this.mContext) { // from class: org.telegram.ui.Adapters.DialogsAdapter.4
                    private long lastUpdateTime;
                    private float moveProgress;
                    private int movement;
                    private int originalX;
                    private int originalY;

                    @Override // org.telegram.p043ui.Cells.TextInfoPrivacyCell
                    protected void afterTextDraw() {
                        if (DialogsAdapter.this.arrowDrawable != null) {
                            Rect bounds = DialogsAdapter.this.arrowDrawable.getBounds();
                            Drawable drawable = DialogsAdapter.this.arrowDrawable;
                            int i4 = this.originalX;
                            drawable.setBounds(i4, this.originalY, bounds.width() + i4, this.originalY + bounds.height());
                        }
                    }

                    @Override // org.telegram.p043ui.Cells.TextInfoPrivacyCell
                    protected void onTextDraw() {
                        if (DialogsAdapter.this.arrowDrawable != null) {
                            Rect bounds = DialogsAdapter.this.arrowDrawable.getBounds();
                            int m72dp = (int) (this.moveProgress * AndroidUtilities.m72dp(3));
                            this.originalX = bounds.left;
                            this.originalY = bounds.top;
                            DialogsAdapter.this.arrowDrawable.setBounds(this.originalX + m72dp, this.originalY + AndroidUtilities.m72dp(1), this.originalX + m72dp + bounds.width(), this.originalY + AndroidUtilities.m72dp(1) + bounds.height());
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            long j = elapsedRealtime - this.lastUpdateTime;
                            if (j > 17) {
                                j = 17;
                            }
                            this.lastUpdateTime = elapsedRealtime;
                            if (this.movement == 0) {
                                float f = this.moveProgress + (((float) j) / 664.0f);
                                this.moveProgress = f;
                                if (f >= 1.0f) {
                                    this.movement = 1;
                                    this.moveProgress = 1.0f;
                                }
                            } else {
                                float f2 = this.moveProgress - (((float) j) / 664.0f);
                                this.moveProgress = f2;
                                if (f2 <= BitmapDescriptorFactory.HUE_RED) {
                                    this.movement = 0;
                                    this.moveProgress = BitmapDescriptorFactory.HUE_RED;
                                }
                            }
                            getTextView().invalidate();
                        }
                    }
                };
                CombinedDrawable combinedDrawable2 = new CombinedDrawable(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundGray)), Theme.getThemedDrawableByKey(this.mContext, C3473R.C3475drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                combinedDrawable2.setFullsize(true);
                flickerLoadingView.setBackgroundDrawable(combinedDrawable2);
                break;
            case 14:
                flickerLoadingView = new HeaderCell(this.mContext, Theme.key_graySectionText, 16, 0, false);
                flickerLoadingView.setHeight(32);
                flickerLoadingView.setClickable(false);
                break;
            case 15:
                flickerLoadingView = new RequestPeerRequirementsCell(this.mContext);
                break;
            case 16:
                flickerLoadingView = new DialogsRequestedEmptyCell(this.mContext) { // from class: org.telegram.ui.Adapters.DialogsAdapter.3
                    @Override // org.telegram.p043ui.Cells.DialogsRequestedEmptyCell
                    protected void onButtonClick() {
                        DialogsAdapter.this.onCreateGroupForThisClick();
                    }
                };
                break;
            case 17:
                flickerLoadingView = new DialogsHintCell(this.mContext);
                break;
            case 18:
                flickerLoadingView = new View(this, this.mContext) { // from class: org.telegram.ui.Adapters.DialogsAdapter.5
                    @Override // android.view.View
                    protected void onMeasure(int i4, int i5) {
                        super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(81), 1073741824));
                    }
                };
                break;
            case 19:
                flickerLoadingView = new LastEmptyView(this.mContext);
                flickerLoadingView.addView(new ArchiveHelp(this.mContext, this.currentAccount, null, new Runnable() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsAdapter.this.onArchiveSettingsClick();
                    }
                }, null), LayoutHelper.createFrame(-1, -1, 17, 0, -40, 0, 0));
                break;
        }
        flickerLoadingView.setLayoutParams(new RecyclerView.LayoutParams(-1, (i == 5 || i == 19) ? -1 : -2));
        return new RecyclerListView.Holder(flickerLoadingView);
    }

    public int dialogsEmptyType() {
        if (DialogsActivity.isAlbumsDialogsType(this.dialogsType)) {
            return (isArchive() ? EmptyCellType.ARCHIVE_ALBUMS : EmptyCellType.ALBUMS).m715id();
        }
        int i = this.dialogsType;
        if (i == DialogsActivity.DIALOGS_TYPE_DRAFTS) {
            return EmptyCellType.DRAFTS.m715id();
        }
        if (this.folderId == 2) {
            return EmptyCellType.HIDDEN_CHATS.m715id();
        }
        if (i == 7 || i == 8 || (i == 0 && ForkTopicsController.getInstance(this.currentAccount).hasSelectedTopic(isArchive()))) {
            return MessagesController.getInstance(this.currentAccount).isDialogsEndReached(this.folderId) ? 2 : 3;
        } else if (this.folderId != 1) {
            return this.onlineContacts != null ? 1 : 0;
        } else if (this.dialogsType == 0) {
            return EmptyCellType.ARCHIVE.m715id();
        } else {
            return 2;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        TLRPC$Chat tLRPC$Chat;
        String str;
        String str2;
        TLRPC$User tLRPC$User;
        String formatUserStatus;
        String lowerCase;
        TLRPC$Chat chat;
        int itemViewType = viewHolder.getItemViewType();
        if (itemViewType == 0) {
            TLRPC$Dialog tLRPC$Dialog = (TLRPC$Dialog) getItem(i);
            TLRPC$Dialog tLRPC$Dialog2 = (TLRPC$Dialog) getItem(i + 1);
            int i2 = this.dialogsType;
            if (i2 == 2 || i2 == 15 || DialogsActivity.isAlbumsDialogsType(this.initialDialogsType)) {
                ProfileSearchCell profileSearchCell = (ProfileSearchCell) viewHolder.itemView;
                long dialogId = profileSearchCell.getDialogId();
                if (tLRPC$Dialog.f1528id != 0) {
                    tLRPC$Chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tLRPC$Dialog.f1528id));
                    if (tLRPC$Chat != null && tLRPC$Chat.migrated_to != null && (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(tLRPC$Chat.migrated_to.channel_id))) != null) {
                        tLRPC$Chat = chat;
                    }
                } else {
                    tLRPC$Chat = null;
                }
                if (tLRPC$Chat != null) {
                    String str3 = tLRPC$Chat.title;
                    if (DialogsActivity.isAlbumsDialogsType(this.initialDialogsType)) {
                        lowerCase = LocaleController.getInternalString(C3473R.string.cloud_album).toLowerCase();
                    } else if (ChatObject.isChannel(tLRPC$Chat) && !tLRPC$Chat.megagroup) {
                        int i3 = tLRPC$Chat.participants_count;
                        if (i3 != 0) {
                            lowerCase = LocaleController.formatPluralStringComma("Subscribers", i3);
                        } else if (!ChatObject.isPublic(tLRPC$Chat)) {
                            lowerCase = LocaleController.getString("ChannelPrivate", C3473R.string.ChannelPrivate).toLowerCase();
                        } else {
                            lowerCase = LocaleController.getString("ChannelPublic", C3473R.string.ChannelPublic).toLowerCase();
                        }
                    } else {
                        int i4 = tLRPC$Chat.participants_count;
                        if (i4 != 0) {
                            lowerCase = LocaleController.formatPluralStringComma("Members", i4);
                        } else if (tLRPC$Chat.has_geo) {
                            lowerCase = LocaleController.getString("MegaLocation", C3473R.string.MegaLocation);
                        } else if (!ChatObject.isPublic(tLRPC$Chat)) {
                            lowerCase = LocaleController.getString("MegaPrivate", C3473R.string.MegaPrivate).toLowerCase();
                        } else {
                            lowerCase = LocaleController.getString("MegaPublic", C3473R.string.MegaPublic).toLowerCase();
                        }
                    }
                    str2 = lowerCase;
                    str = str3;
                    tLRPC$User = tLRPC$Chat;
                } else {
                    TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$Dialog.f1528id));
                    if (user != null) {
                        String userName = UserObject.getUserName(user);
                        if (UserObject.isReplyUser(user)) {
                            str = userName;
                            str2 = "";
                            tLRPC$User = user;
                        } else {
                            if (user.bot) {
                                formatUserStatus = LocaleController.getString("Bot", C3473R.string.Bot);
                            } else {
                                formatUserStatus = LocaleController.formatUserStatus(this.currentAccount, user);
                            }
                            tLRPC$User = user;
                            str = userName;
                            str2 = formatUserStatus;
                        }
                    } else {
                        str = null;
                        str2 = "";
                        tLRPC$User = null;
                    }
                }
                profileSearchCell.useSeparator = tLRPC$Dialog2 != null;
                profileSearchCell.setData(tLRPC$User, null, str, str2, false, false);
                profileSearchCell.setChecked(this.selectedDialogs.contains(Long.valueOf(profileSearchCell.getDialogId())), dialogId == profileSearchCell.getDialogId());
            } else {
                DialogCell dialogCell = (DialogCell) viewHolder.itemView;
                dialogCell.setCompactMode(SharedConfig.isDialogsCompactModeEnabled);
                dialogCell.useSeparator = tLRPC$Dialog2 != null;
                dialogCell.fullSeparator = (!tLRPC$Dialog.pinned || tLRPC$Dialog2 == null || tLRPC$Dialog2.pinned) ? false : true;
                if (this.dialogsType == 0 && AndroidUtilities.isTablet()) {
                    dialogCell.setDialogSelected(tLRPC$Dialog.f1528id == this.openedDialogId);
                }
                dialogCell.setChecked(this.selectedDialogs.contains(Long.valueOf(tLRPC$Dialog.f1528id)), false);
                dialogCell.setDialog(tLRPC$Dialog, this.dialogsType, this.folderId, this.initialDialogsType == 3);
                dialogCell.checkHeight();
                boolean z = dialogCell.collapsed;
                boolean z2 = this.collapsedView;
                if (z != z2) {
                    dialogCell.collapsed = z2;
                    dialogCell.requestLayout();
                }
                DialogsPreloader dialogsPreloader = this.preloader;
                if (dialogsPreloader != null && i < 10) {
                    dialogsPreloader.add(tLRPC$Dialog.f1528id);
                }
            }
        } else if (itemViewType == 4) {
            ((DialogMeUrlCell) viewHolder.itemView).setRecentMeUrl((TLRPC$RecentMeUrl) getItem(i));
        } else if (itemViewType == 5) {
            DialogsEmptyCell dialogsEmptyCell = (DialogsEmptyCell) viewHolder.itemView;
            int i5 = this.lastDialogsEmptyType;
            int dialogsEmptyType = dialogsEmptyType();
            this.lastDialogsEmptyType = dialogsEmptyType;
            dialogsEmptyCell.setType(dialogsEmptyType, this.isOnlySelect);
            int i6 = this.dialogsType;
            if (i6 != 7 && i6 != 8 && i6 == 0 && !ForkTopicsController.getInstance(this.currentAccount).hasSelectedTopic(isArchive()) && !isArchive() && !isHiddenChats()) {
                dialogsEmptyCell.setOnUtyanAnimationEndListener(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsAdapter.this.lambda$onBindViewHolder$2();
                    }
                });
                dialogsEmptyCell.setOnUtyanAnimationUpdateListener(new Consumer() { // from class: org.telegram.ui.Adapters.DialogsAdapter$$ExternalSyntheticLambda1
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        DialogsAdapter.this.lambda$onBindViewHolder$3((Float) obj);
                    }
                });
                if (!dialogsEmptyCell.isUtyanAnimationTriggered() && this.dialogsCount == 0) {
                    this.parentFragment.setContactsAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.parentFragment.setScrollDisabled(true);
                }
                if (this.onlineContacts != null && i5 == 0) {
                    if (!dialogsEmptyCell.isUtyanAnimationTriggered()) {
                        dialogsEmptyCell.startUtyanCollapseAnimation(true);
                    }
                } else if (this.forceUpdatingContacts) {
                    if (this.dialogsCount == 0) {
                        dialogsEmptyCell.startUtyanCollapseAnimation(false);
                    }
                } else if (dialogsEmptyCell.isUtyanAnimationTriggered() && this.lastDialogsEmptyType == 0) {
                    dialogsEmptyCell.startUtyanExpandAnimation();
                }
            }
        } else if (itemViewType == 6) {
            ((UserCell) viewHolder.itemView).setData((TLRPC$User) getItem(i), null, null, 0);
        } else if (itemViewType == 7) {
            HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
            int i7 = this.dialogsType;
            if (i7 != 11 && i7 != 12 && i7 != 13) {
                headerCell.setText(LocaleController.getString((this.dialogsCount == 0 && this.forceUpdatingContacts) ? C3473R.string.ConnectingYourContacts : C3473R.string.YourContacts));
            } else if (i == 0) {
                headerCell.setText(LocaleController.getString("ImportHeader", C3473R.string.ImportHeader));
            } else {
                headerCell.setText(LocaleController.getString("ImportHeaderContacts", C3473R.string.ImportHeaderContacts));
            }
        } else if (itemViewType == 11) {
            TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
            textInfoPrivacyCell.setText(LocaleController.getString("TapOnThePencil", C3473R.string.TapOnThePencil));
            if (this.arrowDrawable == null) {
                Drawable drawable = this.mContext.getResources().getDrawable(C3473R.C3475drawable.arrow_newchat);
                this.arrowDrawable = drawable;
                drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4), PorterDuff.Mode.MULTIPLY));
            }
            TextView textView = textInfoPrivacyCell.getTextView();
            textView.setCompoundDrawablePadding(AndroidUtilities.m72dp(4));
            textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.arrowDrawable, (Drawable) null);
            textView.getLayoutParams().width = -2;
        } else if (itemViewType != 12) {
            switch (itemViewType) {
                case 14:
                    HeaderCell headerCell2 = (HeaderCell) viewHolder.itemView;
                    headerCell2.setTextSize(14.0f);
                    headerCell2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
                    headerCell2.setBackgroundColor(Theme.getColor(Theme.key_graySection));
                    int i8 = ((DialogsActivity.DialogsHeader) getItem(i)).headerType;
                    if (i8 == 0) {
                        headerCell2.setText(LocaleController.getString("MyChannels", C3473R.string.MyChannels));
                        break;
                    } else if (i8 == 1) {
                        headerCell2.setText(LocaleController.getString("MyGroups", C3473R.string.MyGroups));
                        break;
                    } else if (i8 == 2) {
                        headerCell2.setText(LocaleController.getString("FilterGroups", C3473R.string.FilterGroups));
                        break;
                    }
                    break;
                case 15:
                    ((RequestPeerRequirementsCell) viewHolder.itemView).set(this.requestPeerType);
                    break;
                case 16:
                    ((DialogsRequestedEmptyCell) viewHolder.itemView).set(this.requestPeerType);
                    break;
                case 17:
                    DialogsHintCell dialogsHintCell = (DialogsHintCell) viewHolder.itemView;
                    TLRPC$TL_chatlists_chatlistUpdates tLRPC$TL_chatlists_chatlistUpdates = this.itemInternals.get(i).chatlistUpdates;
                    if (tLRPC$TL_chatlists_chatlistUpdates != null) {
                        int size = tLRPC$TL_chatlists_chatlistUpdates.missing_peers.size();
                        dialogsHintCell.setText(AndroidUtilities.replaceSingleTag(LocaleController.formatPluralString("FolderUpdatesTitle", size, new Object[0]), Theme.key_windowBackgroundWhiteValueText, 0, null), LocaleController.formatPluralString("FolderUpdatesSubtitle", size, new Object[0]));
                        break;
                    }
                    break;
            }
        } else {
            View view = viewHolder.itemView;
            if (!(view instanceof TextCell)) {
                return;
            }
            TextCell textCell = (TextCell) view;
            int i9 = Theme.key_windowBackgroundWhiteBlueText4;
            textCell.setColors(i9, i9);
            TLRPC$RequestPeerType tLRPC$RequestPeerType = this.requestPeerType;
            if (tLRPC$RequestPeerType != null) {
                if (tLRPC$RequestPeerType instanceof TLRPC$TL_requestPeerTypeBroadcast) {
                    textCell.setTextAndIcon(LocaleController.getString("CreateChannelForThis", C3473R.string.CreateChannelForThis), C3473R.C3475drawable.msg_channel_create, true);
                } else {
                    textCell.setTextAndIcon(LocaleController.getString("CreateGroupForThis", C3473R.string.CreateGroupForThis), C3473R.C3475drawable.msg_groups_create, true);
                }
            } else {
                textCell.setTextAndIcon(LocaleController.getString("CreateGroupForImport", C3473R.string.CreateGroupForImport), C3473R.C3475drawable.msg_groups_create, this.dialogsCount != 0);
            }
            textCell.setIsInDialogs();
            textCell.setOffsetFromImage(75);
        }
        if (i >= this.dialogsCount + 1) {
            viewHolder.itemView.setAlpha(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$2() {
        this.parentFragment.setScrollDisabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$3(Float f) {
        this.parentFragment.setContactsAlpha(f.floatValue());
    }

    public TLRPC$TL_chatlists_chatlistUpdates getChatlistUpdate() {
        ItemInternal itemInternal = this.itemInternals.get(0);
        if (itemInternal == null || itemInternal.viewType != 17) {
            return null;
        }
        return itemInternal.chatlistUpdates;
    }

    public void setForceUpdatingContacts(boolean z) {
        this.forceUpdatingContacts = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.itemInternals.get(i).viewType;
    }

    public void moveDialogs(RecyclerListView recyclerListView, int i, int i2) {
        ArrayList<TLRPC$Dialog> dialogsArray = this.parentFragment.getDialogsArray(this.currentAccount, this.dialogsType, this.folderId, false);
        int fixPosition = fixPosition(i);
        int fixPosition2 = fixPosition(i2);
        TLRPC$Dialog tLRPC$Dialog = dialogsArray.get(fixPosition);
        TLRPC$Dialog tLRPC$Dialog2 = dialogsArray.get(fixPosition2);
        int i3 = this.dialogsType;
        if (i3 == 7 || i3 == 8) {
            MessagesController.DialogFilter dialogFilter = MessagesController.getInstance(this.currentAccount).getSelectedDialogFilter(this.initialDialogsType == 3, isArchive())[this.dialogsType != 8 ? (char) 0 : (char) 1];
            int i4 = dialogFilter.pinnedDialogs.get(tLRPC$Dialog.f1528id);
            dialogFilter.pinnedDialogs.put(tLRPC$Dialog.f1528id, dialogFilter.pinnedDialogs.get(tLRPC$Dialog2.f1528id));
            dialogFilter.pinnedDialogs.put(tLRPC$Dialog2.f1528id, i4);
        } else {
            int i5 = tLRPC$Dialog.pinnedNum;
            tLRPC$Dialog.pinnedNum = tLRPC$Dialog2.pinnedNum;
            tLRPC$Dialog2.pinnedNum = i5;
        }
        Collections.swap(dialogsArray, fixPosition, fixPosition2);
        updateList(recyclerListView, false, BitmapDescriptorFactory.HUE_RED, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyItemMoved(int i, int i2) {
        super.notifyItemMoved(i, i2);
    }

    public void setArchivedPullDrawable(PullForegroundDrawable pullForegroundDrawable) {
        this.pullForegroundDrawable = pullForegroundDrawable;
    }

    public void didDatabaseCleared() {
        DialogsPreloader dialogsPreloader = this.preloader;
        if (dialogsPreloader != null) {
            dialogsPreloader.clear();
        }
    }

    public void resume() {
        DialogsPreloader dialogsPreloader = this.preloader;
        if (dialogsPreloader != null) {
            dialogsPreloader.resume();
        }
    }

    public void pause() {
        DialogsPreloader dialogsPreloader = this.preloader;
        if (dialogsPreloader != null) {
            dialogsPreloader.pause();
        }
    }

    @Override // org.telegram.p043ui.Cells.DialogCell.DialogCellDelegate
    public boolean canClickButtonInside() {
        return this.selectedDialogs.isEmpty();
    }

    @Override // org.telegram.p043ui.Cells.DialogCell.DialogCellDelegate
    public void openStory(DialogCell dialogCell, Runnable runnable) {
        MessagesController.getInstance(this.currentAccount);
        if (MessagesController.getInstance(this.currentAccount).getStoriesController().hasStories(dialogCell.getDialogId())) {
            this.parentFragment.getOrCreateStoryViewer().doOnAnimationReady(runnable);
            this.parentFragment.getOrCreateStoryViewer().open(this.parentFragment.getContext(), dialogCell.getDialogId(), StoriesListPlaceProvider.m24of((RecyclerListView) dialogCell.getParent()));
        }
    }

    @Override // org.telegram.p043ui.Cells.DialogCell.DialogCellDelegate
    public void showChatPreview(DialogCell dialogCell) {
        this.parentFragment.showChatPreview(dialogCell);
    }

    @Override // org.telegram.p043ui.Cells.DialogCell.DialogCellDelegate
    public void openHiddenStories() {
        StoriesController storiesController = MessagesController.getInstance(this.currentAccount).getStoriesController();
        if (storiesController.getHiddenList().isEmpty()) {
            return;
        }
        boolean z = storiesController.getUnreadState(storiesController.getHiddenList().get(0).user_id) != 0;
        ArrayList<Long> arrayList = new ArrayList<>();
        for (int i = 0; i < storiesController.getHiddenList().size(); i++) {
            if (!z || storiesController.getUnreadState(storiesController.getHiddenList().get(i).user_id) != 0) {
                arrayList.add(Long.valueOf(storiesController.getHiddenList().get(i).user_id));
            }
        }
        this.parentFragment.getOrCreateStoryViewer().open(this.mContext, null, arrayList, 0, null, null, StoriesListPlaceProvider.m23of(this.recyclerListView, true), false);
    }

    public void setIsTransitionSupport() {
        this.isTransitionSupport = true;
    }

    public void setCollapsedView(boolean z, RecyclerListView recyclerListView) {
        this.collapsedView = z;
        for (int i = 0; i < recyclerListView.getChildCount(); i++) {
            if (recyclerListView.getChildAt(i) instanceof DialogCell) {
                ((DialogCell) recyclerListView.getChildAt(i)).collapsed = z;
            }
        }
        for (int i2 = 0; i2 < recyclerListView.getCachedChildCount(); i2++) {
            if (recyclerListView.getCachedChildAt(i2) instanceof DialogCell) {
                ((DialogCell) recyclerListView.getCachedChildAt(i2)).collapsed = z;
            }
        }
        for (int i3 = 0; i3 < recyclerListView.getHiddenChildCount(); i3++) {
            if (recyclerListView.getHiddenChildAt(i3) instanceof DialogCell) {
                ((DialogCell) recyclerListView.getHiddenChildAt(i3)).collapsed = z;
            }
        }
        for (int i4 = 0; i4 < recyclerListView.getAttachedScrapChildCount(); i4++) {
            if (recyclerListView.getAttachedScrapChildAt(i4) instanceof DialogCell) {
                ((DialogCell) recyclerListView.getAttachedScrapChildAt(i4)).collapsed = z;
            }
        }
    }

    /* renamed from: org.telegram.ui.Adapters.DialogsAdapter$DialogsPreloader */
    /* loaded from: classes3.dex */
    public static class DialogsPreloader {
        int currentRequestCount;
        int networkRequestCount;
        boolean resumed;
        HashSet<Long> dialogsReadyMap = new HashSet<>();
        HashSet<Long> preloadedErrorMap = new HashSet<>();
        HashSet<Long> loadingDialogs = new HashSet<>();
        ArrayList<Long> preloadDialogsPool = new ArrayList<>();
        Runnable clearNetworkRequestCount = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsAdapter$DialogsPreloader$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DialogsAdapter.DialogsPreloader.this.lambda$new$0();
            }
        };

        private boolean preloadIsAvilable() {
            return false;
        }

        public void updateList() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            this.networkRequestCount = 0;
            start();
        }

        public void add(long j) {
            if (isReady(j) || this.preloadedErrorMap.contains(Long.valueOf(j)) || this.loadingDialogs.contains(Long.valueOf(j)) || this.preloadDialogsPool.contains(Long.valueOf(j))) {
                return;
            }
            this.preloadDialogsPool.add(Long.valueOf(j));
            start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void start() {
            if (!preloadIsAvilable() || !this.resumed || this.preloadDialogsPool.isEmpty() || this.currentRequestCount >= 4 || this.networkRequestCount > 6) {
                return;
            }
            long longValue = this.preloadDialogsPool.remove(0).longValue();
            this.currentRequestCount++;
            this.loadingDialogs.add(Long.valueOf(longValue));
            MessagesController.getInstance(UserConfig.selectedAccount).ensureMessagesLoaded(longValue, 0, new C36611(longValue));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Adapters.DialogsAdapter$DialogsPreloader$1 */
        /* loaded from: classes3.dex */
        public class C36611 implements MessagesController.MessagesLoadedCallback {
            final /* synthetic */ long val$dialog_id;

            C36611(long j) {
                this.val$dialog_id = j;
            }

            @Override // org.telegram.messenger.MessagesController.MessagesLoadedCallback
            public void onMessagesLoaded(final boolean z) {
                final long j = this.val$dialog_id;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsAdapter$DialogsPreloader$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsAdapter.DialogsPreloader.C36611.this.lambda$onMessagesLoaded$0(z, j);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onMessagesLoaded$0(boolean z, long j) {
                DialogsPreloader dialogsPreloader;
                if (!z) {
                    DialogsPreloader dialogsPreloader2 = DialogsPreloader.this;
                    int i = dialogsPreloader2.networkRequestCount + 1;
                    dialogsPreloader2.networkRequestCount = i;
                    if (i >= 6) {
                        AndroidUtilities.cancelRunOnUIThread(dialogsPreloader2.clearNetworkRequestCount);
                        AndroidUtilities.runOnUIThread(DialogsPreloader.this.clearNetworkRequestCount, 60000L);
                    }
                }
                if (DialogsPreloader.this.loadingDialogs.remove(Long.valueOf(j))) {
                    DialogsPreloader.this.dialogsReadyMap.add(Long.valueOf(j));
                    DialogsPreloader.this.updateList();
                    dialogsPreloader.currentRequestCount--;
                    DialogsPreloader.this.start();
                }
            }

            @Override // org.telegram.messenger.MessagesController.MessagesLoadedCallback
            public void onError() {
                final long j = this.val$dialog_id;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsAdapter$DialogsPreloader$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogsAdapter.DialogsPreloader.C36611.this.lambda$onError$1(j);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onError$1(long j) {
                DialogsPreloader dialogsPreloader;
                if (DialogsPreloader.this.loadingDialogs.remove(Long.valueOf(j))) {
                    DialogsPreloader.this.preloadedErrorMap.add(Long.valueOf(j));
                    dialogsPreloader.currentRequestCount--;
                    DialogsPreloader.this.start();
                }
            }
        }

        public boolean isReady(long j) {
            return this.dialogsReadyMap.contains(Long.valueOf(j));
        }

        public void remove(long j) {
            this.preloadDialogsPool.remove(Long.valueOf(j));
        }

        public void clear() {
            this.dialogsReadyMap.clear();
            this.preloadedErrorMap.clear();
            this.loadingDialogs.clear();
            this.preloadDialogsPool.clear();
            this.currentRequestCount = 0;
            this.networkRequestCount = 0;
            AndroidUtilities.cancelRunOnUIThread(this.clearNetworkRequestCount);
            updateList();
        }

        public void resume() {
            this.resumed = true;
            start();
        }

        public void pause() {
            this.resumed = false;
        }
    }

    public int getCurrentCount() {
        return this.currentCount;
    }

    public void setForceShowEmptyCell(boolean z) {
        this.forceShowEmptyCell = z;
    }

    /* renamed from: org.telegram.ui.Adapters.DialogsAdapter$LastEmptyView */
    /* loaded from: classes3.dex */
    public class LastEmptyView extends FrameLayout {
        public boolean moving;

        public LastEmptyView(Context context) {
            super(context);
        }

        /* JADX WARN: Code restructure failed: missing block: B:104:0x01c2, code lost:
            if (r6 != false) goto L88;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x019b, code lost:
            if (r6 != false) goto L88;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x019d, code lost:
            r13 = r13 - r7;
         */
        /* JADX WARN: Removed duplicated region for block: B:109:0x01c9  */
        /* JADX WARN: Removed duplicated region for block: B:112:0x01d2  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006d  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00d4  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00da  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00f1  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00f4  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0105  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x014e  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x0175  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0177  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x017a  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x019f  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void onMeasure(int r12, int r13) {
            /*
                Method dump skipped, instructions count: 483
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Adapters.DialogsAdapter.LastEmptyView.onMeasure(int, int):void");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03ee A[LOOP:3: B:185:0x03ee->B:194:0x0415, LOOP_START, PHI: r4 
      PHI: (r4v2 int) = (r4v1 int), (r4v4 int) binds: [B:184:0x03ec, B:194:0x0415] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0417 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateItemList() {
        /*
            Method dump skipped, instructions count: 1120
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Adapters.DialogsAdapter.updateItemList():void");
    }

    public int getItemHeight(int i) {
        int m72dp = AndroidUtilities.m72dp(SharedConfig.isDialogsCompactModeEnabled ? 48 : SharedConfig.useThreeLinesLayout ? 78 : 72);
        if (this.itemInternals.get(i).viewType == 0) {
            if (!this.itemInternals.get(i).isForumCell || this.collapsedView) {
                return m72dp;
            }
            return AndroidUtilities.m72dp(SharedConfig.useThreeLinesLayout ? 86 : 91);
        }
        return 0;
    }
}
