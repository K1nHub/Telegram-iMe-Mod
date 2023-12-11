package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import android.util.LongSparseArray;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.ChatListItemAnimator;
import androidx.recyclerview.widget.GridLayoutManagerFixed;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatMessageSharedResources;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagePreviewParams;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Cells.TextSelectionHelper;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.MessagePreviewView;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.ViewPagerFixed;
import org.telegram.p043ui.PinchToZoomHelper;
import org.telegram.p043ui.Stories.recorder.HintView2;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$KeyboardButton;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$ReactionCount;
import org.telegram.tgnet.TLRPC$TL_webPagePending;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$WebPage;
/* renamed from: org.telegram.ui.Components.MessagePreviewView */
/* loaded from: classes6.dex */
public class MessagePreviewView extends FrameLayout {
    Runnable changeBoundsRunnable;
    final ChatActivity chatActivity;
    private final int currentAccount;
    TLRPC$Chat currentChat;
    TLRPC$User currentUser;
    private final ArrayList<MessageObject.GroupedMessages> drawingGroups;
    private HintView2 editorHint;
    private boolean isFirstUpdateMessages;
    boolean isLandscapeMode;
    private ActionBarMenuSubItem mediaItem;
    final MessagePreviewParams messagePreviewParams;
    ValueAnimator offsetsAnimator;
    private ActionBarMenuSubItem previewItem;
    private final ResourcesDelegate resourcesProvider;
    boolean returnSendersNames;
    private boolean returnSendersNamesByMedia;
    private boolean returnSendersNamesByPreview;
    TLRPC$Peer sendAsPeer;
    final boolean showOutdatedQuote;
    boolean showing;
    TabsView tabsView;
    ViewPagerFixed viewPager;

    /* renamed from: org.telegram.ui.Components.MessagePreviewView$ResourcesDelegate */
    /* loaded from: classes6.dex */
    public interface ResourcesDelegate extends Theme.ResourcesProvider {
        Drawable getWallpaperDrawable();

        boolean isWallpaperMotion();
    }

    private void updateColors() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void didDeletePressed() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void didEditPressed() {
    }

    protected void didOpenEditorPressed() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void didRenamePressed() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void didSendPressed() {
    }

    protected void onDismiss(boolean z) {
    }

    protected void onFullDismiss(boolean z) {
    }

    protected void onQuoteSelectedPart() {
    }

    protected void onTransitionAnimationProgress(boolean z, float f) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeForward() {
    }

    protected void removeLink() {
    }

    protected void removeQuote() {
    }

    protected void removeReply() {
    }

    protected void selectAnotherChat(boolean z) {
    }

    public void setSendAsPeer(TLRPC$Peer tLRPC$Peer) {
        this.sendAsPeer = tLRPC$Peer;
        int i = 0;
        while (true) {
            View[] viewArr = this.viewPager.viewPages;
            if (i >= viewArr.length) {
                return;
            }
            if (viewArr[i] != null && ((Page) viewArr[i]).currentTab == 1) {
                ((Page) viewArr[i]).updateMessages();
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.MessagePreviewView$Page */
    /* loaded from: classes6.dex */
    public class Page extends FrameLayout {
        C5180ActionBar actionBar;
        Adapter adapter;
        private int buttonsHeight;
        ToggleButton changePositionBtn;
        ToggleButton changeSizeBtn;
        FrameLayout changeSizeBtnContainer;
        GridLayoutManagerFixed chatLayoutManager;
        RecyclerListView chatListView;
        SizeNotifierFrameLayout chatPreviewContainer;
        int chatTopOffset;
        ActionBarMenuSubItem clearQuoteButton;
        public int currentTab;
        int currentTopOffset;
        float currentYOffset;
        ActionBarMenuSubItem deleteReplyButton;
        private boolean firstAttach;
        private boolean firstLayout;
        ChatListItemAnimator itemAnimator;
        int lastSize;
        ActionBarPopupWindow.ActionBarPopupWindowLayout menu;
        int menuBack;
        MessagePreviewParams.Messages messages;
        ActionBarMenuSubItem quoteAnotherChatButton;
        ActionBarMenuSubItem quoteButton;
        private AnimatorSet quoteSwitcher;
        Rect rect;
        ActionBarMenuSubItem replyAnotherChatButton;
        int scrollToOffset;
        ChatMessageSharedResources sharedResources;
        TextSelectionHelper.ChatListTextSelectionHelper textSelectionHelper;
        View textSelectionOverlay;
        boolean toQuote;
        boolean updateAfterAnimations;
        private boolean updateScroll;
        ToggleButton videoChangeSizeBtn;
        float yOffset;

        /* JADX INFO: Access modifiers changed from: private */
        public MessageObject.GroupedMessages getValidGroupedMessage(MessageObject messageObject) {
            return getValidGroupedMessage(messageObject, false);
        }

        private void updateMediaItem() {
            if (MessagePreviewView.this.mediaItem == null) {
                return;
            }
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            if (messagePreviewView.messagePreviewParams.isMediaHidden) {
                messagePreviewView.mediaItem.setTextAndIcon(LocaleController.getInternalString(C3632R.string.forwarding_editor_show_media), C3632R.C3634drawable.msg_spoiler);
            } else {
                messagePreviewView.mediaItem.setTextAndIcon(LocaleController.getInternalString(C3632R.string.forwarding_editor_hide_media), C3632R.C3634drawable.msg_spoiler_off);
            }
        }

        private void updatePreviewItem() {
            if (MessagePreviewView.this.previewItem == null) {
                return;
            }
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            if (messagePreviewView.messagePreviewParams.isPreviewHidden) {
                messagePreviewView.previewItem.setTextAndIcon(LocaleController.getInternalString(C3632R.string.forwarding_editor_show_preview), C3632R.C3634drawable.msg_screencast);
            } else {
                messagePreviewView.previewItem.setTextAndIcon(LocaleController.getInternalString(C3632R.string.forwarding_editor_hide_preview), C3632R.C3634drawable.msg_screencast_off);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void switchToQuote(final boolean z, boolean z2) {
            if (MessagePreviewView.this.showOutdatedQuote) {
                z = false;
            }
            if (z2 && this.toQuote == z) {
                return;
            }
            this.toQuote = z;
            AnimatorSet animatorSet = this.quoteSwitcher;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.quoteSwitcher = null;
            }
            if (z2) {
                this.quoteSwitcher = new AnimatorSet();
                ArrayList arrayList = new ArrayList();
                ActionBarMenuSubItem actionBarMenuSubItem = this.quoteButton;
                if (actionBarMenuSubItem != null) {
                    actionBarMenuSubItem.setVisibility(0);
                    ActionBarMenuSubItem actionBarMenuSubItem2 = this.quoteButton;
                    Property property = View.ALPHA;
                    float[] fArr = new float[1];
                    fArr[0] = !z ? 1.0f : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuSubItem2, property, fArr));
                }
                ActionBarMenuSubItem actionBarMenuSubItem3 = this.clearQuoteButton;
                if (actionBarMenuSubItem3 != null) {
                    actionBarMenuSubItem3.setVisibility(0);
                    ActionBarMenuSubItem actionBarMenuSubItem4 = this.clearQuoteButton;
                    Property property2 = View.ALPHA;
                    float[] fArr2 = new float[1];
                    fArr2[0] = z ? 1.0f : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuSubItem4, property2, fArr2));
                }
                ActionBarMenuSubItem actionBarMenuSubItem5 = this.replyAnotherChatButton;
                if (actionBarMenuSubItem5 != null) {
                    actionBarMenuSubItem5.setVisibility(0);
                    ActionBarMenuSubItem actionBarMenuSubItem6 = this.replyAnotherChatButton;
                    Property property3 = View.ALPHA;
                    float[] fArr3 = new float[1];
                    fArr3[0] = !z ? 1.0f : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuSubItem6, property3, fArr3));
                }
                ActionBarMenuSubItem actionBarMenuSubItem7 = this.quoteAnotherChatButton;
                if (actionBarMenuSubItem7 != null) {
                    actionBarMenuSubItem7.setVisibility(0);
                    ActionBarMenuSubItem actionBarMenuSubItem8 = this.quoteAnotherChatButton;
                    Property property4 = View.ALPHA;
                    float[] fArr4 = new float[1];
                    fArr4[0] = z ? 1.0f : 0.0f;
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuSubItem8, property4, fArr4));
                }
                this.quoteSwitcher.playTogether(arrayList);
                this.quoteSwitcher.setDuration(360L);
                this.quoteSwitcher.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.quoteSwitcher.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        Page.this.quoteSwitcher = null;
                        Page.this.switchToQuote(z, false);
                    }
                });
                this.quoteSwitcher.start();
                return;
            }
            ActionBarMenuSubItem actionBarMenuSubItem9 = this.quoteButton;
            if (actionBarMenuSubItem9 != null) {
                actionBarMenuSubItem9.setAlpha(!z ? 1.0f : 0.0f);
                this.quoteButton.setVisibility(!z ? 0 : 4);
            }
            ActionBarMenuSubItem actionBarMenuSubItem10 = this.clearQuoteButton;
            if (actionBarMenuSubItem10 != null) {
                actionBarMenuSubItem10.setAlpha(z ? 1.0f : 0.0f);
                this.clearQuoteButton.setVisibility(z ? 0 : 4);
            }
            ActionBarMenuSubItem actionBarMenuSubItem11 = this.replyAnotherChatButton;
            if (actionBarMenuSubItem11 != null) {
                actionBarMenuSubItem11.setAlpha(!z ? 1.0f : 0.0f);
                this.replyAnotherChatButton.setVisibility(!z ? 0 : 4);
            }
            ActionBarMenuSubItem actionBarMenuSubItem12 = this.quoteAnotherChatButton;
            if (actionBarMenuSubItem12 != null) {
                actionBarMenuSubItem12.setAlpha(z ? 1.0f : 0.0f);
                this.quoteAnotherChatButton.setVisibility(z ? 0 : 4);
            }
        }

        public boolean isReplyMessageCell(ChatMessageCell chatMessageCell) {
            MessageObject replyMessage;
            if (chatMessageCell == null || chatMessageCell.getMessageObject() == null || (replyMessage = getReplyMessage()) == null) {
                return false;
            }
            return chatMessageCell.getMessageObject() == replyMessage || chatMessageCell.getMessageObject().getId() == replyMessage.getId();
        }

        public ChatMessageCell getReplyMessageCell() {
            MessageObject replyMessage = getReplyMessage();
            if (replyMessage == null) {
                return null;
            }
            for (int i = 0; i < this.chatListView.getChildCount(); i++) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) this.chatListView.getChildAt(i);
                if (chatMessageCell.getMessageObject() != null && (chatMessageCell.getMessageObject() == replyMessage || chatMessageCell.getMessageObject().getId() == replyMessage.getId())) {
                    return chatMessageCell;
                }
            }
            return null;
        }

        public MessageObject getReplyMessage() {
            return getReplyMessage(null);
        }

        public MessageObject getReplyMessage(MessageObject messageObject) {
            MessageObject.GroupedMessages valueAt;
            MessagePreviewParams.Messages messages = MessagePreviewView.this.messagePreviewParams.replyMessage;
            if (messages != null) {
                LongSparseArray<MessageObject.GroupedMessages> longSparseArray = messages.groupedMessagesMap;
                if (longSparseArray != null && longSparseArray.size() > 0 && (valueAt = MessagePreviewView.this.messagePreviewParams.replyMessage.groupedMessagesMap.valueAt(0)) != null) {
                    if (valueAt.isDocuments) {
                        if (messageObject != null) {
                            return messageObject;
                        }
                        ChatActivity.ReplyQuote replyQuote = MessagePreviewView.this.messagePreviewParams.quote;
                        if (replyQuote != null) {
                            return replyQuote.message;
                        }
                    }
                    return valueAt.captionMessage;
                }
                return MessagePreviewView.this.messagePreviewParams.replyMessage.messages.get(0);
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:125:0x0870  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x0877  */
        /* JADX WARN: Removed duplicated region for block: B:132:0x0894  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x08a8  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Page(android.content.Context r33, int r34) {
            /*
                Method dump skipped, instructions count: 2275
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.MessagePreviewView.Page.<init>(org.telegram.ui.Components.MessagePreviewView, android.content.Context, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$0(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                MessagePreviewView.this.dismiss(true);
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Components.MessagePreviewView$Page$7 */
        /* loaded from: classes6.dex */
        public class C51937 extends ChatListItemAnimator {
            Runnable finishRunnable;
            int scrollAnimationIndex;

            C51937(ChatActivity chatActivity, RecyclerListView recyclerListView, Theme.ResourcesProvider resourcesProvider, MessagePreviewView messagePreviewView) {
                super(chatActivity, recyclerListView, resourcesProvider);
                this.scrollAnimationIndex = -1;
            }

            @Override // androidx.recyclerview.widget.ChatListItemAnimator
            public void onAnimationStart() {
                super.onAnimationStart();
                AndroidUtilities.cancelRunOnUIThread(MessagePreviewView.this.changeBoundsRunnable);
                MessagePreviewView.this.changeBoundsRunnable.run();
                if (this.scrollAnimationIndex == -1) {
                    this.scrollAnimationIndex = NotificationCenter.getInstance(MessagePreviewView.this.currentAccount).setAnimationInProgress(this.scrollAnimationIndex, null, false);
                }
                Runnable runnable = this.finishRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                    this.finishRunnable = null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.ChatListItemAnimator, androidx.recyclerview.widget.DefaultItemAnimator
            public void onAllAnimationsDone() {
                super.onAllAnimationsDone();
                Runnable runnable = this.finishRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$7$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagePreviewView.Page.C51937.this.lambda$onAllAnimationsDone$0();
                    }
                };
                this.finishRunnable = runnable2;
                AndroidUtilities.runOnUIThread(runnable2);
                Page page = Page.this;
                if (page.updateAfterAnimations) {
                    page.updateAfterAnimations = false;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$7$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            MessagePreviewView.Page.C51937.this.lambda$onAllAnimationsDone$1();
                        }
                    });
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onAllAnimationsDone$0() {
                if (this.scrollAnimationIndex != -1) {
                    NotificationCenter.getInstance(MessagePreviewView.this.currentAccount).onAnimationFinish(this.scrollAnimationIndex);
                    this.scrollAnimationIndex = -1;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onAllAnimationsDone$1() {
                Page.this.updateMessages();
            }

            @Override // androidx.recyclerview.widget.ChatListItemAnimator, androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
            public void endAnimations() {
                super.endAnimations();
                Runnable runnable = this.finishRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$7$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagePreviewView.Page.C51937.this.lambda$endAnimations$2();
                    }
                };
                this.finishRunnable = runnable2;
                AndroidUtilities.runOnUIThread(runnable2);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$endAnimations$2() {
                if (this.scrollAnimationIndex != -1) {
                    NotificationCenter.getInstance(MessagePreviewView.this.currentAccount).onAnimationFinish(this.scrollAnimationIndex);
                    this.scrollAnimationIndex = -1;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Components.MessagePreviewView$Page$10 */
        /* loaded from: classes6.dex */
        public class C518210 extends GridLayoutManagerFixed {
            @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
            public boolean shouldLayoutChildFromOpositeSide(View view) {
                return false;
            }

            C518210(Context context, int i, int i2, boolean z, MessagePreviewView messagePreviewView) {
                super(context, i, i2, z);
            }

            @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
            protected boolean hasSiblingChild(int i) {
                byte b;
                MessageObject messageObject = Page.this.messages.previewMessages.get(i);
                MessageObject.GroupedMessages validGroupedMessage = Page.this.getValidGroupedMessage(messageObject);
                if (validGroupedMessage != null) {
                    MessageObject.GroupedMessagePosition groupedMessagePosition = validGroupedMessage.positions.get(messageObject);
                    if (groupedMessagePosition.minX != groupedMessagePosition.maxX && (b = groupedMessagePosition.minY) == groupedMessagePosition.maxY && b != 0) {
                        int size = validGroupedMessage.posArray.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            MessageObject.GroupedMessagePosition groupedMessagePosition2 = validGroupedMessage.posArray.get(i2);
                            if (groupedMessagePosition2 != groupedMessagePosition) {
                                byte b2 = groupedMessagePosition2.minY;
                                byte b3 = groupedMessagePosition.minY;
                                if (b2 <= b3 && groupedMessagePosition2.maxY >= b3) {
                                    return true;
                                }
                            }
                        }
                    }
                }
                return false;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
                if (BuildVars.DEBUG_PRIVATE_VERSION) {
                    super.onLayoutChildren(recycler, state);
                    return;
                }
                try {
                    super.onLayoutChildren(recycler, state);
                } catch (Exception e) {
                    FileLog.m99e(e);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$10$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            MessagePreviewView.Page.C518210.this.lambda$onLayoutChildren$0();
                        }
                    });
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onLayoutChildren$0() {
                Page.this.adapter.notifyDataSetChanged();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1() {
            switchToQuote(true, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) {
            MessagePreviewView.this.messagePreviewParams.quote = null;
            this.textSelectionHelper.clear();
            switchToQuote(false, false);
            this.menu.getSwipeBack().closeForeground();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view) {
            if (getReplyMessage() != null) {
                TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper = this.textSelectionHelper;
                if (chatListTextSelectionHelper.selectionEnd - chatListTextSelectionHelper.selectionStart > MessagesController.getInstance(MessagePreviewView.this.currentAccount).quoteLengthMax) {
                    showQuoteLengthError();
                    return;
                }
                MessageObject replyMessage = getReplyMessage(this.textSelectionHelper.getSelectedCell() != null ? this.textSelectionHelper.getSelectedCell().getMessageObject() : null);
                MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = this.textSelectionHelper;
                int i = chatListTextSelectionHelper2.selectionStart;
                messagePreviewParams.quoteStart = i;
                int i2 = chatListTextSelectionHelper2.selectionEnd;
                messagePreviewParams.quoteEnd = i2;
                messagePreviewParams.quote = ChatActivity.ReplyQuote.from(replyMessage, i, i2);
                MessagePreviewView.this.onQuoteSelectedPart();
                MessagePreviewView.this.dismiss(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            MessagePreviewParams messagePreviewParams = messagePreviewView.messagePreviewParams;
            if (messagePreviewParams.quote != null && !messagePreviewView.showOutdatedQuote) {
                messagePreviewParams.quote = null;
                this.textSelectionHelper.clear();
                switchToQuote(false, true);
                updateSubtitle(true);
                return;
            }
            TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper = this.textSelectionHelper;
            if (chatListTextSelectionHelper.selectionEnd - chatListTextSelectionHelper.selectionStart > MessagesController.getInstance(messagePreviewView.currentAccount).quoteLengthMax) {
                showQuoteLengthError();
                return;
            }
            MessageObject replyMessage = getReplyMessage();
            if (replyMessage != null) {
                if (this.textSelectionHelper.isInSelectionMode()) {
                    MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                    TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = this.textSelectionHelper;
                    messagePreviewParams2.quoteStart = chatListTextSelectionHelper2.selectionStart;
                    messagePreviewParams2.quoteEnd = chatListTextSelectionHelper2.selectionEnd;
                    MessageObject replyMessage2 = getReplyMessage(chatListTextSelectionHelper2.getSelectedCell() != null ? this.textSelectionHelper.getSelectedCell().getMessageObject() : null);
                    MessagePreviewParams messagePreviewParams3 = MessagePreviewView.this.messagePreviewParams;
                    messagePreviewParams3.quote = ChatActivity.ReplyQuote.from(replyMessage2, messagePreviewParams3.quoteStart, messagePreviewParams3.quoteEnd);
                    MessagePreviewView.this.onQuoteSelectedPart();
                    MessagePreviewView.this.dismiss(true);
                    return;
                }
                MessagePreviewView messagePreviewView2 = MessagePreviewView.this;
                MessagePreviewParams messagePreviewParams4 = messagePreviewView2.messagePreviewParams;
                messagePreviewParams4.quoteStart = 0;
                messagePreviewParams4.quoteEnd = Math.min(MessagesController.getInstance(messagePreviewView2.currentAccount).quoteLengthMax, replyMessage.messageOwner.message.length());
                MessagePreviewParams messagePreviewParams5 = MessagePreviewView.this.messagePreviewParams;
                messagePreviewParams5.quote = ChatActivity.ReplyQuote.from(replyMessage, messagePreviewParams5.quoteStart, messagePreviewParams5.quoteEnd);
                TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper3 = this.textSelectionHelper;
                ChatMessageCell replyMessageCell = getReplyMessageCell();
                MessagePreviewParams messagePreviewParams6 = MessagePreviewView.this.messagePreviewParams;
                chatListTextSelectionHelper3.select(replyMessageCell, messagePreviewParams6.quoteStart, messagePreviewParams6.quoteEnd);
                if (!MessagePreviewView.this.showOutdatedQuote) {
                    this.menu.getSwipeBack().openForeground(this.menuBack);
                }
                switchToQuote(true, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(View view) {
            MessagePreviewView.this.selectAnotherChat(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6(View view) {
            MessagePreviewView.this.selectAnotherChat(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$7(View view) {
            MessagePreviewView.this.dismiss(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$8(View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            if (messagePreviewView.showOutdatedQuote) {
                messagePreviewView.removeQuote();
            } else {
                messagePreviewView.removeReply();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$9(ToggleButton toggleButton, ToggleButton toggleButton2, View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            MessagePreviewParams messagePreviewParams = messagePreviewView.messagePreviewParams;
            if (messagePreviewParams.isMediaHidden) {
                if (messagePreviewView.returnSendersNames && messagePreviewView.returnSendersNamesByMedia && MessagePreviewView.this.returnSendersNamesByPreview) {
                    MessagePreviewView.this.messagePreviewParams.hideForwardSendersName = false;
                    toggleButton.setState(false, true);
                }
                MessagePreviewView.this.returnSendersNamesByMedia = false;
            } else if (!messagePreviewParams.hideForwardSendersName) {
                messagePreviewParams.hideForwardSendersName = true;
                toggleButton.setState(true, true);
                MessagePreviewView.this.returnSendersNamesByMedia = true;
            }
            MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
            messagePreviewParams2.isMediaHidden = !messagePreviewParams2.isMediaHidden;
            updateMediaItem();
            MessagePreviewParams messagePreviewParams3 = MessagePreviewView.this.messagePreviewParams;
            if (messagePreviewParams3.isMediaHidden && messagePreviewParams3.hideCaption) {
                messagePreviewParams3.hideCaption = false;
                toggleButton2.setState(false, true);
            }
            updateMessages();
            updateSubtitle(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$10(ToggleButton toggleButton, View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            MessagePreviewParams messagePreviewParams = messagePreviewView.messagePreviewParams;
            if (messagePreviewParams.isPreviewHidden) {
                if (messagePreviewView.returnSendersNames && messagePreviewView.returnSendersNamesByMedia && MessagePreviewView.this.returnSendersNamesByPreview) {
                    MessagePreviewView.this.messagePreviewParams.hideForwardSendersName = false;
                    toggleButton.setState(false, true);
                }
                MessagePreviewView.this.returnSendersNamesByPreview = false;
            } else if (!messagePreviewParams.hideForwardSendersName) {
                messagePreviewParams.hideForwardSendersName = true;
                toggleButton.setState(true, true);
                MessagePreviewView.this.returnSendersNamesByPreview = true;
            }
            MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
            messagePreviewParams2.isPreviewHidden = !messagePreviewParams2.isPreviewHidden;
            updatePreviewItem();
            updateMessages();
            updateSubtitle(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$11(View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            if (messagePreviewView.showing) {
                messagePreviewView.dismiss(true);
                final MessagePreviewView messagePreviewView2 = MessagePreviewView.this;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda28
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagePreviewView.this.didEditPressed();
                    }
                }, 250L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$12(View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            if (messagePreviewView.showing) {
                messagePreviewView.dismiss(true);
                final MessagePreviewView messagePreviewView2 = MessagePreviewView.this;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda29
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagePreviewView.this.didRenamePressed();
                    }
                }, 250L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$13(View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            if (messagePreviewView.showing) {
                messagePreviewView.dismiss(true);
                final MessagePreviewView messagePreviewView2 = MessagePreviewView.this;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda27
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagePreviewView.this.didDeletePressed();
                    }
                }, 250L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$14(View view) {
            MessagePreviewView.this.selectAnotherChat(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$15(View view) {
            MessagePreviewView.this.dismiss(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$16(View view) {
            MessagePreviewView.this.didSendPressed();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$17(View view) {
            MessagePreviewView.this.removeForward();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$18(ToggleButton toggleButton, ToggleButton toggleButton2, View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            MessagePreviewParams messagePreviewParams = messagePreviewView.messagePreviewParams;
            messagePreviewParams.hideForwardSendersName = !messagePreviewParams.hideForwardSendersName;
            messagePreviewView.returnSendersNames = false;
            messagePreviewView.returnSendersNamesByMedia = messagePreviewView.returnSendersNamesByPreview = false;
            MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
            if (!messagePreviewParams2.hideForwardSendersName) {
                messagePreviewParams2.hideCaption = false;
                if (toggleButton != null) {
                    toggleButton.setState(false, true);
                }
            }
            toggleButton2.setState(MessagePreviewView.this.messagePreviewParams.hideForwardSendersName, true);
            MessagePreviewParams messagePreviewParams3 = MessagePreviewView.this.messagePreviewParams;
            if (!messagePreviewParams3.hideForwardSendersName) {
                messagePreviewParams3.isPreviewHidden = false;
                messagePreviewParams3.isMediaHidden = false;
                updateMediaItem();
                updatePreviewItem();
            }
            updateMessages();
            updateSubtitle(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$19(ToggleButton toggleButton, ToggleButton toggleButton2, View view) {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            MessagePreviewParams messagePreviewParams = messagePreviewView.messagePreviewParams;
            boolean z = !messagePreviewParams.hideCaption;
            messagePreviewParams.hideCaption = z;
            if (z) {
                if (!messagePreviewParams.hideForwardSendersName) {
                    messagePreviewParams.hideForwardSendersName = true;
                    messagePreviewView.returnSendersNames = true;
                }
                if (messagePreviewParams.isMediaHidden) {
                    messagePreviewParams.isMediaHidden = false;
                    updateMediaItem();
                }
            } else {
                if (messagePreviewView.returnSendersNames && messagePreviewView.returnSendersNamesByMedia && MessagePreviewView.this.returnSendersNamesByPreview) {
                    MessagePreviewView.this.messagePreviewParams.hideForwardSendersName = false;
                }
                MessagePreviewView.this.returnSendersNames = false;
            }
            toggleButton.setState(MessagePreviewView.this.messagePreviewParams.hideCaption, true);
            toggleButton2.setState(MessagePreviewView.this.messagePreviewParams.hideForwardSendersName, true);
            updateMessages();
            updateSubtitle(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$20(View view) {
            MessagePreviewView.this.dismiss(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$21(View view) {
            MessagePreviewView.this.removeLink();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$22(View view) {
            TLRPC$Message tLRPC$Message;
            TLRPC$MessageMedia tLRPC$MessageMedia;
            TLRPC$Message tLRPC$Message2;
            TLRPC$MessageMedia tLRPC$MessageMedia2;
            MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
            if (messagePreviewParams.hasMedia) {
                boolean z = !messagePreviewParams.webpageSmall;
                messagePreviewParams.webpageSmall = z;
                this.changeSizeBtn.setState(z, true);
                this.videoChangeSizeBtn.setState(MessagePreviewView.this.messagePreviewParams.webpageSmall, true);
                if (this.messages.messages.size() > 0 && (tLRPC$Message2 = this.messages.messages.get(0).messageOwner) != null && (tLRPC$MessageMedia2 = tLRPC$Message2.media) != null) {
                    boolean z2 = MessagePreviewView.this.messagePreviewParams.webpageSmall;
                    tLRPC$MessageMedia2.force_small_media = z2;
                    tLRPC$MessageMedia2.force_large_media = !z2;
                }
                if (this.messages.previewMessages.size() > 0 && (tLRPC$Message = this.messages.previewMessages.get(0).messageOwner) != null && (tLRPC$MessageMedia = tLRPC$Message.media) != null) {
                    boolean z3 = MessagePreviewView.this.messagePreviewParams.webpageSmall;
                    tLRPC$MessageMedia.force_small_media = z3;
                    tLRPC$MessageMedia.force_large_media = !z3;
                }
                updateMessages();
                this.updateScroll = true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$23(View view) {
            TLRPC$Message tLRPC$Message;
            TLRPC$Message tLRPC$Message2;
            MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
            boolean z = !messagePreviewParams.webpageTop;
            messagePreviewParams.webpageTop = z;
            this.changePositionBtn.setState(!z, true);
            if (this.messages.messages.size() > 0 && (tLRPC$Message2 = this.messages.messages.get(0).messageOwner) != null) {
                tLRPC$Message2.invert_media = MessagePreviewView.this.messagePreviewParams.webpageTop;
            }
            if (this.messages.previewMessages.size() > 0 && (tLRPC$Message = this.messages.previewMessages.get(0).messageOwner) != null) {
                tLRPC$Message.invert_media = MessagePreviewView.this.messagePreviewParams.webpageTop;
            }
            updateMessages();
            this.updateScroll = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void checkScroll() {
            if (this.updateScroll) {
                if (this.chatListView.computeVerticalScrollRange() > this.chatListView.computeVerticalScrollExtent()) {
                    postDelayed(new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda26
                        @Override // java.lang.Runnable
                        public final void run() {
                            MessagePreviewView.Page.this.lambda$checkScroll$24();
                        }
                    }, 0L);
                }
                this.updateScroll = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkScroll$24() {
            if (MessagePreviewView.this.messagePreviewParams.webpageTop) {
                RecyclerListView recyclerListView = this.chatListView;
                recyclerListView.smoothScrollBy(0, -recyclerListView.computeVerticalScrollOffset(), 250, ChatListItemAnimator.DEFAULT_INTERPOLATOR);
                return;
            }
            RecyclerListView recyclerListView2 = this.chatListView;
            recyclerListView2.smoothScrollBy(0, recyclerListView2.computeVerticalScrollRange() - (this.chatListView.computeVerticalScrollOffset() + this.chatListView.computeVerticalScrollExtent()), 250, ChatListItemAnimator.DEFAULT_INTERPOLATOR);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showQuoteLengthError() {
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            BulletinFactory.m63of(messagePreviewView, messagePreviewView.resourcesProvider).createSimpleBulletin(C3632R.raw.error, LocaleController.getString(C3632R.string.QuoteMaxError), LocaleController.getString(C3632R.string.QuoteMaxErrorMessage)).show();
        }

        public void bind() {
            updateMessages();
            updateSubtitle(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateSubtitle(boolean z) {
            String string;
            if (MessagePreviewView.this.messagePreviewParams.isTemplatePreview()) {
                this.actionBar.setTitle(MessagePreviewView.this.messagePreviewParams.template.getName(), false);
                return;
            }
            int i = this.currentTab;
            if (i != 1) {
                if (i != 0) {
                    if (i == 2) {
                        this.actionBar.setTitle(LocaleController.getString(C3632R.string.MessageOptionsLinkTitle), z);
                        this.actionBar.setSubtitle(LocaleController.getString(C3632R.string.MessageOptionsLinkSubtitle), z);
                        return;
                    }
                    return;
                }
                MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                if (messagePreviewParams.quote != null && messagePreviewParams.replyMessage.hasText) {
                    this.actionBar.setTitle(LocaleController.getString(C3632R.string.PreviewQuoteUpdate), z);
                    this.actionBar.setSubtitle(LocaleController.getString(C3632R.string.PreviewQuoteUpdateSubtitle), z);
                    return;
                }
                this.actionBar.setTitle(LocaleController.getString(C3632R.string.MessageOptionsReplyTitle), z);
                this.actionBar.setSubtitle(MessagePreviewView.this.messagePreviewParams.replyMessage.hasText ? LocaleController.getString(C3632R.string.MessageOptionsReplySubtitle) : "", z);
                return;
            }
            C5180ActionBar c5180ActionBar = this.actionBar;
            MessagePreviewParams.Messages messages = MessagePreviewView.this.messagePreviewParams.forwardMessages;
            c5180ActionBar.setTitle(LocaleController.formatPluralString("PreviewForwardMessagesCount", messages == null ? 0 : messages.selectedIds.size(), new Object[0]), z);
            MessagePreviewView messagePreviewView = MessagePreviewView.this;
            TLRPC$User tLRPC$User = messagePreviewView.currentUser;
            if (tLRPC$User == null && messagePreviewView.currentChat == null) {
                return;
            }
            MessagePreviewParams messagePreviewParams2 = messagePreviewView.messagePreviewParams;
            if (!messagePreviewParams2.hasSenders) {
                if (messagePreviewParams2.willSeeSenders) {
                    if (tLRPC$User != null) {
                        string = LocaleController.formatString("ForwardPreviewSendersNameVisible", C3632R.string.ForwardPreviewSendersNameVisible, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name));
                    } else if (ChatObject.isChannel(messagePreviewView.currentChat) && !MessagePreviewView.this.currentChat.megagroup) {
                        string = LocaleController.getString("ForwardPreviewSendersNameVisibleChannel", C3632R.string.ForwardPreviewSendersNameVisibleChannel);
                    } else {
                        string = LocaleController.getString("ForwardPreviewSendersNameVisibleGroup", C3632R.string.ForwardPreviewSendersNameVisibleGroup);
                    }
                } else if (tLRPC$User != null) {
                    string = LocaleController.formatString("ForwardPreviewSendersNameVisible", C3632R.string.ForwardPreviewSendersNameVisible, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name));
                } else if (ChatObject.isChannel(messagePreviewView.currentChat) && !MessagePreviewView.this.currentChat.megagroup) {
                    string = LocaleController.getString(C3632R.string.ForwardPreviewSendersNameHiddenChannel);
                } else {
                    string = LocaleController.getString(C3632R.string.ForwardPreviewSendersNameHiddenGroup);
                }
            } else if (messagePreviewParams2.hideForwardSendersName) {
                if (tLRPC$User != null) {
                    string = LocaleController.formatString("ForwardPreviewSendersNameHidden", C3632R.string.ForwardPreviewSendersNameHidden, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name));
                } else if (ChatObject.isChannel(messagePreviewView.currentChat) && !MessagePreviewView.this.currentChat.megagroup) {
                    string = LocaleController.getString(C3632R.string.ForwardPreviewSendersNameHiddenChannel);
                } else {
                    string = LocaleController.getString(C3632R.string.ForwardPreviewSendersNameHiddenGroup);
                }
            } else if (tLRPC$User != null) {
                string = LocaleController.formatString("ForwardPreviewSendersNameVisible", C3632R.string.ForwardPreviewSendersNameVisible, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name));
            } else if (ChatObject.isChannel(messagePreviewView.currentChat) && !MessagePreviewView.this.currentChat.megagroup) {
                string = LocaleController.getString(C3632R.string.ForwardPreviewSendersNameVisibleChannel);
            } else {
                string = LocaleController.getString(C3632R.string.ForwardPreviewSendersNameVisibleGroup);
            }
            this.actionBar.setSubtitle(string, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00cb, code lost:
            if (r5.wasPreviewHidden != r5.isPreviewHidden) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00e8, code lost:
            if (r5.wasMediaHidden != r5.isMediaHidden) goto L47;
         */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0172  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0188 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void updateMessages() {
            /*
                Method dump skipped, instructions count: 495
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.MessagePreviewView.Page.updateMessages():void");
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            MessagePreviewView.this.isLandscapeMode = View.MeasureSpec.getSize(i) > View.MeasureSpec.getSize(i2);
            this.buttonsHeight = 0;
            this.menu.measure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 0));
            int i3 = this.buttonsHeight;
            int measuredHeight = this.menu.getMeasuredHeight();
            Rect rect = this.rect;
            this.buttonsHeight = Math.max(i3, measuredHeight + rect.top + rect.bottom);
            ((ViewGroup.MarginLayoutParams) this.chatListView.getLayoutParams()).topMargin = C3704ActionBar.getCurrentActionBarHeight();
            if (MessagePreviewView.this.isLandscapeMode) {
                this.chatPreviewContainer.getLayoutParams().height = -1;
                ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).topMargin = AndroidUtilities.m104dp(8);
                ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).bottomMargin = AndroidUtilities.m104dp(8);
                this.chatPreviewContainer.getLayoutParams().width = (int) Math.min(View.MeasureSpec.getSize(i), Math.max(AndroidUtilities.m104dp(340), View.MeasureSpec.getSize(i) * 0.6f));
                this.menu.getLayoutParams().height = -1;
            } else {
                ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).topMargin = 0;
                ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).bottomMargin = 0;
                this.chatPreviewContainer.getLayoutParams().height = (View.MeasureSpec.getSize(i2) - AndroidUtilities.m104dp(6)) - this.buttonsHeight;
                if (this.chatPreviewContainer.getLayoutParams().height < View.MeasureSpec.getSize(i2) * 0.5f) {
                    this.chatPreviewContainer.getLayoutParams().height = (int) (View.MeasureSpec.getSize(i2) * 0.5f);
                }
                this.chatPreviewContainer.getLayoutParams().width = -1;
                this.menu.getLayoutParams().height = View.MeasureSpec.getSize(i2) - this.chatPreviewContainer.getLayoutParams().height;
            }
            int size = (View.MeasureSpec.getSize(i) + View.MeasureSpec.getSize(i2)) << 16;
            if (this.lastSize != size) {
                for (int i4 = 0; i4 < this.messages.previewMessages.size(); i4++) {
                    if (MessagePreviewView.this.isLandscapeMode) {
                        this.messages.previewMessages.get(i4).parentWidth = this.chatPreviewContainer.getLayoutParams().width;
                    } else {
                        this.messages.previewMessages.get(i4).parentWidth = View.MeasureSpec.getSize(i) - AndroidUtilities.m104dp(16);
                    }
                    this.messages.previewMessages.get(i4).resetLayout();
                    this.messages.previewMessages.get(i4).forceUpdate = true;
                    Adapter adapter = this.adapter;
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                }
                this.firstLayout = true;
            }
            this.lastSize = size;
            super.onMeasure(i, i2);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            updatePositions();
            this.firstLayout = false;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            updateSelection();
            this.firstAttach = true;
            this.firstLayout = true;
        }

        public void updateSelection() {
            MessageObject messageObject;
            if (this.currentTab == 0) {
                TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper = this.textSelectionHelper;
                if (chatListTextSelectionHelper.selectionEnd - chatListTextSelectionHelper.selectionStart > MessagesController.getInstance(MessagePreviewView.this.currentAccount).quoteLengthMax) {
                    return;
                }
                MessageObject replyMessage = getReplyMessage(this.textSelectionHelper.getSelectedCell() != null ? this.textSelectionHelper.getSelectedCell().getMessageObject() : null);
                if (MessagePreviewView.this.messagePreviewParams.quote != null && this.textSelectionHelper.isInSelectionMode()) {
                    MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                    TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper2 = this.textSelectionHelper;
                    messagePreviewParams.quoteStart = chatListTextSelectionHelper2.selectionStart;
                    messagePreviewParams.quoteEnd = chatListTextSelectionHelper2.selectionEnd;
                    if (replyMessage != null && ((messageObject = messagePreviewParams.quote.message) == null || messageObject.getId() != replyMessage.getId())) {
                        MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                        messagePreviewParams2.quote = ChatActivity.ReplyQuote.from(replyMessage, messagePreviewParams2.quoteStart, messagePreviewParams2.quoteEnd);
                        MessagePreviewView.this.onQuoteSelectedPart();
                    }
                }
                this.textSelectionHelper.clear();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.currentTab == 0) {
                AndroidUtilities.forEachViews((RecyclerView) this.chatListView, (Consumer<View>) new Consumer() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda24
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        MessagePreviewView.Page.this.lambda$onAttachedToWindow$25((View) obj);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAttachedToWindow$25(View view) {
            this.adapter.onViewAttachedToWindow(this.chatListView.getChildViewHolder(view));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updatePositions() {
            final int i = this.chatTopOffset;
            final float f = this.yOffset;
            if (!MessagePreviewView.this.isLandscapeMode) {
                int measuredHeight = this.chatListView.getMeasuredHeight();
                int i2 = 0;
                for (int i3 = 0; i3 < this.chatListView.getChildCount(); i3++) {
                    View childAt = this.chatListView.getChildAt(i3);
                    if (this.chatListView.getChildAdapterPosition(childAt) != -1) {
                        measuredHeight = Math.min(measuredHeight, childAt.getTop());
                        i2++;
                    }
                }
                MessagePreviewParams.Messages messages = this.messages;
                if (messages == null || i2 == 0 || i2 > messages.previewMessages.size()) {
                    this.chatTopOffset = 0;
                } else {
                    int max = Math.max(0, measuredHeight - AndroidUtilities.m104dp(4));
                    this.chatTopOffset = max;
                    this.chatTopOffset = Math.min((max + (this.chatListView.getMeasuredHeight() - this.chatTopOffset)) - ((int) (((AndroidUtilities.displaySize.y * 0.8f) - this.buttonsHeight) - AndroidUtilities.m104dp(8))), this.chatTopOffset);
                }
                float m104dp = (AndroidUtilities.m104dp(8) + (((getMeasuredHeight() - AndroidUtilities.m104dp(16)) - ((this.buttonsHeight - AndroidUtilities.m104dp(8)) + (this.chatPreviewContainer.getMeasuredHeight() - this.chatTopOffset))) / 2.0f)) - this.chatTopOffset;
                this.yOffset = m104dp;
                if (m104dp > AndroidUtilities.m104dp(8)) {
                    this.yOffset = AndroidUtilities.m104dp(8);
                }
                this.menu.setTranslationX(getMeasuredWidth() - this.menu.getMeasuredWidth());
            } else {
                this.yOffset = BitmapDescriptorFactory.HUE_RED;
                this.chatTopOffset = 0;
                this.menu.setTranslationX(this.chatListView.getMeasuredWidth() + AndroidUtilities.m104dp(8));
            }
            boolean z = this.firstLayout;
            if (z || (this.chatTopOffset == i && this.yOffset == f)) {
                if (z) {
                    float f2 = this.yOffset;
                    this.currentYOffset = f2;
                    int i4 = this.chatTopOffset;
                    this.currentTopOffset = i4;
                    setOffset(f2, i4);
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator = MessagePreviewView.this.offsetsAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            MessagePreviewView.this.offsetsAnimator = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            MessagePreviewView.this.offsetsAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.MessagePreviewView$Page$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MessagePreviewView.Page.this.lambda$updatePositions$26(i, f, valueAnimator2);
                }
            });
            MessagePreviewView.this.offsetsAnimator.setDuration(250L);
            MessagePreviewView.this.offsetsAnimator.setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR);
            MessagePreviewView.this.offsetsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.15
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Page page = Page.this;
                    MessagePreviewView.this.offsetsAnimator = null;
                    page.setOffset(page.yOffset, page.chatTopOffset);
                }
            });
            AndroidUtilities.runOnUIThread(MessagePreviewView.this.changeBoundsRunnable, 50L);
            this.currentTopOffset = i;
            this.currentYOffset = f;
            setOffset(f, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updatePositions$26(int i, float f, ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            float f2 = 1.0f - floatValue;
            int i2 = (int) ((i * f2) + (this.chatTopOffset * floatValue));
            this.currentTopOffset = i2;
            float f3 = (f * f2) + (this.yOffset * floatValue);
            this.currentYOffset = f3;
            setOffset(f3, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOffset(float f, int i) {
            if (MessagePreviewView.this.isLandscapeMode) {
                this.actionBar.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                if (Build.VERSION.SDK_INT >= 21) {
                    this.chatPreviewContainer.invalidateOutline();
                }
                this.chatPreviewContainer.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                this.menu.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                if (MessagePreviewView.this.editorHint != null) {
                    MessagePreviewView.this.editorHint.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                }
            } else {
                float f2 = i;
                this.actionBar.setTranslationY(f2);
                if (Build.VERSION.SDK_INT >= 21) {
                    this.chatPreviewContainer.invalidateOutline();
                }
                this.chatPreviewContainer.setTranslationY(f);
                this.menu.setTranslationY((f + this.chatPreviewContainer.getMeasuredHeight()) - AndroidUtilities.m104dp(2));
                if (MessagePreviewView.this.editorHint != null) {
                    MessagePreviewView.this.editorHint.setTranslationY(f2);
                }
            }
            this.textSelectionOverlay.setTranslationX(this.chatPreviewContainer.getX());
            this.textSelectionOverlay.setTranslationY(this.chatPreviewContainer.getY());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateLinkHighlight(ChatMessageCell chatMessageCell) {
            CharacterStyle characterStyle;
            TLRPC$WebPage tLRPC$WebPage;
            if (this.currentTab == 2) {
                MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                if (!messagePreviewParams.singleLink && (characterStyle = messagePreviewParams.currentLink) != null && (tLRPC$WebPage = messagePreviewParams.webpage) != null && !(tLRPC$WebPage instanceof TLRPC$TL_webPagePending)) {
                    chatMessageCell.setHighlightedSpan(characterStyle);
                    return;
                }
            }
            chatMessageCell.setHighlightedSpan(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.MessagePreviewView$Page$Adapter */
        /* loaded from: classes6.dex */
        public class Adapter extends RecyclerView.Adapter {
            private Adapter() {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                Context context = viewGroup.getContext();
                Page page = Page.this;
                ChatMessageCell chatMessageCell = new ChatMessageCell(context, false, page.sharedResources, MessagePreviewView.this.resourcesProvider) { // from class: org.telegram.ui.Components.MessagePreviewView.Page.Adapter.1
                    @Override // org.telegram.p043ui.Cells.ChatMessageCell, android.view.View, org.telegram.p043ui.Cells.TextSelectionHelper.SelectableView
                    public void invalidate() {
                        super.invalidate();
                        Page.this.chatListView.invalidate();
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell, android.view.View
                    public void invalidate(int i2, int i3, int i4, int i5) {
                        super.invalidate(i2, i3, i4, i5);
                        Page.this.chatListView.invalidate();
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell
                    public void setMessageObject(MessageObject messageObject, MessageObject.GroupedMessages groupedMessages, boolean z, boolean z2) {
                        super.setMessageObject(messageObject, groupedMessages, z, z2);
                        Page.this.updateLinkHighlight(this);
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // org.telegram.p043ui.Cells.ChatMessageCell, android.view.ViewGroup, android.view.View
                    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                        super.onLayout(z, i2, i3, i4, i5);
                        Page.this.updateLinkHighlight(this);
                    }
                };
                chatMessageCell.setClipChildren(false);
                chatMessageCell.setClipToPadding(false);
                chatMessageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.Components.MessagePreviewView.Page.Adapter.2
                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean canDrawOutboundsContent() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canDrawOutboundsContent(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didLongPress(ChatMessageCell chatMessageCell2, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPress(this, chatMessageCell2, f, f2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didLongPressBotButton(ChatMessageCell chatMessageCell2, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressBotButton(this, chatMessageCell2, tLRPC$KeyboardButton);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didLongPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC$Chat tLRPC$Chat, int i2, float f, float f2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressChannelAvatar(this, chatMessageCell2, tLRPC$Chat, i2, f, f2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC$User tLRPC$User, float f, float f2, boolean z) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressUserAvatar(this, chatMessageCell2, tLRPC$User, f, f2, z);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressAdditionalSideButton(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAdditionalSideButton(this, chatMessageCell2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean didPressAnimatedEmoji(ChatMessageCell chatMessageCell2, AnimatedEmojiSpan animatedEmojiSpan) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAnimatedEmoji(this, chatMessageCell2, animatedEmojiSpan);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressBotButton(ChatMessageCell chatMessageCell2, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBotButton(this, chatMessageCell2, tLRPC$KeyboardButton);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressCancelSendButton(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCancelSendButton(this, chatMessageCell2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC$Chat tLRPC$Chat, int i2, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelAvatar(this, chatMessageCell2, tLRPC$Chat, i2, f, f2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressCodeCopy(ChatMessageCell chatMessageCell2, MessageObject.TextLayoutBlock textLayoutBlock) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCodeCopy(this, chatMessageCell2, textLayoutBlock);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressCommentButton(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCommentButton(this, chatMessageCell2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell2, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressExtendedMediaPreview(this, chatMessageCell2, tLRPC$KeyboardButton);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressForkTranscribeButton(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressForkTranscribeButton(this, chatMessageCell2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressGiveawayChatButton(ChatMessageCell chatMessageCell2, int i2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGiveawayChatButton(this, chatMessageCell2, i2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressHiddenForward(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHiddenForward(this, chatMessageCell2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressHint(ChatMessageCell chatMessageCell2, int i2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHint(this, chatMessageCell2, i2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressImage(ChatMessageCell chatMessageCell2, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressImage(this, chatMessageCell2, f, f2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressInstantButton(ChatMessageCell chatMessageCell2, int i2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressInstantButton(this, chatMessageCell2, i2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressOther(ChatMessageCell chatMessageCell2, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressOther(this, chatMessageCell2, f, f2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressReaction(ChatMessageCell chatMessageCell2, TLRPC$ReactionCount tLRPC$ReactionCount, boolean z) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReaction(this, chatMessageCell2, tLRPC$ReactionCount, z);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressReplyMessage(ChatMessageCell chatMessageCell2, int i2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReplyMessage(this, chatMessageCell2, i2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressSideButton(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSideButton(this, chatMessageCell2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressSponsoredClose() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredClose(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressTime(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTime(this, chatMessageCell2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressTopicButton(ChatMessageCell chatMessageCell2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTopicButton(this, chatMessageCell2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC$User tLRPC$User, float f, float f2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserAvatar(this, chatMessageCell2, tLRPC$User, f, f2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressUserStatus(ChatMessageCell chatMessageCell2, TLRPC$User tLRPC$User, TLRPC$Document tLRPC$Document) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserStatus(this, chatMessageCell2, tLRPC$User, tLRPC$Document);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressViaBot(ChatMessageCell chatMessageCell2, String str) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBot(this, chatMessageCell2, str);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressViaBotNotInline(ChatMessageCell chatMessageCell2, long j) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBotNotInline(this, chatMessageCell2, j);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressVoteButtons(ChatMessageCell chatMessageCell2, ArrayList arrayList, int i2, int i3, int i4) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressVoteButtons(this, chatMessageCell2, arrayList, i2, i3, i4);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didPressWebPage(ChatMessageCell chatMessageCell2, TLRPC$WebPage tLRPC$WebPage, String str, boolean z) {
                        Browser.openUrl(chatMessageCell2.getContext(), str);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void didStartVideoStream(MessageObject messageObject) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$didStartVideoStream(this, messageObject);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ String getAdminRank(long j) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getAdminRank(this, j);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ PinchToZoomHelper getPinchToZoomHelper() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getPinchToZoomHelper(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ String getProgressLoadingBotButtonUrl(ChatMessageCell chatMessageCell2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingBotButtonUrl(this, chatMessageCell2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public boolean hasSelectedMessages() {
                        return true;
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void invalidateBlur() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$invalidateBlur(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean isAllowForkTranscribe() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isAllowForkTranscribe(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean isInPreviewMode() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isInPreviewMode(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean isLandscape() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isLandscape(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean isReplyOrSelf() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isReplyOrSelf(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean keyboardIsOpened() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$keyboardIsOpened(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean needDrawTranslateButton(ChatMessageCell chatMessageCell2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needDrawTranslateButton(this, chatMessageCell2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void needOpenWebView(MessageObject messageObject, String str, String str2, String str3, String str4, int i2, int i3) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$needOpenWebView(this, messageObject, str, str2, str3, str4, i2, i3);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean needPlayMessage(MessageObject messageObject, boolean z) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needPlayMessage(this, messageObject, z);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void needReloadPolls() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$needReloadPolls(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void needShowPremiumBulletin(int i2) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$needShowPremiumBulletin(this, i2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean onAccessibilityAction(int i2, Bundle bundle) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$onAccessibilityAction(this, i2, bundle);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void onDiceFinished() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$onDiceFinished(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void runWithActivationCheck(Callbacks$Callback callbacks$Callback) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$runWithActivationCheck(this, callbacks$Callback);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void setShouldNotRepeatSticker(MessageObject messageObject) {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$setShouldNotRepeatSticker(this, messageObject);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean shouldDrawThreadProgress(ChatMessageCell chatMessageCell2) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawThreadProgress(this, chatMessageCell2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean shouldRepeatSticker(MessageObject messageObject) {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldRepeatSticker(this, messageObject);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ boolean shouldShowTopicButton() {
                        return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldShowTopicButton(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public /* synthetic */ void videoTimerReached() {
                        ChatMessageCell.ChatMessageCellDelegate.CC.$default$videoTimerReached(this);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public TextSelectionHelper.ChatListTextSelectionHelper getTextSelectionHelper() {
                        return Page.this.textSelectionHelper;
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public boolean canPerformActions() {
                        Page page2 = Page.this;
                        if (page2.currentTab == 2) {
                            MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                            if (!messagePreviewParams.singleLink && !messagePreviewParams.isSecret) {
                                return true;
                            }
                        }
                        return false;
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public void didPressUrl(ChatMessageCell chatMessageCell2, CharacterStyle characterStyle, boolean z) {
                        Page page2 = Page.this;
                        if (page2.currentTab != 2 || MessagePreviewView.this.messagePreviewParams.currentLink == characterStyle || chatMessageCell2.getMessageObject() == null || !(characterStyle instanceof URLSpan)) {
                            return;
                        }
                        String url = ((URLSpan) characterStyle).getURL();
                        MessagePreviewView messagePreviewView = MessagePreviewView.this;
                        MessagePreviewParams messagePreviewParams = messagePreviewView.messagePreviewParams;
                        messagePreviewParams.currentLink = characterStyle;
                        messagePreviewParams.webpage = null;
                        ChatActivity chatActivity = messagePreviewView.chatActivity;
                        if (chatActivity != null && url != null) {
                            chatActivity.searchLinks(url, true);
                        }
                        Page.this.updateLinkHighlight(chatMessageCell2);
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public CharacterStyle getProgressLoadingLink(ChatMessageCell chatMessageCell2) {
                        Page page2 = Page.this;
                        if (page2.currentTab == 2) {
                            MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                            if (messagePreviewParams.singleLink) {
                                return null;
                            }
                            return messagePreviewParams.currentLink;
                        }
                        return null;
                    }

                    @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public boolean isProgressLoading(ChatMessageCell chatMessageCell2, int i2) {
                        Page page2 = Page.this;
                        if (page2.currentTab == 2 && i2 == 1) {
                            MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                            if (messagePreviewParams.singleLink) {
                                return false;
                            }
                            TLRPC$WebPage tLRPC$WebPage = messagePreviewParams.webpage;
                            return tLRPC$WebPage == null || (tLRPC$WebPage instanceof TLRPC$TL_webPagePending);
                        }
                        return false;
                    }
                });
                return new RecyclerListView.Holder(chatMessageCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                MessagePreviewParams.Messages messages = Page.this.messages;
                if (messages == null) {
                    return;
                }
                ChatMessageCell chatMessageCell = (ChatMessageCell) viewHolder.itemView;
                chatMessageCell.setInvalidateSpoilersParent(messages.hasSpoilers);
                chatMessageCell.setParentViewSize(Page.this.chatListView.getMeasuredWidth(), Page.this.chatListView.getMeasuredHeight());
                int id = chatMessageCell.getMessageObject() != null ? chatMessageCell.getMessageObject().getId() : 0;
                Page page = Page.this;
                if (page.currentTab == 2) {
                    MessagePreviewView.this.messagePreviewParams.checkCurrentLink(page.messages.previewMessages.get(i));
                }
                MessagePreviewParams.Messages messages2 = Page.this.messages;
                chatMessageCell.setMessageObject(Page.this.messages.previewMessages.get(i), messages2.groupedMessagesMap.get(messages2.previewMessages.get(i).getGroupId()), true, true);
                if (Page.this.currentTab == 1) {
                    chatMessageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate(this) { // from class: org.telegram.ui.Components.MessagePreviewView.Page.Adapter.3
                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean canDrawOutboundsContent() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canDrawOutboundsContent(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean canPerformActions() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canPerformActions(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didLongPress(ChatMessageCell chatMessageCell2, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPress(this, chatMessageCell2, f, f2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didLongPressBotButton(ChatMessageCell chatMessageCell2, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressBotButton(this, chatMessageCell2, tLRPC$KeyboardButton);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean didLongPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC$Chat tLRPC$Chat, int i2, float f, float f2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressChannelAvatar(this, chatMessageCell2, tLRPC$Chat, i2, f, f2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC$User tLRPC$User, float f, float f2, boolean z) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressUserAvatar(this, chatMessageCell2, tLRPC$User, f, f2, z);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressAdditionalSideButton(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAdditionalSideButton(this, chatMessageCell2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean didPressAnimatedEmoji(ChatMessageCell chatMessageCell2, AnimatedEmojiSpan animatedEmojiSpan) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAnimatedEmoji(this, chatMessageCell2, animatedEmojiSpan);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressBotButton(ChatMessageCell chatMessageCell2, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBotButton(this, chatMessageCell2, tLRPC$KeyboardButton);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressCancelSendButton(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCancelSendButton(this, chatMessageCell2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC$Chat tLRPC$Chat, int i2, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelAvatar(this, chatMessageCell2, tLRPC$Chat, i2, f, f2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressCodeCopy(ChatMessageCell chatMessageCell2, MessageObject.TextLayoutBlock textLayoutBlock) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCodeCopy(this, chatMessageCell2, textLayoutBlock);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressCommentButton(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCommentButton(this, chatMessageCell2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell2, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressExtendedMediaPreview(this, chatMessageCell2, tLRPC$KeyboardButton);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressForkTranscribeButton(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressForkTranscribeButton(this, chatMessageCell2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressGiveawayChatButton(ChatMessageCell chatMessageCell2, int i2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGiveawayChatButton(this, chatMessageCell2, i2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressHiddenForward(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHiddenForward(this, chatMessageCell2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressHint(ChatMessageCell chatMessageCell2, int i2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHint(this, chatMessageCell2, i2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressImage(ChatMessageCell chatMessageCell2, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressImage(this, chatMessageCell2, f, f2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressInstantButton(ChatMessageCell chatMessageCell2, int i2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressInstantButton(this, chatMessageCell2, i2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressOther(ChatMessageCell chatMessageCell2, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressOther(this, chatMessageCell2, f, f2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressReaction(ChatMessageCell chatMessageCell2, TLRPC$ReactionCount tLRPC$ReactionCount, boolean z) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReaction(this, chatMessageCell2, tLRPC$ReactionCount, z);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressReplyMessage(ChatMessageCell chatMessageCell2, int i2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReplyMessage(this, chatMessageCell2, i2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressSideButton(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSideButton(this, chatMessageCell2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressSponsoredClose() {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredClose(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressTime(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTime(this, chatMessageCell2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressTopicButton(ChatMessageCell chatMessageCell2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTopicButton(this, chatMessageCell2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressUrl(ChatMessageCell chatMessageCell2, CharacterStyle characterStyle, boolean z) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUrl(this, chatMessageCell2, characterStyle, z);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC$User tLRPC$User, float f, float f2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserAvatar(this, chatMessageCell2, tLRPC$User, f, f2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressUserStatus(ChatMessageCell chatMessageCell2, TLRPC$User tLRPC$User, TLRPC$Document tLRPC$Document) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserStatus(this, chatMessageCell2, tLRPC$User, tLRPC$Document);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressViaBot(ChatMessageCell chatMessageCell2, String str) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBot(this, chatMessageCell2, str);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressViaBotNotInline(ChatMessageCell chatMessageCell2, long j) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBotNotInline(this, chatMessageCell2, j);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressVoteButtons(ChatMessageCell chatMessageCell2, ArrayList arrayList, int i2, int i3, int i4) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressVoteButtons(this, chatMessageCell2, arrayList, i2, i3, i4);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didPressWebPage(ChatMessageCell chatMessageCell2, TLRPC$WebPage tLRPC$WebPage, String str, boolean z) {
                            Browser.openUrl(chatMessageCell2.getContext(), str);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void didStartVideoStream(MessageObject messageObject) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$didStartVideoStream(this, messageObject);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ String getAdminRank(long j) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getAdminRank(this, j);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ PinchToZoomHelper getPinchToZoomHelper() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getPinchToZoomHelper(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ String getProgressLoadingBotButtonUrl(ChatMessageCell chatMessageCell2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingBotButtonUrl(this, chatMessageCell2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ CharacterStyle getProgressLoadingLink(ChatMessageCell chatMessageCell2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingLink(this, chatMessageCell2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ TextSelectionHelper.ChatListTextSelectionHelper getTextSelectionHelper() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getTextSelectionHelper(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean hasSelectedMessages() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$hasSelectedMessages(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void invalidateBlur() {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$invalidateBlur(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean isAllowForkTranscribe() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isAllowForkTranscribe(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean isInPreviewMode() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isInPreviewMode(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean isLandscape() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isLandscape(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean isProgressLoading(ChatMessageCell chatMessageCell2, int i2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isProgressLoading(this, chatMessageCell2, i2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean isReplyOrSelf() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isReplyOrSelf(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean keyboardIsOpened() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$keyboardIsOpened(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean needDrawTranslateButton(ChatMessageCell chatMessageCell2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needDrawTranslateButton(this, chatMessageCell2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void needOpenWebView(MessageObject messageObject, String str, String str2, String str3, String str4, int i2, int i3) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$needOpenWebView(this, messageObject, str, str2, str3, str4, i2, i3);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean needPlayMessage(MessageObject messageObject, boolean z) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needPlayMessage(this, messageObject, z);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void needReloadPolls() {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$needReloadPolls(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void needShowPremiumBulletin(int i2) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$needShowPremiumBulletin(this, i2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean onAccessibilityAction(int i2, Bundle bundle) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$onAccessibilityAction(this, i2, bundle);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void onDiceFinished() {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$onDiceFinished(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void runWithActivationCheck(Callbacks$Callback callbacks$Callback) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$runWithActivationCheck(this, callbacks$Callback);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void setShouldNotRepeatSticker(MessageObject messageObject) {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$setShouldNotRepeatSticker(this, messageObject);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean shouldDrawThreadProgress(ChatMessageCell chatMessageCell2) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawThreadProgress(this, chatMessageCell2);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean shouldRepeatSticker(MessageObject messageObject) {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldRepeatSticker(this, messageObject);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ boolean shouldShowTopicButton() {
                            return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldShowTopicButton(this);
                        }

                        @Override // org.telegram.p043ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                        public /* synthetic */ void videoTimerReached() {
                            ChatMessageCell.ChatMessageCellDelegate.CC.$default$videoTimerReached(this);
                        }
                    });
                }
                if (MessagePreviewView.this.messagePreviewParams.isTemplatePreview() || Page.this.messages.previewMessages.size() <= 1) {
                    return;
                }
                chatMessageCell.setCheckBoxVisible(Page.this.currentTab == 1, false);
                boolean z = id == Page.this.messages.previewMessages.get(i).getId();
                MessagePreviewParams.Messages messages3 = Page.this.messages;
                boolean z2 = messages3.selectedIds.get(messages3.previewMessages.get(i).getId(), false);
                chatMessageCell.setChecked(z2, z2, z);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                int i;
                Page page = Page.this;
                if (page.messages == null || (i = page.currentTab) == 1) {
                    return;
                }
                ChatMessageCell chatMessageCell = (ChatMessageCell) viewHolder.itemView;
                if (i == 0) {
                    MessageObject.GroupedMessages validGroupedMessage = page.getValidGroupedMessage(chatMessageCell.getMessageObject());
                    chatMessageCell.setDrawSelectionBackground(validGroupedMessage == null);
                    chatMessageCell.setChecked(true, validGroupedMessage == null, false);
                    Page page2 = Page.this;
                    MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
                    if (messagePreviewParams.isSecret || messagePreviewParams.quote == null || !page2.isReplyMessageCell(chatMessageCell) || Page.this.textSelectionHelper.isInSelectionMode()) {
                        return;
                    }
                    Page page3 = Page.this;
                    TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper = page3.textSelectionHelper;
                    MessagePreviewParams messagePreviewParams2 = MessagePreviewView.this.messagePreviewParams;
                    chatListTextSelectionHelper.select(chatMessageCell, messagePreviewParams2.quoteStart, messagePreviewParams2.quoteEnd);
                    if (Page.this.firstAttach) {
                        Page page4 = Page.this;
                        page4.scrollToOffset = offset(chatMessageCell, MessagePreviewView.this.messagePreviewParams.quoteStart);
                        Page.this.firstAttach = false;
                        return;
                    }
                    return;
                }
                chatMessageCell.setDrawSelectionBackground(false);
            }

            private int offset(ChatMessageCell chatMessageCell, int i) {
                MessageObject messageObject;
                int m104dp;
                ArrayList<MessageObject.TextLayoutBlock> arrayList;
                CharSequence charSequence;
                StaticLayout staticLayout;
                float lineTop;
                MessageObject.TextLayoutBlocks textLayoutBlocks;
                if (chatMessageCell == null || (messageObject = chatMessageCell.getMessageObject()) == null || messageObject.getGroupId() != 0) {
                    return 0;
                }
                if (!TextUtils.isEmpty(messageObject.caption) && (textLayoutBlocks = chatMessageCell.captionLayout) != null) {
                    m104dp = (int) chatMessageCell.captionY;
                    charSequence = messageObject.caption;
                    arrayList = textLayoutBlocks.textLayoutBlocks;
                } else {
                    chatMessageCell.layoutTextXY(true);
                    int i2 = chatMessageCell.textY;
                    CharSequence charSequence2 = messageObject.messageText;
                    ArrayList<MessageObject.TextLayoutBlock> arrayList2 = messageObject.textLayoutBlocks;
                    m104dp = chatMessageCell.linkPreviewAbove ? chatMessageCell.linkPreviewHeight + AndroidUtilities.m104dp(10) + i2 : i2;
                    arrayList = arrayList2;
                    charSequence = charSequence2;
                }
                if (arrayList != null && charSequence != null) {
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        MessageObject.TextLayoutBlock textLayoutBlock = arrayList.get(i3);
                        String charSequence3 = textLayoutBlock.textLayout.getText().toString();
                        int i4 = textLayoutBlock.charactersOffset;
                        if (i > i4) {
                            if (i - i4 > charSequence3.length() - 1) {
                                lineTop = m104dp + ((int) (textLayoutBlock.textYOffset + textLayoutBlock.padTop + textLayoutBlock.height));
                            } else {
                                lineTop = m104dp + textLayoutBlock.textYOffset + textLayoutBlock.padTop + staticLayout.getLineTop(staticLayout.getLineForOffset(i - textLayoutBlock.charactersOffset));
                            }
                            return (int) lineTop;
                        }
                    }
                }
                return 0;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                MessagePreviewParams.Messages messages = Page.this.messages;
                if (messages == null) {
                    return 0;
                }
                return messages.previewMessages.size();
            }
        }

        private MessageObject.GroupedMessages getValidGroupedMessage(MessageObject messageObject, boolean z) {
            if (messageObject.getGroupId(z) != 0) {
                MessageObject.GroupedMessages groupedMessages = this.messages.groupedMessagesMap.get(messageObject.getGroupId(z));
                if (groupedMessages == null || (groupedMessages.messages.size() > 1 && groupedMessages.positions.get(messageObject) != null)) {
                    return groupedMessages;
                }
                return null;
            }
            return null;
        }
    }

    public MessagePreviewView(final Context context, ChatActivity chatActivity, MessagePreviewParams messagePreviewParams, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, int i, ResourcesDelegate resourcesDelegate, int i2, final boolean z) {
        super(context);
        this.isFirstUpdateMessages = true;
        this.changeBoundsRunnable = new Runnable() { // from class: org.telegram.ui.Components.MessagePreviewView.1
            @Override // java.lang.Runnable
            public void run() {
                ValueAnimator valueAnimator = MessagePreviewView.this.offsetsAnimator;
                if (valueAnimator == null || valueAnimator.isRunning()) {
                    return;
                }
                MessagePreviewView.this.offsetsAnimator.start();
            }
        };
        this.drawingGroups = new ArrayList<>(10);
        this.showOutdatedQuote = z;
        this.chatActivity = chatActivity;
        this.currentAccount = i;
        this.currentUser = tLRPC$User;
        this.currentChat = tLRPC$Chat;
        this.messagePreviewParams = messagePreviewParams;
        this.resourcesProvider = resourcesDelegate;
        this.viewPager = new ViewPagerFixed(context, resourcesDelegate) { // from class: org.telegram.ui.Components.MessagePreviewView.2
            @Override // org.telegram.p043ui.Components.ViewPagerFixed
            protected void onTabAnimationUpdate(boolean z2) {
                MessagePreviewView messagePreviewView = MessagePreviewView.this;
                messagePreviewView.tabsView.setSelectedTab(messagePreviewView.viewPager.getPositionAnimated());
                View[] viewArr = this.viewPages;
                if (viewArr[0] instanceof Page) {
                    ((Page) viewArr[0]).textSelectionHelper.onParentScrolled();
                }
                View[] viewArr2 = this.viewPages;
                if (viewArr2[1] instanceof Page) {
                    ((Page) viewArr2[1]).textSelectionHelper.onParentScrolled();
                }
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed
            protected void onScrollEnd() {
                View[] viewArr = this.viewPages;
                if (viewArr[0] instanceof Page) {
                    ((Page) viewArr[0]).textSelectionHelper.stopScrolling();
                }
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (MessagePreviewView.this.isTouchedHandle()) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.tabsView = new TabsView(context, resourcesDelegate);
        int i3 = 0;
        for (int i4 = 0; i4 < 3; i4++) {
            if (i4 == 0 && messagePreviewParams.replyMessage != null) {
                this.tabsView.addTab(0, LocaleController.getString(C3632R.string.MessageOptionsReply));
            } else if (i4 == 1 && messagePreviewParams.forwardMessages != null && !z) {
                this.tabsView.addTab(1, LocaleController.getString(C3632R.string.MessageOptionsForward));
            } else {
                if (i4 == 2 && messagePreviewParams.linkMessage != null && !z) {
                    this.tabsView.addTab(2, LocaleController.getString(C3632R.string.MessageOptionsLink));
                }
            }
            if (i4 == i2) {
                i3 = this.tabsView.tabs.size() - 1;
            }
        }
        this.viewPager.setAdapter(new ViewPagerFixed.Adapter() { // from class: org.telegram.ui.Components.MessagePreviewView.3
            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public int getItemCount() {
                return MessagePreviewView.this.tabsView.tabs.size();
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public int getItemViewType(int i5) {
                return MessagePreviewView.this.tabsView.tabs.get(i5).f1860id;
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public View createView(int i5) {
                return new Page(context, i5);
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public void bindView(View view, int i5, int i6) {
                ((Page) view).bind();
            }
        });
        this.viewPager.setPosition(i3);
        this.tabsView.setSelectedTab(i3);
        addView(this.tabsView, LayoutHelper.createFrame(-1, 66, 87));
        addView(this.viewPager, LayoutHelper.createFrame(-1, -1, 119, 0, 0, 0, 66));
        this.tabsView.setOnTabClick(new Utilities.Callback() { // from class: org.telegram.ui.Components.MessagePreviewView$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                MessagePreviewView.this.lambda$new$0((Integer) obj);
            }
        });
        setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.MessagePreviewView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean lambda$new$1;
                lambda$new$1 = MessagePreviewView.this.lambda$new$1(z, view, motionEvent);
                return lambda$new$1;
            }
        });
        this.showing = true;
        setAlpha(BitmapDescriptorFactory.HUE_RED);
        setScaleX(0.95f);
        setScaleY(0.95f);
        animate().alpha(1.0f).scaleX(1.0f).setDuration(250L).setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR).scaleY(1.0f);
        animate().setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.MessagePreviewView$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MessagePreviewView.this.lambda$new$2(valueAnimator);
            }
        });
        updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Integer num) {
        if (this.tabsView.tabs.get(this.viewPager.getCurrentPosition()).f1860id == num.intValue()) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= this.tabsView.tabs.size()) {
                break;
            } else if (this.tabsView.tabs.get(i2).f1860id == num.intValue()) {
                i = i2;
                break;
            } else {
                i2++;
            }
        }
        if (this.viewPager.getCurrentPosition() == i) {
            return;
        }
        this.viewPager.scrollToPosition(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(boolean z, View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && !z) {
            dismiss(true);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(ValueAnimator valueAnimator) {
        onTransitionAnimationProgress(true, getAlpha());
    }

    public void dismiss(final boolean z) {
        if (this.showing) {
            int i = 0;
            this.showing = false;
            animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleX(0.95f).scaleY(0.95f).setDuration(250L).setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.MessagePreviewView.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (MessagePreviewView.this.getParent() != null) {
                        ((ViewGroup) MessagePreviewView.this.getParent()).removeView(MessagePreviewView.this);
                    }
                    MessagePreviewView.this.onFullDismiss(z);
                }
            });
            while (true) {
                View[] viewArr = this.viewPager.viewPages;
                if (i >= viewArr.length) {
                    break;
                }
                if (viewArr[i] instanceof Page) {
                    Page page = (Page) viewArr[i];
                    if (page.currentTab == 0) {
                        page.updateSelection();
                        break;
                    }
                }
                i++;
            }
            animate().setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.MessagePreviewView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MessagePreviewView.this.lambda$dismiss$3(valueAnimator);
                }
            });
            onDismiss(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$3(ValueAnimator valueAnimator) {
        onTransitionAnimationProgress(false, getAlpha());
    }

    public boolean isShowing() {
        return this.showing;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.MessagePreviewView$TabsView */
    /* loaded from: classes6.dex */
    public static class TabsView extends View {
        private final Paint bgPaint;
        private int color;
        private float marginBetween;
        private Utilities.Callback<Integer> onTabClick;
        private final Theme.ResourcesProvider resourcesProvider;
        private RectF selectRect;
        private int selectedColor;
        private float selectedTab;
        private float tabInnerPadding;
        public final ArrayList<Tab> tabs;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.MessagePreviewView$TabsView$Tab */
        /* loaded from: classes6.dex */
        public static class Tab {
            final RectF bounds = new RectF();
            final RectF clickBounds = new RectF();

            /* renamed from: id */
            final int f1860id;
            final Text text;

            public Tab(int i, String str) {
                this.f1860id = i;
                this.text = new Text(str, 14, AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            }
        }

        public TabsView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            int[] colors;
            this.tabs = new ArrayList<>();
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            this.tabInnerPadding = AndroidUtilities.m104dp(12);
            this.marginBetween = AndroidUtilities.m104dp(13);
            this.selectRect = new RectF();
            this.resourcesProvider = resourcesProvider;
            if (Theme.isCurrentThemeDark()) {
                this.color = -1862270977;
                this.selectedColor = -1325400065;
                paint.setColor(285212671);
                return;
            }
            int color = Theme.getColor(Theme.key_chat_wallpaper, resourcesProvider);
            if (resourcesProvider instanceof ChatActivity.ThemeDelegate) {
                ChatActivity.ThemeDelegate themeDelegate = (ChatActivity.ThemeDelegate) resourcesProvider;
                if ((themeDelegate.getWallpaperDrawable() instanceof MotionBackgroundDrawable) && (colors = ((MotionBackgroundDrawable) themeDelegate.getWallpaperDrawable()).getColors()) != null) {
                    color = AndroidUtilities.getAverageColor(AndroidUtilities.getAverageColor(colors[0], colors[1]), AndroidUtilities.getAverageColor(colors[2], colors[3]));
                }
            }
            this.color = Theme.adaptHue(-1606201797, color);
            this.selectedColor = Theme.adaptHue(-448573893, color);
            paint.setColor(Theme.adaptHue(814980216, color));
        }

        public void addTab(int i, String str) {
            this.tabs.add(new Tab(i, str));
        }

        public void setSelectedTab(float f) {
            this.selectedTab = f;
            invalidate();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            this.tabInnerPadding = AndroidUtilities.m104dp(12);
            this.marginBetween = AndroidUtilities.m104dp(13);
            float f = BitmapDescriptorFactory.HUE_RED;
            for (int i3 = 0; i3 < this.tabs.size(); i3++) {
                if (i3 > 0) {
                    f += this.marginBetween;
                }
                f += this.tabInnerPadding + this.tabs.get(i3).text.getWidth() + this.tabInnerPadding;
            }
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float m104dp = (measuredHeight - AndroidUtilities.m104dp(26)) / 2.0f;
            float m104dp2 = (measuredHeight + AndroidUtilities.m104dp(26)) / 2.0f;
            float f2 = (measuredWidth - f) / 2.0f;
            for (int i4 = 0; i4 < this.tabs.size(); i4++) {
                float width = this.tabInnerPadding + this.tabs.get(i4).text.getWidth() + this.tabInnerPadding;
                this.tabs.get(i4).bounds.set(f2, m104dp, f2 + width, m104dp2);
                this.tabs.get(i4).clickBounds.set(this.tabs.get(i4).bounds);
                this.tabs.get(i4).clickBounds.inset((-this.marginBetween) / 2.0f, -m104dp);
                f2 += width + this.marginBetween;
            }
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            boolean z = true;
            if (this.tabs.size() <= 1) {
                return;
            }
            float f = this.selectedTab;
            double d = f;
            int floor = (int) Math.floor(d);
            boolean z2 = floor >= 0 && floor < this.tabs.size();
            int ceil = (int) Math.ceil(d);
            z = (ceil < 0 || ceil >= this.tabs.size()) ? false : false;
            if (z2 && z) {
                AndroidUtilities.lerp(this.tabs.get(floor).bounds, this.tabs.get(ceil).bounds, f - floor, this.selectRect);
            } else if (z2) {
                this.selectRect.set(this.tabs.get(floor).bounds);
            } else if (z) {
                this.selectRect.set(this.tabs.get(ceil).bounds);
            }
            if (z2 || z) {
                canvas.drawRoundRect(this.selectRect, AndroidUtilities.m104dp(13), AndroidUtilities.m104dp(13), this.bgPaint);
            }
            for (int i = 0; i < this.tabs.size(); i++) {
                Tab tab = this.tabs.get(i);
                tab.text.draw(canvas, tab.bounds.left + this.tabInnerPadding, getMeasuredHeight() / 2.0f, ColorUtils.blendARGB(this.color, this.selectedColor, 1.0f - Math.abs(f - i)), 1.0f);
            }
        }

        public void setOnTabClick(Utilities.Callback<Integer> callback) {
            this.onTabClick = callback;
        }

        @Override // android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            Utilities.Callback<Integer> callback;
            if (this.tabs.size() <= 1) {
                return false;
            }
            int hitTab = getHitTab(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0) {
                return hitTab != -1;
            }
            if (motionEvent.getAction() == 1 && hitTab != -1 && (callback = this.onTabClick) != null) {
                callback.run(Integer.valueOf(hitTab));
            }
            return false;
        }

        private int getHitTab(float f, float f2) {
            for (int i = 0; i < this.tabs.size(); i++) {
                if (this.tabs.get(i).clickBounds.contains(f, f2)) {
                    return this.tabs.get(i).f1860id;
                }
            }
            return -1;
        }
    }

    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.MessagePreviewView$ActionBar */
    /* loaded from: classes6.dex */
    public class C5180ActionBar extends FrameLayout {
        private ImageView editorButton;
        private Theme.ResourcesProvider resourcesProvider;
        private final AnimatedTextView.AnimatedTextDrawable subtitle;
        private final AnimatedTextView.AnimatedTextDrawable title;

        /* JADX INFO: Access modifiers changed from: private */
        public void updateEditorButton() {
            MessagePreviewParams.Messages messages;
            if (this.editorButton == null) {
                return;
            }
            ArrayList<MessageObject> arrayList = new ArrayList<>();
            MessagePreviewParams messagePreviewParams = MessagePreviewView.this.messagePreviewParams;
            if (messagePreviewParams != null && (messages = messagePreviewParams.forwardMessages) != null) {
                messages.getSelectedMessages(arrayList, true);
            }
            if (arrayList.isEmpty() || (arrayList.size() == 1 && !arrayList.get(0).canEditMessage(null, true))) {
                this.editorButton.setVisibility(8);
                if (MessagePreviewView.this.editorHint == null || !MessagePreviewView.this.editorHint.shown()) {
                    return;
                }
                MessagePreviewView.this.editorHint.hide(false);
                return;
            }
            this.editorButton.setVisibility(0);
        }

        public C5180ActionBar(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
            this.title = animatedTextDrawable;
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            animatedTextDrawable.setAnimationProperties(0.3f, 0L, 430L, cubicBezierInterpolator);
            animatedTextDrawable.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            animatedTextDrawable.setTextColor(Theme.getColor(Theme.key_actionBarDefaultTitle, resourcesProvider));
            animatedTextDrawable.setTextSize(AndroidUtilities.m104dp(18));
            animatedTextDrawable.setEllipsizeByGradient(!LocaleController.isRTL);
            animatedTextDrawable.setCallback(this);
            animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable2 = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
            this.subtitle = animatedTextDrawable2;
            animatedTextDrawable2.setAnimationProperties(0.3f, 0L, 430L, cubicBezierInterpolator);
            animatedTextDrawable2.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubtitle, resourcesProvider));
            animatedTextDrawable2.setTextSize(AndroidUtilities.m104dp(14));
            animatedTextDrawable2.setEllipsizeByGradient(!LocaleController.isRTL);
            animatedTextDrawable2.setCallback(this);
            animatedTextDrawable2.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            if (MessagePreviewView.this.messagePreviewParams.isTemplatePreview() || MessagePreviewView.this.messagePreviewParams.isFromShareAlert()) {
                return;
            }
            ImageView imageView = new ImageView(context);
            this.editorButton = imageView;
            imageView.setImageResource(C3632R.C3634drawable.msg_edit);
            this.editorButton.setScaleType(ImageView.ScaleType.CENTER);
            this.editorButton.setColorFilter(new PorterDuffColorFilter(MessagePreviewView.this.getThemedColor(Theme.key_actionBarDefaultIcon), PorterDuff.Mode.SRC_IN));
            this.editorButton.setBackground(Theme.createSelectorDrawable(MessagePreviewView.this.getThemedColor(Theme.key_listSelector)));
            this.editorButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MessagePreviewView$ActionBar$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MessagePreviewView.C5180ActionBar.this.lambda$new$0(view);
                }
            });
            addView(this.editorButton, LayoutHelper.createFrame(48, 48, 21));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (MessagePreviewView.this.editorHint != null && MessagePreviewView.this.editorHint.shown()) {
                MessagePreviewView.this.editorHint.hide(false);
            }
            MessagePreviewView.this.didOpenEditorPressed();
        }

        public void setTitle(CharSequence charSequence, boolean z) {
            this.title.setText(charSequence, z && !LocaleController.isRTL);
        }

        public void setSubtitle(CharSequence charSequence, boolean z) {
            this.subtitle.setText(charSequence, z && !LocaleController.isRTL);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(56), 1073741824));
            setPadding(AndroidUtilities.m104dp(18), 0, AndroidUtilities.m104dp(this.editorButton != null ? 5 : 18), 0);
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return this.title == drawable || this.subtitle == drawable || super.verifyDrawable(drawable);
        }

        private void setBounds(Drawable drawable, float f) {
            int i = (int) f;
            drawable.setBounds(getPaddingLeft(), i - AndroidUtilities.m104dp(32), (getMeasuredWidth() - getPaddingRight()) - (this.editorButton != null ? AndroidUtilities.m104dp(48) : 0), i + AndroidUtilities.m104dp(32));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            setBounds(this.title, AndroidUtilities.lerp(AndroidUtilities.m104dp(29), AndroidUtilities.m105dp(18.83f), this.subtitle.isNotEmpty()));
            this.title.draw(canvas);
            setBounds(this.subtitle, AndroidUtilities.m105dp(39.5f));
            this.subtitle.draw(canvas);
        }
    }

    public void updateLink() {
        int i = 0;
        while (true) {
            View[] viewArr = this.viewPager.viewPages;
            if (i >= viewArr.length) {
                return;
            }
            if (viewArr[i] != null && ((Page) viewArr[i]).currentTab == 2) {
                Page page = (Page) viewArr[i];
                FrameLayout frameLayout = page.changeSizeBtnContainer;
                MessagePreviewParams messagePreviewParams = this.messagePreviewParams;
                frameLayout.setVisibility((!messagePreviewParams.singleLink || messagePreviewParams.hasMedia) ? 0 : 8);
                page.changeSizeBtn.setVisibility(this.messagePreviewParams.isVideo ? 4 : 0);
                page.videoChangeSizeBtn.setVisibility(this.messagePreviewParams.isVideo ? 0 : 4);
                page.changeSizeBtnContainer.animate().alpha(this.messagePreviewParams.hasMedia ? 1.0f : 0.5f).start();
                page.changeSizeBtn.setState(this.messagePreviewParams.webpageSmall, true);
                page.videoChangeSizeBtn.setState(this.messagePreviewParams.webpageSmall, true);
                page.changePositionBtn.setState(!this.messagePreviewParams.webpageTop, true);
                page.updateMessages();
            }
            i++;
        }
    }

    public void updateAll() {
        int i = 0;
        while (true) {
            View[] viewArr = this.viewPager.viewPages;
            if (i >= viewArr.length) {
                return;
            }
            if (viewArr[i] instanceof Page) {
                Page page = (Page) viewArr[i];
                int i2 = page.currentTab;
                if (i2 == 1) {
                    page.messages = this.messagePreviewParams.forwardMessages;
                } else if (i2 == 0) {
                    page.messages = this.messagePreviewParams.replyMessage;
                } else if (i2 == 2) {
                    page.messages = this.messagePreviewParams.linkMessage;
                }
                page.updateMessages();
                if (page.currentTab == 0) {
                    if (this.showOutdatedQuote && !this.messagePreviewParams.isSecret) {
                        MessageObject replyMessage = page.getReplyMessage(page.textSelectionHelper.getSelectedCell() != null ? page.textSelectionHelper.getSelectedCell().getMessageObject() : null);
                        if (replyMessage != null) {
                            MessagePreviewParams messagePreviewParams = this.messagePreviewParams;
                            messagePreviewParams.quoteStart = 0;
                            messagePreviewParams.quoteEnd = Math.min(MessagesController.getInstance(this.currentAccount).quoteLengthMax, replyMessage.messageOwner.message.length());
                            MessagePreviewParams messagePreviewParams2 = this.messagePreviewParams;
                            messagePreviewParams2.quote = ChatActivity.ReplyQuote.from(replyMessage, messagePreviewParams2.quoteStart, messagePreviewParams2.quoteEnd);
                            TextSelectionHelper.ChatListTextSelectionHelper chatListTextSelectionHelper = page.textSelectionHelper;
                            ChatMessageCell replyMessageCell = page.getReplyMessageCell();
                            MessagePreviewParams messagePreviewParams3 = this.messagePreviewParams;
                            chatListTextSelectionHelper.select(replyMessageCell, messagePreviewParams3.quoteStart, messagePreviewParams3.quoteEnd);
                        }
                    } else {
                        this.messagePreviewParams.quote = null;
                        page.textSelectionHelper.clear();
                        page.switchToQuote(false, true);
                    }
                    page.updateSubtitle(true);
                }
                ToggleButton toggleButton = page.changeSizeBtn;
                if (toggleButton != null) {
                    toggleButton.animate().alpha(this.messagePreviewParams.hasMedia ? 1.0f : 0.5f).start();
                }
            }
            i++;
        }
    }

    public boolean isTouchedHandle() {
        int i = 0;
        while (true) {
            View[] viewArr = this.viewPager.viewPages;
            if (i >= viewArr.length) {
                return false;
            }
            if (viewArr[i] != null && ((Page) viewArr[i]).currentTab == 0) {
                return ((Page) viewArr[i]).textSelectionHelper.isTouched();
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.MessagePreviewView$ToggleButton */
    /* loaded from: classes6.dex */
    public class ToggleButton extends View {
        private boolean first;
        RLottieToggleDrawable iconDrawable;
        private boolean isState1;
        final int minWidth;
        final String text1;
        final String text2;
        AnimatedTextView.AnimatedTextDrawable textDrawable;

        public ToggleButton(MessagePreviewView messagePreviewView, Context context, int i, String str, int i2, String str2) {
            super(context);
            this.first = true;
            this.text1 = str;
            this.text2 = str2;
            setBackground(Theme.createSelectorDrawable(messagePreviewView.getThemedColor(Theme.key_listSelector), 2));
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, true);
            this.textDrawable = animatedTextDrawable;
            animatedTextDrawable.setAnimationProperties(0.35f, 0L, 300L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.textDrawable.setTextSize(AndroidUtilities.m104dp(16));
            this.textDrawable.setTextColor(messagePreviewView.getThemedColor(Theme.key_actionBarDefaultSubmenuItem));
            this.textDrawable.setCallback(this);
            this.textDrawable.setEllipsizeByGradient(true ^ LocaleController.isRTL);
            if (LocaleController.isRTL) {
                this.textDrawable.setGravity(5);
            }
            int m104dp = (int) (AndroidUtilities.m104dp(77) + Math.max(this.textDrawable.getPaint().measureText(str), this.textDrawable.getPaint().measureText(str2)));
            this.minWidth = m104dp;
            this.textDrawable.setOverrideFullWidth(m104dp);
            RLottieToggleDrawable rLottieToggleDrawable = new RLottieToggleDrawable(messagePreviewView, this, i, i2);
            this.iconDrawable = rLottieToggleDrawable;
            rLottieToggleDrawable.setColorFilter(new PorterDuffColorFilter(messagePreviewView.getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon), PorterDuff.Mode.SRC_IN));
        }

        public void setState(boolean z, boolean z2) {
            if (this.first || z != this.isState1) {
                this.isState1 = z;
                this.textDrawable.setText(z ? this.text1 : this.text2, z2 && !LocaleController.isRTL);
                this.iconDrawable.setState(z, z2);
                this.first = false;
            }
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return drawable == this.textDrawable || super.verifyDrawable(drawable);
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (LocaleController.isRTL) {
                this.iconDrawable.setBounds(getMeasuredWidth() - AndroidUtilities.m104dp(41), (getMeasuredHeight() - AndroidUtilities.m104dp(24)) / 2, getMeasuredWidth() - AndroidUtilities.m104dp(17), (getMeasuredHeight() + AndroidUtilities.m104dp(24)) / 2);
                this.textDrawable.setBounds(0, 0, getMeasuredWidth() - AndroidUtilities.m104dp(59), getMeasuredHeight());
            } else {
                this.iconDrawable.setBounds(AndroidUtilities.m104dp(17), (getMeasuredHeight() - AndroidUtilities.m104dp(24)) / 2, AndroidUtilities.m104dp(41), (getMeasuredHeight() + AndroidUtilities.m104dp(24)) / 2);
                this.textDrawable.setBounds(AndroidUtilities.m104dp(59), 0, getMeasuredWidth(), getMeasuredHeight());
            }
            this.textDrawable.draw(canvas);
            this.iconDrawable.draw(canvas);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int min;
            int mode = View.MeasureSpec.getMode(i);
            if (mode == 1073741824) {
                min = Math.max(View.MeasureSpec.getSize(i), this.minWidth);
            } else {
                min = Math.min(View.MeasureSpec.getSize(i), this.minWidth);
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, mode), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(48), 1073741824));
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (getVisibility() != 0 || getAlpha() < 0.5f) {
                return false;
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.MessagePreviewView$RLottieToggleDrawable */
    /* loaded from: classes6.dex */
    public class RLottieToggleDrawable extends Drawable {
        private RLottieDrawable currentState;
        private boolean detached;
        private boolean isState1;
        private RLottieDrawable state1;
        private RLottieDrawable state2;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        public RLottieToggleDrawable(MessagePreviewView messagePreviewView, View view, int i, int i2) {
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i, "" + i, AndroidUtilities.m104dp(24), AndroidUtilities.m104dp(24));
            this.state1 = rLottieDrawable;
            rLottieDrawable.setMasterParent(view);
            this.state1.setAllowDecodeSingleFrame(true);
            this.state1.setPlayInDirectionOfCustomEndFrame(true);
            this.state1.setAutoRepeat(0);
            RLottieDrawable rLottieDrawable2 = new RLottieDrawable(i2, "" + i2, AndroidUtilities.m104dp(24), AndroidUtilities.m104dp(24));
            this.state2 = rLottieDrawable2;
            rLottieDrawable2.setMasterParent(view);
            this.state2.setAllowDecodeSingleFrame(true);
            this.state2.setPlayInDirectionOfCustomEndFrame(true);
            this.state2.setAutoRepeat(0);
            this.currentState = this.state1;
        }

        public void setState(boolean z, boolean z2) {
            this.isState1 = z;
            if (z2) {
                this.currentState = z ? this.state1 : this.state2;
                this.state1.setCurrentFrame(0);
                this.state2.setCurrentFrame(0);
                this.currentState.start();
                return;
            }
            RLottieDrawable rLottieDrawable = z ? this.state1 : this.state2;
            this.currentState = rLottieDrawable;
            rLottieDrawable.setCurrentFrame(rLottieDrawable.getFramesCount() - 1);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.detached) {
                return;
            }
            Rect rect = AndroidUtilities.rectTmp2;
            rect.set(getBounds().centerX() - AndroidUtilities.m104dp(12), getBounds().centerY() - AndroidUtilities.m104dp(12), getBounds().centerX() + AndroidUtilities.m104dp(12), getBounds().centerY() + AndroidUtilities.m104dp(12));
            if (this.currentState.isLastFrame()) {
                RLottieDrawable rLottieDrawable = this.currentState;
                boolean z = this.isState1;
                if (rLottieDrawable != (z ? this.state1 : this.state2)) {
                    RLottieDrawable rLottieDrawable2 = z ? this.state1 : this.state2;
                    this.currentState = rLottieDrawable2;
                    rLottieDrawable2.setCurrentFrame(rLottieDrawable2.getFramesCount() - 1);
                }
            }
            this.currentState.setBounds(rect);
            this.currentState.draw(canvas);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.state1.setAlpha(i);
            this.state2.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.state1.setColorFilter(colorFilter);
            this.state2.setColorFilter(colorFilter);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return AndroidUtilities.m104dp(24);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.m104dp(24);
        }
    }
}
