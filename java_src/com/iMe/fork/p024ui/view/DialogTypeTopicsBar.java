package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.fork.enums.DialogType;
import com.iMe.fork.p024ui.view.DialogTypeTopicsBar;
import com.iMe.p031ui.topics.TopicView;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: DialogTypeTopicsBar.kt */
/* renamed from: com.iMe.fork.ui.view.DialogTypeTopicsBar */
/* loaded from: classes3.dex */
public final class DialogTypeTopicsBar extends FrameLayout {
    private DialogType currentDialogType;
    private final List<DialogType> data;
    private final Function1<DialogType, Unit> delegate;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;

    public final List<DialogType> getData() {
        return this.data;
    }

    public final DialogType getCurrentDialogType() {
        return this.currentDialogType;
    }

    public final void setCurrentDialogType(DialogType dialogType) {
        Intrinsics.checkNotNullParameter(dialogType, "<set-?>");
        this.currentDialogType = dialogType;
    }

    public final Function1<DialogType, Unit> getDelegate() {
        return this.delegate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DialogTypeTopicsBar(Context context, List<? extends DialogType> data, DialogType currentDialogType, Function1<? super DialogType, Unit> delegate) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(currentDialogType, "currentDialogType");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.data = data;
        this.currentDialogType = currentDialogType;
        this.delegate = delegate;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.view.DialogTypeTopicsBar$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView initListView;
                initListView = DialogTypeTopicsBar.this.initListView();
                return initListView;
            }
        });
        this.listView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.view.DialogTypeTopicsBar$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DialogTypeTopicsBar.ListAdapter invoke() {
                return new DialogTypeTopicsBar.ListAdapter();
            }
        });
        this.listAdapter$delegate = lazy2;
        setupListeners();
        addView(getListView(), LayoutHelper.createFrame(-1, -1));
        getListView().scrollToPosition(data.indexOf(this.currentDialogType));
    }

    private final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue();
    }

    private final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    public final void notifyDataSetChanged() {
        getListAdapter().notifyDataSetChanged();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        ViewParent parent2 = getParent();
        if (parent2 != null && (parent = parent2.getParent()) != null) {
            parent.requestDisallowInterceptTouchEvent(getListView().canScrollHorizontally(-1));
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getContext());
        recyclerListView.setClipToPadding(false);
        recyclerListView.setClipChildren(false);
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext(), 0, false));
        recyclerListView.setAdapter(getListAdapter());
        ViewExtKt.setHorizontalPadding(recyclerListView, 7);
        return recyclerListView;
    }

    private final void setupListeners() {
        getListView().setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: com.iMe.fork.ui.view.DialogTypeTopicsBar$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                DialogTypeTopicsBar.setupListeners$lambda$1(DialogTypeTopicsBar.this, view, i, f, f2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$1(DialogTypeTopicsBar this$0, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
        if (this$0.currentDialogType != this$0.data.get(i)) {
            DialogType dialogType = this$0.data.get(i);
            this$0.currentDialogType = dialogType;
            this$0.delegate.invoke(dialogType);
            this$0.getListAdapter().notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DialogTypeTopicsBar.kt */
    /* renamed from: com.iMe.fork.ui.view.DialogTypeTopicsBar$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return false;
        }

        public ListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DialogTypeTopicsBar.this.getData().size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            Context context = DialogTypeTopicsBar.this.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            TopicView topicView = new TopicView(context, null, 0, 16, 6, null);
            topicView.setLayoutParams(LayoutHelper.createRecycler(-2, -1));
            return new RecyclerListView.Holder(topicView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.iMe.ui.topics.TopicView");
            TopicView topicView = (TopicView) view;
            DialogTypeTopicsBar dialogTypeTopicsBar = DialogTypeTopicsBar.this;
            topicView.setDialogType(dialogTypeTopicsBar.getData().get(i), dialogTypeTopicsBar.getData().get(i) == dialogTypeTopicsBar.getCurrentDialogType());
        }
    }
}
