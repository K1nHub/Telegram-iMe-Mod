package org.telegram.p048ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.style.CharacterStyle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.recyclerview.widget.ChatListItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.GridLayoutManagerFixed;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ForwardingMessagesParams;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p048ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.ChatMessageCell;
import org.telegram.p048ui.Cells.TextSelectionHelper;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.Components.ForwardingPreviewView;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.PinchToZoomHelper;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$KeyboardButton;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$ReactionCount;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.ForwardingPreviewView */
/* loaded from: classes6.dex */
public class ForwardingPreviewView extends FrameLayout {
    C3366ActionBar actionBar;
    ArrayList<ActionBarMenuSubItem> actionItems;
    Adapter adapter;
    LinearLayout buttonsLayout;
    LinearLayout buttonsLayout2;
    Runnable changeBoundsRunnable;
    ActionBarMenuSubItem changeRecipientView;
    GridLayoutManagerFixed chatLayoutManager;
    RecyclerListView chatListView;
    SizeNotifierFrameLayout chatPreviewContainer;
    int chatTopOffset;
    TLRPC$Chat currentChat;
    int currentTopOffset;
    TLRPC$User currentUser;
    float currentYOffset;
    private final ArrayList<MessageObject.GroupedMessages> drawingGroups;
    private boolean firstLayout;
    ForwardingMessagesParams forwardingMessagesParams;
    ActionBarMenuSubItem hideCaptionView;
    ActionBarMenuSubItem hideSendersNameView;
    boolean isLandscapeMode;
    ChatListItemAnimator itemAnimator;
    int lastSize;
    LinearLayout menuContainer;
    ScrollView menuScrollView;
    ValueAnimator offsetsAnimator;
    private ActionBarMenuSubItem openEditorView;
    Rect rect;
    private final ResourcesDelegate resourcesProvider;
    boolean returnSendersNames;
    private boolean returnSendersNamesByMedia;
    private boolean returnSendersNamesByPreview;
    TLRPC$Peer sendAsPeer;
    ActionBarMenuSubItem sendMessagesView;
    ActionBarMenuSubItem showCaptionView;
    private ActionBarMenuSubItem showMediaView;
    private ActionBarMenuSubItem showPreviewView;
    ActionBarMenuSubItem showSendersNameView;
    boolean showing;
    boolean updateAfterAnimations;
    float yOffset;

    /* renamed from: org.telegram.ui.Components.ForwardingPreviewView$ResourcesDelegate */
    /* loaded from: classes6.dex */
    public interface ResourcesDelegate extends Theme.ResourcesProvider {
        Drawable getWallpaperDrawable();

        boolean isWallpaperMotion();
    }

    private void updateColors() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: didDeletePressed */
    public void lambda$new$4() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: didEditPressed */
    public void lambda$new$0() {
    }

    protected void didOpenEditorPressed() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: didRenamePressed */
    public void lambda$new$2() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void didSendPressed() {
    }

    protected void onDismiss(boolean z) {
    }

    protected void onTransitionAnimationProgress(boolean z, float f) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void selectAnotherChat() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MessageObject.GroupedMessages getValidGroupedMessage(MessageObject messageObject) {
        return getValidGroupedMessage(messageObject, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOpenEditorItem() {
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        this.forwardingMessagesParams.getSelectedMessages(arrayList, true);
        int visibility = this.openEditorView.getVisibility();
        if (this.forwardingMessagesParams.isTemplatePreview() || (arrayList.size() == 1 && !arrayList.get(0).canEditMessage(null, true))) {
            this.openEditorView.setVisibility(8);
        } else {
            this.openEditorView.setVisibility(0);
            if (arrayList.size() == 1) {
                this.openEditorView.setTextAndIcon(LocaleController.getString("EditMessage", C3301R.string.EditMessage), C3301R.C3303drawable.msg_edit);
            } else {
                this.openEditorView.setTextAndIcon(LocaleController.getString("EventLogPromotedEditMessages", C3301R.string.EventLogPromotedEditMessages), C3301R.C3303drawable.msg_edit);
            }
        }
        if (visibility != this.openEditorView.getVisibility()) {
            requestLayout();
            updatePositions();
        }
    }

    public void setSendAsPeer(TLRPC$Peer tLRPC$Peer) {
        this.sendAsPeer = tLRPC$Peer;
        updateMessages();
    }

    public ForwardingPreviewView(Context context, final ForwardingMessagesParams forwardingMessagesParams, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, int i, final ResourcesDelegate resourcesDelegate) {
        super(context);
        int i2;
        String str;
        int i3;
        String str2;
        String str3;
        String str4;
        String str5;
        int i4;
        String str6;
        final ForwardingMessagesParams forwardingMessagesParams2;
        this.actionItems = new ArrayList<>();
        this.rect = new Rect();
        this.firstLayout = true;
        this.changeBoundsRunnable = new Runnable() { // from class: org.telegram.ui.Components.ForwardingPreviewView.1
            @Override // java.lang.Runnable
            public void run() {
                ValueAnimator valueAnimator = ForwardingPreviewView.this.offsetsAnimator;
                if (valueAnimator == null || valueAnimator.isRunning()) {
                    return;
                }
                ForwardingPreviewView.this.offsetsAnimator.start();
            }
        };
        this.drawingGroups = new ArrayList<>(10);
        this.currentUser = tLRPC$User;
        this.currentChat = tLRPC$Chat;
        this.forwardingMessagesParams = forwardingMessagesParams;
        this.resourcesProvider = resourcesDelegate;
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.Components.ForwardingPreviewView.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p048ui.Components.SizeNotifierFrameLayout
            public Drawable getNewDrawable() {
                ResourcesDelegate resourcesDelegate2 = resourcesDelegate;
                Drawable cachedWallpaperNonBlocking = resourcesDelegate2 == null ? Theme.getCachedWallpaperNonBlocking() : resourcesDelegate2.getWallpaperDrawable();
                return cachedWallpaperNonBlocking != null ? cachedWallpaperNonBlocking : super.getNewDrawable();
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getY() < ForwardingPreviewView.this.currentTopOffset) {
                    return false;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.chatPreviewContainer = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setBackgroundImage(resourcesDelegate == null ? Theme.getCachedWallpaperNonBlocking() : resourcesDelegate.getWallpaperDrawable(), resourcesDelegate == null ? Theme.isWallpaperMotion() : resourcesDelegate.isWallpaperMotion());
        this.chatPreviewContainer.setOccupyStatusBar(false);
        if (Build.VERSION.SDK_INT >= 21) {
            this.chatPreviewContainer.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.ForwardingPreviewView.3
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, ForwardingPreviewView.this.currentTopOffset + 1, view.getMeasuredWidth(), view.getMeasuredHeight(), AndroidUtilities.m50dp(6));
                }
            });
            this.chatPreviewContainer.setClipToOutline(true);
            this.chatPreviewContainer.setElevation(AndroidUtilities.m50dp(4));
        }
        C3366ActionBar c3366ActionBar = new C3366ActionBar(context, resourcesDelegate);
        this.actionBar = c3366ActionBar;
        c3366ActionBar.setBackgroundColor(getThemedColor("actionBarDefault"));
        this.actionBar.setOccupyStatusBar(false);
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesDelegate) { // from class: org.telegram.ui.Components.ForwardingPreviewView.4
            @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (view instanceof ChatMessageCell) {
                    ChatMessageCell chatMessageCell = (ChatMessageCell) view;
                    if (chatMessageCell.getMessageObject().hidden) {
                        return true;
                    }
                    boolean drawChild = super.drawChild(canvas, view, j);
                    if (!ForwardingPreviewView.this.forwardingMessagesParams.isTemplatePreview()) {
                        chatMessageCell.drawCheckBox(canvas);
                    }
                    canvas.save();
                    canvas.translate(chatMessageCell.getX(), chatMessageCell.getY());
                    chatMessageCell.drawMessageText(canvas, chatMessageCell.getMessageObject().textLayoutBlocks, chatMessageCell.getMessageObject().textXOffset, true, 1.0f, false);
                    if (chatMessageCell.getCurrentMessagesGroup() != null || chatMessageCell.getTransitionParams().animateBackgroundBoundsInner) {
                        chatMessageCell.drawNamesLayout(canvas, 1.0f);
                    }
                    if ((chatMessageCell.getCurrentPosition() != null && chatMessageCell.getCurrentPosition().last) || chatMessageCell.getTransitionParams().animateBackgroundBoundsInner) {
                        chatMessageCell.drawTime(canvas, 1.0f, true);
                    }
                    if (chatMessageCell.getCurrentPosition() == null || chatMessageCell.getCurrentPosition().last || chatMessageCell.getCurrentMessagesGroup().isDocuments) {
                        chatMessageCell.drawCaptionLayout(canvas, false, 1.0f);
                    }
                    chatMessageCell.getTransitionParams().recordDrawingStatePreview();
                    canvas.restore();
                    return drawChild;
                }
                return true;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p048ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                for (int i5 = 0; i5 < getChildCount(); i5++) {
                    View childAt = getChildAt(i5);
                    if (childAt instanceof ChatMessageCell) {
                        ((ChatMessageCell) childAt).setParentViewSize(ForwardingPreviewView.this.chatPreviewContainer.getMeasuredWidth(), ForwardingPreviewView.this.chatPreviewContainer.getBackgroundSizeY());
                    }
                }
                drawChatBackgroundElements(canvas);
                super.dispatchDraw(canvas);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i5, int i6, int i7, int i8) {
                super.onLayout(z, i5, i6, i7, i8);
                ForwardingPreviewView.this.updatePositions();
            }

            private void drawChatBackgroundElements(Canvas canvas) {
                boolean z;
                int i5;
                MessageObject.GroupedMessages currentMessagesGroup;
                ChatMessageCell chatMessageCell;
                MessageObject.GroupedMessages currentMessagesGroup2;
                int childCount = getChildCount();
                boolean z2 = false;
                MessageObject.GroupedMessages groupedMessages = null;
                for (int i6 = 0; i6 < childCount; i6++) {
                    View childAt = getChildAt(i6);
                    if ((childAt instanceof ChatMessageCell) && ((currentMessagesGroup2 = (chatMessageCell = (ChatMessageCell) childAt).getCurrentMessagesGroup()) == null || currentMessagesGroup2 != groupedMessages)) {
                        chatMessageCell.getCurrentPosition();
                        chatMessageCell.getBackgroundDrawable();
                        groupedMessages = currentMessagesGroup2;
                    }
                }
                int i7 = 0;
                while (i7 < 3) {
                    ForwardingPreviewView.this.drawingGroups.clear();
                    if (i7 != 2 || ForwardingPreviewView.this.chatListView.isFastScrollAnimationRunning()) {
                        int i8 = z2 ? 1 : 0;
                        while (true) {
                            z = true;
                            if (i8 >= childCount) {
                                break;
                            }
                            View childAt2 = ForwardingPreviewView.this.chatListView.getChildAt(i8);
                            if (childAt2 instanceof ChatMessageCell) {
                                ChatMessageCell chatMessageCell2 = (ChatMessageCell) childAt2;
                                if (childAt2.getY() <= ForwardingPreviewView.this.chatListView.getHeight() && childAt2.getY() + childAt2.getHeight() >= BitmapDescriptorFactory.HUE_RED && (currentMessagesGroup = chatMessageCell2.getCurrentMessagesGroup()) != null && ((i7 != 0 || currentMessagesGroup.messages.size() != 1) && ((i7 != 1 || currentMessagesGroup.transitionParams.drawBackgroundForDeletedItems) && ((i7 != 0 || !chatMessageCell2.getMessageObject().deleted) && ((i7 != 1 || chatMessageCell2.getMessageObject().deleted) && ((i7 != 2 || chatMessageCell2.willRemovedAfterAnimation()) && (i7 == 2 || !chatMessageCell2.willRemovedAfterAnimation()))))))) {
                                    if (!ForwardingPreviewView.this.drawingGroups.contains(currentMessagesGroup)) {
                                        MessageObject.GroupedMessages.TransitionParams transitionParams = currentMessagesGroup.transitionParams;
                                        transitionParams.left = z2 ? 1 : 0;
                                        transitionParams.top = z2 ? 1 : 0;
                                        transitionParams.right = z2 ? 1 : 0;
                                        transitionParams.bottom = z2 ? 1 : 0;
                                        transitionParams.pinnedBotton = z2;
                                        transitionParams.pinnedTop = z2;
                                        transitionParams.cell = chatMessageCell2;
                                        ForwardingPreviewView.this.drawingGroups.add(currentMessagesGroup);
                                    }
                                    currentMessagesGroup.transitionParams.pinnedTop = chatMessageCell2.isPinnedTop();
                                    currentMessagesGroup.transitionParams.pinnedBotton = chatMessageCell2.isPinnedBottom();
                                    int left = chatMessageCell2.getLeft() + chatMessageCell2.getBackgroundDrawableLeft();
                                    int left2 = chatMessageCell2.getLeft() + chatMessageCell2.getBackgroundDrawableRight();
                                    int top = chatMessageCell2.getTop() + chatMessageCell2.getBackgroundDrawableTop();
                                    int top2 = chatMessageCell2.getTop() + chatMessageCell2.getBackgroundDrawableBottom();
                                    if ((chatMessageCell2.getCurrentPosition().flags & 4) == 0) {
                                        top -= AndroidUtilities.m50dp(10);
                                    }
                                    if ((chatMessageCell2.getCurrentPosition().flags & 8) == 0) {
                                        top2 += AndroidUtilities.m50dp(10);
                                    }
                                    if (chatMessageCell2.willRemovedAfterAnimation()) {
                                        currentMessagesGroup.transitionParams.cell = chatMessageCell2;
                                    }
                                    MessageObject.GroupedMessages.TransitionParams transitionParams2 = currentMessagesGroup.transitionParams;
                                    int i9 = transitionParams2.top;
                                    if (i9 == 0 || top < i9) {
                                        transitionParams2.top = top;
                                    }
                                    int i10 = transitionParams2.bottom;
                                    if (i10 == 0 || top2 > i10) {
                                        transitionParams2.bottom = top2;
                                    }
                                    int i11 = transitionParams2.left;
                                    if (i11 == 0 || left < i11) {
                                        transitionParams2.left = left;
                                    }
                                    int i12 = transitionParams2.right;
                                    if (i12 == 0 || left2 > i12) {
                                        transitionParams2.right = left2;
                                    }
                                }
                            }
                            i8++;
                        }
                        int i13 = z2 ? 1 : 0;
                        while (i13 < ForwardingPreviewView.this.drawingGroups.size()) {
                            MessageObject.GroupedMessages groupedMessages2 = (MessageObject.GroupedMessages) ForwardingPreviewView.this.drawingGroups.get(i13);
                            if (groupedMessages2 == null) {
                                i5 = i7;
                            } else {
                                float nonAnimationTranslationX = groupedMessages2.transitionParams.cell.getNonAnimationTranslationX(z);
                                MessageObject.GroupedMessages.TransitionParams transitionParams3 = groupedMessages2.transitionParams;
                                float f = transitionParams3.left + nonAnimationTranslationX + transitionParams3.offsetLeft;
                                float f2 = transitionParams3.top + transitionParams3.offsetTop;
                                float f3 = transitionParams3.right + nonAnimationTranslationX + transitionParams3.offsetRight;
                                float f4 = transitionParams3.bottom + transitionParams3.offsetBottom;
                                if (!transitionParams3.backgroundChangeBounds) {
                                    f2 += transitionParams3.cell.getTranslationY();
                                    f4 += groupedMessages2.transitionParams.cell.getTranslationY();
                                }
                                if (f2 < (-AndroidUtilities.m50dp(20))) {
                                    f2 = -AndroidUtilities.m50dp(20);
                                }
                                if (f4 > ForwardingPreviewView.this.chatListView.getMeasuredHeight() + AndroidUtilities.m50dp(20)) {
                                    f4 = ForwardingPreviewView.this.chatListView.getMeasuredHeight() + AndroidUtilities.m50dp(20);
                                }
                                boolean z3 = (groupedMessages2.transitionParams.cell.getScaleX() == 1.0f && groupedMessages2.transitionParams.cell.getScaleY() == 1.0f) ? z2 : z;
                                if (z3) {
                                    canvas.save();
                                    canvas.scale(groupedMessages2.transitionParams.cell.getScaleX(), groupedMessages2.transitionParams.cell.getScaleY(), f + ((f3 - f) / 2.0f), f2 + ((f4 - f2) / 2.0f));
                                }
                                MessageObject.GroupedMessages.TransitionParams transitionParams4 = groupedMessages2.transitionParams;
                                i5 = i7;
                                transitionParams4.cell.drawBackground(canvas, (int) f, (int) f2, (int) f3, (int) f4, transitionParams4.pinnedTop, transitionParams4.pinnedBotton, false, 0);
                                MessageObject.GroupedMessages.TransitionParams transitionParams5 = groupedMessages2.transitionParams;
                                transitionParams5.cell = null;
                                transitionParams5.drawCaptionLayout = groupedMessages2.hasCaption;
                                if (z3) {
                                    canvas.restore();
                                    for (int i14 = 0; i14 < childCount; i14++) {
                                        View childAt3 = ForwardingPreviewView.this.chatListView.getChildAt(i14);
                                        if (childAt3 instanceof ChatMessageCell) {
                                            ChatMessageCell chatMessageCell3 = (ChatMessageCell) childAt3;
                                            if (chatMessageCell3.getCurrentMessagesGroup() == groupedMessages2) {
                                                int left3 = chatMessageCell3.getLeft();
                                                int top3 = chatMessageCell3.getTop();
                                                childAt3.setPivotX((f - left3) + ((f3 - f) / 2.0f));
                                                childAt3.setPivotY((f2 - top3) + ((f4 - f2) / 2.0f));
                                            }
                                        }
                                    }
                                }
                            }
                            i13++;
                            i7 = i5;
                            z2 = false;
                            z = true;
                        }
                    }
                    i7++;
                    z2 = false;
                }
            }
        };
        this.chatListView = recyclerListView;
        C46275 c46275 = new C46275(null, this.chatListView, resourcesDelegate, i);
        this.itemAnimator = c46275;
        recyclerListView.setItemAnimator(c46275);
        this.chatListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView.6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i5, int i6) {
                super.onScrolled(recyclerView, i5, i6);
                for (int i7 = 0; i7 < ForwardingPreviewView.this.chatListView.getChildCount(); i7++) {
                    ((ChatMessageCell) ForwardingPreviewView.this.chatListView.getChildAt(i7)).setParentViewSize(ForwardingPreviewView.this.chatPreviewContainer.getMeasuredWidth(), ForwardingPreviewView.this.chatPreviewContainer.getBackgroundSizeY());
                }
            }
        });
        this.chatListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView.7
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public void onItemClick(View view, int i5) {
                if (ForwardingPreviewView.this.forwardingMessagesParams.previewMessages.size() <= 1 || ForwardingPreviewView.this.forwardingMessagesParams.isTemplatePreview()) {
                    return;
                }
                int id = forwardingMessagesParams.previewMessages.get(i5).getId();
                boolean z = !forwardingMessagesParams.selectedIds.get(id, false);
                if (ForwardingPreviewView.this.forwardingMessagesParams.selectedIds.size() != 1 || z) {
                    if (!z) {
                        forwardingMessagesParams.selectedIds.delete(id);
                    } else {
                        forwardingMessagesParams.selectedIds.put(id, z);
                    }
                    ((ChatMessageCell) view).setChecked(z, z, true);
                    ForwardingPreviewView.this.actionBar.setTitle(LocaleController.formatPluralString("PreviewForwardMessagesCount", forwardingMessagesParams.selectedIds.size(), new Object[0]));
                    ForwardingPreviewView.this.updateOpenEditorItem();
                }
            }
        });
        RecyclerListView recyclerListView2 = this.chatListView;
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        recyclerListView2.setAdapter(adapter);
        this.chatListView.setPadding(0, AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4));
        C46308 c46308 = new C46308(context, 1000, 1, true, forwardingMessagesParams);
        this.chatLayoutManager = c46308;
        c46308.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.ForwardingPreviewView.9
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i5) {
                if (i5 < 0 || i5 >= forwardingMessagesParams.previewMessages.size()) {
                    return 1000;
                }
                MessageObject messageObject = forwardingMessagesParams.previewMessages.get(i5);
                MessageObject.GroupedMessages validGroupedMessage = ForwardingPreviewView.this.getValidGroupedMessage(messageObject);
                if (validGroupedMessage != null) {
                    return validGroupedMessage.positions.get(messageObject).spanSize;
                }
                return 1000;
            }
        });
        this.chatListView.setClipToPadding(false);
        this.chatListView.setLayoutManager(this.chatLayoutManager);
        this.chatListView.addItemDecoration(new RecyclerView.ItemDecoration(this) { // from class: org.telegram.ui.Components.ForwardingPreviewView.10
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                ChatMessageCell chatMessageCell;
                MessageObject.GroupedMessages currentMessagesGroup;
                MessageObject.GroupedMessagePosition currentPosition;
                float[] fArr;
                int i5 = 0;
                rect.bottom = 0;
                if (!(view instanceof ChatMessageCell) || (currentMessagesGroup = (chatMessageCell = (ChatMessageCell) view).getCurrentMessagesGroup()) == null || (currentPosition = chatMessageCell.getCurrentPosition()) == null || currentPosition.siblingHeights == null) {
                    return;
                }
                Point point = AndroidUtilities.displaySize;
                float max = Math.max(point.x, point.y) * 0.5f;
                int extraInsetHeight = chatMessageCell.getExtraInsetHeight();
                int i6 = 0;
                while (true) {
                    if (i6 >= currentPosition.siblingHeights.length) {
                        break;
                    }
                    extraInsetHeight += (int) Math.ceil(fArr[i6] * max);
                    i6++;
                }
                int round = extraInsetHeight + ((currentPosition.maxY - currentPosition.minY) * Math.round(AndroidUtilities.density * 7.0f));
                int size = currentMessagesGroup.posArray.size();
                while (true) {
                    if (i5 < size) {
                        MessageObject.GroupedMessagePosition groupedMessagePosition = currentMessagesGroup.posArray.get(i5);
                        byte b = groupedMessagePosition.minY;
                        byte b2 = currentPosition.minY;
                        if (b == b2 && ((groupedMessagePosition.minX != currentPosition.minX || groupedMessagePosition.maxX != currentPosition.maxX || b != b2 || groupedMessagePosition.maxY != currentPosition.maxY) && b == b2)) {
                            round -= ((int) Math.ceil(max * groupedMessagePosition.f1436ph)) - AndroidUtilities.m50dp(4);
                            break;
                        }
                        i5++;
                    } else {
                        break;
                    }
                }
                rect.bottom = -round;
            }
        });
        this.chatPreviewContainer.addView(this.chatListView);
        addView(this.chatPreviewContainer, LayoutHelper.createFrame(-1, 400, 0, 8, 0, 8, 0));
        this.chatPreviewContainer.addView(this.actionBar, LayoutHelper.createFrame(-1, -2));
        ScrollView scrollView = new ScrollView(context);
        this.menuScrollView = scrollView;
        addView(scrollView, LayoutHelper.createFrame(-2, -2));
        LinearLayout linearLayout = new LinearLayout(context);
        this.menuContainer = linearLayout;
        linearLayout.setOrientation(1);
        this.menuScrollView.addView(this.menuContainer);
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.buttonsLayout = linearLayout2;
        linearLayout2.setOrientation(1);
        Resources resources = getContext().getResources();
        int i5 = C3301R.C3303drawable.popup_fixed_alert;
        Drawable mutate = resources.getDrawable(i5).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(getThemedColor("dialogBackground"), PorterDuff.Mode.MULTIPLY));
        this.buttonsLayout.setBackground(mutate);
        this.menuContainer.addView(this.buttonsLayout, LayoutHelper.createFrame(-1, -2));
        this.showSendersNameView = new ActionBarMenuSubItem(context, true, true, false, (Theme.ResourcesProvider) resourcesDelegate, 21);
        if (!this.forwardingMessagesParams.isTemplatePreview()) {
            this.buttonsLayout.addView(this.showSendersNameView, LayoutHelper.createFrame(-1, 48));
        }
        ActionBarMenuSubItem actionBarMenuSubItem = this.showSendersNameView;
        if (this.forwardingMessagesParams.multiplyUsers) {
            i2 = C3301R.string.ShowSenderNames;
            str = "ShowSenderNames";
        } else {
            i2 = C3301R.string.ShowSendersName;
            str = "ShowSendersName";
        }
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(str, i2), 0);
        this.showSendersNameView.setChecked(true);
        this.showSendersNameView.getCheckView().setDrawUnchecked(true);
        this.showSendersNameView.getCheckView().setColor("chat_messagePanelSend", "chat_messagePanelHint", "checkboxCheck");
        this.showSendersNameView.getCheckView().setDrawBackgroundAsArc(10);
        this.showSendersNameView.setText(LocaleController.getInternalString(C3301R.string.custom_forward_option_author));
        if (forwardingMessagesParams.needForceHideForwardAuthor) {
            this.showSendersNameView.setEnabled(false);
            this.showSendersNameView.setAlpha(0.5f);
        }
        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(context, true, false, !forwardingMessagesParams.hasCaption, (Theme.ResourcesProvider) resourcesDelegate);
        this.hideSendersNameView = actionBarMenuSubItem2;
        if (this.forwardingMessagesParams.multiplyUsers) {
            i3 = C3301R.string.HideSenderNames;
            str2 = "HideSenderNames";
        } else {
            i3 = C3301R.string.HideSendersName;
            str2 = "HideSendersName";
        }
        actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(str2, i3), 0);
        this.hideSendersNameView.setChecked(false);
        if (this.forwardingMessagesParams.hasCaption) {
            View view = new View(this, context) { // from class: org.telegram.ui.Components.ForwardingPreviewView.11
                @Override // android.view.View
                protected void onMeasure(int i6, int i7) {
                    super.onMeasure(i6, View.MeasureSpec.makeMeasureSpec(2, 1073741824));
                }
            };
            view.setBackgroundColor(getThemedColor("divider"));
            this.buttonsLayout.addView(view, LayoutHelper.createFrame(-1, -2));
            ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(context, true, false, false, (Theme.ResourcesProvider) resourcesDelegate, 21);
            this.showCaptionView = actionBarMenuSubItem3;
            this.buttonsLayout.addView(actionBarMenuSubItem3, LayoutHelper.createFrame(-1, 48));
            this.showCaptionView.setTextAndIcon(LocaleController.getString("ShowCaption", C3301R.string.ShowCaption), 0);
            this.showCaptionView.setChecked(true);
            this.showCaptionView.getCheckView().setDrawUnchecked(true);
            str4 = "checkboxCheck";
            this.showCaptionView.getCheckView().setColor("chat_messagePanelSend", "chat_messagePanelHint", str4);
            this.showCaptionView.getCheckView().setDrawBackgroundAsArc(10);
            this.showCaptionView.setText(LocaleController.getInternalString(C3301R.string.custom_forward_option_text));
            ActionBarMenuSubItem actionBarMenuSubItem4 = new ActionBarMenuSubItem(context, true, false, true, (Theme.ResourcesProvider) resourcesDelegate);
            this.hideCaptionView = actionBarMenuSubItem4;
            actionBarMenuSubItem4.setTextAndIcon(LocaleController.getString("HideCaption", C3301R.string.HideCaption), 0);
            this.hideCaptionView.setChecked(false);
            View view2 = new View(this, context) { // from class: org.telegram.ui.Components.ForwardingPreviewView.12
                @Override // android.view.View
                protected void onMeasure(int i6, int i7) {
                    super.onMeasure(i6, View.MeasureSpec.makeMeasureSpec(2, 1073741824));
                }
            };
            view2.setBackgroundColor(getThemedColor("divider"));
            this.buttonsLayout.addView(view2, LayoutHelper.createFrame(-1, -2));
            str5 = "chat_messagePanelHint";
            ActionBarMenuSubItem actionBarMenuSubItem5 = new ActionBarMenuSubItem(context, true, false, false, (Theme.ResourcesProvider) resourcesDelegate, 21);
            this.showMediaView = actionBarMenuSubItem5;
            this.buttonsLayout.addView(actionBarMenuSubItem5, LayoutHelper.createFrame(-1, 48));
            this.showMediaView.setTextAndIcon(LocaleController.getInternalString(C3301R.string.custom_forward_option_media), 0);
            this.showMediaView.setChecked(true);
            this.showMediaView.getCheckView().setDrawUnchecked(true);
            str3 = "chat_messagePanelSend";
            this.showMediaView.getCheckView().setColor(str3, str5, str4);
            this.showMediaView.getCheckView().setDrawBackgroundAsArc(10);
        } else {
            str3 = "chat_messagePanelSend";
            str4 = "checkboxCheck";
            str5 = "chat_messagePanelHint";
        }
        if (this.forwardingMessagesParams.hasPreview) {
            View view3 = new View(this, context) { // from class: org.telegram.ui.Components.ForwardingPreviewView.13
                @Override // android.view.View
                protected void onMeasure(int i6, int i7) {
                    super.onMeasure(i6, View.MeasureSpec.makeMeasureSpec(2, 1073741824));
                }
            };
            view3.setBackgroundColor(getThemedColor("divider"));
            this.buttonsLayout.addView(view3, LayoutHelper.createFrame(-1, -2));
            ActionBarMenuSubItem actionBarMenuSubItem6 = new ActionBarMenuSubItem(context, true, false, false, (Theme.ResourcesProvider) resourcesDelegate, 21);
            this.showPreviewView = actionBarMenuSubItem6;
            this.buttonsLayout.addView(actionBarMenuSubItem6, LayoutHelper.createFrame(-1, 48));
            this.showPreviewView.setTextAndIcon(LocaleController.getInternalString(C3301R.string.custom_forward_option_link_preview), 0);
            this.showPreviewView.setChecked(true);
            this.showPreviewView.getCheckView().setDrawUnchecked(true);
            this.showPreviewView.getCheckView().setColor(str3, str5, str4);
            this.showPreviewView.getCheckView().setDrawBackgroundAsArc(10);
        }
        if (this.forwardingMessagesParams.isTemplatePreview()) {
            ActionBarMenuSubItem actionBarMenuSubItem7 = new ActionBarMenuSubItem(context, true, false, (Theme.ResourcesProvider) resourcesDelegate);
            String string = LocaleController.getString("Edit", C3301R.string.Edit);
            int i6 = C3301R.C3303drawable.msg_edit;
            actionBarMenuSubItem7.setTextAndIcon(string, i6);
            actionBarMenuSubItem7.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    ForwardingPreviewView.this.lambda$new$1(view4);
                }
            });
            this.buttonsLayout.addView(actionBarMenuSubItem7, LayoutHelper.createFrame(-1, 48));
            this.actionItems.add(actionBarMenuSubItem7);
            ActionBarMenuSubItem actionBarMenuSubItem8 = new ActionBarMenuSubItem(context, false, false, (Theme.ResourcesProvider) resourcesDelegate);
            actionBarMenuSubItem8.setTextAndIcon(LocaleController.getString("EditName", C3301R.string.EditName), i6);
            actionBarMenuSubItem8.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    ForwardingPreviewView.this.lambda$new$3(view4);
                }
            });
            this.buttonsLayout.addView(actionBarMenuSubItem8, LayoutHelper.createFrame(-1, 48));
            this.actionItems.add(actionBarMenuSubItem8);
            ActionBarMenuSubItem actionBarMenuSubItem9 = new ActionBarMenuSubItem(context, false, true, (Theme.ResourcesProvider) resourcesDelegate);
            actionBarMenuSubItem9.setTextAndIcon(LocaleController.getString("Delete", C3301R.string.Delete), C3301R.C3303drawable.msg_delete);
            actionBarMenuSubItem9.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    ForwardingPreviewView.this.lambda$new$5(view4);
                }
            });
            this.buttonsLayout.addView(actionBarMenuSubItem9, LayoutHelper.createFrame(-1, 48));
            this.actionItems.add(actionBarMenuSubItem9);
        }
        LinearLayout linearLayout3 = new LinearLayout(context);
        this.buttonsLayout2 = linearLayout3;
        linearLayout3.setOrientation(1);
        Drawable mutate2 = getContext().getResources().getDrawable(i5).mutate();
        mutate2.setColorFilter(new PorterDuffColorFilter(getThemedColor("dialogBackground"), PorterDuff.Mode.MULTIPLY));
        this.buttonsLayout2.setBackground(mutate2);
        LinearLayout linearLayout4 = this.menuContainer;
        LinearLayout linearLayout5 = this.buttonsLayout2;
        ForwardingMessagesParams forwardingMessagesParams3 = this.forwardingMessagesParams;
        linearLayout4.addView(linearLayout5, LayoutHelper.createFrame(-1, -2, 0, 0, (forwardingMessagesParams3.hasSenders || forwardingMessagesParams3.isTemplatePreview()) ? -8 : 0, 0, 0));
        this.changeRecipientView = new ActionBarMenuSubItem(context, true, false, (Theme.ResourcesProvider) resourcesDelegate);
        boolean z = (this.forwardingMessagesParams.isTemplatePreview() || (tLRPC$User == null && tLRPC$Chat == null)) ? false : true;
        this.changeRecipientView.updateSelectorBackground(false, false);
        ActionBarMenuSubItem actionBarMenuSubItem10 = new ActionBarMenuSubItem(context, false, false, (Theme.ResourcesProvider) resourcesDelegate);
        this.openEditorView = actionBarMenuSubItem10;
        this.buttonsLayout2.addView(actionBarMenuSubItem10, LayoutHelper.createFrame(-1, 48));
        updateOpenEditorItem();
        if (z) {
            this.buttonsLayout2.addView(this.changeRecipientView, LayoutHelper.createFrame(-1, 48));
        }
        this.changeRecipientView.setTextAndIcon(LocaleController.getString("ChangeRecipient", C3301R.string.ChangeRecipient), C3301R.C3303drawable.msg_forward_replace);
        ActionBarMenuSubItem actionBarMenuSubItem11 = new ActionBarMenuSubItem(context, false, true, (Theme.ResourcesProvider) resourcesDelegate);
        this.sendMessagesView = actionBarMenuSubItem11;
        this.buttonsLayout2.addView(actionBarMenuSubItem11, LayoutHelper.createFrame(-1, 48));
        ActionBarMenuSubItem actionBarMenuSubItem12 = this.sendMessagesView;
        if (this.forwardingMessagesParams.isTemplatePreview()) {
            i4 = C3301R.string.Send;
            str6 = "Send";
        } else {
            i4 = C3301R.string.ForwardSendMessages;
            str6 = "ForwardSendMessages";
        }
        actionBarMenuSubItem12.setTextAndIcon(LocaleController.getString(str6, i4), C3301R.C3303drawable.msg_send);
        if (this.forwardingMessagesParams.hasSenders) {
            this.actionItems.add(this.showSendersNameView);
            forwardingMessagesParams2 = forwardingMessagesParams;
            if (forwardingMessagesParams2.hasCaption) {
                this.actionItems.add(this.showCaptionView);
                this.actionItems.add(this.showMediaView);
            }
            if (forwardingMessagesParams2.hasPreview) {
                this.actionItems.add(this.showPreviewView);
            }
        } else {
            forwardingMessagesParams2 = forwardingMessagesParams;
        }
        this.actionItems.add(this.openEditorView);
        if (z) {
            this.actionItems.add(this.changeRecipientView);
        }
        this.actionItems.add(this.sendMessagesView);
        this.showSendersNameView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                ForwardingPreviewView.this.lambda$new$6(forwardingMessagesParams2, view4);
            }
        });
        this.hideSendersNameView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                ForwardingPreviewView.this.lambda$new$7(forwardingMessagesParams2, view4);
            }
        });
        if (forwardingMessagesParams2.hasCaption) {
            this.showCaptionView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    ForwardingPreviewView.this.lambda$new$8(forwardingMessagesParams2, view4);
                }
            });
            this.hideCaptionView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    ForwardingPreviewView.this.lambda$new$9(forwardingMessagesParams2, view4);
                }
            });
            this.showMediaView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    ForwardingPreviewView.this.lambda$new$10(forwardingMessagesParams2, view4);
                }
            });
        }
        if (forwardingMessagesParams2.hasPreview) {
            this.showPreviewView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    ForwardingPreviewView.this.lambda$new$11(forwardingMessagesParams2, view4);
                }
            });
        }
        this.showSendersNameView.setChecked(!forwardingMessagesParams2.hideForwardSendersName);
        this.hideSendersNameView.setChecked(forwardingMessagesParams2.hideForwardSendersName);
        if (forwardingMessagesParams2.hasCaption) {
            this.showCaptionView.setChecked(!forwardingMessagesParams2.hideCaption);
            this.hideCaptionView.setChecked(forwardingMessagesParams2.hideCaption);
            this.showMediaView.setChecked(!forwardingMessagesParams2.needHideMedia);
        }
        if (forwardingMessagesParams2.hasPreview) {
            this.showPreviewView.setChecked(!forwardingMessagesParams2.needHidePreview);
        }
        if (!forwardingMessagesParams2.hasSenders && !forwardingMessagesParams.isTemplatePreview()) {
            this.buttonsLayout.setVisibility(8);
        }
        this.sendMessagesView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                ForwardingPreviewView.this.lambda$new$12(view4);
            }
        });
        this.changeRecipientView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                ForwardingPreviewView.this.lambda$new$13(view4);
            }
        });
        this.openEditorView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                ForwardingPreviewView.this.lambda$new$14(view4);
            }
        });
        updateMessages();
        updateSubtitle();
        if (forwardingMessagesParams.isTemplatePreview()) {
            this.actionBar.setTitle(forwardingMessagesParams2.template.getName());
        } else {
            this.actionBar.setTitle(LocaleController.formatPluralString("PreviewForwardMessagesCount", forwardingMessagesParams2.selectedIds.size(), new Object[0]));
        }
        this.menuScrollView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda14
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view4, MotionEvent motionEvent) {
                boolean lambda$new$15;
                lambda$new$15 = ForwardingPreviewView.this.lambda$new$15(view4, motionEvent);
                return lambda$new$15;
            }
        });
        setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda13
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view4, MotionEvent motionEvent) {
                boolean lambda$new$16;
                lambda$new$16 = ForwardingPreviewView.this.lambda$new$16(view4, motionEvent);
                return lambda$new$16;
            }
        });
        this.showing = true;
        setAlpha(BitmapDescriptorFactory.HUE_RED);
        setScaleX(0.95f);
        setScaleY(0.95f);
        animate().alpha(1.0f).scaleX(1.0f).setDuration(250L).setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR).scaleY(1.0f);
        animate().setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView.14
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ForwardingPreviewView forwardingPreviewView = ForwardingPreviewView.this;
                forwardingPreviewView.onTransitionAnimationProgress(true, forwardingPreviewView.getAlpha());
            }
        });
        updateColors();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.ForwardingPreviewView$5 */
    /* loaded from: classes6.dex */
    public class C46275 extends ChatListItemAnimator {
        Runnable finishRunnable;
        int scrollAnimationIndex;
        final /* synthetic */ int val$currentAccount;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C46275(ChatActivity chatActivity, RecyclerListView recyclerListView, Theme.ResourcesProvider resourcesProvider, int i) {
            super(chatActivity, recyclerListView, resourcesProvider);
            this.val$currentAccount = i;
            this.scrollAnimationIndex = -1;
        }

        @Override // androidx.recyclerview.widget.ChatListItemAnimator
        public void onAnimationStart() {
            super.onAnimationStart();
            AndroidUtilities.cancelRunOnUIThread(ForwardingPreviewView.this.changeBoundsRunnable);
            ForwardingPreviewView.this.changeBoundsRunnable.run();
            if (this.scrollAnimationIndex == -1) {
                this.scrollAnimationIndex = NotificationCenter.getInstance(this.val$currentAccount).setAnimationInProgress(this.scrollAnimationIndex, null, false);
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
            final int i = this.val$currentAccount;
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ForwardingPreviewView$5$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ForwardingPreviewView.C46275.this.lambda$onAllAnimationsDone$0(i);
                }
            };
            this.finishRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2);
            ForwardingPreviewView forwardingPreviewView = ForwardingPreviewView.this;
            if (forwardingPreviewView.updateAfterAnimations) {
                forwardingPreviewView.updateAfterAnimations = false;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ForwardingPreviewView$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ForwardingPreviewView.C46275.this.lambda$onAllAnimationsDone$1();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAllAnimationsDone$0(int i) {
            if (this.scrollAnimationIndex != -1) {
                NotificationCenter.getInstance(i).onAnimationFinish(this.scrollAnimationIndex);
                this.scrollAnimationIndex = -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAllAnimationsDone$1() {
            ForwardingPreviewView.this.updateMessages();
        }

        @Override // androidx.recyclerview.widget.ChatListItemAnimator, androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
        public void endAnimations() {
            super.endAnimations();
            Runnable runnable = this.finishRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            final int i = this.val$currentAccount;
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ForwardingPreviewView$5$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ForwardingPreviewView.C46275.this.lambda$endAnimations$2(i);
                }
            };
            this.finishRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$endAnimations$2(int i) {
            if (this.scrollAnimationIndex != -1) {
                NotificationCenter.getInstance(i).onAnimationFinish(this.scrollAnimationIndex);
                this.scrollAnimationIndex = -1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.ForwardingPreviewView$8 */
    /* loaded from: classes6.dex */
    public class C46308 extends GridLayoutManagerFixed {
        final /* synthetic */ ForwardingMessagesParams val$params;

        @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
        public boolean shouldLayoutChildFromOpositeSide(View view) {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C46308(Context context, int i, int i2, boolean z, ForwardingMessagesParams forwardingMessagesParams) {
            super(context, i, i2, z);
            this.val$params = forwardingMessagesParams;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManagerFixed
        protected boolean hasSiblingChild(int i) {
            byte b;
            MessageObject messageObject = this.val$params.previewMessages.get(i);
            MessageObject.GroupedMessages validGroupedMessage = ForwardingPreviewView.this.getValidGroupedMessage(messageObject);
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
                FileLog.m45e(e);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ForwardingPreviewView$8$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ForwardingPreviewView.C46308.this.lambda$onLayoutChildren$0();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLayoutChildren$0() {
            ForwardingPreviewView.this.adapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        if (this.showing) {
            dismiss(true);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    ForwardingPreviewView.this.lambda$new$0();
                }
            }, 250L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        if (this.showing) {
            dismiss(true);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    ForwardingPreviewView.this.lambda$new$2();
                }
            }, 250L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        if (this.showing) {
            dismiss(true);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    ForwardingPreviewView.this.lambda$new$4();
                }
            }, 250L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(ForwardingMessagesParams forwardingMessagesParams, View view) {
        boolean z = forwardingMessagesParams.hideForwardSendersName;
        if (!z) {
            this.hideSendersNameView.callOnClick();
        } else if (z) {
            this.returnSendersNames = false;
            this.returnSendersNamesByPreview = false;
            this.returnSendersNamesByMedia = false;
            this.showSendersNameView.setChecked(true);
            this.hideSendersNameView.setChecked(false);
            ActionBarMenuSubItem actionBarMenuSubItem = this.showCaptionView;
            if (actionBarMenuSubItem != null) {
                actionBarMenuSubItem.setChecked(true);
                this.hideCaptionView.setChecked(false);
            }
            ActionBarMenuSubItem actionBarMenuSubItem2 = this.showMediaView;
            if (actionBarMenuSubItem2 != null) {
                actionBarMenuSubItem2.setChecked(true);
            }
            ActionBarMenuSubItem actionBarMenuSubItem3 = this.showPreviewView;
            if (actionBarMenuSubItem3 != null) {
                actionBarMenuSubItem3.setChecked(true);
            }
            forwardingMessagesParams.needHidePreview = false;
            forwardingMessagesParams.needHideMedia = false;
            forwardingMessagesParams.hideForwardSendersName = false;
            forwardingMessagesParams.hideCaption = false;
            updateMessages();
            updateSubtitle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(ForwardingMessagesParams forwardingMessagesParams, View view) {
        if (forwardingMessagesParams.hideForwardSendersName) {
            return;
        }
        this.returnSendersNames = false;
        this.returnSendersNamesByPreview = false;
        this.returnSendersNamesByMedia = false;
        this.showSendersNameView.setChecked(false);
        this.hideSendersNameView.setChecked(true);
        forwardingMessagesParams.hideForwardSendersName = true;
        updateMessages();
        updateSubtitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(ForwardingMessagesParams forwardingMessagesParams, View view) {
        boolean z = forwardingMessagesParams.hideCaption;
        if (!z) {
            this.hideCaptionView.callOnClick();
        } else if (z) {
            if (this.returnSendersNames && this.returnSendersNamesByMedia && this.returnSendersNamesByPreview) {
                forwardingMessagesParams.hideForwardSendersName = false;
            }
            this.returnSendersNames = false;
            this.showCaptionView.setChecked(true);
            this.hideCaptionView.setChecked(false);
            this.showSendersNameView.setChecked(true ^ forwardingMessagesParams.hideForwardSendersName);
            this.hideSendersNameView.setChecked(forwardingMessagesParams.hideForwardSendersName);
            forwardingMessagesParams.hideCaption = false;
            updateMessages();
            updateSubtitle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(ForwardingMessagesParams forwardingMessagesParams, View view) {
        if (forwardingMessagesParams.hideCaption) {
            return;
        }
        if (forwardingMessagesParams.needHideMedia) {
            forwardingMessagesParams.needHideMedia = false;
            this.showMediaView.setChecked(true);
        }
        this.showCaptionView.setChecked(false);
        this.hideCaptionView.setChecked(true);
        this.showSendersNameView.setChecked(false);
        this.hideSendersNameView.setChecked(true);
        if (!forwardingMessagesParams.hideForwardSendersName) {
            forwardingMessagesParams.hideForwardSendersName = true;
            this.returnSendersNames = true;
        }
        forwardingMessagesParams.hideCaption = true;
        updateMessages();
        updateSubtitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(ForwardingMessagesParams forwardingMessagesParams, View view) {
        if (forwardingMessagesParams.needHideMedia) {
            if (this.returnSendersNames && this.returnSendersNamesByMedia && this.returnSendersNamesByPreview) {
                this.forwardingMessagesParams.hideForwardSendersName = false;
            }
            this.returnSendersNamesByMedia = false;
            this.showSendersNameView.setChecked(!this.forwardingMessagesParams.hideForwardSendersName);
        } else {
            ForwardingMessagesParams forwardingMessagesParams2 = this.forwardingMessagesParams;
            if (!forwardingMessagesParams2.hideForwardSendersName) {
                forwardingMessagesParams2.hideForwardSendersName = true;
                this.returnSendersNamesByMedia = true;
            }
            this.showSendersNameView.setChecked(false);
        }
        forwardingMessagesParams.needHideMedia = !forwardingMessagesParams.needHideMedia;
        ActionBarMenuSubItem actionBarMenuSubItem = this.showMediaView;
        actionBarMenuSubItem.setChecked(!actionBarMenuSubItem.getCheckView().isChecked());
        if (forwardingMessagesParams.needHideMedia && forwardingMessagesParams.hideCaption) {
            forwardingMessagesParams.hideCaption = false;
            this.showCaptionView.setChecked(true);
        }
        updateMessages();
        updateSubtitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(ForwardingMessagesParams forwardingMessagesParams, View view) {
        if (forwardingMessagesParams.needHidePreview) {
            if (this.returnSendersNames && this.returnSendersNamesByMedia && this.returnSendersNamesByPreview) {
                this.forwardingMessagesParams.hideForwardSendersName = false;
            }
            this.returnSendersNamesByPreview = false;
            this.showSendersNameView.setChecked(!this.forwardingMessagesParams.hideForwardSendersName);
        } else {
            ForwardingMessagesParams forwardingMessagesParams2 = this.forwardingMessagesParams;
            if (!forwardingMessagesParams2.hideForwardSendersName) {
                forwardingMessagesParams2.hideForwardSendersName = true;
                this.returnSendersNamesByPreview = true;
            }
            this.showSendersNameView.setChecked(false);
        }
        forwardingMessagesParams.needHidePreview = !forwardingMessagesParams.needHidePreview;
        ActionBarMenuSubItem actionBarMenuSubItem = this.showPreviewView;
        actionBarMenuSubItem.setChecked(!actionBarMenuSubItem.getCheckView().isChecked());
        updateMessages();
        updateSubtitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12(View view) {
        didSendPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$13(View view) {
        selectAnotherChat();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$14(View view) {
        didOpenEditorPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$15(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            dismiss(true);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$16(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            dismiss(true);
        }
        return true;
    }

    private void updateSubtitle() {
        if (this.forwardingMessagesParams.isTemplatePreview()) {
            return;
        }
        TLRPC$User tLRPC$User = this.currentUser;
        if (tLRPC$User == null && this.currentChat == null) {
            return;
        }
        ForwardingMessagesParams forwardingMessagesParams = this.forwardingMessagesParams;
        if (!forwardingMessagesParams.hasSenders) {
            if (forwardingMessagesParams.willSeeSenders) {
                if (tLRPC$User != null) {
                    this.actionBar.setSubtitle(LocaleController.formatString("ForwardPreviewSendersNameVisible", C3301R.string.ForwardPreviewSendersNameVisible, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name)));
                } else if (ChatObject.isChannel(this.currentChat) && !this.currentChat.megagroup) {
                    this.actionBar.setSubtitle(LocaleController.getString("ForwardPreviewSendersNameVisibleChannel", C3301R.string.ForwardPreviewSendersNameVisibleChannel));
                } else {
                    this.actionBar.setSubtitle(LocaleController.getString("ForwardPreviewSendersNameVisibleGroup", C3301R.string.ForwardPreviewSendersNameVisibleGroup));
                }
            } else if (tLRPC$User != null) {
                this.actionBar.setSubtitle(LocaleController.formatString("ForwardPreviewSendersNameVisible", C3301R.string.ForwardPreviewSendersNameVisible, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name)));
            } else if (ChatObject.isChannel(this.currentChat) && !this.currentChat.megagroup) {
                this.actionBar.setSubtitle(LocaleController.getString("ForwardPreviewSendersNameHiddenChannel", C3301R.string.ForwardPreviewSendersNameHiddenChannel));
            } else {
                this.actionBar.setSubtitle(LocaleController.getString("ForwardPreviewSendersNameHiddenGroup", C3301R.string.ForwardPreviewSendersNameHiddenGroup));
            }
        } else if (forwardingMessagesParams.hideForwardSendersName) {
            if (tLRPC$User != null) {
                this.actionBar.setSubtitle(LocaleController.formatString("ForwardPreviewSendersNameHidden", C3301R.string.ForwardPreviewSendersNameHidden, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name)));
            } else if (ChatObject.isChannel(this.currentChat) && !this.currentChat.megagroup) {
                this.actionBar.setSubtitle(LocaleController.getString("ForwardPreviewSendersNameHiddenChannel", C3301R.string.ForwardPreviewSendersNameHiddenChannel));
            } else {
                this.actionBar.setSubtitle(LocaleController.getString("ForwardPreviewSendersNameHiddenGroup", C3301R.string.ForwardPreviewSendersNameHiddenGroup));
            }
        } else if (tLRPC$User != null) {
            this.actionBar.setSubtitle(LocaleController.formatString("ForwardPreviewSendersNameVisible", C3301R.string.ForwardPreviewSendersNameVisible, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name)));
        } else if (ChatObject.isChannel(this.currentChat) && !this.currentChat.megagroup) {
            this.actionBar.setSubtitle(LocaleController.getString("ForwardPreviewSendersNameVisibleChannel", C3301R.string.ForwardPreviewSendersNameVisibleChannel));
        } else {
            this.actionBar.setSubtitle(LocaleController.getString("ForwardPreviewSendersNameVisibleGroup", C3301R.string.ForwardPreviewSendersNameVisibleGroup));
        }
    }

    public void dismiss(boolean z) {
        if (this.showing) {
            this.showing = false;
            animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleX(0.95f).scaleY(0.95f).setDuration(250L).setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ForwardingPreviewView.15
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (ForwardingPreviewView.this.getParent() != null) {
                        ((ViewGroup) ForwardingPreviewView.this.getParent()).removeView(ForwardingPreviewView.this);
                    }
                }
            });
            animate().setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView.16
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ForwardingPreviewView forwardingPreviewView = ForwardingPreviewView.this;
                    forwardingPreviewView.onTransitionAnimationProgress(false, forwardingPreviewView.getAlpha());
                }
            });
            onDismiss(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0115 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateMessages() {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.ForwardingPreviewView.updateMessages():void");
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        this.isLandscapeMode = View.MeasureSpec.getSize(i) > View.MeasureSpec.getSize(i2);
        int size = View.MeasureSpec.getSize(i);
        if (this.isLandscapeMode) {
            size = (int) (View.MeasureSpec.getSize(i) * 0.38f);
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.actionItems.size(); i4++) {
            if (this.actionItems.get(i4).getVisibility() == 0) {
                this.actionItems.get(i4).measure(View.MeasureSpec.makeMeasureSpec(size, 0), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 0));
                if (this.actionItems.get(i4).getMeasuredWidth() > i3) {
                    i3 = this.actionItems.get(i4).getMeasuredWidth();
                }
            }
        }
        this.buttonsLayout.getBackground().getPadding(this.rect);
        Rect rect = this.rect;
        int i5 = i3 + rect.left + rect.right;
        this.buttonsLayout.getLayoutParams().width = i5;
        this.buttonsLayout2.getLayoutParams().width = i5;
        this.buttonsLayout.measure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 0));
        this.buttonsLayout2.measure(i, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 0));
        ((ViewGroup.MarginLayoutParams) this.chatListView.getLayoutParams()).topMargin = C3366ActionBar.getCurrentActionBarHeight();
        if (this.isLandscapeMode) {
            this.chatPreviewContainer.getLayoutParams().height = -1;
            ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).topMargin = AndroidUtilities.m50dp(8);
            ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).bottomMargin = AndroidUtilities.m50dp(8);
            this.chatPreviewContainer.getLayoutParams().width = (int) Math.min(View.MeasureSpec.getSize(i), Math.max(AndroidUtilities.m50dp(340), View.MeasureSpec.getSize(i) * 0.6f));
            this.menuScrollView.getLayoutParams().height = -1;
        } else {
            ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).topMargin = 0;
            ((ViewGroup.MarginLayoutParams) this.chatPreviewContainer.getLayoutParams()).bottomMargin = 0;
            this.chatPreviewContainer.getLayoutParams().height = ((View.MeasureSpec.getSize(i2) - AndroidUtilities.m50dp(6)) - this.buttonsLayout.getMeasuredHeight()) - this.buttonsLayout2.getMeasuredHeight();
            if (this.chatPreviewContainer.getLayoutParams().height < View.MeasureSpec.getSize(i2) * 0.5f) {
                this.chatPreviewContainer.getLayoutParams().height = (int) (View.MeasureSpec.getSize(i2) * 0.5f);
            }
            this.chatPreviewContainer.getLayoutParams().width = -1;
            this.menuScrollView.getLayoutParams().height = View.MeasureSpec.getSize(i2) - this.chatPreviewContainer.getLayoutParams().height;
        }
        int size2 = (View.MeasureSpec.getSize(i) + View.MeasureSpec.getSize(i2)) << 16;
        if (this.lastSize != size2) {
            for (int i6 = 0; i6 < this.forwardingMessagesParams.previewMessages.size(); i6++) {
                if (this.isLandscapeMode) {
                    this.forwardingMessagesParams.previewMessages.get(i6).parentWidth = this.chatPreviewContainer.getLayoutParams().width;
                } else {
                    this.forwardingMessagesParams.previewMessages.get(i6).parentWidth = View.MeasureSpec.getSize(i) - AndroidUtilities.m50dp(16);
                }
                this.forwardingMessagesParams.previewMessages.get(i6).resetLayout();
                this.forwardingMessagesParams.previewMessages.get(i6).forceUpdate = true;
                Adapter adapter = this.adapter;
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
            }
            this.firstLayout = true;
        }
        this.lastSize = size2;
        super.onMeasure(i, i2);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updatePositions();
        this.firstLayout = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePositions() {
        final int i = this.chatTopOffset;
        final float f = this.yOffset;
        if (!this.isLandscapeMode) {
            if (this.chatListView.getChildCount() == 0 || this.chatListView.getChildCount() > this.forwardingMessagesParams.previewMessages.size()) {
                this.chatTopOffset = 0;
            } else {
                int top = this.chatListView.getChildAt(0).getTop();
                for (int i2 = 1; i2 < this.chatListView.getChildCount(); i2++) {
                    if (this.chatListView.getChildAt(i2).getTop() < top) {
                        top = this.chatListView.getChildAt(i2).getTop();
                    }
                }
                int m50dp = top - AndroidUtilities.m50dp(4);
                if (m50dp < 0) {
                    this.chatTopOffset = 0;
                } else {
                    this.chatTopOffset = m50dp;
                }
            }
            float m50dp2 = (AndroidUtilities.m50dp(8) + (((getMeasuredHeight() - AndroidUtilities.m50dp(16)) - (((this.buttonsLayout.getMeasuredHeight() + this.buttonsLayout2.getMeasuredHeight()) - AndroidUtilities.m50dp(8)) + (this.chatPreviewContainer.getMeasuredHeight() - this.chatTopOffset))) / 2.0f)) - this.chatTopOffset;
            this.yOffset = m50dp2;
            if (m50dp2 > AndroidUtilities.m50dp(8)) {
                this.yOffset = AndroidUtilities.m50dp(8);
            }
            this.menuScrollView.setTranslationX(getMeasuredWidth() - this.menuScrollView.getMeasuredWidth());
        } else {
            this.yOffset = BitmapDescriptorFactory.HUE_RED;
            this.chatTopOffset = 0;
            this.menuScrollView.setTranslationX(this.chatListView.getMeasuredWidth() + AndroidUtilities.m50dp(8));
        }
        boolean z = this.firstLayout;
        if (z || (this.chatTopOffset == i && this.yOffset == f)) {
            if (z) {
                float f2 = this.yOffset;
                this.currentYOffset = f2;
                int i3 = this.chatTopOffset;
                this.currentTopOffset = i3;
                setOffset(f2, i3);
                return;
            }
            return;
        }
        ValueAnimator valueAnimator = this.offsetsAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.offsetsAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ForwardingPreviewView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ForwardingPreviewView.this.lambda$updatePositions$17(i, f, valueAnimator2);
            }
        });
        this.offsetsAnimator.setDuration(250L);
        this.offsetsAnimator.setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR);
        this.offsetsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ForwardingPreviewView.17
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ForwardingPreviewView forwardingPreviewView = ForwardingPreviewView.this;
                forwardingPreviewView.offsetsAnimator = null;
                forwardingPreviewView.setOffset(forwardingPreviewView.yOffset, forwardingPreviewView.chatTopOffset);
            }
        });
        AndroidUtilities.runOnUIThread(this.changeBoundsRunnable, 50L);
        this.currentTopOffset = i;
        this.currentYOffset = f;
        setOffset(f, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updatePositions$17(int i, float f, ValueAnimator valueAnimator) {
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
        if (this.isLandscapeMode) {
            this.actionBar.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            if (Build.VERSION.SDK_INT >= 21) {
                this.chatPreviewContainer.invalidateOutline();
            }
            this.chatPreviewContainer.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            this.menuScrollView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            return;
        }
        this.actionBar.setTranslationY(i);
        if (Build.VERSION.SDK_INT >= 21) {
            this.chatPreviewContainer.invalidateOutline();
        }
        this.chatPreviewContainer.setTranslationY(f);
        this.menuScrollView.setTranslationY((f + this.chatPreviewContainer.getMeasuredHeight()) - AndroidUtilities.m50dp(2));
    }

    public boolean isShowing() {
        return this.showing;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.ForwardingPreviewView$Adapter */
    /* loaded from: classes6.dex */
    public class Adapter extends RecyclerView.Adapter {
        private Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerListView.Holder(new ChatMessageCell(viewGroup.getContext(), false, ForwardingPreviewView.this.resourcesProvider));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ChatMessageCell chatMessageCell = (ChatMessageCell) viewHolder.itemView;
            chatMessageCell.setInvalidateSpoilersParent(ForwardingPreviewView.this.forwardingMessagesParams.hasSpoilers);
            chatMessageCell.setParentViewSize(ForwardingPreviewView.this.chatListView.getMeasuredWidth(), ForwardingPreviewView.this.chatListView.getMeasuredHeight());
            int id = chatMessageCell.getMessageObject() != null ? chatMessageCell.getMessageObject().getId() : 0;
            ForwardingMessagesParams forwardingMessagesParams = ForwardingPreviewView.this.forwardingMessagesParams;
            chatMessageCell.setMessageObject(ForwardingPreviewView.this.forwardingMessagesParams.previewMessages.get(i), forwardingMessagesParams.groupedMessagesMap.get(forwardingMessagesParams.previewMessages.get(i).getGroupId()), true, true);
            chatMessageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate(this) { // from class: org.telegram.ui.Components.ForwardingPreviewView.Adapter.1
                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean canDrawOutboundsContent() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canDrawOutboundsContent(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean canPerformActions() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canPerformActions(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didLongPress(ChatMessageCell chatMessageCell2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPress(this, chatMessageCell2, f, f2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didLongPressBotButton(ChatMessageCell chatMessageCell2, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressBotButton(this, chatMessageCell2, tLRPC$KeyboardButton);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didLongPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC$Chat tLRPC$Chat, int i2, float f, float f2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressChannelAvatar(this, chatMessageCell2, tLRPC$Chat, i2, f, f2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC$User tLRPC$User, float f, float f2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressUserAvatar(this, chatMessageCell2, tLRPC$User, f, f2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressAdditionalSideButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAdditionalSideButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didPressAnimatedEmoji(ChatMessageCell chatMessageCell2, AnimatedEmojiSpan animatedEmojiSpan) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAnimatedEmoji(this, chatMessageCell2, animatedEmojiSpan);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressBotButton(ChatMessageCell chatMessageCell2, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBotButton(this, chatMessageCell2, tLRPC$KeyboardButton);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressCancelSendButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCancelSendButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC$Chat tLRPC$Chat, int i2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelAvatar(this, chatMessageCell2, tLRPC$Chat, i2, f, f2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressCommentButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCommentButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell2, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressExtendedMediaPreview(this, chatMessageCell2, tLRPC$KeyboardButton);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressForkTranscribeButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressForkTranscribeButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressHiddenForward(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHiddenForward(this, chatMessageCell2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressHint(ChatMessageCell chatMessageCell2, int i2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHint(this, chatMessageCell2, i2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressImage(ChatMessageCell chatMessageCell2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressImage(this, chatMessageCell2, f, f2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressInstantButton(ChatMessageCell chatMessageCell2, int i2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressInstantButton(this, chatMessageCell2, i2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressOther(ChatMessageCell chatMessageCell2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressOther(this, chatMessageCell2, f, f2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressReaction(ChatMessageCell chatMessageCell2, TLRPC$ReactionCount tLRPC$ReactionCount, boolean z) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReaction(this, chatMessageCell2, tLRPC$ReactionCount, z);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressReplyMessage(ChatMessageCell chatMessageCell2, int i2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReplyMessage(this, chatMessageCell2, i2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressSideButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSideButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressTime(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTime(this, chatMessageCell2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressTopicButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTopicButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressUrl(ChatMessageCell chatMessageCell2, CharacterStyle characterStyle, boolean z) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUrl(this, chatMessageCell2, characterStyle, z);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC$User tLRPC$User, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserAvatar(this, chatMessageCell2, tLRPC$User, f, f2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressViaBot(ChatMessageCell chatMessageCell2, String str) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBot(this, chatMessageCell2, str);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressViaBotNotInline(ChatMessageCell chatMessageCell2, long j) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBotNotInline(this, chatMessageCell2, j);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressVoteButtons(ChatMessageCell chatMessageCell2, ArrayList arrayList, int i2, int i3, int i4) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressVoteButtons(this, chatMessageCell2, arrayList, i2, i3, i4);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didStartVideoStream(MessageObject messageObject) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didStartVideoStream(this, messageObject);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ String getAdminRank(long j) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getAdminRank(this, j);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ PinchToZoomHelper getPinchToZoomHelper() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getPinchToZoomHelper(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ String getProgressLoadingBotButtonUrl(ChatMessageCell chatMessageCell2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingBotButtonUrl(this, chatMessageCell2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ CharacterStyle getProgressLoadingLink(ChatMessageCell chatMessageCell2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingLink(this, chatMessageCell2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ TextSelectionHelper.ChatListTextSelectionHelper getTextSelectionHelper() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getTextSelectionHelper(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean hasSelectedMessages() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$hasSelectedMessages(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void invalidateBlur() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$invalidateBlur(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isAllowForkTranscribe() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isAllowForkTranscribe(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isInPreviewMode() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isInPreviewMode(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isLandscape() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isLandscape(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isProgressLoading(ChatMessageCell chatMessageCell2, int i2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isProgressLoading(this, chatMessageCell2, i2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isReplyOrSelf() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isReplyOrSelf(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean keyboardIsOpened() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$keyboardIsOpened(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean needDrawTranslateButton(ChatMessageCell chatMessageCell2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needDrawTranslateButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void needOpenWebView(MessageObject messageObject, String str, String str2, String str3, String str4, int i2, int i3) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$needOpenWebView(this, messageObject, str, str2, str3, str4, i2, i3);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean needPlayMessage(MessageObject messageObject, boolean z) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needPlayMessage(this, messageObject, z);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void needReloadPolls() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$needReloadPolls(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void needShowPremiumBulletin(int i2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$needShowPremiumBulletin(this, i2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean onAccessibilityAction(int i2, Bundle bundle) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$onAccessibilityAction(this, i2, bundle);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void onDiceFinished() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$onDiceFinished(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void runWithActivationCheck(Callbacks$Callback callbacks$Callback) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$runWithActivationCheck(this, callbacks$Callback);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void setShouldNotRepeatSticker(MessageObject messageObject) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$setShouldNotRepeatSticker(this, messageObject);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean shouldDrawThreadProgress(ChatMessageCell chatMessageCell2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawThreadProgress(this, chatMessageCell2);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean shouldRepeatSticker(MessageObject messageObject) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldRepeatSticker(this, messageObject);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean shouldShowTopicButton() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldShowTopicButton(this);
                }

                @Override // org.telegram.p048ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void videoTimerReached() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$videoTimerReached(this);
                }
            });
            if (ForwardingPreviewView.this.forwardingMessagesParams.isTemplatePreview() || ForwardingPreviewView.this.forwardingMessagesParams.previewMessages.size() <= 1) {
                return;
            }
            chatMessageCell.setCheckBoxVisible(true, false);
            boolean z = id == ForwardingPreviewView.this.forwardingMessagesParams.previewMessages.get(i).getId();
            ForwardingMessagesParams forwardingMessagesParams2 = ForwardingPreviewView.this.forwardingMessagesParams;
            boolean z2 = forwardingMessagesParams2.selectedIds.get(forwardingMessagesParams2.previewMessages.get(i).getId(), false);
            chatMessageCell.setChecked(z2, z2, z);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ForwardingPreviewView.this.forwardingMessagesParams.previewMessages.size();
        }
    }

    private MessageObject.GroupedMessages getValidGroupedMessage(MessageObject messageObject, boolean z) {
        if (messageObject.getGroupId(z) != 0) {
            MessageObject.GroupedMessages groupedMessages = this.forwardingMessagesParams.groupedMessagesMap.get(messageObject.getGroupId(z));
            if (groupedMessages == null || (groupedMessages.messages.size() > 1 && groupedMessages.positions.get(messageObject) != null)) {
                return groupedMessages;
            }
            return null;
        }
        return null;
    }

    private int getThemedColor(String str) {
        ResourcesDelegate resourcesDelegate = this.resourcesProvider;
        Integer color = resourcesDelegate != null ? resourcesDelegate.getColor(str) : null;
        return color != null ? color.intValue() : Theme.getColor(str);
    }
}
