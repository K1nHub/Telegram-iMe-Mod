package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashSet;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CounterView;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$Reaction;
import org.telegram.tgnet.TLRPC$TL_messages_savedReactionsTags;
import org.telegram.tgnet.TLRPC$TL_reactionCount;
import org.telegram.tgnet.TLRPC$TL_savedReactionTag;
/* renamed from: org.telegram.ui.Components.SearchTagsList */
/* loaded from: classes6.dex */
public class SearchTagsList extends BlurredFrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private final Adapter adapter;
    private long chosen;
    private final int currentAccount;
    private final ArrayList<Item> items;
    public final RecyclerListView listView;
    private final ArrayList<Item> oldItems;
    private final Theme.ResourcesProvider resourcesProvider;
    private float shownT;

    protected void setFilter(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SearchTagsList$Item */
    /* loaded from: classes6.dex */
    public static class Item {
        int count;
        ReactionsLayoutInBubble.VisibleReaction reaction;

        private Item() {
        }

        public static Item get(ReactionsLayoutInBubble.VisibleReaction visibleReaction, int i) {
            Item item = new Item();
            item.reaction = visibleReaction;
            item.count = i;
            return item;
        }

        public long hash() {
            return this.reaction.hash;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Item) {
                Item item = (Item) obj;
                return this.count == item.count && this.reaction.hash == item.reaction.hash;
            }
            return false;
        }
    }

    public SearchTagsList(Context context, SizeNotifierFrameLayout sizeNotifierFrameLayout, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context, sizeNotifierFrameLayout);
        this.oldItems = new ArrayList<>();
        this.items = new ArrayList<>();
        this.currentAccount = i;
        this.resourcesProvider = resourcesProvider;
        RecyclerListView recyclerListView = new RecyclerListView(this, context, resourcesProvider) { // from class: org.telegram.ui.Components.SearchTagsList.1
            @Override // org.telegram.p043ui.Components.RecyclerListView
            public Integer getSelectorColor(int i2) {
                return 0;
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setPadding(AndroidUtilities.m108dp(5.66f), 0, AndroidUtilities.m108dp(5.66f), 0);
        recyclerListView.setClipToPadding(false);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        linearLayoutManager.setOrientation(0);
        recyclerListView.setLayoutManager(linearLayoutManager);
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1));
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.SearchTagsList$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                SearchTagsList.this.lambda$new$1(view, i2);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Components.SearchTagsList.2
            @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator
            public boolean animateMove(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, int i2, int i3, int i4, int i5) {
                int adapterPosition = viewHolder.getAdapterPosition();
                if (adapterPosition >= 0 && adapterPosition < SearchTagsList.this.items.size()) {
                    Item item = (Item) SearchTagsList.this.items.get(adapterPosition);
                    TagButton tagButton = (TagButton) viewHolder.itemView;
                    boolean chosen = tagButton.setChosen(SearchTagsList.this.chosen == item.hash(), true);
                    boolean count = tagButton.setCount(item.count);
                    if (chosen || count) {
                        return true;
                    }
                }
                return super.animateMove(viewHolder, itemHolderInfo, i2, i3, i4, i5);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void animateMoveImpl(RecyclerView.ViewHolder viewHolder, DefaultItemAnimator.MoveInfo moveInfo) {
                super.animateMoveImpl(viewHolder, moveInfo);
            }
        };
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(320L);
        recyclerListView.setItemAnimator(defaultItemAnimator);
        MediaDataController.getInstance(i).loadSavedReactions(false);
        updateTags();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, int i) {
        if (i < 0 || i >= this.items.size()) {
            return;
        }
        this.listView.forAllChild(new Consumer() { // from class: org.telegram.ui.Components.SearchTagsList$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                SearchTagsList.lambda$new$0((View) obj);
            }
        });
        long hash = this.items.get(i).hash();
        if (this.chosen == hash) {
            this.chosen = 0L;
            setFilter(null);
            return;
        }
        this.chosen = hash;
        setFilter(this.items.get(i).reaction);
        ((TagButton) view).setChosen(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(View view) {
        if (view instanceof TagButton) {
            ((TagButton) view).setChosen(false, true);
        }
    }

    public void clear() {
        this.listView.forAllChild(new Consumer() { // from class: org.telegram.ui.Components.SearchTagsList$$ExternalSyntheticLambda1
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                SearchTagsList.lambda$clear$2((View) obj);
            }
        });
        this.chosen = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$clear$2(View view) {
        if (view instanceof TagButton) {
            ((TagButton) view).setChosen(false, true);
        }
    }

    public void attach() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.savedReactionTagsUpdate);
    }

    public void detach() {
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.savedReactionTagsUpdate);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.savedReactionTagsUpdate) {
            updateTags();
        }
    }

    public void updateTags() {
        HashSet hashSet = new HashSet();
        this.oldItems.clear();
        this.oldItems.addAll(this.items);
        this.items.clear();
        TLRPC$TL_messages_savedReactionsTags savedReactionTags = MessagesController.getInstance(this.currentAccount).getSavedReactionTags();
        if (savedReactionTags != null) {
            for (int i = 0; i < savedReactionTags.tags.size(); i++) {
                TLRPC$TL_savedReactionTag tLRPC$TL_savedReactionTag = savedReactionTags.tags.get(i);
                ReactionsLayoutInBubble.VisibleReaction fromTLReaction = ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(tLRPC$TL_savedReactionTag.reaction);
                if (!hashSet.contains(Long.valueOf(fromTLReaction.hash))) {
                    this.items.add(Item.get(fromTLReaction, tLRPC$TL_savedReactionTag.count));
                    hashSet.add(Long.valueOf(fromTLReaction.hash));
                }
            }
        }
        DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: org.telegram.ui.Components.SearchTagsList.3
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getOldListSize() {
                return SearchTagsList.this.oldItems.size();
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getNewListSize() {
                return SearchTagsList.this.items.size();
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areItemsTheSame(int i2, int i3) {
                return ((Item) SearchTagsList.this.oldItems.get(i2)).equals(SearchTagsList.this.items.get(i3));
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areContentsTheSame(int i2, int i3) {
                return ((Item) SearchTagsList.this.oldItems.get(i2)).hash() == ((Item) SearchTagsList.this.items.get(i3)).hash();
            }
        }).dispatchUpdatesTo(this.adapter);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(40), 1073741824));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.shownT < 0.5f) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setShown(float f) {
        this.shownT = f;
        RecyclerListView recyclerListView = this.listView;
        recyclerListView.setPivotX(recyclerListView.getWidth() / 2.0f);
        this.listView.setPivotY(BitmapDescriptorFactory.HUE_RED);
        this.listView.setScaleX(AndroidUtilities.lerp(0.8f, 1.0f, f));
        this.listView.setScaleY(AndroidUtilities.lerp(0.8f, 1.0f, f));
        this.listView.setAlpha(f);
        invalidate();
    }

    public boolean shown() {
        return this.shownT > 0.5f;
    }

    public int getCurrentHeight() {
        return (int) (getMeasuredHeight() * this.shownT);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.BlurredFrameLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        canvas.save();
        canvas.clipRect(0, 0, getWidth(), getCurrentHeight());
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SearchTagsList$Adapter */
    /* loaded from: classes6.dex */
    public class Adapter extends RecyclerListView.SelectionAdapter {
        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            SearchTagsList searchTagsList = SearchTagsList.this;
            return new RecyclerListView.Holder(new TagButton(searchTagsList.getContext()));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (i < 0 || i >= SearchTagsList.this.items.size()) {
                return;
            }
            Item item = (Item) SearchTagsList.this.items.get(i);
            ((TagButton) viewHolder.itemView).set(item.reaction.toTLReaction(), Integer.valueOf(item.count));
            ((TagButton) viewHolder.itemView).setChosen(item.hash() == SearchTagsList.this.chosen, false);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SearchTagsList.this.items.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SearchTagsList$TagButton */
    /* loaded from: classes6.dex */
    public class TagButton extends View {
        private boolean attached;
        private boolean chosen;
        private int count;
        private AnimatedFloat progress;
        public ReactionsLayoutInBubble.ReactionButton reactionButton;

        public TagButton(Context context) {
            super(context);
            this.progress = new AnimatedFloat(this, 0L, 260L, CubicBezierInterpolator.EASE_OUT_QUINT);
            ScaleStateListAnimator.apply(this);
        }

        public void set(TLRPC$Reaction tLRPC$Reaction, Integer num) {
            TLRPC$TL_reactionCount tLRPC$TL_reactionCount = new TLRPC$TL_reactionCount();
            tLRPC$TL_reactionCount.reaction = tLRPC$Reaction;
            int intValue = num == null ? 0 : num.intValue();
            this.count = intValue;
            tLRPC$TL_reactionCount.count = intValue;
            ReactionsLayoutInBubble.ReactionButton reactionButton = new ReactionsLayoutInBubble.ReactionButton(null, SearchTagsList.this.currentAccount, this, tLRPC$TL_reactionCount, false, SearchTagsList.this.resourcesProvider) { // from class: org.telegram.ui.Components.SearchTagsList.TagButton.1
                @Override // org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble.ReactionButton
                protected int getCacheType() {
                    return 9;
                }

                @Override // org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble.ReactionButton
                protected void updateColors(float f) {
                    this.lastDrawnTextColor = ColorUtils.blendARGB(this.fromTextColor, Theme.getColor(TagButton.this.chosen ? Theme.key_chat_inReactionButtonTextSelected : Theme.key_windowBackgroundWhiteGrayText2), f);
                    this.lastDrawnBackgroundColor = ColorUtils.blendARGB(this.fromBackgroundColor, Theme.getColor(TagButton.this.chosen ? Theme.key_chat_inReactionButtonBackground : Theme.key_actionBarActionModeReaction, SearchTagsList.this.resourcesProvider), f);
                }

                @Override // org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble.ReactionButton
                protected boolean drawCounter() {
                    return this.count > 0 || this.counterDrawable.countChangeProgress != 1.0f;
                }
            };
            this.reactionButton = reactionButton;
            reactionButton.width = AndroidUtilities.m108dp(44.33f);
            this.reactionButton.counterDrawable.setCount(tLRPC$TL_reactionCount.count, false);
            ReactionsLayoutInBubble.ReactionButton reactionButton2 = this.reactionButton;
            CounterView.CounterDrawable counterDrawable = reactionButton2.counterDrawable;
            if (counterDrawable != null && reactionButton2.count > 0) {
                reactionButton2.width = (int) (reactionButton2.width + counterDrawable.textPaint.measureText(reactionButton2.countText));
            }
            this.reactionButton.height = AndroidUtilities.m107dp(28);
            ReactionsLayoutInBubble.ReactionButton reactionButton3 = this.reactionButton;
            reactionButton3.choosen = this.chosen;
            if (this.attached) {
                reactionButton3.attach();
            }
        }

        public boolean setChosen(boolean z, boolean z2) {
            if (this.chosen == z) {
                return false;
            }
            this.chosen = z;
            ReactionsLayoutInBubble.ReactionButton reactionButton = this.reactionButton;
            if (reactionButton != null) {
                reactionButton.choosen = z;
                if (z2) {
                    reactionButton.fromTextColor = reactionButton.lastDrawnTextColor;
                    reactionButton.fromBackgroundColor = reactionButton.lastDrawnBackgroundColor;
                    this.progress.set(BitmapDescriptorFactory.HUE_RED, true);
                } else {
                    this.progress.set(1.0f, true);
                }
                invalidate();
            }
            return true;
        }

        public boolean setCount(int i) {
            ReactionsLayoutInBubble.ReactionButton reactionButton;
            if (this.count == i || (reactionButton = this.reactionButton) == null) {
                return false;
            }
            reactionButton.animateFromWidth = reactionButton.width;
            reactionButton.count = i;
            reactionButton.width = AndroidUtilities.m108dp(44.33f);
            this.reactionButton.counterDrawable.setCount(i, true);
            ReactionsLayoutInBubble.ReactionButton reactionButton2 = this.reactionButton;
            CounterView.CounterDrawable counterDrawable = reactionButton2.counterDrawable;
            if (counterDrawable != null && reactionButton2.count > 0) {
                reactionButton2.width = (int) (reactionButton2.width + counterDrawable.textPaint.measureText(reactionButton2.countText));
            }
            this.progress.set(BitmapDescriptorFactory.HUE_RED, true);
            invalidate();
            return true;
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int m108dp = AndroidUtilities.m108dp(8.67f);
            ReactionsLayoutInBubble.ReactionButton reactionButton = this.reactionButton;
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(m108dp + (reactionButton != null ? reactionButton.width : AndroidUtilities.m108dp(44.33f)), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(40), 1073741824));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            this.reactionButton.draw(canvas, (getWidth() - this.reactionButton.width) / 2.0f, (getHeight() - this.reactionButton.height) / 2.0f, this.progress.set(1.0f), 1.0f, false);
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.attached) {
                return;
            }
            ReactionsLayoutInBubble.ReactionButton reactionButton = this.reactionButton;
            if (reactionButton != null) {
                reactionButton.attach();
            }
            this.attached = true;
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.attached) {
                ReactionsLayoutInBubble.ReactionButton reactionButton = this.reactionButton;
                if (reactionButton != null) {
                    reactionButton.detach();
                }
                this.attached = false;
            }
        }
    }
}
