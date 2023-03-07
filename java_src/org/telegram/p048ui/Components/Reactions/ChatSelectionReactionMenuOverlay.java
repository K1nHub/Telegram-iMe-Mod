package org.telegram.p048ui.Components.Reactions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.Reactions.ChatSelectionReactionMenuOverlay;
import org.telegram.p048ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p048ui.Components.ReactionsContainerLayout;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$ReactionCount;
import org.telegram.tgnet.TLRPC$TL_messageReactions;
/* renamed from: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay */
/* loaded from: classes6.dex */
public class ChatSelectionReactionMenuOverlay extends FrameLayout {
    private float currentOffsetY;
    private MessageObject currentPrimaryObject;
    private boolean hiddenByScroll;
    private boolean isVisible;
    private long lastUpdate;
    private int mPadding;
    private int mSidePadding;
    private boolean messageSet;
    private ChatActivity parentFragment;
    private int[] pos;
    private ReactionsContainerLayout reactionsContainerLayout;
    private List<MessageObject> selectedMessages;
    private float toOffsetY;
    private float translationOffsetY;

    public ChatSelectionReactionMenuOverlay(ChatActivity chatActivity, Context context) {
        super(context);
        this.selectedMessages = Collections.emptyList();
        this.mPadding = 22;
        this.mSidePadding = 24;
        this.pos = new int[2];
        setVisibility(8);
        this.parentFragment = chatActivity;
        setClipToPadding(false);
        setClipChildren(false);
        chatActivity.getChatListView().addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                ChatSelectionReactionMenuOverlay.this.invalidatePosition();
            }
        });
    }

    private void checkCreateReactionsLayout() {
        if (this.reactionsContainerLayout == null) {
            ReactionsContainerLayout reactionsContainerLayout = new ReactionsContainerLayout(this, this.parentFragment, getContext(), this.parentFragment.getCurrentAccount(), this.parentFragment.getResourceProvider()) { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay.2
                float enabledAlpha = 1.0f;
                long lastUpdate;

                {
                    setWillNotDraw(false);
                }

                @Override // android.view.View
                public void draw(Canvas canvas) {
                    long min = Math.min(16L, System.currentTimeMillis() - this.lastUpdate);
                    this.lastUpdate = System.currentTimeMillis();
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
                    canvas.saveLayerAlpha(rectF, (int) (this.enabledAlpha * 255.0f), 31);
                    super.draw(canvas);
                    canvas.restore();
                    if (!isEnabled()) {
                        float f = this.enabledAlpha;
                        if (f != BitmapDescriptorFactory.HUE_RED) {
                            this.enabledAlpha = Math.max((float) BitmapDescriptorFactory.HUE_RED, f - (((float) min) / 150.0f));
                            invalidate();
                            if (this.enabledAlpha == BitmapDescriptorFactory.HUE_RED) {
                                setVisibility(8);
                                return;
                            }
                            return;
                        }
                    }
                    if (isEnabled()) {
                        float f2 = this.enabledAlpha;
                        if (f2 != 1.0f) {
                            this.enabledAlpha = Math.min(1.0f, f2 + (((float) min) / 150.0f));
                            invalidate();
                        }
                    }
                }

                @Override // android.view.View
                public void setVisibility(int i) {
                    super.setVisibility(i);
                    if (i != 8 || this.enabledAlpha == BitmapDescriptorFactory.HUE_RED) {
                        return;
                    }
                    this.enabledAlpha = BitmapDescriptorFactory.HUE_RED;
                }
            };
            this.reactionsContainerLayout = reactionsContainerLayout;
            reactionsContainerLayout.setPadding(AndroidUtilities.m50dp(4) + (LocaleController.isRTL ? 0 : this.mSidePadding), AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(4) + (LocaleController.isRTL ? this.mSidePadding : 0), AndroidUtilities.m50dp(this.mPadding));
            this.reactionsContainerLayout.setDelegate(new C48393());
            this.reactionsContainerLayout.setClipChildren(false);
            this.reactionsContainerLayout.setClipToPadding(false);
            addView(this.reactionsContainerLayout, LayoutHelper.createFrame(-2, this.mPadding + 70, 5));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$3 */
    /* loaded from: classes6.dex */
    public class C48393 implements ReactionsContainerLayout.ReactionsContainerDelegate {
        C48393() {
        }

        @Override // org.telegram.p048ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public void onReactionClicked(View view, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
            ChatSelectionReactionMenuOverlay.this.parentFragment.selectReaction(ChatSelectionReactionMenuOverlay.this.currentPrimaryObject, ChatSelectionReactionMenuOverlay.this.reactionsContainerLayout, view, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, visibleReaction, false, z, z2);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ChatSelectionReactionMenuOverlay.C48393.this.lambda$onReactionClicked$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReactionClicked$0() {
            ChatSelectionReactionMenuOverlay.this.reactionsContainerLayout.dismissParent(true);
            hideMenu();
        }

        public void hideMenu() {
            ChatSelectionReactionMenuOverlay.this.parentFragment.clearSelectionMode(true);
        }
    }

    public boolean isVisible() {
        return this.isVisible && !this.hiddenByScroll;
    }

    public void invalidatePosition() {
        invalidatePosition(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0172 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0173  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void invalidatePosition(boolean r12) {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.Reactions.ChatSelectionReactionMenuOverlay.invalidatePosition(boolean):void");
    }

    private MessageObject findPrimaryObject() {
        MessageObject.GroupedMessages group;
        ArrayList<MessageObject> arrayList;
        TLRPC$TL_messageReactions tLRPC$TL_messageReactions;
        ArrayList<TLRPC$ReactionCount> arrayList2;
        if (!this.isVisible || this.selectedMessages.isEmpty()) {
            return null;
        }
        MessageObject messageObject = this.selectedMessages.get(0);
        if (messageObject.getGroupId() != 0 && (group = this.parentFragment.getGroup(messageObject.getGroupId())) != null && (arrayList = group.messages) != null) {
            Iterator<MessageObject> it = arrayList.iterator();
            while (it.hasNext()) {
                MessageObject next = it.next();
                TLRPC$Message tLRPC$Message = next.messageOwner;
                if (tLRPC$Message != null && (tLRPC$TL_messageReactions = tLRPC$Message.reactions) != null && (arrayList2 = tLRPC$TL_messageReactions.results) != null && !arrayList2.isEmpty()) {
                    return next;
                }
            }
        }
        return messageObject;
    }

    private boolean isMessageTypeAllowed(MessageObject messageObject) {
        return (MessageObject.isPhoto(messageObject.messageOwner) && MessageObject.getMedia(messageObject.messageOwner).webpage == null) || (messageObject.getDocument() != null && (MessageObject.isVideoDocument(messageObject.getDocument()) || MessageObject.isGifDocument(messageObject.getDocument())));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSelectedMessages(java.util.List<org.telegram.messenger.MessageObject> r11) {
        /*
            r10 = this;
            r10.selectedMessages = r11
            org.telegram.ui.ChatActivity r0 = r10.parentFragment
            org.telegram.tgnet.TLRPC$ChatFull r0 = r0.getCurrentChatInfo()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L19
            org.telegram.ui.ChatActivity r0 = r10.parentFragment
            org.telegram.tgnet.TLRPC$ChatFull r0 = r0.getCurrentChatInfo()
            org.telegram.tgnet.TLRPC$ChatReactions r0 = r0.available_reactions
            boolean r0 = r0 instanceof org.telegram.tgnet.TLRPC$TL_chatReactionsNone
            if (r0 == 0) goto L19
            goto L4e
        L19:
            boolean r0 = r11.isEmpty()
            if (r0 != 0) goto L4e
            java.util.Iterator r11 = r11.iterator()
            r3 = 0
            r5 = r3
            r0 = 0
        L27:
            boolean r7 = r11.hasNext()
            if (r7 == 0) goto L4f
            java.lang.Object r7 = r11.next()
            org.telegram.messenger.MessageObject r7 = (org.telegram.messenger.MessageObject) r7
            boolean r8 = r10.isMessageTypeAllowed(r7)
            if (r8 != 0) goto L3a
            goto L4e
        L3a:
            if (r0 != 0) goto L42
            long r5 = r7.getGroupId()
            r0 = 1
            goto L27
        L42:
            long r7 = r7.getGroupId()
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 != 0) goto L4e
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 != 0) goto L27
        L4e:
            r1 = 0
        L4f:
            boolean r11 = r10.isVisible
            if (r1 == r11) goto L5b
            r10.isVisible = r1
            r10.hiddenByScroll = r2
            r10.animateVisible(r1)
            goto L63
        L5b:
            if (r1 == 0) goto L63
            org.telegram.messenger.MessageObject r11 = r10.findPrimaryObject()
            r10.currentPrimaryObject = r11
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.Reactions.ChatSelectionReactionMenuOverlay.setSelectedMessages(java.util.List):void");
    }

    private void animateVisible(boolean z) {
        if (z) {
            this.currentPrimaryObject = findPrimaryObject();
            checkCreateReactionsLayout();
            invalidatePosition(false);
            setVisibility(0);
            if (this.reactionsContainerLayout.isEnabled()) {
                this.messageSet = true;
                this.reactionsContainerLayout.setMessage(this.currentPrimaryObject, this.parentFragment.getCurrentChatInfo());
                this.reactionsContainerLayout.startEnterAnimation(false);
                return;
            }
            this.messageSet = false;
            this.reactionsContainerLayout.setTransitionProgress(1.0f);
            return;
        }
        this.messageSet = false;
        ValueAnimator duration = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED).setDuration(150L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChatSelectionReactionMenuOverlay.this.lambda$animateVisible$0(valueAnimator);
            }
        });
        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ChatSelectionReactionMenuOverlay.this.setVisibility(8);
                if (ChatSelectionReactionMenuOverlay.this.reactionsContainerLayout != null) {
                    ChatSelectionReactionMenuOverlay chatSelectionReactionMenuOverlay = ChatSelectionReactionMenuOverlay.this;
                    chatSelectionReactionMenuOverlay.removeView(chatSelectionReactionMenuOverlay.reactionsContainerLayout);
                    ChatSelectionReactionMenuOverlay.this.reactionsContainerLayout = null;
                }
                ChatSelectionReactionMenuOverlay.this.currentPrimaryObject = null;
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateVisible$0(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
        if (reactionsContainerLayout != null) {
            reactionsContainerLayout.setAlpha(floatValue);
        }
    }

    public void setHiddenByScroll(boolean z) {
        this.hiddenByScroll = z;
        if (z) {
            animateVisible(false);
        }
    }
}
