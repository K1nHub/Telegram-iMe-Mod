package com.iMe.fork.p023ui.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.p023ui.view.MessageMoreActionsView;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: MessageMoreActionsView.kt */
/* renamed from: com.iMe.fork.ui.view.MessageMoreActionsView */
/* loaded from: classes3.dex */
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
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.fork.ui.view.MessageMoreActionsView$gapItemHeight$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(AndroidUtilities.m107dp(8));
            }
        });
        this.gapItemHeight$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.fork.ui.view.MessageMoreActionsView$optionItemHeight$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(AndroidUtilities.m107dp(48));
            }
        });
        this.optionItemHeight$delegate = lazy2;
        setTextAndIcon(title, i);
        setRightIcon(C3632R.C3634drawable.msg_arrowright);
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
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: com.iMe.fork.ui.view.MessageMoreActionsView$createListView$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
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
        recyclerListView.setAdapter(new SubMenuItemsAdapter());
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MessageMoreActionsView.kt */
    /* renamed from: com.iMe.fork.ui.view.MessageMoreActionsView$SubMenuItemsAdapter */
    /* loaded from: classes3.dex */
    public final class SubMenuItemsAdapter extends RecyclerListView.SelectionAdapter {
        public SubMenuItemsAdapter() {
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
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
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(MessageMoreActionsView.this.getItems());
            return i == lastIndex ? IdFabric$ViewTypes.SUB_ITEM_BOTTOM : MessageMoreActionsView.this.getItems().get(i) instanceof SubMenuItem.Gap ? IdFabric$ViewTypes.SUB_ITEM_GAP : IdFabric$ViewTypes.SUB_ITEM_MIDDLE;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            FrameLayout subMenuItemView;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.SUB_ITEM_GAP) {
                subMenuItemView = new FrameLayout(MessageMoreActionsView.this.getContext());
                subMenuItemView.setLayoutParams(new RecyclerView.LayoutParams(-1, MessageMoreActionsView.this.getGapItemHeight()));
            } else {
                subMenuItemView = new SubMenuItemView(i);
                subMenuItemView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            }
            return new RecyclerListView.Holder(subMenuItemView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            SubMenuItem subMenuItem = MessageMoreActionsView.this.getItems().get(i);
            if (subMenuItem instanceof SubMenuItem.Option) {
                View view = holder.itemView;
                Intrinsics.checkNotNull(view, "null cannot be cast to non-null type org.telegram.ui.ActionBar.ActionBarMenuSubItem");
                SubMenuItem.Option option = (SubMenuItem.Option) subMenuItem;
                ((ActionBarMenuSubItem) view).setTextAndIcon(option.getTitle(), option.getIconResId());
            } else if (subMenuItem instanceof SubMenuItem.Gap) {
                View view2 = holder.itemView;
                Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type android.widget.FrameLayout");
                ((FrameLayout) view2).setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuSeparator));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return MessageMoreActionsView.this.getItems().size();
        }
    }

    /* compiled from: MessageMoreActionsView.kt */
    /* renamed from: com.iMe.fork.ui.view.MessageMoreActionsView$SubMenuItemView */
    /* loaded from: classes3.dex */
    private final class SubMenuItemView extends ActionBarMenuSubItem {
        public SubMenuItemView(int i) {
            super(MessageMoreActionsView.this.getContext(), i == IdFabric$ViewTypes.SUB_ITEM_TOP, i == IdFabric$ViewTypes.SUB_ITEM_BOTTOM);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.ActionBar.ActionBarMenuSubItem, android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(MessageMoreActionsView.this.getOptionItemHeight(), 1073741824));
        }
    }

    /* compiled from: MessageMoreActionsView.kt */
    /* renamed from: com.iMe.fork.ui.view.MessageMoreActionsView$SubMenuItem */
    /* loaded from: classes3.dex */
    public static abstract class SubMenuItem {
        public /* synthetic */ SubMenuItem(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private SubMenuItem() {
        }

        /* compiled from: MessageMoreActionsView.kt */
        /* renamed from: com.iMe.fork.ui.view.MessageMoreActionsView$SubMenuItem$Option */
        /* loaded from: classes3.dex */
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
        /* renamed from: com.iMe.fork.ui.view.MessageMoreActionsView$SubMenuItem$Gap */
        /* loaded from: classes3.dex */
        public static final class Gap extends SubMenuItem {
            public static final Gap INSTANCE = new Gap();

            private Gap() {
                super(null);
            }
        }
    }

    /* compiled from: MessageMoreActionsView.kt */
    /* renamed from: com.iMe.fork.ui.view.MessageMoreActionsView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
