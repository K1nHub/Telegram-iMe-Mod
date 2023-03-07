package org.telegram.p048ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.util.LongSparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.extractor.p016ts.PsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p048ui.ActionBar.SimpleTextView;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$MessagePeerReaction;
import org.telegram.tgnet.TLRPC$Reaction;
import org.telegram.tgnet.TLRPC$ReactionCount;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messagePeerReaction;
import org.telegram.tgnet.TLRPC$TL_messages_getMessageReactionsList;
import org.telegram.tgnet.TLRPC$TL_messages_messageReactionsList;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$TL_reactionCustomEmoji;
import org.telegram.tgnet.TLRPC$User;
import p034j$.util.Comparator;
/* renamed from: org.telegram.ui.Components.ReactedUsersListView */
/* loaded from: classes6.dex */
public class ReactedUsersListView extends FrameLayout {
    private RecyclerView.Adapter adapter;
    public boolean canLoadMore;
    private int currentAccount;
    ArrayList<TLRPC$InputStickerSet> customEmojiStickerSets;
    ArrayList<ReactionsLayoutInBubble.VisibleReaction> customReactionsEmoji;
    private TLRPC$Reaction filter;
    public boolean isLoaded;
    public boolean isLoading;
    public RecyclerListView listView;
    private FlickerLoadingView loadingView;
    private MessageObject message;
    MessageContainsEmojiButton messageContainsEmojiButton;
    private String offset;
    private OnCustomEmojiSelectedListener onCustomEmojiSelectedListener;
    private OnHeightChangedListener onHeightChangedListener;
    private OnProfileSelectedListener onProfileSelectedListener;
    private LongSparseArray<ArrayList<TLRPC$MessagePeerReaction>> peerReactionMap;
    private int predictiveCount;
    Theme.ResourcesProvider resourcesProvider;
    private List<TLRPC$MessagePeerReaction> userReactions;

    /* renamed from: org.telegram.ui.Components.ReactedUsersListView$OnCustomEmojiSelectedListener */
    /* loaded from: classes6.dex */
    public interface OnCustomEmojiSelectedListener {
        void showCustomEmojiAlert(ReactedUsersListView reactedUsersListView, ArrayList<TLRPC$InputStickerSet> arrayList);
    }

    /* renamed from: org.telegram.ui.Components.ReactedUsersListView$OnHeightChangedListener */
    /* loaded from: classes6.dex */
    public interface OnHeightChangedListener {
        void onHeightChanged(ReactedUsersListView reactedUsersListView, int i);
    }

    /* renamed from: org.telegram.ui.Components.ReactedUsersListView$OnProfileSelectedListener */
    /* loaded from: classes6.dex */
    public interface OnProfileSelectedListener {
        void onProfileSelected(ReactedUsersListView reactedUsersListView, long j, TLRPC$MessagePeerReaction tLRPC$MessagePeerReaction);
    }

    public ReactedUsersListView(final Context context, final Theme.ResourcesProvider resourcesProvider, final int i, MessageObject messageObject, TLRPC$ReactionCount tLRPC$ReactionCount, boolean z) {
        super(context);
        TLRPC$Reaction tLRPC$Reaction;
        this.userReactions = new ArrayList();
        this.peerReactionMap = new LongSparseArray<>();
        this.canLoadMore = true;
        this.customReactionsEmoji = new ArrayList<>();
        this.customEmojiStickerSets = new ArrayList<>();
        this.currentAccount = i;
        this.message = messageObject;
        this.filter = tLRPC$ReactionCount == null ? null : tLRPC$ReactionCount.reaction;
        this.resourcesProvider = resourcesProvider;
        this.predictiveCount = tLRPC$ReactionCount == null ? 6 : tLRPC$ReactionCount.count;
        this.listView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ReactedUsersListView.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public void onMeasure(int i2, int i3) {
                MessageContainsEmojiButton messageContainsEmojiButton = ReactedUsersListView.this.messageContainsEmojiButton;
                if (messageContainsEmojiButton != null) {
                    messageContainsEmojiButton.measure(i2, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), 0));
                }
                super.onMeasure(i2, i3);
                ReactedUsersListView.this.updateHeight();
            }
        };
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        this.listView.setLayoutManager(linearLayoutManager);
        if (z) {
            this.listView.setPadding(0, 0, 0, AndroidUtilities.m50dp(8));
            this.listView.setClipToPadding(false);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.listView.setVerticalScrollbarThumbDrawable(new ColorDrawable(Theme.getColor("listSelectorSDK21")));
        }
        RecyclerListView recyclerListView = this.listView;
        RecyclerView.Adapter adapter = new RecyclerView.Adapter() { // from class: org.telegram.ui.Components.ReactedUsersListView.2
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
                FrameLayout reactedUserHolderView;
                if (i2 == 0) {
                    reactedUserHolderView = new ReactedUserHolderView(context);
                } else {
                    ReactedUsersListView reactedUsersListView = ReactedUsersListView.this;
                    MessageContainsEmojiButton messageContainsEmojiButton = reactedUsersListView.messageContainsEmojiButton;
                    if (messageContainsEmojiButton == null) {
                        reactedUsersListView.updateCustomReactionsButton();
                    } else if (messageContainsEmojiButton.getParent() != null) {
                        ((ViewGroup) ReactedUsersListView.this.messageContainsEmojiButton.getParent()).removeView(ReactedUsersListView.this.messageContainsEmojiButton);
                    }
                    reactedUserHolderView = new FrameLayout(context);
                    View view = new View(context);
                    view.setBackgroundColor(Theme.getColor("actionBarDefaultSubmenuSeparator", resourcesProvider));
                    reactedUserHolderView.addView(view, LayoutHelper.createFrame(-1, 8));
                    reactedUserHolderView.addView(ReactedUsersListView.this.messageContainsEmojiButton, LayoutHelper.createFrame(-1, -1, 0, 0, 8, 0, 0));
                }
                return new RecyclerListView.Holder(reactedUserHolderView);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
                if (viewHolder.getItemViewType() == 0) {
                    ((ReactedUserHolderView) viewHolder.itemView).setUserReaction((TLRPC$MessagePeerReaction) ReactedUsersListView.this.userReactions.get(i2));
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return ReactedUsersListView.this.userReactions.size() + ((ReactedUsersListView.this.customReactionsEmoji.isEmpty() || MessagesController.getInstance(i).premiumLocked) ? 0 : 1);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i2) {
                return i2 < ReactedUsersListView.this.userReactions.size() ? 0 : 1;
            }
        };
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda6
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                ReactedUsersListView.this.lambda$new$0(view, i2);
            }
        });
        this.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ReactedUsersListView.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                ReactedUsersListView reactedUsersListView = ReactedUsersListView.this;
                if (!reactedUsersListView.isLoaded || !reactedUsersListView.canLoadMore || reactedUsersListView.isLoading || linearLayoutManager.findLastVisibleItemPosition() < (ReactedUsersListView.this.adapter.getItemCount() - 1) - ReactedUsersListView.this.getLoadCount()) {
                    return;
                }
                ReactedUsersListView.this.load();
            }
        });
        this.listView.setVerticalScrollBarEnabled(true);
        this.listView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        addView(this.listView, LayoutHelper.createFrame(-1, -1));
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ReactedUsersListView.4
            @Override // org.telegram.p048ui.Components.FlickerLoadingView
            public int getAdditionalHeight() {
                MessageContainsEmojiButton messageContainsEmojiButton;
                if (ReactedUsersListView.this.customReactionsEmoji.isEmpty() || (messageContainsEmojiButton = ReactedUsersListView.this.messageContainsEmojiButton) == null) {
                    return 0;
                }
                return messageContainsEmojiButton.getMeasuredHeight() + AndroidUtilities.m50dp(8);
            }
        };
        this.loadingView = flickerLoadingView;
        flickerLoadingView.setColors("actionBarDefaultSubmenuBackground", "listSelectorSDK21", null);
        this.loadingView.setIsSingleCell(true);
        this.loadingView.setItemsCount(this.predictiveCount);
        addView(this.loadingView, LayoutHelper.createFrame(-1, -1));
        if (!z && (tLRPC$Reaction = this.filter) != null && (tLRPC$Reaction instanceof TLRPC$TL_reactionCustomEmoji) && !MessagesController.getInstance(i).premiumLocked) {
            this.customReactionsEmoji.clear();
            this.customReactionsEmoji.add(ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(this.filter));
            updateCustomReactionsButton();
        }
        this.loadingView.setViewType(this.customReactionsEmoji.isEmpty() ? 16 : 23);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i) {
        OnCustomEmojiSelectedListener onCustomEmojiSelectedListener;
        int itemViewType = this.adapter.getItemViewType(i);
        if (itemViewType == 0) {
            OnProfileSelectedListener onProfileSelectedListener = this.onProfileSelectedListener;
            if (onProfileSelectedListener != null) {
                onProfileSelectedListener.onProfileSelected(this, MessageObject.getPeerId(this.userReactions.get(i).peer_id), this.userReactions.get(i));
            }
        } else if (itemViewType != 1 || (onCustomEmojiSelectedListener = this.onCustomEmojiSelectedListener) == null) {
        } else {
            onCustomEmojiSelectedListener.showCustomEmojiAlert(this, this.customEmojiStickerSets);
        }
    }

    public ReactedUsersListView setSeenUsers(List<TLRPC$User> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (TLRPC$User tLRPC$User : list) {
            if (this.peerReactionMap.get(tLRPC$User.f1633id) == null) {
                TLRPC$TL_messagePeerReaction tLRPC$TL_messagePeerReaction = new TLRPC$TL_messagePeerReaction();
                tLRPC$TL_messagePeerReaction.reaction = null;
                TLRPC$TL_peerUser tLRPC$TL_peerUser = new TLRPC$TL_peerUser();
                tLRPC$TL_messagePeerReaction.peer_id = tLRPC$TL_peerUser;
                tLRPC$TL_peerUser.user_id = tLRPC$User.f1633id;
                ArrayList<TLRPC$MessagePeerReaction> arrayList2 = new ArrayList<>();
                arrayList2.add(tLRPC$TL_messagePeerReaction);
                this.peerReactionMap.put(MessageObject.getPeerId(tLRPC$TL_messagePeerReaction.peer_id), arrayList2);
                arrayList.add(tLRPC$TL_messagePeerReaction);
            }
        }
        this.userReactions.isEmpty();
        this.userReactions.addAll(arrayList);
        Collections.sort(this.userReactions, Comparator.CC.comparingInt(ReactedUsersListView$$ExternalSyntheticLambda3.INSTANCE));
        this.adapter.notifyDataSetChanged();
        updateHeight();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$setSeenUsers$1(TLRPC$MessagePeerReaction tLRPC$MessagePeerReaction) {
        return tLRPC$MessagePeerReaction.reaction != null ? 0 : 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.isLoaded || this.isLoading) {
            return;
        }
        load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void load() {
        this.isLoading = true;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        TLRPC$TL_messages_getMessageReactionsList tLRPC$TL_messages_getMessageReactionsList = new TLRPC$TL_messages_getMessageReactionsList();
        tLRPC$TL_messages_getMessageReactionsList.peer = messagesController.getInputPeer(this.message.getDialogId());
        tLRPC$TL_messages_getMessageReactionsList.f1584id = this.message.getId();
        tLRPC$TL_messages_getMessageReactionsList.limit = getLoadCount();
        TLRPC$Reaction tLRPC$Reaction = this.filter;
        tLRPC$TL_messages_getMessageReactionsList.reaction = tLRPC$Reaction;
        String str = this.offset;
        tLRPC$TL_messages_getMessageReactionsList.offset = str;
        if (tLRPC$Reaction != null) {
            tLRPC$TL_messages_getMessageReactionsList.flags = 1 | tLRPC$TL_messages_getMessageReactionsList.flags;
        }
        if (str != null) {
            tLRPC$TL_messages_getMessageReactionsList.flags |= 2;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getMessageReactionsList, new RequestDelegate() { // from class: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ReactedUsersListView.this.lambda$load$6(tLObject, tLRPC$TL_error);
            }
        }, 64);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$5(final TLObject tLObject) {
        NotificationCenter.getInstance(this.currentAccount).doOnIdle(new Runnable() { // from class: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ReactedUsersListView.this.lambda$load$4(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$6(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ReactedUsersListView.this.lambda$load$5(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$4(TLObject tLObject) {
        if (tLObject instanceof TLRPC$TL_messages_messageReactionsList) {
            TLRPC$TL_messages_messageReactionsList tLRPC$TL_messages_messageReactionsList = (TLRPC$TL_messages_messageReactionsList) tLObject;
            Iterator<TLRPC$User> it = tLRPC$TL_messages_messageReactionsList.users.iterator();
            while (it.hasNext()) {
                MessagesController.getInstance(this.currentAccount).putUser(it.next(), false);
            }
            HashSet hashSet = new HashSet();
            for (int i = 0; i < tLRPC$TL_messages_messageReactionsList.reactions.size(); i++) {
                this.userReactions.add(tLRPC$TL_messages_messageReactionsList.reactions.get(i));
                long peerId = MessageObject.getPeerId(tLRPC$TL_messages_messageReactionsList.reactions.get(i).peer_id);
                ArrayList<TLRPC$MessagePeerReaction> arrayList = this.peerReactionMap.get(peerId);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                int i2 = 0;
                while (i2 < arrayList.size()) {
                    if (arrayList.get(i2).reaction == null) {
                        arrayList.remove(i2);
                        i2--;
                    }
                    i2++;
                }
                ReactionsLayoutInBubble.VisibleReaction fromTLReaction = ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(tLRPC$TL_messages_messageReactionsList.reactions.get(i).reaction);
                if (fromTLReaction.documentId != 0) {
                    hashSet.add(fromTLReaction);
                }
                arrayList.add(tLRPC$TL_messages_messageReactionsList.reactions.get(i));
                this.peerReactionMap.put(peerId, arrayList);
            }
            if (this.filter == null) {
                this.customReactionsEmoji.clear();
                this.customReactionsEmoji.addAll(hashSet);
                updateCustomReactionsButton();
            }
            Collections.sort(this.userReactions, Comparator.CC.comparingInt(ReactedUsersListView$$ExternalSyntheticLambda4.INSTANCE));
            this.adapter.notifyDataSetChanged();
            if (!this.isLoaded) {
                ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(150L);
                duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ReactedUsersListView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ReactedUsersListView.this.lambda$load$3(valueAnimator);
                    }
                });
                duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ReactedUsersListView.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ReactedUsersListView.this.loadingView.setVisibility(8);
                    }
                });
                duration.start();
                updateHeight();
                this.isLoaded = true;
            }
            String str = tLRPC$TL_messages_messageReactionsList.next_offset;
            this.offset = str;
            if (str == null) {
                this.canLoadMore = false;
            }
            this.isLoading = false;
            return;
        }
        this.isLoading = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$load$2(TLRPC$MessagePeerReaction tLRPC$MessagePeerReaction) {
        return tLRPC$MessagePeerReaction.reaction != null ? 0 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$3(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.listView.setAlpha(floatValue);
        this.loadingView.setAlpha(1.0f - floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCustomReactionsButton() {
        this.customEmojiStickerSets.clear();
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.customReactionsEmoji.size(); i++) {
            TLRPC$InputStickerSet inputStickerSet = MessageObject.getInputStickerSet(AnimatedEmojiDrawable.findDocument(this.currentAccount, this.customReactionsEmoji.get(i).documentId));
            if (inputStickerSet != null && !hashSet.contains(Long.valueOf(inputStickerSet.f1517id))) {
                arrayList.add(inputStickerSet);
                hashSet.add(Long.valueOf(inputStickerSet.f1517id));
            }
        }
        if (MessagesController.getInstance(this.currentAccount).premiumLocked) {
            return;
        }
        this.customEmojiStickerSets.addAll(arrayList);
        MessageContainsEmojiButton messageContainsEmojiButton = new MessageContainsEmojiButton(this.currentAccount, getContext(), this.resourcesProvider, arrayList, 1);
        this.messageContainsEmojiButton = messageContainsEmojiButton;
        messageContainsEmojiButton.checkWidth = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeight() {
        if (this.onHeightChangedListener != null) {
            int size = this.userReactions.size();
            if (size == 0) {
                size = this.predictiveCount;
            }
            int m50dp = AndroidUtilities.m50dp(size * 48);
            MessageContainsEmojiButton messageContainsEmojiButton = this.messageContainsEmojiButton;
            if (messageContainsEmojiButton != null) {
                m50dp += messageContainsEmojiButton.getMeasuredHeight() + AndroidUtilities.m50dp(8);
            }
            if (this.listView.getMeasuredHeight() != 0) {
                m50dp = Math.min(this.listView.getMeasuredHeight(), m50dp);
            }
            this.onHeightChangedListener.onHeightChanged(this, m50dp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLoadCount() {
        return this.filter == null ? 100 : 50;
    }

    /* renamed from: org.telegram.ui.Components.ReactedUsersListView$ReactedUserHolderView */
    /* loaded from: classes6.dex */
    private final class ReactedUserHolderView extends FrameLayout {
        AvatarDrawable avatarDrawable;
        BackupImageView avatarView;
        View overlaySelectorView;
        BackupImageView reactView;
        SimpleTextView titleView;

        ReactedUserHolderView(Context context) {
            super(context);
            this.avatarDrawable = new AvatarDrawable();
            setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m50dp(48)));
            BackupImageView backupImageView = new BackupImageView(context);
            this.avatarView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m50dp(32));
            addView(this.avatarView, LayoutHelper.createFrameRelatively(36.0f, 36.0f, 8388627, 8.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            SimpleTextView simpleTextView = new SimpleTextView(this, context, ReactedUsersListView.this) { // from class: org.telegram.ui.Components.ReactedUsersListView.ReactedUserHolderView.1
                @Override // org.telegram.p048ui.ActionBar.SimpleTextView
                public boolean setText(CharSequence charSequence) {
                    return super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), AndroidUtilities.m50dp(14), false));
                }
            };
            this.titleView = simpleTextView;
            NotificationCenter.listenEmojiLoading(simpleTextView);
            this.titleView.setTextSize(16);
            this.titleView.setTextColor(Theme.getColor("actionBarDefaultSubmenuItem"));
            this.titleView.setEllipsizeByGradient(true);
            this.titleView.setImportantForAccessibility(2);
            this.titleView.setPadding(0, AndroidUtilities.m50dp(12), 0, AndroidUtilities.m50dp(12));
            this.titleView.setRightPadding(AndroidUtilities.m50dp(30));
            this.titleView.setTranslationX(LocaleController.isRTL ? AndroidUtilities.m50dp(30) : BitmapDescriptorFactory.HUE_RED);
            addView(this.titleView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, 23, 58.0f, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED));
            BackupImageView backupImageView2 = new BackupImageView(context);
            this.reactView = backupImageView2;
            addView(backupImageView2, LayoutHelper.createFrameRelatively(24.0f, 24.0f, 8388629, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED));
            View view = new View(context);
            this.overlaySelectorView = view;
            view.setBackground(Theme.getSelectorDrawable(false));
            addView(this.overlaySelectorView, LayoutHelper.createFrame(-1, -1));
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x00b2  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void setUserReaction(org.telegram.tgnet.TLRPC$MessagePeerReaction r13) {
            /*
                Method dump skipped, instructions count: 251
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.ReactedUsersListView.ReactedUserHolderView.setUserReaction(org.telegram.tgnet.TLRPC$MessagePeerReaction):void");
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(48), 1073741824));
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
        }
    }

    public ReactedUsersListView setOnProfileSelectedListener(OnProfileSelectedListener onProfileSelectedListener) {
        this.onProfileSelectedListener = onProfileSelectedListener;
        return this;
    }

    public ReactedUsersListView setOnHeightChangedListener(OnHeightChangedListener onHeightChangedListener) {
        this.onHeightChangedListener = onHeightChangedListener;
        return this;
    }

    public void setPredictiveCount(int i) {
        this.predictiveCount = i;
        this.loadingView.setItemsCount(i);
    }

    /* renamed from: org.telegram.ui.Components.ReactedUsersListView$ContainerLinerLayout */
    /* loaded from: classes6.dex */
    public static class ContainerLinerLayout extends LinearLayout {
        public boolean hasHeader;

        public ContainerLinerLayout(Context context) {
            super(context);
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            RecyclerListView recyclerListView = null;
            if (this.hasHeader) {
                i3 = 0;
            } else {
                i3 = 0;
                for (int i4 = 0; i4 < getChildCount(); i4++) {
                    if (getChildAt(i4) instanceof ReactedUsersListView) {
                        recyclerListView = ((ReactedUsersListView) getChildAt(i4)).listView;
                        if (recyclerListView.getAdapter().getItemCount() == recyclerListView.getChildCount()) {
                            int childCount = recyclerListView.getChildCount();
                            for (int i5 = 0; i5 < childCount; i5++) {
                                recyclerListView.getChildAt(i5).measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), 0), i2);
                                if (recyclerListView.getChildAt(i5).getMeasuredWidth() > i3) {
                                    i3 = recyclerListView.getChildAt(i5).getMeasuredWidth();
                                }
                            }
                            i3 += AndroidUtilities.m50dp(16);
                        }
                    }
                }
            }
            int size = View.MeasureSpec.getSize(i);
            if (size < AndroidUtilities.m50dp((int) PsExtractor.VIDEO_STREAM_MASK)) {
                size = AndroidUtilities.m50dp((int) PsExtractor.VIDEO_STREAM_MASK);
            }
            if (size > AndroidUtilities.m50dp(280)) {
                size = AndroidUtilities.m50dp(280);
            }
            if (size < 0) {
                size = 0;
            }
            if (i3 == 0 || i3 >= size) {
                i3 = size;
            }
            if (recyclerListView != null) {
                for (int i6 = 0; i6 < recyclerListView.getChildCount(); i6++) {
                    recyclerListView.getChildAt(i6).measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
                }
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
        }
    }

    public ReactedUsersListView setOnCustomEmojiSelectedListener(OnCustomEmojiSelectedListener onCustomEmojiSelectedListener) {
        this.onCustomEmojiSelectedListener = onCustomEmojiSelectedListener;
        return this;
    }
}
