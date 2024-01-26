package org.telegram.p043ui.Components.Reactions;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.extractor.p015ts.PsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AnimatedEmojiDrawable;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p043ui.Components.ReactionsContainerLayout;
import org.telegram.p043ui.SelectAnimatedEmojiDialog;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$MessagePeerReaction;
import org.telegram.tgnet.TLRPC$TL_availableReaction;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay */
/* loaded from: classes6.dex */
public class ReactionsEffectOverlay {
    public static ReactionsEffectOverlay currentOverlay;
    public static ReactionsEffectOverlay currentShortOverlay;
    private static long lastHapticTime;
    private static int uniqPrefix;
    float animateInProgress;
    float animateOutProgress;
    private final int animationType;
    private ChatMessageCell cell;
    private final FrameLayout container;
    private ViewGroup decorView;
    private float dismissProgress;
    private boolean dismissed;
    private final AnimationView effectImageView;
    private final AnimationView emojiImageView;
    private final AnimationView emojiStaticImageView;
    private final long groupId;
    private ReactionsContainerLayout.ReactionHolderView holderView;
    boolean isFinished;
    public boolean isStories;
    private float lastDrawnToX;
    private float lastDrawnToY;
    private final int messageId;
    private ReactionsEffectOverlay nextReactionOverlay;
    private final ReactionsLayoutInBubble.VisibleReaction reaction;
    public long startTime;
    public boolean started;
    private boolean useWindow;
    private boolean wasScrolled;
    private WindowManager windowManager;
    public FrameLayout windowView;
    int[] loc = new int[2];
    ArrayList<AvatarParticle> avatars = new ArrayList<>();

    static /* synthetic */ float access$216(ReactionsEffectOverlay reactionsEffectOverlay, float f) {
        float f2 = reactionsEffectOverlay.dismissProgress + f;
        reactionsEffectOverlay.dismissProgress = f2;
        return f2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    public ReactionsEffectOverlay(Context context, BaseFragment baseFragment, ReactionsContainerLayout reactionsContainerLayout, ChatMessageCell chatMessageCell, View view, float f, float f2, ReactionsLayoutInBubble.VisibleReaction visibleReaction, int i, int i2, boolean z) {
        long j;
        ReactionsLayoutInBubble.ReactionButton reactionButton;
        ChatMessageCell chatMessageCell2;
        float f3;
        float f4;
        float f5;
        boolean z2;
        int round;
        int sizeForBigReaction;
        int i3;
        int i4;
        int i5;
        int i6;
        ?? r15;
        int i7;
        int i8;
        int i9;
        boolean z3;
        String str;
        Random random;
        ArrayList<TLRPC$MessagePeerReaction> arrayList;
        this.holderView = null;
        this.isStories = z;
        if (chatMessageCell != null) {
            this.messageId = chatMessageCell.getMessageObject().getId();
            this.groupId = chatMessageCell.getMessageObject().getGroupId();
        } else {
            this.messageId = 0;
            this.groupId = 0L;
        }
        this.reaction = visibleReaction;
        this.animationType = i2;
        this.cell = chatMessageCell;
        ReactionsLayoutInBubble.ReactionButton reactionButton2 = chatMessageCell != null ? chatMessageCell.getReactionButton(visibleReaction) : null;
        if (z && i2 == 2) {
            j = 0;
            reactionButton = reactionButton2;
            chatMessageCell2 = chatMessageCell;
            ReactionsEffectOverlay reactionsEffectOverlay = new ReactionsEffectOverlay(context, baseFragment, reactionsContainerLayout, chatMessageCell, view, f, f2, visibleReaction, i, 1, true);
            this.nextReactionOverlay = reactionsEffectOverlay;
            currentShortOverlay = reactionsEffectOverlay;
        } else {
            j = 0;
            reactionButton = reactionButton2;
            chatMessageCell2 = chatMessageCell;
        }
        ChatActivity chatActivity = baseFragment instanceof ChatActivity ? (ChatActivity) baseFragment : null;
        if (reactionsContainerLayout != null) {
            int i10 = 0;
            while (true) {
                if (i10 < reactionsContainerLayout.recyclerListView.getChildCount()) {
                    if ((reactionsContainerLayout.recyclerListView.getChildAt(i10) instanceof ReactionsContainerLayout.ReactionHolderView) && ((ReactionsContainerLayout.ReactionHolderView) reactionsContainerLayout.recyclerListView.getChildAt(i10)).currentReaction.equals(this.reaction)) {
                        this.holderView = (ReactionsContainerLayout.ReactionHolderView) reactionsContainerLayout.recyclerListView.getChildAt(i10);
                        break;
                    }
                    i10++;
                } else {
                    break;
                }
            }
        }
        int i11 = 60;
        float f6 = 0.8f;
        if (i2 == 1) {
            Random random2 = new Random();
            ArrayList<TLRPC$MessagePeerReaction> arrayList2 = (chatMessageCell2 == null || chatMessageCell.getMessageObject().messageOwner.reactions == null) ? null : chatMessageCell.getMessageObject().messageOwner.reactions.recent_reactions;
            if (arrayList2 != null && chatActivity != null && chatActivity.getDialogId() < j) {
                int i12 = 0;
                while (i12 < arrayList2.size()) {
                    if (this.reaction.equals(arrayList2.get(i12).reaction) && arrayList2.get(i12).unread) {
                        AvatarDrawable avatarDrawable = new AvatarDrawable();
                        ImageReceiver imageReceiver = new ImageReceiver();
                        long peerId = MessageObject.getPeerId(arrayList2.get(i12).peer_id);
                        if (peerId < j) {
                            TLRPC$Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-peerId));
                            if (chat != null) {
                                avatarDrawable.setInfo(i, chat);
                                imageReceiver.setForUserOrChat(chat, avatarDrawable);
                            }
                        } else {
                            TLRPC$User user = MessagesController.getInstance(i).getUser(Long.valueOf(peerId));
                            if (user != null) {
                                avatarDrawable.setInfo(i, user);
                                imageReceiver.setForUserOrChat(user, avatarDrawable);
                            }
                            random = random2;
                            arrayList = arrayList2;
                            i12++;
                            random2 = random;
                            arrayList2 = arrayList;
                            i11 = 60;
                            f6 = 0.8f;
                        }
                        AvatarParticle avatarParticle = new AvatarParticle(this, null);
                        avatarParticle.imageReceiver = imageReceiver;
                        avatarParticle.fromX = 0.5f;
                        avatarParticle.fromY = 0.5f;
                        float f7 = 100.0f;
                        avatarParticle.jumpY = ((Math.abs(random2.nextInt() % 100) / 100.0f) * 0.1f) + 0.3f;
                        avatarParticle.randomScale = ((Math.abs(random2.nextInt() % 100) / 100.0f) * 0.4f) + f6;
                        avatarParticle.randomRotation = (Math.abs(random2.nextInt() % 100) * i11) / 100.0f;
                        avatarParticle.leftTime = (int) (((Math.abs(random2.nextInt() % 100) / 100.0f) * 200.0f) + 400.0f);
                        float f8 = 0.6f;
                        if (this.avatars.isEmpty()) {
                            avatarParticle.toX = ((Math.abs(random2.nextInt() % 100) * 0.6f) / 100.0f) + 0.2f;
                            avatarParticle.toY = (Math.abs(random2.nextInt() % 100) * 0.4f) / 100.0f;
                            random = random2;
                            arrayList = arrayList2;
                        } else {
                            float f9 = BitmapDescriptorFactory.HUE_RED;
                            float f10 = BitmapDescriptorFactory.HUE_RED;
                            int i13 = 0;
                            float f11 = BitmapDescriptorFactory.HUE_RED;
                            while (i13 < 10) {
                                float abs = ((Math.abs(random2.nextInt() % 100) * f8) / f7) + 0.2f;
                                float abs2 = ((Math.abs(random2.nextInt() % 100) * 0.4f) / f7) + 0.2f;
                                float f12 = 2.14748365E9f;
                                Random random3 = random2;
                                int i14 = 0;
                                while (i14 < this.avatars.size()) {
                                    float f13 = this.avatars.get(i14).toX - abs;
                                    ArrayList<TLRPC$MessagePeerReaction> arrayList3 = arrayList2;
                                    float f14 = this.avatars.get(i14).toY - abs2;
                                    float f15 = (f13 * f13) + (f14 * f14);
                                    if (f15 < f12) {
                                        f12 = f15;
                                    }
                                    i14++;
                                    arrayList2 = arrayList3;
                                }
                                ArrayList<TLRPC$MessagePeerReaction> arrayList4 = arrayList2;
                                if (f12 > f11) {
                                    f10 = abs;
                                    f9 = abs2;
                                    f11 = f12;
                                }
                                i13++;
                                random2 = random3;
                                arrayList2 = arrayList4;
                                f7 = 100.0f;
                                f8 = 0.6f;
                            }
                            random = random2;
                            arrayList = arrayList2;
                            avatarParticle.toX = f10;
                            avatarParticle.toY = f9;
                        }
                        this.avatars.add(avatarParticle);
                        i12++;
                        random2 = random;
                        arrayList2 = arrayList;
                        i11 = 60;
                        f6 = 0.8f;
                    }
                    random = random2;
                    arrayList = arrayList2;
                    i12++;
                    random2 = random;
                    arrayList2 = arrayList;
                    i11 = 60;
                    f6 = 0.8f;
                }
            }
        }
        ReactionsContainerLayout.ReactionHolderView reactionHolderView = this.holderView;
        boolean z4 = (reactionHolderView == null && (f == BitmapDescriptorFactory.HUE_RED || f2 == BitmapDescriptorFactory.HUE_RED)) ? false : true;
        if (view != null) {
            view.getLocationOnScreen(this.loc);
            int[] iArr = this.loc;
            float f16 = iArr[0];
            float f17 = iArr[1];
            f5 = view.getWidth() * view.getScaleX();
            if (view instanceof SelectAnimatedEmojiDialog.ImageViewEmoji) {
                float f18 = ((SelectAnimatedEmojiDialog.ImageViewEmoji) view).bigReactionSelectedProgress;
                if (f18 > BitmapDescriptorFactory.HUE_RED) {
                    f5 = view.getWidth() * ((f18 * 2.0f) + 1.0f);
                    f16 -= (f5 - view.getWidth()) / 2.0f;
                    f17 -= f5 - view.getWidth();
                }
            }
            f4 = f17;
            f3 = f16;
        } else if (reactionHolderView != null) {
            reactionHolderView.getLocationOnScreen(this.loc);
            f3 = this.loc[0] + this.holderView.loopImageView.getX();
            f4 = this.loc[1] + this.holderView.loopImageView.getY();
            f5 = this.holderView.loopImageView.getWidth() * this.holderView.getScaleX();
        } else {
            ReactionsLayoutInBubble.ReactionButton reactionButton3 = reactionButton;
            if (reactionButton3 != null) {
                chatMessageCell2.getLocationInWindow(this.loc);
                float f19 = this.loc[0];
                ImageReceiver imageReceiver2 = reactionButton3.imageReceiver;
                float imageX = f19 + (imageReceiver2 == null ? BitmapDescriptorFactory.HUE_RED : imageReceiver2.getImageX());
                float f20 = this.loc[1];
                ImageReceiver imageReceiver3 = reactionButton3.imageReceiver;
                float imageY = f20 + (imageReceiver3 == null ? BitmapDescriptorFactory.HUE_RED : imageReceiver3.getImageY());
                ImageReceiver imageReceiver4 = reactionButton3.imageReceiver;
                f5 = imageReceiver4 == null ? BitmapDescriptorFactory.HUE_RED : imageReceiver4.getImageHeight();
                f3 = imageX;
                f4 = imageY;
            } else {
                if (chatMessageCell2 != null) {
                    ((View) chatMessageCell.getParent()).getLocationInWindow(this.loc);
                    int[] iArr2 = this.loc;
                    f4 = iArr2[1] + f2;
                    f3 = iArr2[0] + f;
                } else {
                    f3 = f;
                    f4 = f2;
                }
                f5 = BitmapDescriptorFactory.HUE_RED;
            }
        }
        if (i2 == 2) {
            int m107dp = AndroidUtilities.m107dp((z && SharedConfig.deviceIsHigh()) ? 60 : 34);
            i3 = m107dp;
            i4 = (int) ((m107dp * 2.0f) / AndroidUtilities.density);
            z2 = true;
        } else {
            z2 = true;
            if (i2 != 1) {
                int m107dp2 = AndroidUtilities.m107dp(350);
                Point point = AndroidUtilities.displaySize;
                round = Math.round(Math.min(m107dp2, Math.min(point.x, point.y)) * 0.8f);
                sizeForBigReaction = sizeForBigReaction();
            } else if (z) {
                int m107dp3 = AndroidUtilities.m107dp(SharedConfig.deviceIsHigh() ? PsExtractor.VIDEO_STREAM_MASK : 140);
                i4 = SharedConfig.deviceIsHigh() ? (int) ((AndroidUtilities.m107dp(80) * 2.0f) / AndroidUtilities.density) : sizeForAroundReaction();
                i3 = m107dp3;
            } else {
                round = AndroidUtilities.m107dp(80);
                sizeForBigReaction = sizeForAroundReaction();
            }
            i3 = round;
            i4 = sizeForBigReaction;
        }
        int i15 = i3 >> 1;
        int i16 = i4 >> 1;
        float f21 = f5 / i15;
        this.animateInProgress = BitmapDescriptorFactory.HUE_RED;
        this.animateOutProgress = BitmapDescriptorFactory.HUE_RED;
        FrameLayout frameLayout = new FrameLayout(context);
        this.container = frameLayout;
        int i17 = i4;
        int i18 = i3;
        this.windowView = new C55661(context, baseFragment, chatMessageCell, z, chatActivity, i15, i2, z4, f21, f3, f4, visibleReaction);
        AnimationView animationView = new AnimationView(context);
        this.effectImageView = animationView;
        AnimationView animationView2 = new AnimationView(context);
        this.emojiImageView = animationView2;
        AnimationView animationView3 = new AnimationView(context);
        this.emojiStaticImageView = animationView3;
        TLRPC$TL_availableReaction tLRPC$TL_availableReaction = visibleReaction.emojicon != null ? MediaDataController.getInstance(i).getReactionsMap().get(this.reaction.emojicon) : null;
        if (tLRPC$TL_availableReaction != null || visibleReaction.documentId != j) {
            if (tLRPC$TL_availableReaction != null) {
                i5 = i2;
                i6 = 2;
                if (i5 != 2) {
                    if ((i5 == 1 && LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_CHAT)) || i5 == 0) {
                        TLRPC$Document tLRPC$Document = i5 == 1 ? tLRPC$TL_availableReaction.around_animation : tLRPC$TL_availableReaction.effect_animation;
                        if (i5 == 1) {
                            str = getFilterForAroundAnimation();
                        } else {
                            str = i17 + "_" + i17;
                        }
                        String str2 = str;
                        ImageReceiver imageReceiver5 = animationView.getImageReceiver();
                        StringBuilder sb = new StringBuilder();
                        int i19 = uniqPrefix;
                        uniqPrefix = i19 + 1;
                        sb.append(i19);
                        sb.append("_");
                        sb.append(this.messageId);
                        sb.append("_");
                        imageReceiver5.setUniqKeyPrefix(sb.toString());
                        animationView.setImage(ImageLocation.getForDocument(tLRPC$Document), str2, (ImageLocation) null, (String) null, 0, (Object) null);
                        z3 = false;
                        animationView.getImageReceiver().setAutoRepeat(0);
                        animationView.getImageReceiver().setAllowStartAnimation(false);
                    } else {
                        z3 = false;
                    }
                    r15 = z3;
                    if (animationView.getImageReceiver().getLottieAnimation() != null) {
                        animationView.getImageReceiver().getLottieAnimation().setCurrentFrame(z3 ? 1 : 0, z3);
                        animationView.getImageReceiver().getLottieAnimation().start();
                        r15 = z3;
                    }
                } else {
                    r15 = 0;
                }
                if (i5 == 2) {
                    TLRPC$Document tLRPC$Document2 = z ? tLRPC$TL_availableReaction.select_animation : tLRPC$TL_availableReaction.appear_animation;
                    ImageReceiver imageReceiver6 = animationView2.getImageReceiver();
                    StringBuilder sb2 = new StringBuilder();
                    int i20 = uniqPrefix;
                    uniqPrefix = i20 + 1;
                    sb2.append(i20);
                    sb2.append("_");
                    sb2.append(this.messageId);
                    sb2.append("_");
                    imageReceiver6.setUniqKeyPrefix(sb2.toString());
                    animationView2.setImage(ImageLocation.getForDocument(tLRPC$Document2), i16 + "_" + i16, (ImageLocation) null, (String) null, 0, (Object) null);
                } else if (i5 == 0) {
                    TLRPC$Document tLRPC$Document3 = tLRPC$TL_availableReaction.activate_animation;
                    ImageReceiver imageReceiver7 = animationView2.getImageReceiver();
                    StringBuilder sb3 = new StringBuilder();
                    int i21 = uniqPrefix;
                    uniqPrefix = i21 + 1;
                    sb3.append(i21);
                    sb3.append("_");
                    sb3.append(this.messageId);
                    sb3.append("_");
                    imageReceiver7.setUniqKeyPrefix(sb3.toString());
                    animationView2.setImage(ImageLocation.getForDocument(tLRPC$Document3), i16 + "_" + i16, (ImageLocation) null, (String) null, 0, (Object) null);
                }
            } else {
                i5 = i2;
                i6 = 2;
                r15 = 0;
                r15 = 0;
                if (i5 == 0) {
                    i7 = i;
                    animationView2.setAnimatedReactionDrawable(new AnimatedEmojiDrawable(1, i7, visibleReaction.documentId));
                } else {
                    i7 = i;
                    if (i5 == 2) {
                        animationView2.setAnimatedReactionDrawable(new AnimatedEmojiDrawable(2, i7, visibleReaction.documentId));
                    }
                }
                if (i5 == 0 || i5 == 1) {
                    AnimatedEmojiDrawable animatedEmojiDrawable = new AnimatedEmojiDrawable(2, i7, visibleReaction.documentId);
                    if (chatMessageCell != null) {
                        if (chatMessageCell.getMessageObject().shouldDrawWithoutBackground()) {
                            i9 = chatMessageCell.getMessageObject().isOutOwner() ? Theme.key_chat_outReactionButtonBackground : Theme.key_chat_inReactionButtonBackground;
                        } else {
                            i9 = chatMessageCell.getMessageObject().isOutOwner() ? Theme.key_chat_outReactionButtonTextSelected : Theme.key_chat_inReactionButtonTextSelected;
                        }
                        i8 = Theme.getColor(i9, baseFragment != null ? baseFragment.getResourceProvider() : null);
                    } else {
                        i8 = -1;
                    }
                    animatedEmojiDrawable.setColorFilter(new PorterDuffColorFilter(i8, PorterDuff.Mode.SRC_IN));
                    boolean z5 = i5 == 0;
                    animationView.setAnimatedEmojiEffect(AnimatedEmojiEffect.createFrom(animatedEmojiDrawable, z5, !z5));
                    this.windowView.setClipChildren(false);
                }
            }
            animationView2.getImageReceiver().setAutoRepeat(r15);
            animationView2.getImageReceiver().setAllowStartAnimation(r15);
            if (animationView2.getImageReceiver().getLottieAnimation() != null) {
                if (i5 == i6) {
                    animationView2.getImageReceiver().getLottieAnimation().setCurrentFrame(animationView2.getImageReceiver().getLottieAnimation().getFramesCount() - 1, r15);
                } else {
                    animationView2.getImageReceiver().getLottieAnimation().setCurrentFrame(r15, r15);
                    animationView2.getImageReceiver().getLottieAnimation().start();
                }
            }
            int i22 = i18 - i15;
            int i23 = i22 >> 1;
            i22 = i5 == 1 ? i23 : i22;
            frameLayout.addView(animationView2);
            animationView2.getLayoutParams().width = i15;
            animationView2.getLayoutParams().height = i15;
            ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).topMargin = i23;
            ((FrameLayout.LayoutParams) animationView2.getLayoutParams()).leftMargin = i22;
            if (i5 != 1 && !z) {
                if (tLRPC$TL_availableReaction != null) {
                    animationView3.getImageReceiver().setImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.center_icon), "40_40_lastreactframe", null, "webp", tLRPC$TL_availableReaction, 1);
                }
                frameLayout.addView(animationView3);
                animationView3.getLayoutParams().width = i15;
                animationView3.getLayoutParams().height = i15;
                ((FrameLayout.LayoutParams) animationView3.getLayoutParams()).topMargin = i23;
                ((FrameLayout.LayoutParams) animationView3.getLayoutParams()).leftMargin = i22;
            }
            this.windowView.addView(frameLayout);
            frameLayout.getLayoutParams().width = i18;
            frameLayout.getLayoutParams().height = i18;
            int i24 = -i23;
            ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).topMargin = i24;
            int i25 = -i22;
            ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).leftMargin = i25;
            this.windowView.addView(animationView);
            animationView.getLayoutParams().width = i18;
            animationView.getLayoutParams().height = i18;
            animationView.getLayoutParams().width = i18;
            animationView.getLayoutParams().height = i18;
            ((FrameLayout.LayoutParams) animationView.getLayoutParams()).topMargin = i24;
            ((FrameLayout.LayoutParams) animationView.getLayoutParams()).leftMargin = i25;
            frameLayout.setPivotX(i22);
            frameLayout.setPivotY(i23);
            return;
        }
        this.dismissed = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay$1 */
    /* loaded from: classes6.dex */
    public class C55661 extends FrameLayout {
        final /* synthetic */ int val$animationType;
        final /* synthetic */ ChatMessageCell val$cell;
        final /* synthetic */ ChatActivity val$chatActivity;
        final /* synthetic */ int val$emojiSize;
        final /* synthetic */ BaseFragment val$fragment;
        final /* synthetic */ boolean val$fromHolder;
        final /* synthetic */ float val$fromScale;
        final /* synthetic */ float val$fromX;
        final /* synthetic */ float val$fromY;
        final /* synthetic */ boolean val$isStories;
        final /* synthetic */ ReactionsLayoutInBubble.VisibleReaction val$visibleReaction;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C55661(Context context, BaseFragment baseFragment, ChatMessageCell chatMessageCell, boolean z, ChatActivity chatActivity, int i, int i2, boolean z2, float f, float f2, float f3, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
            super(context);
            this.val$fragment = baseFragment;
            this.val$cell = chatMessageCell;
            this.val$isStories = z;
            this.val$chatActivity = chatActivity;
            this.val$emojiSize = i;
            this.val$animationType = i2;
            this.val$fromHolder = z2;
            this.val$fromScale = f;
            this.val$fromX = f2;
            this.val$fromY = f3;
            this.val$visibleReaction = visibleReaction;
        }

        /* JADX WARN: Removed duplicated region for block: B:107:0x028c  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x0301  */
        /* JADX WARN: Removed duplicated region for block: B:165:0x03c3  */
        /* JADX WARN: Removed duplicated region for block: B:213:0x04dd  */
        /* JADX WARN: Removed duplicated region for block: B:223:0x0538  */
        /* JADX WARN: Removed duplicated region for block: B:231:0x056a  */
        /* JADX WARN: Removed duplicated region for block: B:232:0x056d  */
        /* JADX WARN: Removed duplicated region for block: B:235:0x062a  */
        /* JADX WARN: Removed duplicated region for block: B:238:0x0637  */
        /* JADX WARN: Removed duplicated region for block: B:241:0x063e  */
        /* JADX WARN: Removed duplicated region for block: B:242:0x0651  */
        /* JADX WARN: Removed duplicated region for block: B:245:0x065b  */
        /* JADX WARN: Removed duplicated region for block: B:249:0x066e  */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void dispatchDraw(android.graphics.Canvas r20) {
            /*
                Method dump skipped, instructions count: 1673
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.Reactions.ReactionsEffectOverlay.C55661.dispatchDraw(android.graphics.Canvas):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$0() {
            ReactionsEffectOverlay.this.removeCurrentView();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchDraw$1() {
            ReactionsEffectOverlay.this.removeCurrentView();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            for (int i = 0; i < ReactionsEffectOverlay.this.avatars.size(); i++) {
                ReactionsEffectOverlay.this.avatars.get(i).imageReceiver.onAttachedToWindow();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            for (int i = 0; i < ReactionsEffectOverlay.this.avatars.size(); i++) {
                ReactionsEffectOverlay.this.avatars.get(i).imageReceiver.onDetachedFromWindow();
            }
        }
    }

    public static String getFilterForAroundAnimation() {
        return sizeForAroundReaction() + "_" + sizeForAroundReaction() + "_nolimit_pcache";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeCurrentView() {
        try {
            if (this.useWindow) {
                this.windowManager.removeView(this.windowView);
            } else {
                AndroidUtilities.removeFromParent(this.windowView);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0069, code lost:
        if (r25 != 2) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0073, code lost:
        if (r1.isShowing() == false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void show(org.telegram.p043ui.ActionBar.BaseFragment r17, org.telegram.p043ui.Components.ReactionsContainerLayout r18, org.telegram.p043ui.Cells.ChatMessageCell r19, android.view.View r20, float r21, float r22, org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble.VisibleReaction r23, int r24, int r25) {
        /*
            r12 = r17
            r13 = r25
            if (r19 == 0) goto Lce
            if (r23 == 0) goto Lce
            if (r12 == 0) goto Lce
            android.app.Activity r0 = r17.getParentActivity()
            if (r0 != 0) goto L12
            goto Lce
        L12:
            android.content.SharedPreferences r0 = org.telegram.messenger.MessagesController.getGlobalMainSettings()
            java.lang.String r1 = "view_animations"
            r14 = 1
            boolean r0 = r0.getBoolean(r1, r14)
            if (r0 != 0) goto L20
            return
        L20:
            r15 = 2
            if (r13 == r15) goto L25
            if (r13 != 0) goto L36
        L25:
            r1 = 0
            r4 = 0
            r5 = 0
            r8 = 1
            r0 = r17
            r2 = r19
            r3 = r20
            r6 = r23
            r7 = r24
            show(r0, r1, r2, r3, r4, r5, r6, r7, r8)
        L36:
            org.telegram.ui.Components.Reactions.ReactionsEffectOverlay r11 = new org.telegram.ui.Components.Reactions.ReactionsEffectOverlay
            android.app.Activity r1 = r17.getParentActivity()
            r16 = 0
            r0 = r11
            r2 = r17
            r3 = r18
            r4 = r19
            r5 = r20
            r6 = r21
            r7 = r22
            r8 = r23
            r9 = r24
            r10 = r25
            r15 = r11
            r11 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            if (r13 != r14) goto L5c
            org.telegram.p043ui.Components.Reactions.ReactionsEffectOverlay.currentShortOverlay = r15
            goto L5e
        L5c:
            org.telegram.p043ui.Components.Reactions.ReactionsEffectOverlay.currentOverlay = r15
        L5e:
            r0 = 0
            boolean r1 = r12 instanceof org.telegram.p043ui.ChatActivity
            if (r1 == 0) goto L76
            r1 = r12
            org.telegram.ui.ChatActivity r1 = (org.telegram.p043ui.ChatActivity) r1
            if (r13 == 0) goto L6b
            r2 = 2
            if (r13 != r2) goto L76
        L6b:
            org.telegram.ui.ActionBar.ActionBarPopupWindow r1 = r1.scrimPopupWindow
            if (r1 == 0) goto L76
            boolean r1 = r1.isShowing()
            if (r1 == 0) goto L76
            goto L77
        L76:
            r14 = r0
        L77:
            r15.useWindow = r14
            if (r14 == 0) goto La1
            android.view.WindowManager$LayoutParams r0 = new android.view.WindowManager$LayoutParams
            r0.<init>()
            r1 = -1
            r0.height = r1
            r0.width = r1
            r1 = 1000(0x3e8, float:1.401E-42)
            r0.type = r1
            r1 = 65816(0x10118, float:9.2228E-41)
            r0.flags = r1
            r1 = -3
            r0.format = r1
            android.app.Activity r1 = r17.getParentActivity()
            android.view.WindowManager r1 = r1.getWindowManager()
            r15.windowManager = r1
            android.widget.FrameLayout r2 = r15.windowView
            r1.addView(r2, r0)
            goto Lb6
        La1:
            android.app.Activity r0 = r17.getParentActivity()
            android.view.Window r0 = r0.getWindow()
            android.view.View r0 = r0.getDecorView()
            android.widget.FrameLayout r0 = (android.widget.FrameLayout) r0
            r15.decorView = r0
            android.widget.FrameLayout r1 = r15.windowView
            r0.addView(r1)
        Lb6:
            r19.invalidate()
            org.telegram.messenger.MessageObject$GroupedMessages r0 = r19.getCurrentMessagesGroup()
            if (r0 == 0) goto Lce
            android.view.ViewParent r0 = r19.getParent()
            if (r0 == 0) goto Lce
            android.view.ViewParent r0 = r19.getParent()
            android.view.View r0 = (android.view.View) r0
            r0.invalidate()
        Lce:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.Reactions.ReactionsEffectOverlay.show(org.telegram.ui.ActionBar.BaseFragment, org.telegram.ui.Components.ReactionsContainerLayout, org.telegram.ui.Cells.ChatMessageCell, android.view.View, float, float, org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble$VisibleReaction, int, int):void");
    }

    public static void startAnimation() {
        ReactionsEffectOverlay reactionsEffectOverlay = currentOverlay;
        if (reactionsEffectOverlay != null) {
            reactionsEffectOverlay.started = true;
            reactionsEffectOverlay.startTime = System.currentTimeMillis();
            if (currentOverlay.animationType != 0 || System.currentTimeMillis() - lastHapticTime <= 200) {
                return;
            }
            lastHapticTime = System.currentTimeMillis();
            currentOverlay.cell.performHapticFeedback(3);
            return;
        }
        startShortAnimation();
        ReactionsEffectOverlay reactionsEffectOverlay2 = currentShortOverlay;
        if (reactionsEffectOverlay2 != null) {
            reactionsEffectOverlay2.cell.reactionsLayoutInBubble.animateReaction(reactionsEffectOverlay2.reaction);
        }
    }

    public static void startShortAnimation() {
        ReactionsEffectOverlay reactionsEffectOverlay = currentShortOverlay;
        if (reactionsEffectOverlay == null || reactionsEffectOverlay.started) {
            return;
        }
        reactionsEffectOverlay.started = true;
        reactionsEffectOverlay.startTime = System.currentTimeMillis();
        if (currentShortOverlay.animationType != 1 || System.currentTimeMillis() - lastHapticTime <= 200) {
            return;
        }
        lastHapticTime = System.currentTimeMillis();
        currentShortOverlay.cell.performHapticFeedback(3);
    }

    public static void removeCurrent(boolean z) {
        int i = 0;
        while (i < 2) {
            ReactionsEffectOverlay reactionsEffectOverlay = i == 0 ? currentOverlay : currentShortOverlay;
            if (reactionsEffectOverlay != null) {
                if (z) {
                    reactionsEffectOverlay.removeCurrentView();
                } else {
                    reactionsEffectOverlay.dismissed = true;
                }
            }
            i++;
        }
        currentShortOverlay = null;
        currentOverlay = null;
    }

    public static boolean isPlaying(int i, long j, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        ReactionsEffectOverlay reactionsEffectOverlay = currentOverlay;
        if (reactionsEffectOverlay != null) {
            int i2 = reactionsEffectOverlay.animationType;
            if (i2 == 2 || i2 == 0) {
                long j2 = reactionsEffectOverlay.groupId;
                return ((j2 != 0 && j == j2) || i == reactionsEffectOverlay.messageId) && reactionsEffectOverlay.reaction.equals(visibleReaction);
            }
            return false;
        }
        return false;
    }

    /* renamed from: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay$AnimationView */
    /* loaded from: classes6.dex */
    private class AnimationView extends BackupImageView {
        AnimatedEmojiDrawable animatedEmojiDrawable;
        boolean attached;
        AnimatedEmojiEffect emojiEffect;
        boolean wasPlaying;

        public AnimationView(Context context) {
            super(context);
            getImageReceiver().setFileLoadingPriority(3);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
        public void onDraw(Canvas canvas) {
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                this.animatedEmojiDrawable.setAlpha(255);
                this.animatedEmojiDrawable.draw(canvas);
                this.wasPlaying = true;
                return;
            }
            AnimatedEmojiEffect animatedEmojiEffect = this.emojiEffect;
            if (animatedEmojiEffect != null) {
                animatedEmojiEffect.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                this.emojiEffect.draw(canvas);
                this.wasPlaying = true;
                return;
            }
            if (getImageReceiver().getLottieAnimation() != null && getImageReceiver().getLottieAnimation().isRunning()) {
                this.wasPlaying = true;
            }
            if (!this.wasPlaying && getImageReceiver().getLottieAnimation() != null && !getImageReceiver().getLottieAnimation().isRunning()) {
                if (ReactionsEffectOverlay.this.animationType == 2 && !ReactionsEffectOverlay.this.isStories) {
                    getImageReceiver().getLottieAnimation().setCurrentFrame(getImageReceiver().getLottieAnimation().getFramesCount() - 1, false);
                } else {
                    getImageReceiver().getLottieAnimation().setCurrentFrame(0, false);
                    getImageReceiver().getLottieAnimation().start();
                }
            }
            super.onDraw(canvas);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.attached = true;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.addView(this);
            }
            AnimatedEmojiEffect animatedEmojiEffect = this.emojiEffect;
            if (animatedEmojiEffect != null) {
                animatedEmojiEffect.setView(this);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.BackupImageView, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.attached = false;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this);
            }
            AnimatedEmojiEffect animatedEmojiEffect = this.emojiEffect;
            if (animatedEmojiEffect != null) {
                animatedEmojiEffect.removeView(this);
            }
        }

        public void setAnimatedReactionDrawable(AnimatedEmojiDrawable animatedEmojiDrawable) {
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this);
            }
            this.animatedEmojiDrawable = animatedEmojiDrawable;
            if (!this.attached || animatedEmojiDrawable == null) {
                return;
            }
            animatedEmojiDrawable.addView(this);
        }

        public void setAnimatedEmojiEffect(AnimatedEmojiEffect animatedEmojiEffect) {
            this.emojiEffect = animatedEmojiEffect;
        }
    }

    public static void onScrolled(int i) {
        ReactionsEffectOverlay reactionsEffectOverlay = currentOverlay;
        if (reactionsEffectOverlay != null) {
            reactionsEffectOverlay.lastDrawnToY -= i;
            if (i != 0) {
                reactionsEffectOverlay.wasScrolled = true;
            }
        }
    }

    public static int sizeForBigReaction() {
        int m107dp = AndroidUtilities.m107dp(350);
        Point point = AndroidUtilities.displaySize;
        return (int) (Math.round(Math.min(m107dp, Math.min(point.x, point.y)) * 0.7f) / AndroidUtilities.density);
    }

    public static int sizeForAroundReaction() {
        return (int) ((AndroidUtilities.m107dp(40) * 2.0f) / AndroidUtilities.density);
    }

    public static void dismissAll() {
        ReactionsEffectOverlay reactionsEffectOverlay = currentOverlay;
        if (reactionsEffectOverlay != null) {
            reactionsEffectOverlay.dismissed = true;
        }
        ReactionsEffectOverlay reactionsEffectOverlay2 = currentShortOverlay;
        if (reactionsEffectOverlay2 != null) {
            reactionsEffectOverlay2.dismissed = true;
        }
    }

    /* renamed from: org.telegram.ui.Components.Reactions.ReactionsEffectOverlay$AvatarParticle */
    /* loaded from: classes6.dex */
    private class AvatarParticle {
        float currentRotation;
        float fromX;
        float fromY;
        float globalTranslationY;
        ImageReceiver imageReceiver;
        boolean incrementRotation;
        float jumpY;
        public int leftTime;
        float outProgress;
        float progress;
        float randomRotation;
        float randomScale;
        float toX;
        float toY;

        private AvatarParticle(ReactionsEffectOverlay reactionsEffectOverlay) {
        }

        /* synthetic */ AvatarParticle(ReactionsEffectOverlay reactionsEffectOverlay, C55661 c55661) {
            this(reactionsEffectOverlay);
        }
    }
}
