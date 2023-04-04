package org.telegram.p048ui.Components.Reactions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.p048ui.Cells.ChatMessageCell;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.FragmentContextView;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.Reactions.ChatSelectionReactionMenuOverlay;
import org.telegram.p048ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p048ui.Components.ReactionsContainerLayout;
import org.telegram.p048ui.Components.RecyclerListView;
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
            this.reactionsContainerLayout.setDelegate(new C50123());
            this.reactionsContainerLayout.setClipChildren(false);
            this.reactionsContainerLayout.setClipToPadding(false);
            addView(this.reactionsContainerLayout, LayoutHelper.createFrame(-2, this.mPadding + 70, 5));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$3 */
    /* loaded from: classes6.dex */
    public class C50123 implements ReactionsContainerLayout.ReactionsContainerDelegate {
        C50123() {
        }

        @Override // org.telegram.p048ui.Components.ReactionsContainerLayout.ReactionsContainerDelegate
        public void onReactionClicked(View view, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2) {
            ChatSelectionReactionMenuOverlay.this.parentFragment.selectReaction(ChatSelectionReactionMenuOverlay.this.currentPrimaryObject, ChatSelectionReactionMenuOverlay.this.reactionsContainerLayout, view, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, visibleReaction, false, z, z2);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ChatSelectionReactionMenuOverlay.C50123.this.lambda$onReactionClicked$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReactionClicked$0() {
            if (ChatSelectionReactionMenuOverlay.this.reactionsContainerLayout != null) {
                ChatSelectionReactionMenuOverlay.this.reactionsContainerLayout.dismissParent(true);
            }
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

    public void invalidatePosition(boolean z) {
        int[] iArr;
        int height;
        boolean z2;
        boolean z3;
        if (!this.isVisible || this.currentPrimaryObject == null || this.reactionsContainerLayout == null) {
            return;
        }
        long min = Math.min(16L, System.currentTimeMillis() - this.lastUpdate);
        this.lastUpdate = System.currentTimeMillis();
        float f = this.currentOffsetY;
        float f2 = this.toOffsetY;
        if (f != f2) {
            float f3 = ((float) min) / 220.0f;
            if (f2 > f) {
                this.currentOffsetY = Math.min(f + f3, f2);
            } else if (f2 < f) {
                this.currentOffsetY = Math.max(f - f3, f2);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ChatSelectionReactionMenuOverlay.this.invalidatePosition();
                }
            });
        }
        RecyclerListView chatListView = this.parentFragment.getChatListView();
        chatListView.getLocationInWindow(this.pos);
        boolean z4 = true;
        getLocationInWindow(this.pos);
        float pullingDownOffset = (iArr[1] - this.pos[1]) - this.parentFragment.getPullingDownOffset();
        boolean z5 = false;
        for (int i = 0; i < chatListView.getChildCount(); i++) {
            View childAt = chatListView.getChildAt(i);
            if (childAt instanceof ChatMessageCell) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                MessageObject messageObject = chatMessageCell.getMessageObject();
                if (messageObject.getId() == this.currentPrimaryObject.getId()) {
                    boolean isOutOwner = messageObject.isOutOwner();
                    ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
                    if (reactionsContainerLayout != null) {
                        reactionsContainerLayout.setMirrorX(isOutOwner);
                        this.reactionsContainerLayout.setPadding(AndroidUtilities.m50dp(4) + ((LocaleController.isRTL || isOutOwner) ? 0 : this.mSidePadding), AndroidUtilities.m50dp(this.mPadding), AndroidUtilities.m50dp(4) + ((LocaleController.isRTL || isOutOwner) ? this.mSidePadding : 0), AndroidUtilities.m50dp(this.mPadding));
                    }
                    int height2 = getHeight() != 0 ? getHeight() : chatListView.getHeight();
                    if (chatMessageCell.getCurrentMessagesGroup() != null) {
                        MessageObject.GroupedMessages.TransitionParams transitionParams = chatMessageCell.getCurrentMessagesGroup().transitionParams;
                        height = transitionParams.bottom - transitionParams.top;
                    } else {
                        height = chatMessageCell.getHeight();
                    }
                    float y = (chatMessageCell.getY() + pullingDownOffset) - AndroidUtilities.m50dp(74);
                    float m50dp = AndroidUtilities.m50dp(14);
                    float m50dp2 = height2 - AndroidUtilities.m50dp(218);
                    FragmentContextView fragmentContextView = this.parentFragment.getFragmentContextView();
                    if (fragmentContextView != null && fragmentContextView.getVisibility() == 0) {
                        m50dp += fragmentContextView.getHeight();
                    }
                    float f4 = height;
                    if (y > m50dp - (f4 / 2.0f) && y < m50dp2) {
                        this.toOffsetY = BitmapDescriptorFactory.HUE_RED;
                        z2 = false;
                        z3 = true;
                    } else {
                        if (y < (m50dp - f4) - AndroidUtilities.m50dp(92) || y > m50dp2) {
                            z2 = false;
                        } else {
                            this.translationOffsetY = height + AndroidUtilities.m50dp(56);
                            this.toOffsetY = 1.0f;
                            z2 = true;
                        }
                        z3 = z2;
                    }
                    if (!z) {
                        this.currentOffsetY = this.toOffsetY;
                    }
                    float interpolation = y + (CubicBezierInterpolator.DEFAULT.getInterpolation(this.currentOffsetY) * this.translationOffsetY);
                    ReactionsContainerLayout reactionsContainerLayout2 = this.reactionsContainerLayout;
                    if (reactionsContainerLayout2 == null) {
                        return;
                    }
                    if (z2 != reactionsContainerLayout2.isFlippedVertically()) {
                        this.reactionsContainerLayout.setFlippedVertically(z2);
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.ChatSelectionReactionMenuOverlay$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChatSelectionReactionMenuOverlay.this.invalidatePosition();
                            }
                        });
                    }
                    if (z3 != this.reactionsContainerLayout.isEnabled()) {
                        this.reactionsContainerLayout.setEnabled(z3);
                        this.reactionsContainerLayout.invalidate();
                        if (z3) {
                            this.reactionsContainerLayout.setVisibility(0);
                            if (!this.messageSet) {
                                this.messageSet = true;
                                this.reactionsContainerLayout.setMessage(this.currentPrimaryObject, this.parentFragment.getCurrentChatInfo());
                            }
                        }
                    }
                    this.reactionsContainerLayout.setTranslationY(MathUtils.clamp(interpolation, m50dp, m50dp2));
                    this.reactionsContainerLayout.setTranslationX(chatMessageCell.getNonAnimationTranslationX(true));
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.reactionsContainerLayout.getLayoutParams();
                    int max = Math.max(0, chatMessageCell.getBackgroundDrawableLeft() - AndroidUtilities.m50dp(32));
                    int max2 = Math.max((int) chatMessageCell.getNonAnimationTranslationX(true), (chatMessageCell.getWidth() - chatMessageCell.getBackgroundDrawableRight()) - AndroidUtilities.m50dp(32));
                    int m50dp3 = AndroidUtilities.m50dp(40) * 8;
                    if ((getWidth() - max2) - max < m50dp3) {
                        if (isOutOwner) {
                            max = Math.min(max, (getWidth() - 0) - m50dp3);
                            max2 = 0;
                        } else {
                            max2 = Math.min(max2, (getWidth() - 0) - m50dp3);
                            max = 0;
                        }
                    }
                    int i2 = isOutOwner ? 5 : 3;
                    if (i2 != layoutParams.gravity) {
                        layoutParams.gravity = i2;
                        z5 = true;
                    }
                    if (max != layoutParams.leftMargin) {
                        layoutParams.leftMargin = max;
                        z5 = true;
                    }
                    if (max2 != layoutParams.rightMargin) {
                        layoutParams.rightMargin = max2;
                    } else {
                        z4 = z5;
                    }
                    if (z4) {
                        this.reactionsContainerLayout.requestLayout();
                        return;
                    }
                    return;
                }
            }
        }
        ReactionsContainerLayout reactionsContainerLayout3 = this.reactionsContainerLayout;
        if (reactionsContainerLayout3 == null || !reactionsContainerLayout3.isEnabled()) {
            return;
        }
        this.reactionsContainerLayout.setEnabled(false);
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

    /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSelectedMessages(java.util.List<org.telegram.messenger.MessageObject> r10) {
        /*
            r9 = this;
            r9.selectedMessages = r10
            org.telegram.ui.ChatActivity r0 = r9.parentFragment
            boolean r0 = r0.isSecretChat()
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L5a
            org.telegram.ui.ChatActivity r0 = r9.parentFragment
            org.telegram.tgnet.TLRPC$ChatFull r0 = r0.getCurrentChatInfo()
            if (r0 == 0) goto L20
            org.telegram.ui.ChatActivity r0 = r9.parentFragment
            org.telegram.tgnet.TLRPC$ChatFull r0 = r0.getCurrentChatInfo()
            org.telegram.tgnet.TLRPC$ChatReactions r0 = r0.available_reactions
            boolean r0 = r0 instanceof org.telegram.tgnet.TLRPC$TL_chatReactionsNone
            if (r0 != 0) goto L5a
        L20:
            boolean r0 = org.telegram.messenger.SharedConfig.isReactionsEnabled
            if (r0 != 0) goto L25
            goto L5a
        L25:
            boolean r0 = r10.isEmpty()
            if (r0 != 0) goto L5a
            java.util.Iterator r10 = r10.iterator()
            r3 = 0
            r0 = r2
            r5 = r3
        L33:
            boolean r7 = r10.hasNext()
            if (r7 == 0) goto L5b
            java.lang.Object r7 = r10.next()
            org.telegram.messenger.MessageObject r7 = (org.telegram.messenger.MessageObject) r7
            boolean r8 = r9.isMessageTypeAllowed(r7)
            if (r8 != 0) goto L46
            goto L5a
        L46:
            if (r0 != 0) goto L4e
            long r5 = r7.getGroupId()
            r0 = r1
            goto L33
        L4e:
            long r7 = r7.getGroupId()
            int r7 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r7 != 0) goto L5a
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 != 0) goto L33
        L5a:
            r1 = r2
        L5b:
            boolean r10 = r9.isVisible
            if (r1 == r10) goto L67
            r9.isVisible = r1
            r9.hiddenByScroll = r2
            r9.animateVisible(r1)
            goto L6f
        L67:
            if (r1 == 0) goto L6f
            org.telegram.messenger.MessageObject r10 = r9.findPrimaryObject()
            r9.currentPrimaryObject = r10
        L6f:
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

    public boolean onBackPressed() {
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
        if (reactionsContainerLayout == null || reactionsContainerLayout.getReactionsWindow() == null) {
            return true;
        }
        this.reactionsContainerLayout.dismissWindow();
        return false;
    }

    public void setHiddenByScroll(boolean z) {
        this.hiddenByScroll = z;
        if (z) {
            animateVisible(false);
        }
    }
}
