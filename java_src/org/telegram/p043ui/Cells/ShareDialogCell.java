package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.CheckBoxBase;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.Forum.ForumUtilities;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.ShareDialogCell */
/* loaded from: classes5.dex */
public class ShareDialogCell extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private final AvatarDrawable avatarDrawable;
    private final CheckBox2 checkBox;
    private final int currentAccount;
    private long currentDialog;
    private final int currentType;
    private final BackupImageView imageView;
    private long lastUpdateTime;
    private Drawable lockDrawable;
    private final TextView nameTextView;
    private float onlineProgress;
    private boolean premiumBlocked;
    private final AnimatedFloat premiumBlockedT;
    private PremiumGradient.PremiumGradientTools premiumGradient;
    private RepostStoryDrawable repostStoryDrawable;
    public final Theme.ResourcesProvider resourcesProvider;
    private final SimpleTextView topicTextView;
    private boolean topicWasVisible;
    private TLRPC$User user;

    public boolean isBlocked() {
        return this.premiumBlocked;
    }

    public BackupImageView getImageView() {
        return this.imageView;
    }

    public ShareDialogCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.avatarDrawable = new AvatarDrawable() { // from class: org.telegram.ui.Cells.ShareDialogCell.1
            @Override // android.graphics.drawable.Drawable
            public void invalidateSelf() {
                super.invalidateSelf();
                ShareDialogCell.this.imageView.invalidate();
            }
        };
        this.currentAccount = UserConfig.selectedAccount;
        this.premiumBlockedT = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.resourcesProvider = resourcesProvider;
        setWillNotDraw(false);
        this.currentType = i;
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m107dp(28));
        if (i == 2) {
            addView(backupImageView, LayoutHelper.createFrame(48, 48, 49, 0, 7, 0, 0));
        } else {
            addView(backupImageView, LayoutHelper.createFrame(56, 56, 49, 0, 7, 0, 0));
        }
        TextView textView = new TextView(this, context) { // from class: org.telegram.ui.Cells.ShareDialogCell.2
            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(10), false), bufferType);
            }
        };
        this.nameTextView = textView;
        NotificationCenter.listenEmojiLoading(textView);
        textView.setTextColor(getThemedColor(this.premiumBlocked ? Theme.key_windowBackgroundWhiteGrayText5 : i == 1 ? Theme.key_voipgroup_nameText : Theme.key_dialogTextBlack));
        textView.setTextSize(1, 12.0f);
        textView.setMaxLines(2);
        textView.setGravity(49);
        textView.setLines(2);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        addView(textView, LayoutHelper.createFrame(-1, -2, 51, 6, i == 2 ? 58 : 66, 6, 0));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.topicTextView = simpleTextView;
        simpleTextView.setTextColor(getThemedColor(i == 1 ? Theme.key_voipgroup_nameText : Theme.key_dialogTextBlack));
        simpleTextView.setTextSize(12);
        simpleTextView.setMaxLines(2);
        simpleTextView.setGravity(49);
        simpleTextView.setAlignment(Layout.Alignment.ALIGN_CENTER);
        addView(simpleTextView, LayoutHelper.createFrame(-1, -2, 51, 6, i == 2 ? 58 : 66, 6, 0));
        CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
        this.checkBox = checkBox2;
        checkBox2.setColor(Theme.key_dialogRoundCheckBox, i == 1 ? Theme.key_voipgroup_inviteMembersBackground : Theme.key_dialogBackground, Theme.key_dialogRoundCheckBoxCheck);
        checkBox2.setDrawUnchecked(false);
        checkBox2.setDrawBackgroundAsArc(4);
        checkBox2.setProgressDelegate(new CheckBoxBase.ProgressDelegate() { // from class: org.telegram.ui.Cells.ShareDialogCell$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.Components.CheckBoxBase.ProgressDelegate
            public final void setProgress(float f) {
                ShareDialogCell.this.lambda$new$0(f);
            }
        });
        addView(checkBox2, LayoutHelper.createFrame(24, 24, 49, 19, i == 2 ? -40 : 42, 0, 0));
        setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), AndroidUtilities.m107dp(2), AndroidUtilities.m107dp(2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(float f) {
        float progress = 1.0f - (this.checkBox.getProgress() * 0.143f);
        this.imageView.setScaleX(progress);
        this.imageView.setScaleY(progress);
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.userIsPremiumBlockedUpadted);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.userIsPremiumBlockedUpadted);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.userIsPremiumBlockedUpadted) {
            boolean z = this.premiumBlocked;
            boolean z2 = this.user != null && MessagesController.getInstance(this.currentAccount).isUserPremiumBlocked(this.user.f1751id);
            this.premiumBlocked = z2;
            this.nameTextView.setTextColor(getThemedColor(z2 ? Theme.key_windowBackgroundWhiteGrayText5 : this.currentType == 1 ? Theme.key_voipgroup_nameText : Theme.key_dialogTextBlack));
            if (this.premiumBlocked != z) {
                invalidate();
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(this.currentType == 2 ? 95 : 103), 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String repostToCustomName() {
        return LocaleController.getString(C3632R.string.FwdMyStory);
    }

    public void setDialog(long j, boolean z, CharSequence charSequence) {
        if (j == Long.MAX_VALUE) {
            this.nameTextView.setText(repostToCustomName());
            if (this.repostStoryDrawable == null) {
                this.repostStoryDrawable = new RepostStoryDrawable(getContext(), this.imageView, true, this.resourcesProvider);
            }
            this.imageView.setImage((ImageLocation) null, (String) null, this.repostStoryDrawable, (Object) null);
        } else if (DialogObject.isUserDialog(j)) {
            this.user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
            boolean isUserPremiumBlocked = MessagesController.getInstance(this.currentAccount).isUserPremiumBlocked(j);
            this.premiumBlocked = isUserPremiumBlocked;
            this.nameTextView.setTextColor(getThemedColor(isUserPremiumBlocked ? Theme.key_windowBackgroundWhiteGrayText5 : this.currentType == 1 ? Theme.key_voipgroup_nameText : Theme.key_dialogTextBlack));
            this.premiumBlockedT.set(this.premiumBlocked, true);
            invalidate();
            this.avatarDrawable.setInfo(this.currentAccount, this.user);
            if (this.currentType != 2 && UserObject.isReplyUser(this.user)) {
                this.nameTextView.setText(LocaleController.getString("RepliesTitle", C3632R.string.RepliesTitle));
                this.avatarDrawable.setAvatarType(12);
                this.imageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, this.user);
            } else if (this.currentType != 2 && UserObject.isUserSelf(this.user)) {
                this.nameTextView.setText(LocaleController.getString("SavedMessages", C3632R.string.SavedMessages));
                this.avatarDrawable.setAvatarType(1);
                this.imageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, this.user);
            } else {
                if (charSequence != null) {
                    this.nameTextView.setText(charSequence);
                } else {
                    TLRPC$User tLRPC$User = this.user;
                    if (tLRPC$User != null) {
                        this.nameTextView.setText(ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name));
                    } else {
                        this.nameTextView.setText("");
                    }
                }
                this.imageView.setForUserOrChat(this.user, this.avatarDrawable);
            }
            this.imageView.setRoundRadius(AndroidUtilities.m107dp(28));
        } else {
            this.user = null;
            this.premiumBlocked = false;
            this.premiumBlockedT.set(BitmapDescriptorFactory.HUE_RED, true);
            TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
            if (charSequence != null) {
                this.nameTextView.setText(charSequence);
            } else if (chat != null) {
                this.nameTextView.setText(chat.title);
            } else {
                this.nameTextView.setText("");
            }
            this.avatarDrawable.setInfo(this.currentAccount, chat);
            if (this.currentType != 2 && chat != null && ChatObject.isTemplatesChat(this.currentAccount, chat.f1602id)) {
                this.nameTextView.setText(LocaleController.getInternalString(C3632R.string.chat_templates));
                this.avatarDrawable.setAvatarType(101);
                this.imageView.setImage((ImageLocation) null, (String) null, this.avatarDrawable, chat);
            } else {
                this.imageView.setForUserOrChat(chat, this.avatarDrawable);
            }
            this.imageView.setRoundRadius((chat == null || !chat.forum) ? AndroidUtilities.m107dp(28) : AndroidUtilities.m107dp(16));
        }
        this.currentDialog = j;
        this.checkBox.setChecked(z, false);
    }

    public long getCurrentDialog() {
        return this.currentDialog;
    }

    public void setChecked(boolean z, boolean z2) {
        this.checkBox.setChecked(z, z2);
        if (z) {
            return;
        }
        setTopic(null, true);
    }

    public void setTopic(TLRPC$TL_forumTopic tLRPC$TL_forumTopic, boolean z) {
        boolean z2 = this.topicWasVisible;
        boolean z3 = tLRPC$TL_forumTopic != null;
        if (z2 == z3 && z) {
            return;
        }
        SimpleTextView simpleTextView = this.topicTextView;
        int i = C3632R.C3635id.spring_tag;
        SpringAnimation springAnimation = (SpringAnimation) simpleTextView.getTag(i);
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        if (z3) {
            SimpleTextView simpleTextView2 = this.topicTextView;
            simpleTextView2.setText(ForumUtilities.getTopicSpannedName(tLRPC$TL_forumTopic, simpleTextView2.getTextPaint(), false));
            this.topicTextView.requestLayout();
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z) {
            SpringAnimation springAnimation2 = new SpringAnimation(new FloatValueHolder(z3 ? 0.0f : 1000.0f));
            if (z3) {
                f = 1000.0f;
            }
            SpringAnimation addEndListener = springAnimation2.setSpring(new SpringForce(f).setStiffness(1500.0f).setDampingRatio(1.0f)).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Cells.ShareDialogCell$$ExternalSyntheticLambda1
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                    ShareDialogCell.this.lambda$setTopic$1(dynamicAnimation, f2, f3);
                }
            }).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Cells.ShareDialogCell$$ExternalSyntheticLambda0
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z4, float f2, float f3) {
                    ShareDialogCell.this.lambda$setTopic$2(dynamicAnimation, z4, f2, f3);
                }
            });
            this.topicTextView.setTag(i, addEndListener);
            addEndListener.start();
        } else if (z3) {
            this.topicTextView.setAlpha(1.0f);
            this.nameTextView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.topicTextView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.nameTextView.setTranslationX(AndroidUtilities.m107dp(10));
        } else {
            this.topicTextView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.nameTextView.setAlpha(1.0f);
            this.topicTextView.setTranslationX(-AndroidUtilities.m107dp(10));
            this.nameTextView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        }
        this.topicWasVisible = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTopic$1(DynamicAnimation dynamicAnimation, float f, float f2) {
        float f3 = f / 1000.0f;
        this.topicTextView.setAlpha(f3);
        float f4 = 1.0f - f3;
        this.nameTextView.setAlpha(f4);
        this.topicTextView.setTranslationX(f4 * (-AndroidUtilities.m107dp(10)));
        this.nameTextView.setTranslationX(f3 * AndroidUtilities.m107dp(10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTopic$2(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        this.topicTextView.setTag(C3632R.C3635id.spring_tag, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01e6  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean drawChild(android.graphics.Canvas r25, android.view.View r26, long r27) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Cells.ShareDialogCell.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int left = this.imageView.getLeft() + (this.imageView.getMeasuredWidth() / 2);
        int top = this.imageView.getTop() + (this.imageView.getMeasuredHeight() / 2);
        Theme.checkboxSquare_checkPaint.setColor(getThemedColor(Theme.key_dialogRoundCheckBox));
        Theme.checkboxSquare_checkPaint.setAlpha((int) (this.checkBox.getProgress() * 255.0f));
        int m107dp = AndroidUtilities.m107dp(this.currentType == 2 ? 24 : 28);
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(left - m107dp, top - m107dp, left + m107dp, top + m107dp);
        canvas.drawRoundRect(rectF, this.imageView.getRoundRadius()[0], this.imageView.getRoundRadius()[0], Theme.checkboxSquare_checkPaint);
        super.onDraw(canvas);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.checkBox.isChecked()) {
            accessibilityNodeInfo.setSelected(true);
        }
    }

    /* renamed from: org.telegram.ui.Cells.ShareDialogCell$RepostStoryDrawable */
    /* loaded from: classes5.dex */
    public static class RepostStoryDrawable extends Drawable {
        int alpha;
        private final Drawable drawable;
        private final LinearGradient gradient;
        private final RLottieDrawable lottieDrawable;
        private final Paint paint;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public RepostStoryDrawable(Context context, View view, boolean z, Theme.ResourcesProvider resourcesProvider) {
            Paint paint = new Paint(1);
            this.paint = paint;
            this.alpha = 255;
            LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(56), AndroidUtilities.m107dp(56), new int[]{Theme.getColor(Theme.key_stories_circle1, resourcesProvider), Theme.getColor(Theme.key_stories_circle2, resourcesProvider)}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
            this.gradient = linearGradient;
            paint.setShader(linearGradient);
            if (z) {
                RLottieDrawable rLottieDrawable = new RLottieDrawable(C3632R.raw.story_repost, "story_repost", AndroidUtilities.m107dp(42), AndroidUtilities.m107dp(42), true, null);
                this.lottieDrawable = rLottieDrawable;
                rLottieDrawable.setMasterParent(view);
                Objects.requireNonNull(rLottieDrawable);
                AndroidUtilities.runOnUIThread(new ShareDialogCell$RepostStoryDrawable$$ExternalSyntheticLambda0(rLottieDrawable), 450L);
                this.drawable = null;
                return;
            }
            this.lottieDrawable = null;
            Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.large_repost_story).mutate();
            this.drawable = mutate;
            mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.save();
            canvas.translate(getBounds().left, getBounds().top);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getBounds().width(), getBounds().height());
            this.paint.setAlpha(this.alpha);
            float min = (Math.min(getBounds().width(), getBounds().height()) / 2.0f) * (this.alpha / 255.0f);
            canvas.drawRoundRect(rectF, min, min, this.paint);
            canvas.restore();
            int m107dp = AndroidUtilities.m107dp(this.lottieDrawable != null ? 20 : 15);
            Rect rect = AndroidUtilities.rectTmp2;
            rect.set(getBounds().centerX() - m107dp, getBounds().centerY() - m107dp, getBounds().centerX() + m107dp, getBounds().centerY() + m107dp);
            Drawable drawable = this.lottieDrawable;
            if (drawable == null) {
                drawable = this.drawable;
            }
            if (drawable != null) {
                drawable.setBounds(rect);
                drawable.setAlpha(this.alpha);
                drawable.draw(canvas);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.alpha = i;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return AndroidUtilities.m107dp(56);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.m107dp(56);
        }
    }
}
