package com.iMe.p031ui.recent_chats;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.fork.p024ui.view.AvatarDrawableCell;
import com.iMe.storage.domain.model.HistoryDialogModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: RecentChatsBar.kt */
/* renamed from: com.iMe.ui.recent_chats.RecentChatsBar */
/* loaded from: classes3.dex */
public final class RecentChatsBar extends FrameLayout {
    private final int currentAccount;
    private final List<HistoryDialogModel> data;
    private final Delegate delegate;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;

    /* compiled from: RecentChatsBar.kt */
    /* renamed from: com.iMe.ui.recent_chats.RecentChatsBar$Delegate */
    /* loaded from: classes3.dex */
    public interface Delegate {
        void onLongClickRelease();

        void onMove(float f);

        void onRecentChatClick(HistoryDialogModel historyDialogModel, View view);

        void onRecentChatLongClick(HistoryDialogModel historyDialogModel, View view);
    }

    public final int getCurrentAccount() {
        return this.currentAccount;
    }

    public final Delegate getDelegate() {
        return this.delegate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentChatsBar(Context context, int i, Delegate delegate) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.currentAccount = i;
        this.delegate = delegate;
        lazy = LazyKt__LazyJVMKt.lazy(new RecentChatsBar$listView$2(this));
        this.listView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new RecentChatsBar$listAdapter$2(this));
        this.listAdapter$delegate = lazy2;
        this.data = new ArrayList();
        addView(getListView(), LayoutHelper.createFrame(-1, -1));
        setupListeners();
    }

    public final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue();
    }

    private final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    public final void setData(List<HistoryDialogModel> newData) {
        Intrinsics.checkNotNullParameter(newData, "newData");
        this.data.clear();
        this.data.addAll(newData);
        getListAdapter().notifyDataSetChanged();
    }

    public final void scrollToStart() {
        getListView().smoothScrollToPosition(0);
    }

    public final void notifyDataSetChanged() {
        getListAdapter().notifyDataSetChanged();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        getParent().requestDisallowInterceptTouchEvent(true);
        return super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initHorizontalListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getContext());
        final Context context = recyclerListView.getContext();
        recyclerListView.setLayoutManager(new LinearLayoutManager(context) { // from class: com.iMe.ui.recent_chats.RecentChatsBar$initHorizontalListView$1$1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return true;
            }
        });
        recyclerListView.setClipToPadding(false);
        recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.iMe.ui.recent_chats.RecentChatsBar$initHorizontalListView$1$2
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                outRect.right = AndroidUtilities.m54dp(4);
                outRect.left = AndroidUtilities.m54dp(4);
            }
        });
        recyclerListView.setAdapter(getListAdapter());
        return recyclerListView;
    }

    private final void setupListeners() {
        getListView().setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.ui.recent_chats.RecentChatsBar$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                RecentChatsBar.setupListeners$lambda$1(RecentChatsBar.this, view, i);
            }
        });
        getListView().setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListenerExtended() { // from class: com.iMe.ui.recent_chats.RecentChatsBar$setupListeners$2
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public boolean onItemClick(View view, int i, float f, float f2) {
                if (view != null) {
                    RecentChatsBar.this.getDelegate().onRecentChatLongClick((HistoryDialogModel) RecentChatsBar.this.data.get(i), view);
                    return true;
                }
                return true;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public void onMove(float f, float f2) {
                Point point = AndroidUtilities.displaySize;
                if (point.x > point.y) {
                    RecentChatsBar.this.getDelegate().onMove(f2);
                }
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public void onLongClickRelease() {
                Point point = AndroidUtilities.displaySize;
                if (point.x > point.y) {
                    RecentChatsBar.this.getDelegate().onLongClickRelease();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$1(RecentChatsBar this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.delegate.onRecentChatClick(this$0.data.get(i), view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RecentChatsBar.kt */
    /* renamed from: com.iMe.ui.recent_chats.RecentChatsBar$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            Context context = RecentChatsBar.this.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            AvatarDrawableCell avatarDrawableCell = new AvatarDrawableCell(context, RecentChatsBar.this.getCurrentAccount());
            avatarDrawableCell.setLayoutParams(new RecyclerView.LayoutParams(AndroidUtilities.m54dp(50), -1));
            return new RecyclerListView.Holder(avatarDrawableCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.iMe.fork.ui.view.AvatarDrawableCell");
            AvatarDrawableCell avatarDrawableCell = (AvatarDrawableCell) view;
            RecentChatsBar recentChatsBar = RecentChatsBar.this;
            avatarDrawableCell.updateColors();
            avatarDrawableCell.setDialog(((HistoryDialogModel) recentChatsBar.data.get(i)).getDialogId(), ((HistoryDialogModel) recentChatsBar.data.get(i)).isPinned());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return RecentChatsBar.this.data.size();
        }
    }
}
