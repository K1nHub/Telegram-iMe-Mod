package org.telegram.p044ui.Cells;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p044ui.ActionBar.SimpleTextView;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.AnimatedEmojiDrawable;
import org.telegram.p044ui.Components.AvatarDrawable;
import org.telegram.p044ui.Components.BackupImageView;
import org.telegram.p044ui.Components.BlobDrawable;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.RLottieDrawable;
import org.telegram.p044ui.Components.RLottieImageView;
import org.telegram.p044ui.Components.RadialProgressView;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$EmojiStatus;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$TL_emojiStatus;
import org.telegram.tgnet.TLRPC$TL_emojiStatusUntil;
import org.telegram.tgnet.TLRPC$TL_groupCallParticipant;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.GroupCallUserCell */
/* loaded from: classes5.dex */
public class GroupCallUserCell extends FrameLayout {
    private AccountInstance accountInstance;
    private AnimatorSet animatorSet;
    private AvatarDrawable avatarDrawable;
    private BackupImageView avatarImageView;
    private RadialProgressView avatarProgressView;
    private AvatarWavesDrawable avatarWavesDrawable;
    private Runnable checkRaiseRunnable;
    private ChatObject.Call currentCall;
    private TLRPC$Chat currentChat;
    private boolean currentIconGray;
    private int currentStatus;
    private TLRPC$User currentUser;
    private Paint dividerPaint;
    private SimpleTextView fullAboutTextView;
    private int grayIconColor;
    private boolean hasAvatar;
    private boolean isSpeaking;
    private int lastMuteColor;
    private boolean lastMuted;
    private boolean lastRaisedHand;
    private RLottieImageView muteButton;
    private RLottieDrawable muteDrawable;
    private SimpleTextView nameTextView;
    private boolean needDivider;
    private TLRPC$TL_groupCallParticipant participant;
    private Drawable premiumDrawable;
    private float progressToAvatarPreview;
    private Runnable raiseHandCallback;
    public AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable rightDrawable;
    private long selfId;
    private Runnable shakeHandCallback;
    private RLottieDrawable shakeHandDrawable;
    private Drawable speakingDrawable;
    private SimpleTextView[] statusTextView;
    private Runnable updateRunnable;
    private boolean updateRunnableScheduled;
    private Runnable updateVoiceRunnable;
    private boolean updateVoiceRunnableScheduled;
    private Drawable verifiedDrawable;

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: onMuteClick */
    public void lambda$new$5(GroupCallUserCell groupCallUserCell) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.shakeHandDrawable.setOnFinishCallback(null, 0);
        this.muteDrawable.setOnFinishCallback(null, 0);
        this.muteButton.setAnimation(this.muteDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        int nextInt = Utilities.random.nextInt(100);
        int i = 540;
        int i2 = 420;
        if (nextInt < 32) {
            i2 = 0;
            i = 120;
        } else if (nextInt < 64) {
            i = 240;
            i2 = 120;
        } else if (nextInt < 97) {
            i = 420;
            i2 = 240;
        } else if (nextInt != 98) {
            i2 = 540;
            i = 720;
        }
        this.shakeHandDrawable.setCustomEndFrame(i);
        this.shakeHandDrawable.setOnFinishCallback(this.shakeHandCallback, i - 1);
        this.muteButton.setAnimation(this.shakeHandDrawable);
        this.shakeHandDrawable.setCurrentFrame(i2);
        this.muteButton.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        applyParticipantChanges(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3() {
        this.isSpeaking = false;
        applyParticipantChanges(true, true);
        this.avatarWavesDrawable.setAmplitude(0.0d);
        this.updateRunnableScheduled = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4() {
        applyParticipantChanges(true, true);
        this.updateVoiceRunnableScheduled = false;
    }

    public void setProgressToAvatarPreview(float f) {
        this.progressToAvatarPreview = f;
        this.nameTextView.setTranslationX((LocaleController.isRTL ? AndroidUtilities.m54dp(53) : -AndroidUtilities.m54dp(53)) * f);
        boolean isSelfUser = isSelfUser();
        boolean z = true;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        if (isSelfUser && f > BitmapDescriptorFactory.HUE_RED) {
            float f3 = 1.0f - f;
            this.fullAboutTextView.setTranslationX((LocaleController.isRTL ? -AndroidUtilities.m54dp(53) : AndroidUtilities.m54dp(53)) * f3);
            this.fullAboutTextView.setVisibility(0);
            this.fullAboutTextView.setAlpha(f);
            this.statusTextView[4].setAlpha(f3);
            SimpleTextView simpleTextView = this.statusTextView[4];
            boolean z2 = LocaleController.isRTL;
            int m54dp = AndroidUtilities.m54dp(53);
            if (!z2) {
                m54dp = -m54dp;
            }
            simpleTextView.setTranslationX(m54dp * f);
        } else {
            this.fullAboutTextView.setVisibility(8);
            int i = 0;
            while (true) {
                SimpleTextView[] simpleTextViewArr = this.statusTextView;
                if (i >= simpleTextViewArr.length) {
                    break;
                }
                if (!TextUtils.isEmpty(simpleTextViewArr[4].getText()) && this.statusTextView[4].getLineCount() > 1) {
                    this.statusTextView[i].setFullLayoutAdditionalWidth(AndroidUtilities.m54dp(92), LocaleController.isRTL ? AndroidUtilities.m54dp(48) : AndroidUtilities.m54dp(53));
                    this.statusTextView[i].setFullAlpha(f);
                    this.statusTextView[i].setTranslationX(BitmapDescriptorFactory.HUE_RED);
                    this.statusTextView[i].invalidate();
                } else {
                    this.statusTextView[i].setTranslationX((LocaleController.isRTL ? AndroidUtilities.m54dp(53) : -AndroidUtilities.m54dp(53)) * f);
                    this.statusTextView[i].setFullLayoutAdditionalWidth(0, 0);
                }
                i++;
            }
        }
        BackupImageView backupImageView = this.avatarImageView;
        int i2 = (f > BitmapDescriptorFactory.HUE_RED ? 1 : (f == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        if (i2 == 0) {
            f2 = 1.0f;
        }
        backupImageView.setAlpha(f2);
        AvatarWavesDrawable avatarWavesDrawable = this.avatarWavesDrawable;
        if (!this.isSpeaking || i2 != 0) {
            z = false;
        }
        avatarWavesDrawable.setShowWaves(z, this);
        float f4 = 1.0f - f;
        this.muteButton.setAlpha(f4);
        float f5 = (f4 * 0.4f) + 0.6f;
        this.muteButton.setScaleX(f5);
        this.muteButton.setScaleY(f5);
        invalidate();
    }

    public AvatarWavesDrawable getAvatarWavesDrawable() {
        return this.avatarWavesDrawable;
    }

    public void setUploadProgress(float f, boolean z) {
        this.avatarProgressView.setProgress(f);
        if (f < 1.0f) {
            AndroidUtilities.updateViewVisibilityAnimated(this.avatarProgressView, true, 1.0f, z);
        } else {
            AndroidUtilities.updateViewVisibilityAnimated(this.avatarProgressView, false, 1.0f, z);
        }
    }

    public void setDrawAvatar(boolean z) {
        if (this.avatarImageView.getImageReceiver().getVisible() != z) {
            this.avatarImageView.getImageReceiver().setVisible(z, true);
        }
    }

    /* renamed from: org.telegram.ui.Cells.GroupCallUserCell$VerifiedDrawable */
    /* loaded from: classes5.dex */
    private static class VerifiedDrawable extends Drawable {
        private Drawable[] drawables;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public VerifiedDrawable(Context context) {
            Drawable[] drawableArr = new Drawable[2];
            this.drawables = drawableArr;
            drawableArr[0] = context.getResources().getDrawable(C3295R.C3297drawable.verified_area).mutate();
            this.drawables[0].setColorFilter(new PorterDuffColorFilter(-9063442, PorterDuff.Mode.MULTIPLY));
            this.drawables[1] = context.getResources().getDrawable(C3295R.C3297drawable.verified_check).mutate();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.drawables[0].getIntrinsicWidth();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.drawables[0].getIntrinsicHeight();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            int i = 0;
            while (true) {
                Drawable[] drawableArr = this.drawables;
                if (i >= drawableArr.length) {
                    return;
                }
                drawableArr[i].setBounds(getBounds());
                this.drawables[i].draw(canvas);
                i++;
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            int i2 = 0;
            while (true) {
                Drawable[] drawableArr = this.drawables;
                if (i2 >= drawableArr.length) {
                    return;
                }
                drawableArr[i2].setAlpha(i);
                i2++;
            }
        }
    }

    public GroupCallUserCell(Context context) {
        super(context);
        this.statusTextView = new SimpleTextView[5];
        this.shakeHandCallback = new Runnable() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                GroupCallUserCell.this.lambda$new$0();
            }
        };
        this.raiseHandCallback = new Runnable() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                GroupCallUserCell.this.lambda$new$1();
            }
        };
        this.grayIconColor = Theme.key_voipgroup_mutedIcon;
        this.checkRaiseRunnable = new Runnable() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                GroupCallUserCell.this.lambda$new$2();
            }
        };
        this.updateRunnable = new Runnable() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                GroupCallUserCell.this.lambda$new$3();
            }
        };
        this.updateVoiceRunnable = new Runnable() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                GroupCallUserCell.this.lambda$new$4();
            }
        };
        Paint paint = new Paint();
        this.dividerPaint = paint;
        paint.setColor(Theme.getColor(Theme.key_voipgroup_actionBar));
        this.avatarDrawable = new AvatarDrawable();
        setClipChildren(false);
        BackupImageView backupImageView = new BackupImageView(context);
        this.avatarImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m54dp(24));
        BackupImageView backupImageView2 = this.avatarImageView;
        boolean z = LocaleController.isRTL;
        addView(backupImageView2, LayoutHelper.createFrame(46, 46, (z ? 5 : 3) | 48, z ? 0 : 11, 6, z ? 11 : 0, 0));
        RadialProgressView radialProgressView = new RadialProgressView(context) { // from class: org.telegram.ui.Cells.GroupCallUserCell.1
            private Paint paint;

            {
                Paint paint2 = new Paint(1);
                this.paint = paint2;
                paint2.setColor(1426063360);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p044ui.Components.RadialProgressView, android.view.View
            public void onDraw(Canvas canvas) {
                if (GroupCallUserCell.this.avatarImageView.getImageReceiver().hasNotThumb() && GroupCallUserCell.this.avatarImageView.getAlpha() > BitmapDescriptorFactory.HUE_RED) {
                    this.paint.setAlpha((int) (GroupCallUserCell.this.avatarImageView.getImageReceiver().getCurrentAlpha() * 85.0f * GroupCallUserCell.this.avatarImageView.getAlpha()));
                    canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, getMeasuredWidth() / 2.0f, this.paint);
                }
                GroupCallUserCell.this.avatarProgressView.setProgressColor(ColorUtils.setAlphaComponent(-1, (int) (GroupCallUserCell.this.avatarImageView.getImageReceiver().getCurrentAlpha() * 255.0f * GroupCallUserCell.this.avatarImageView.getAlpha())));
                super.onDraw(canvas);
            }
        };
        this.avatarProgressView = radialProgressView;
        radialProgressView.setSize(AndroidUtilities.m54dp(26));
        this.avatarProgressView.setProgressColor(-1);
        this.avatarProgressView.setNoProgress(false);
        RadialProgressView radialProgressView2 = this.avatarProgressView;
        boolean z2 = LocaleController.isRTL;
        addView(radialProgressView2, LayoutHelper.createFrame(46, 46, (z2 ? 5 : 3) | 48, z2 ? 0 : 11, 6, z2 ? 11 : 0, 0));
        AndroidUtilities.updateViewVisibilityAnimated(this.avatarProgressView, false, 1.0f, false);
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.nameTextView = simpleTextView;
        simpleTextView.setTextColor(Theme.getColor(Theme.key_voipgroup_nameText));
        this.nameTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.nameTextView.setTextSize(16);
        this.nameTextView.setDrawablePadding(AndroidUtilities.m54dp(6));
        this.nameTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        SimpleTextView simpleTextView2 = this.nameTextView;
        boolean z3 = LocaleController.isRTL;
        addView(simpleTextView2, LayoutHelper.createFrame(-1, 20, (z3 ? 5 : 3) | 48, z3 ? 54 : 67, 10, z3 ? 67 : 54, 0));
        this.rightDrawable = new AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable(this.nameTextView, AndroidUtilities.m54dp(20), 9);
        Drawable drawable = context.getResources().getDrawable(C3295R.C3297drawable.voice_volume_mini);
        this.speakingDrawable = drawable;
        drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_voipgroup_speakingText), PorterDuff.Mode.MULTIPLY));
        final int i = 0;
        while (true) {
            SimpleTextView[] simpleTextViewArr = this.statusTextView;
            if (i >= simpleTextViewArr.length) {
                break;
            }
            simpleTextViewArr[i] = new SimpleTextView(context) { // from class: org.telegram.ui.Cells.GroupCallUserCell.2
                float originalAlpha;

                @Override // android.view.View
                public void setAlpha(float f) {
                    this.originalAlpha = f;
                    if (i == 4) {
                        float fullAlpha = GroupCallUserCell.this.statusTextView[4].getFullAlpha();
                        if (GroupCallUserCell.this.isSelfUser() && GroupCallUserCell.this.progressToAvatarPreview > BitmapDescriptorFactory.HUE_RED) {
                            super.setAlpha(1.0f - GroupCallUserCell.this.progressToAvatarPreview);
                            return;
                        } else if (fullAlpha > BitmapDescriptorFactory.HUE_RED) {
                            super.setAlpha(Math.max(f, fullAlpha));
                            return;
                        } else {
                            super.setAlpha(f);
                            return;
                        }
                    }
                    super.setAlpha(f * (1.0f - GroupCallUserCell.this.statusTextView[4].getFullAlpha()));
                }

                @Override // android.view.View
                public void setTranslationY(float f) {
                    if (i == 4 && getFullAlpha() > BitmapDescriptorFactory.HUE_RED) {
                        f = 0.0f;
                    }
                    super.setTranslationY(f);
                }

                @Override // android.view.View
                public float getAlpha() {
                    return this.originalAlpha;
                }

                @Override // org.telegram.p044ui.ActionBar.SimpleTextView
                public void setFullAlpha(float f) {
                    super.setFullAlpha(f);
                    for (int i2 = 0; i2 < GroupCallUserCell.this.statusTextView.length; i2++) {
                        GroupCallUserCell.this.statusTextView[i2].setAlpha(GroupCallUserCell.this.statusTextView[i2].getAlpha());
                    }
                }
            };
            this.statusTextView[i].setTextSize(15);
            this.statusTextView[i].setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            if (i == 4) {
                this.statusTextView[i].setBuildFullLayout(true);
                this.statusTextView[i].setTextColor(Theme.getColor(Theme.key_voipgroup_mutedIcon));
                SimpleTextView simpleTextView3 = this.statusTextView[i];
                boolean z4 = LocaleController.isRTL;
                addView(simpleTextView3, LayoutHelper.createFrame(-1, -2, (z4 ? 5 : 3) | 48, z4 ? 54 : 67, 32, z4 ? 67 : 54, 0));
            } else {
                if (i == 0) {
                    this.statusTextView[i].setTextColor(Theme.getColor(Theme.key_voipgroup_listeningText));
                    this.statusTextView[i].setText(LocaleController.getString("Listening", C3295R.string.Listening));
                } else if (i == 1) {
                    this.statusTextView[i].setTextColor(Theme.getColor(Theme.key_voipgroup_speakingText));
                    this.statusTextView[i].setText(LocaleController.getString("Speaking", C3295R.string.Speaking));
                    this.statusTextView[i].setDrawablePadding(AndroidUtilities.m54dp(2));
                } else if (i == 2) {
                    this.statusTextView[i].setTextColor(Theme.getColor(Theme.key_voipgroup_mutedByAdminIcon));
                    this.statusTextView[i].setText(LocaleController.getString("VoipGroupMutedForMe", C3295R.string.VoipGroupMutedForMe));
                } else if (i == 3) {
                    this.statusTextView[i].setTextColor(Theme.getColor(Theme.key_voipgroup_listeningText));
                    this.statusTextView[i].setText(LocaleController.getString("WantsToSpeak", C3295R.string.WantsToSpeak));
                }
                SimpleTextView simpleTextView4 = this.statusTextView[i];
                boolean z5 = LocaleController.isRTL;
                addView(simpleTextView4, LayoutHelper.createFrame(-1, 20, (z5 ? 5 : 3) | 48, z5 ? 54 : 67, 32, z5 ? 67 : 54, 0));
            }
            i++;
        }
        SimpleTextView simpleTextView5 = new SimpleTextView(context);
        this.fullAboutTextView = simpleTextView5;
        simpleTextView5.setMaxLines(3);
        this.fullAboutTextView.setTextSize(15);
        this.fullAboutTextView.setTextColor(Theme.getColor(Theme.key_voipgroup_mutedIcon));
        this.fullAboutTextView.setVisibility(8);
        addView(this.fullAboutTextView, LayoutHelper.createFrame(-1, 60, (LocaleController.isRTL ? 5 : 3) | 48, 14, 32, 14, 0));
        int i2 = C3295R.raw.voice_outlined2;
        this.muteDrawable = new RLottieDrawable(i2, "" + i2, AndroidUtilities.m54dp(34), AndroidUtilities.m54dp(32), true, null);
        int i3 = C3295R.raw.hand_1;
        this.shakeHandDrawable = new RLottieDrawable(i3, "" + i3, AndroidUtilities.m54dp(34), AndroidUtilities.m54dp(32), true, null);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.muteButton = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        this.muteButton.setAnimation(this.muteDrawable);
        if (Build.VERSION.SDK_INT >= 21) {
            RippleDrawable rippleDrawable = (RippleDrawable) Theme.createSelectorDrawable(Theme.getColor(this.grayIconColor) & 620756991);
            Theme.setRippleDrawableForceSoftware(rippleDrawable);
            this.muteButton.setBackground(rippleDrawable);
        }
        this.muteButton.setImportantForAccessibility(2);
        addView(this.muteButton, LayoutHelper.createFrame(48, -1, (LocaleController.isRTL ? 3 : 5) | 16, 6, 0, 6, 0));
        this.muteButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.GroupCallUserCell$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupCallUserCell.this.lambda$new$5(view);
            }
        });
        this.avatarWavesDrawable = new AvatarWavesDrawable(AndroidUtilities.m54dp(26), AndroidUtilities.m54dp(29));
        setWillNotDraw(false);
        setFocusable(true);
    }

    public int getClipHeight() {
        SimpleTextView simpleTextView;
        if (!TextUtils.isEmpty(this.fullAboutTextView.getText()) && this.hasAvatar) {
            simpleTextView = this.fullAboutTextView;
        } else {
            simpleTextView = this.statusTextView[4];
        }
        if (simpleTextView.getLineCount() > 1) {
            return simpleTextView.getTop() + simpleTextView.getTextHeight() + AndroidUtilities.m54dp(8);
        }
        return getMeasuredHeight();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.updateRunnableScheduled) {
            AndroidUtilities.cancelRunOnUIThread(this.updateRunnable);
            this.updateRunnableScheduled = false;
        }
        if (this.updateVoiceRunnableScheduled) {
            AndroidUtilities.cancelRunOnUIThread(this.updateVoiceRunnable);
            this.updateVoiceRunnableScheduled = false;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.rightDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.detach();
        }
    }

    public boolean isSelfUser() {
        long j = this.selfId;
        if (j > 0) {
            TLRPC$User tLRPC$User = this.currentUser;
            return tLRPC$User != null && tLRPC$User.f1574id == j;
        }
        TLRPC$Chat tLRPC$Chat = this.currentChat;
        return tLRPC$Chat != null && tLRPC$Chat.f1433id == (-j);
    }

    public boolean isHandRaised() {
        return this.lastRaisedHand;
    }

    public CharSequence getName() {
        return this.nameTextView.getText();
    }

    public boolean hasAvatarSet() {
        return this.avatarImageView.getImageReceiver().hasNotThumb();
    }

    public void setData(AccountInstance accountInstance, TLRPC$TL_groupCallParticipant tLRPC$TL_groupCallParticipant, ChatObject.Call call, long j, TLRPC$FileLocation tLRPC$FileLocation, boolean z) {
        TLRPC$User tLRPC$User;
        this.currentCall = call;
        this.accountInstance = accountInstance;
        this.selfId = j;
        this.participant = tLRPC$TL_groupCallParticipant;
        long peerId = MessageObject.getPeerId(tLRPC$TL_groupCallParticipant.peer);
        if (peerId > 0) {
            TLRPC$User user = this.accountInstance.getMessagesController().getUser(Long.valueOf(peerId));
            this.currentUser = user;
            this.currentChat = null;
            this.avatarDrawable.setInfo(user);
            this.nameTextView.setText(UserObject.getUserName(this.currentUser));
            boolean isShowPremiumBadgeEnabled = accountInstance.getForkCommonController().isShowPremiumBadgeEnabled();
            boolean isShowPremiumStatusEnabled = accountInstance.getForkCommonController().isShowPremiumStatusEnabled();
            TLRPC$User tLRPC$User2 = this.currentUser;
            if (tLRPC$User2 == null || !tLRPC$User2.verified) {
                if (isShowPremiumStatusEnabled && tLRPC$User2 != null) {
                    TLRPC$EmojiStatus tLRPC$EmojiStatus = tLRPC$User2.emoji_status;
                    if (tLRPC$EmojiStatus instanceof TLRPC$TL_emojiStatus) {
                        this.rightDrawable.set(((TLRPC$TL_emojiStatus) tLRPC$EmojiStatus).document_id, z);
                    }
                }
                if (isShowPremiumStatusEnabled && tLRPC$User2 != null) {
                    TLRPC$EmojiStatus tLRPC$EmojiStatus2 = tLRPC$User2.emoji_status;
                    if ((tLRPC$EmojiStatus2 instanceof TLRPC$TL_emojiStatusUntil) && ((TLRPC$TL_emojiStatusUntil) tLRPC$EmojiStatus2).until > ((int) (System.currentTimeMillis() / 1000))) {
                        this.rightDrawable.set(((TLRPC$TL_emojiStatusUntil) this.currentUser.emoji_status).document_id, z);
                    }
                }
                if (isShowPremiumBadgeEnabled && (tLRPC$User = this.currentUser) != null && tLRPC$User.premium) {
                    if (this.premiumDrawable == null) {
                        this.premiumDrawable = getContext().getResources().getDrawable(C3295R.C3297drawable.msg_premium_liststar).mutate();
                        this.premiumDrawable = new AnimatedEmojiDrawable.WrapSizeDrawable(this, this.premiumDrawable, AndroidUtilities.m54dp(14), AndroidUtilities.m54dp(14)) { // from class: org.telegram.ui.Cells.GroupCallUserCell.3
                            @Override // org.telegram.p044ui.Components.AnimatedEmojiDrawable.WrapSizeDrawable, android.graphics.drawable.Drawable
                            public void draw(Canvas canvas) {
                                canvas.save();
                                canvas.translate(AndroidUtilities.m54dp(-2), AndroidUtilities.m54dp(0));
                                super.draw(canvas);
                                canvas.restore();
                            }
                        };
                    }
                    this.rightDrawable.set(this.premiumDrawable, z);
                } else {
                    this.rightDrawable.set((Drawable) null, z);
                }
            } else {
                AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.rightDrawable;
                Drawable drawable = this.verifiedDrawable;
                if (drawable == null) {
                    drawable = new VerifiedDrawable(getContext());
                }
                this.verifiedDrawable = drawable;
                swapAnimatedEmojiDrawable.set(drawable, z);
            }
            this.rightDrawable.setColor(Integer.valueOf(Theme.getColor(Theme.key_premiumGradient1)));
            this.nameTextView.setRightDrawable(this.rightDrawable);
            this.avatarImageView.getImageReceiver().setCurrentAccount(accountInstance.getCurrentAccount());
            if (tLRPC$FileLocation != null) {
                this.hasAvatar = true;
                this.avatarImageView.setImage(ImageLocation.getForLocal(tLRPC$FileLocation), "50_50", this.avatarDrawable, (Object) null);
            } else {
                ImageLocation forUser = ImageLocation.getForUser(this.currentUser, 1);
                this.hasAvatar = forUser != null;
                this.avatarImageView.setImage(forUser, "50_50", this.avatarDrawable, this.currentUser);
            }
        } else {
            TLRPC$Chat chat = this.accountInstance.getMessagesController().getChat(Long.valueOf(-peerId));
            this.currentChat = chat;
            this.currentUser = null;
            this.avatarDrawable.setInfo(chat);
            TLRPC$Chat tLRPC$Chat = this.currentChat;
            if (tLRPC$Chat != null) {
                this.nameTextView.setText(tLRPC$Chat.title);
                if (this.currentChat.verified) {
                    AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.rightDrawable;
                    Drawable drawable2 = this.verifiedDrawable;
                    if (drawable2 == null) {
                        drawable2 = new VerifiedDrawable(getContext());
                    }
                    this.verifiedDrawable = drawable2;
                    swapAnimatedEmojiDrawable2.set(drawable2, z);
                } else {
                    this.rightDrawable.set((Drawable) null, z);
                }
                this.avatarImageView.getImageReceiver().setCurrentAccount(accountInstance.getCurrentAccount());
                if (tLRPC$FileLocation != null) {
                    this.hasAvatar = true;
                    this.avatarImageView.setImage(ImageLocation.getForLocal(tLRPC$FileLocation), "50_50", this.avatarDrawable, (Object) null);
                } else {
                    ImageLocation forChat = ImageLocation.getForChat(this.currentChat, 1);
                    this.hasAvatar = forChat != null;
                    this.avatarImageView.setImage(forChat, "50_50", this.avatarDrawable, this.currentChat);
                }
            }
        }
        applyParticipantChanges(z);
    }

    public void setDrawDivider(boolean z) {
        this.needDivider = z;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        applyParticipantChanges(false);
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.rightDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.attach();
        }
    }

    public TLRPC$TL_groupCallParticipant getParticipant() {
        return this.participant;
    }

    public void setAmplitude(double d) {
        if (d > 1.5d) {
            if (this.updateRunnableScheduled) {
                AndroidUtilities.cancelRunOnUIThread(this.updateRunnable);
            }
            if (!this.isSpeaking) {
                this.isSpeaking = true;
                applyParticipantChanges(true);
            }
            this.avatarWavesDrawable.setAmplitude(d);
            AndroidUtilities.runOnUIThread(this.updateRunnable, 500L);
            this.updateRunnableScheduled = true;
            return;
        }
        this.avatarWavesDrawable.setAmplitude(0.0d);
    }

    public boolean clickMuteButton() {
        if (this.muteButton.isEnabled()) {
            this.muteButton.callOnClick();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(58), 1073741824));
    }

    public void applyParticipantChanges(boolean z) {
        applyParticipantChanges(z, false);
    }

    public void setGrayIconColor(int i, int i2) {
        if (this.grayIconColor != i) {
            if (this.currentIconGray) {
                this.lastMuteColor = Theme.getColor(i);
            }
            this.grayIconColor = i;
        }
        if (this.currentIconGray) {
            this.muteButton.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
            Theme.setSelectorDrawableColor(this.muteButton.getDrawable(), i2 & 620756991, true);
        }
    }

    public void setAboutVisibleProgress(int i, float f) {
        if (TextUtils.isEmpty(this.statusTextView[4].getText())) {
            f = BitmapDescriptorFactory.HUE_RED;
        }
        this.statusTextView[4].setFullAlpha(f);
        this.statusTextView[4].setFullLayoutAdditionalWidth(0, 0);
        invalidate();
    }

    public void setAboutVisible(boolean z) {
        if (z) {
            this.statusTextView[4].setTranslationY(BitmapDescriptorFactory.HUE_RED);
        } else {
            this.statusTextView[4].setFullAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0296 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0492  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void applyParticipantChanges(boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 1202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.GroupCallUserCell.applyParticipantChanges(boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyParticipantChanges$6(int i, int i2, ValueAnimator valueAnimator) {
        int offsetColor = AndroidUtilities.getOffsetColor(i, i2, valueAnimator.getAnimatedFraction(), 1.0f);
        this.muteButton.setColorFilter(new PorterDuffColorFilter(offsetColor, PorterDuff.Mode.MULTIPLY));
        Theme.setSelectorDrawableColor(this.muteButton.getDrawable(), offsetColor & 620756991, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyStatus(int i) {
        float m54dp;
        int i2 = 0;
        if (i == 0) {
            while (true) {
                SimpleTextView[] simpleTextViewArr = this.statusTextView;
                if (i2 >= simpleTextViewArr.length) {
                    return;
                }
                simpleTextViewArr[i2].setTranslationY(i2 == i ? 0.0f : AndroidUtilities.m54dp(-2));
                this.statusTextView[i2].setAlpha(i2 == i ? 1.0f : 0.0f);
                i2++;
            }
        } else {
            while (true) {
                SimpleTextView[] simpleTextViewArr2 = this.statusTextView;
                if (i2 >= simpleTextViewArr2.length) {
                    return;
                }
                SimpleTextView simpleTextView = simpleTextViewArr2[i2];
                if (i2 == i) {
                    m54dp = 0.0f;
                } else {
                    m54dp = AndroidUtilities.m54dp(i2 == 0 ? 2 : -2);
                }
                simpleTextView.setTranslationY(m54dp);
                this.statusTextView[i2].setAlpha(i2 == i ? 1.0f : 0.0f);
                i2++;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.needDivider) {
            float f = this.progressToAvatarPreview;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                this.dividerPaint.setAlpha((int) ((1.0f - f) * 255.0f));
            } else {
                this.dividerPaint.setAlpha((int) ((1.0f - this.statusTextView[4].getFullAlpha()) * 255.0f));
            }
            canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.m54dp(68), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m54dp(68) : 0), getMeasuredHeight() - 1, this.dividerPaint);
        }
        int left = this.avatarImageView.getLeft() + (this.avatarImageView.getMeasuredWidth() / 2);
        int top = this.avatarImageView.getTop() + (this.avatarImageView.getMeasuredHeight() / 2);
        this.avatarWavesDrawable.update();
        if (this.progressToAvatarPreview == BitmapDescriptorFactory.HUE_RED) {
            this.avatarWavesDrawable.draw(canvas, left, top, this);
        }
        this.avatarImageView.setScaleX(this.avatarWavesDrawable.getAvatarScale());
        this.avatarImageView.setScaleY(this.avatarWavesDrawable.getAvatarScale());
        this.avatarProgressView.setScaleX(this.avatarWavesDrawable.getAvatarScale());
        this.avatarProgressView.setScaleY(this.avatarWavesDrawable.getAvatarScale());
        super.dispatchDraw(canvas);
    }

    /* renamed from: org.telegram.ui.Cells.GroupCallUserCell$AvatarWavesDrawable */
    /* loaded from: classes5.dex */
    public static class AvatarWavesDrawable {
        float amplitude;
        float animateAmplitudeDiff;
        float animateToAmplitude;
        private BlobDrawable blobDrawable2;
        private boolean hasCustomColor;
        private int isMuted;
        boolean showWaves;
        float wavesEnter = BitmapDescriptorFactory.HUE_RED;
        private float progressToMuted = BitmapDescriptorFactory.HUE_RED;
        boolean invalidateColor = true;
        private BlobDrawable blobDrawable = new BlobDrawable(6);

        public AvatarWavesDrawable(int i, int i2) {
            BlobDrawable blobDrawable = new BlobDrawable(8);
            this.blobDrawable2 = blobDrawable;
            BlobDrawable blobDrawable2 = this.blobDrawable;
            float f = i;
            blobDrawable2.minRadius = f;
            float f2 = i2;
            blobDrawable2.maxRadius = f2;
            blobDrawable.minRadius = f;
            blobDrawable.maxRadius = f2;
            blobDrawable2.generateBlob();
            this.blobDrawable2.generateBlob();
            Paint paint = this.blobDrawable.paint;
            int i3 = Theme.key_voipgroup_speakingText;
            paint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(i3), 38));
            this.blobDrawable2.paint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(i3), 38));
        }

        public void update() {
            float f = this.animateToAmplitude;
            float f2 = this.amplitude;
            if (f != f2) {
                float f3 = this.animateAmplitudeDiff;
                float f4 = f2 + (16.0f * f3);
                this.amplitude = f4;
                if (f3 > BitmapDescriptorFactory.HUE_RED) {
                    if (f4 > f) {
                        this.amplitude = f;
                    }
                } else if (f4 < f) {
                    this.amplitude = f;
                }
            }
            boolean z = this.showWaves;
            if (z) {
                float f5 = this.wavesEnter;
                if (f5 != 1.0f) {
                    float f6 = f5 + 0.045714285f;
                    this.wavesEnter = f6;
                    if (f6 > 1.0f) {
                        this.wavesEnter = 1.0f;
                        return;
                    }
                    return;
                }
            }
            if (z) {
                return;
            }
            float f7 = this.wavesEnter;
            if (f7 != BitmapDescriptorFactory.HUE_RED) {
                float f8 = f7 - 0.045714285f;
                this.wavesEnter = f8;
                if (f8 < BitmapDescriptorFactory.HUE_RED) {
                    this.wavesEnter = BitmapDescriptorFactory.HUE_RED;
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x0064  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void draw(android.graphics.Canvas r8, float r9, float r10, android.view.View r11) {
            /*
                r7 = this;
                r0 = 512(0x200, float:7.175E-43)
                boolean r0 = org.telegram.messenger.LiteMode.isEnabled(r0)
                if (r0 != 0) goto L9
                return
            L9:
                r0 = 1061997773(0x3f4ccccd, float:0.8)
                r1 = 1053609165(0x3ecccccd, float:0.4)
                float r2 = r7.amplitude
                float r2 = r2 * r1
                float r2 = r2 + r0
                boolean r0 = r7.showWaves
                r1 = 0
                if (r0 != 0) goto L1e
                float r0 = r7.wavesEnter
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto Lac
            L1e:
                r8.save()
                org.telegram.ui.Components.CubicBezierInterpolator r0 = org.telegram.p044ui.Components.CubicBezierInterpolator.DEFAULT
                float r3 = r7.wavesEnter
                float r0 = r0.getInterpolation(r3)
                float r2 = r2 * r0
                r8.scale(r2, r2, r9, r10)
                boolean r0 = r7.hasCustomColor
                r2 = 1065353216(0x3f800000, float:1.0)
                if (r0 != 0) goto L8b
                int r0 = r7.isMuted
                r3 = 1037726734(0x3dda740e, float:0.10666667)
                r4 = 1
                if (r0 == r4) goto L4d
                float r5 = r7.progressToMuted
                int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
                if (r6 == 0) goto L4d
                float r5 = r5 + r3
                r7.progressToMuted = r5
                int r0 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
                if (r0 <= 0) goto L4a
                r7.progressToMuted = r2
            L4a:
                r7.invalidateColor = r4
                goto L60
            L4d:
                if (r0 != r4) goto L60
                float r0 = r7.progressToMuted
                int r5 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r5 == 0) goto L60
                float r0 = r0 - r3
                r7.progressToMuted = r0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L5e
                r7.progressToMuted = r1
            L5e:
                r7.invalidateColor = r4
            L60:
                boolean r0 = r7.invalidateColor
                if (r0 == 0) goto L8b
                int r0 = org.telegram.p044ui.ActionBar.Theme.key_voipgroup_speakingText
                int r0 = org.telegram.p044ui.ActionBar.Theme.getColor(r0)
                int r3 = r7.isMuted
                r4 = 2
                if (r3 != r4) goto L72
                int r3 = org.telegram.p044ui.ActionBar.Theme.key_voipgroup_mutedByAdminIcon
                goto L74
            L72:
                int r3 = org.telegram.p044ui.ActionBar.Theme.key_voipgroup_listeningText
            L74:
                int r3 = org.telegram.p044ui.ActionBar.Theme.getColor(r3)
                float r4 = r7.progressToMuted
                int r0 = androidx.core.graphics.ColorUtils.blendARGB(r0, r3, r4)
                org.telegram.ui.Components.BlobDrawable r3 = r7.blobDrawable
                android.graphics.Paint r3 = r3.paint
                r4 = 38
                int r0 = androidx.core.graphics.ColorUtils.setAlphaComponent(r0, r4)
                r3.setColor(r0)
            L8b:
                org.telegram.ui.Components.BlobDrawable r0 = r7.blobDrawable
                float r3 = r7.amplitude
                r0.update(r3, r2)
                org.telegram.ui.Components.BlobDrawable r0 = r7.blobDrawable
                android.graphics.Paint r3 = r0.paint
                r0.draw(r9, r10, r8, r3)
                org.telegram.ui.Components.BlobDrawable r0 = r7.blobDrawable2
                float r3 = r7.amplitude
                r0.update(r3, r2)
                org.telegram.ui.Components.BlobDrawable r0 = r7.blobDrawable2
                org.telegram.ui.Components.BlobDrawable r2 = r7.blobDrawable
                android.graphics.Paint r2 = r2.paint
                r0.draw(r9, r10, r8, r2)
                r8.restore()
            Lac:
                float r8 = r7.wavesEnter
                int r8 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                if (r8 == 0) goto Lb5
                r11.invalidate()
            Lb5:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Cells.GroupCallUserCell.AvatarWavesDrawable.draw(android.graphics.Canvas, float, float, android.view.View):void");
        }

        public float getAvatarScale() {
            float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(this.wavesEnter);
            return (((this.amplitude * 0.2f) + 0.9f) * interpolation) + ((1.0f - interpolation) * 1.0f);
        }

        public void setShowWaves(boolean z, View view) {
            if (this.showWaves != z) {
                view.invalidate();
            }
            this.showWaves = z;
        }

        public void setAmplitude(double d) {
            float f = ((float) d) / 80.0f;
            boolean z = this.showWaves;
            float f2 = BitmapDescriptorFactory.HUE_RED;
            if (!z) {
                f = 0.0f;
            }
            if (f > 1.0f) {
                f2 = 1.0f;
            } else if (f >= BitmapDescriptorFactory.HUE_RED) {
                f2 = f;
            }
            this.animateToAmplitude = f2;
            this.animateAmplitudeDiff = (f2 - this.amplitude) / 200.0f;
        }

        public void setColor(int i) {
            this.hasCustomColor = true;
            this.blobDrawable.paint.setColor(i);
        }

        public void setMuted(int i, boolean z) {
            this.isMuted = i;
            if (!z) {
                this.progressToMuted = i != 1 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            }
            this.invalidateColor = true;
        }
    }

    public BackupImageView getAvatarImageView() {
        return this.avatarImageView;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        String str;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (!accessibilityNodeInfo.isEnabled() || Build.VERSION.SDK_INT < 21 || this.participant == null) {
            return;
        }
        TLRPC$TL_groupCallParticipant tLRPC$TL_groupCallParticipant = this.participant;
        if (!tLRPC$TL_groupCallParticipant.muted || tLRPC$TL_groupCallParticipant.can_self_unmute) {
            i = C3295R.string.VoipMute;
            str = "VoipMute";
        } else {
            i = C3295R.string.VoipUnmute;
            str = "VoipUnmute";
        }
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, LocaleController.getString(str, i)));
    }

    public long getPeerId() {
        TLRPC$TL_groupCallParticipant tLRPC$TL_groupCallParticipant = this.participant;
        if (tLRPC$TL_groupCallParticipant == null) {
            return 0L;
        }
        return MessageObject.getPeerId(tLRPC$TL_groupCallParticipant.peer);
    }
}
