package org.fork.p046ui.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.p046ui.view.MessageMoreActionsView;
import org.telegram.messenger.C3158R;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.RecyclerListView;
/* compiled from: MessageMoreActionsView.kt */
/* renamed from: org.fork.ui.view.MessageMoreActionsView */
/* loaded from: classes4.dex */
public final class MessageMoreActionsView extends ActionBarMenuSubItem {
    private final Lazy gapItemHeight$delegate;
    private final List<SubMenuItem> items;
    private final Lazy optionItemHeight$delegate;

    static {
        new Companion(null);
    }

    public final List<SubMenuItem> getItems() {
        return this.items;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MessageMoreActionsView(Context context, String title, int i, boolean z, boolean z2, List<? extends SubMenuItem> items) {
        super(context, z, z2);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
        lazy = LazyKt__LazyJVMKt.lazy(MessageMoreActionsView$gapItemHeight$2.INSTANCE);
        this.gapItemHeight$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(MessageMoreActionsView$optionItemHeight$2.INSTANCE);
        this.optionItemHeight$delegate = lazy2;
        setTextAndIcon(title, i);
        setRightIcon(C3158R.C3160drawable.msg_arrowright);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getGapItemHeight() {
        return ((Number) this.gapItemHeight$delegate.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getOptionItemHeight() {
        return ((Number) this.optionItemHeight$delegate.getValue()).intValue();
    }

    public final RecyclerListView createListView() {
        final Context context = getContext();
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.fork.ui.view.MessageMoreActionsView$createListView$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public void onMeasure(int i, int i2) {
                int gapItemHeight = MessageMoreActionsView.this.getGapItemHeight();
                List<MessageMoreActionsView.SubMenuItem> items = MessageMoreActionsView.this.getItems();
                ArrayList arrayList = new ArrayList();
                for (Object obj : items) {
                    if (obj instanceof MessageMoreActionsView.SubMenuItem.Gap) {
                        arrayList.add(obj);
                    }
                }
                int size = gapItemHeight * arrayList.size();
                int optionItemHeight = MessageMoreActionsView.this.getOptionItemHeight();
                List<MessageMoreActionsView.SubMenuItem> items2 = MessageMoreActionsView.this.getItems();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : items2) {
                    if (obj2 instanceof MessageMoreActionsView.SubMenuItem.Option) {
                        arrayList2.add(obj2);
                    }
                }
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(size + (optionItemHeight * arrayList2.size()), View.MeasureSpec.getSize(i2)), 1073741824));
            }
        };
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext()));
        recyclerListView.setAdapter(new SubMenuItemsAdapter(this));
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MessageMoreActionsView.kt */
    /* renamed from: org.fork.ui.view.MessageMoreActionsView$SubMenuItemsAdapter */
    /* loaded from: classes4.dex */
    public final class SubMenuItemsAdapter extends RecyclerListView.SelectionAdapter {
        final /* synthetic */ MessageMoreActionsView this$0;

        public SubMenuItemsAdapter(MessageMoreActionsView this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return holder.getItemViewType() != IdFabric$ViewTypes.SUB_ITEM_GAP;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            int lastIndex;
            if (NumberExtKt.isZero(Integer.valueOf(i))) {
                return IdFabric$ViewTypes.SUB_ITEM_TOP;
            }
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this.this$0.getItems());
            return i == lastIndex ? IdFabric$ViewTypes.SUB_ITEM_BOTTOM : this.this$0.getItems().get(i) instanceof SubMenuItem.Gap ? IdFabric$ViewTypes.SUB_ITEM_GAP : IdFabric$ViewTypes.SUB_ITEM_MIDDLE;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            FrameLayout subMenuItemView;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.SUB_ITEM_GAP) {
                subMenuItemView = new FrameLayout(this.this$0.getContext());
                subMenuItemView.setLayoutParams(new RecyclerView.LayoutParams(-1, this.this$0.getGapItemHeight()));
                Unit unit = Unit.INSTANCE;
            } else {
                subMenuItemView = new SubMenuItemView(this.this$0, i);
                subMenuItemView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                Unit unit2 = Unit.INSTANCE;
            }
            return new RecyclerListView.Holder(subMenuItemView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            SubMenuItem subMenuItem = this.this$0.getItems().get(i);
            if (subMenuItem instanceof SubMenuItem.Option) {
                SubMenuItem.Option option = (SubMenuItem.Option) subMenuItem;
                ((ActionBarMenuSubItem) holder.itemView).setTextAndIcon(option.getTitle(), option.getIconResId());
            } else if (subMenuItem instanceof SubMenuItem.Gap) {
                ((FrameLayout) holder.itemView).setBackgroundColor(Theme.getColor("actionBarDefaultSubmenuSeparator"));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.getItems().size();
        }
    }

    /* compiled from: MessageMoreActionsView.kt */
    /* renamed from: org.fork.ui.view.MessageMoreActionsView$SubMenuItemView */
    /* loaded from: classes4.dex */
    private final class SubMenuItemView extends ActionBarMenuSubItem {
        final /* synthetic */ MessageMoreActionsView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubMenuItemView(MessageMoreActionsView this$0, int i) {
            super(this$0.getContext(), i == IdFabric$ViewTypes.SUB_ITEM_TOP, i == IdFabric$ViewTypes.SUB_ITEM_BOTTOM);
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.ActionBar.ActionBarMenuSubItem, android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.this$0.getOptionItemHeight(), 1073741824));
        }
    }

    /* compiled from: MessageMoreActionsView.kt */
    /* renamed from: org.fork.ui.view.MessageMoreActionsView$SubMenuItem */
    /* loaded from: classes4.dex */
    public static abstract class SubMenuItem {
        public /* synthetic */ SubMenuItem(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private SubMenuItem() {
        }

        /* compiled from: MessageMoreActionsView.kt */
        /* renamed from: org.fork.ui.view.MessageMoreActionsView$SubMenuItem$Option */
        /* loaded from: classes4.dex */
        public static final class Option extends SubMenuItem {
            private final int iconResId;
            private final String title;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Option) {
                    Option option = (Option) obj;
                    return Intrinsics.areEqual(this.title, option.title) && this.iconResId == option.iconResId;
                }
                return false;
            }

            public int hashCode() {
                return (this.title.hashCode() * 31) + this.iconResId;
            }

            public String toString() {
                return "Option(title=" + this.title + ", iconResId=" + this.iconResId + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Option(String title, int i) {
                super(null);
                Intrinsics.checkNotNullParameter(title, "title");
                this.title = title;
                this.iconResId = i;
            }

            public final int getIconResId() {
                return this.iconResId;
            }

            public final String getTitle() {
                return this.title;
            }
        }

        /* compiled from: MessageMoreActionsView.kt */
        /* renamed from: org.fork.ui.view.MessageMoreActionsView$SubMenuItem$Gap */
        /* loaded from: classes4.dex */
        public static final class Gap extends SubMenuItem {
            public static final Gap INSTANCE = new Gap();

            private Gap() {
                super(null);
            }
        }
    }

    /* compiled from: MessageMoreActionsView.kt */
    /* renamed from: org.fork.ui.view.MessageMoreActionsView$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
