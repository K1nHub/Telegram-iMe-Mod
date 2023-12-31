package org.telegram.p043ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.BlurringShader;
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.CaptionPhotoViewer;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EditTextCaption;
import org.telegram.p043ui.Components.EditTextEmoji;
import org.telegram.p043ui.Components.EmojiView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.MentionsContainerView;
import org.telegram.p043ui.Components.ScaleStateListAnimator;
import org.telegram.p043ui.Components.SizeNotifierFrameLayout;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.Stories.DarkThemeResourceProvider;
import org.telegram.p043ui.Stories.recorder.CaptionContainerView;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$TL_document;
/* renamed from: org.telegram.ui.Stories.recorder.CaptionContainerView */
/* loaded from: classes6.dex */
public class CaptionContainerView extends FrameLayout {
    public ImageView applyButton;
    private Drawable applyButtonCheck;
    private CombinedDrawable applyButtonDrawable;
    private final BlurringShader.StoryBlurDrawer backgroundBlur;
    private final Paint backgroundPaint;
    int beforeScrollY;
    private Bitmap blurBitmap;
    private Matrix blurBitmapMatrix;
    private BitmapShader blurBitmapShader;
    private final BlurringShader.BlurManager blurManager;
    private Paint blurPaint;
    private final ButtonBounce bounce;
    private final RectF bounds;
    private final BlurringShader.StoryBlurDrawer captionBlur;
    private int codePointCount;
    private final FrameLayout containerView;
    protected int currentAccount;
    public final EditTextEmoji editText;
    private final LinearGradient fadeGradient;
    private final Paint fadePaint;
    private Utilities.CallbackVoidReturn<Bitmap> getUiBlurBitmap;
    int goingToScrollY;
    private final AnimatedFloat heightAnimated;
    private Bitmap hintTextBitmap;
    private final Paint hintTextBitmapPaint;
    private final TextPaint hintTextPaint;
    private boolean ignoreDraw;
    private boolean ignoreTextChange;
    public boolean ignoreTouches;
    private ValueAnimator keyboardAnimator;
    public final KeyboardNotifier keyboardNotifier;
    public boolean keyboardShown;
    public float keyboardT;
    private int lastHeight;
    private float lastHeightTranslation;
    public FrameLayout limitTextContainer;
    public AnimatedTextView limitTextView;
    private final Matrix matrix;
    private BlurringShader.StoryBlurDrawer mentionBackgroundBlur;
    public MentionsContainerView mentionContainer;
    private Utilities.Callback<Integer> onHeightUpdate;
    private Utilities.Callback<Boolean> onKeyboardOpen;
    ObjectAnimator parentKeyboardAnimator;
    private final RectF rectF;
    protected Theme.ResourcesProvider resourcesProvider;
    private final FrameLayout rootView;
    private ObjectAnimator scrollAnimator;
    private int shiftDp;
    private final SizeNotifierFrameLayout sizeNotifierFrameLayout;
    private final Runnable textChangeRunnable;
    private boolean toKeyboardShow;
    private Runnable updateShowKeyboard;
    boolean waitingForScrollYChange;

    protected void afterUpdateShownKeyboard(boolean z) {
    }

    protected void beforeUpdateShownKeyboard(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean captionLimitToast() {
        return false;
    }

    protected boolean clipChild(View view) {
        return true;
    }

    protected boolean customBlur() {
        return false;
    }

    protected void drawBlur(BlurringShader.StoryBlurDrawer storyBlurDrawer, Canvas canvas, RectF rectF, float f, boolean z, float f2, float f3, boolean z2) {
    }

    protected int getCaptionDefaultLimit() {
        return 0;
    }

    protected int getCaptionPremiumLimit() {
        return 0;
    }

    protected int getEditTextLeft() {
        return 0;
    }

    protected int getEditTextStyle() {
        return 2;
    }

    protected boolean ignoreTouches() {
        return false;
    }

    protected void onCaptionLimitUpdate(boolean z) {
    }

    protected void onEditHeightChange(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: onTextChange */
    public void lambda$new$1() {
    }

    protected void onUpdateShowKeyboard(float f) {
    }

    public void setAccount(int i) {
        this.currentAccount = i;
    }

    public CaptionContainerView(Context context, FrameLayout frameLayout, SizeNotifierFrameLayout sizeNotifierFrameLayout, FrameLayout frameLayout2, Theme.ResourcesProvider resourcesProvider, final BlurringShader.BlurManager blurManager) {
        super(context);
        Paint paint = new Paint(1);
        this.backgroundPaint = paint;
        Paint paint2 = new Paint(1);
        this.fadePaint = paint2;
        LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m104dp(10), new int[]{-65536, 0}, new float[]{0.05f, 1.0f}, Shader.TileMode.CLAMP);
        this.fadeGradient = linearGradient;
        this.matrix = new Matrix();
        this.hintTextPaint = new TextPaint(3);
        Paint paint3 = new Paint(3);
        this.hintTextBitmapPaint = paint3;
        this.shiftDp = -4;
        this.currentAccount = UserConfig.selectedAccount;
        this.textChangeRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                CaptionContainerView.this.lambda$new$1();
            }
        };
        this.bounce = new ButtonBounce(this, 1.0f, 3.0f);
        this.updateShowKeyboard = new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CaptionContainerView.this.lambda$new$2();
            }
        };
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.heightAnimated = new AnimatedFloat(this, 0L, 300L, cubicBezierInterpolator);
        this.ignoreDraw = false;
        this.rectF = new RectF();
        this.bounds = new RectF();
        this.resourcesProvider = resourcesProvider;
        this.rootView = frameLayout;
        this.sizeNotifierFrameLayout = sizeNotifierFrameLayout;
        this.containerView = frameLayout2;
        this.blurManager = blurManager;
        this.backgroundBlur = new BlurringShader.StoryBlurDrawer(blurManager, this, 0, !customBlur());
        paint.setColor(Integer.MIN_VALUE);
        this.keyboardNotifier = new KeyboardNotifier(frameLayout, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                CaptionContainerView.this.updateKeyboard(((Integer) obj).intValue());
            }
        });
        EditTextEmoji editTextEmoji = new EditTextEmoji(context, sizeNotifierFrameLayout, null, getEditTextStyle(), true, new DarkThemeResourceProvider()) { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView.1
            private BlurringShader.StoryBlurDrawer blurDrawer;

            @Override // org.telegram.p043ui.Components.EditTextEmoji
            protected void onEmojiKeyboardUpdate() {
                CaptionContainerView.this.keyboardNotifier.fire();
            }

            @Override // org.telegram.p043ui.Components.EditTextEmoji
            protected void onWaitingForKeyboard() {
                CaptionContainerView.this.keyboardNotifier.awaitKeyboard();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.EditTextEmoji
            public void createEmojiView() {
                super.createEmojiView();
                EmojiView emojiView = getEmojiView();
                if (emojiView == null || CaptionContainerView.this.getEditTextStyle() != 2) {
                    return;
                }
                emojiView.shouldLightenBackground = false;
                emojiView.fixBottomTabContainerTranslation = false;
                emojiView.setShouldDrawBackground(false);
                if (CaptionContainerView.this instanceof CaptionPhotoViewer) {
                    emojiView.setPadding(0, 0, 0, AndroidUtilities.navigationBarHeight);
                    emojiView.emojiCacheType = 3;
                }
            }

            @Override // org.telegram.p043ui.Components.EditTextEmoji
            protected void drawEmojiBackground(Canvas canvas, View view) {
                CaptionContainerView.this.rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, view.getWidth(), view.getHeight());
                if (CaptionContainerView.this.customBlur()) {
                    if (this.blurDrawer == null) {
                        this.blurDrawer = new BlurringShader.StoryBlurDrawer(blurManager, view, 7);
                    }
                    CaptionContainerView captionContainerView = CaptionContainerView.this;
                    captionContainerView.drawBlur(this.blurDrawer, canvas, captionContainerView.rectF, BitmapDescriptorFactory.HUE_RED, false, BitmapDescriptorFactory.HUE_RED, -view.getY(), false);
                    return;
                }
                CaptionContainerView captionContainerView2 = CaptionContainerView.this;
                captionContainerView2.drawBackground(canvas, captionContainerView2.rectF, BitmapDescriptorFactory.HUE_RED, 0.95f, view);
            }

            @Override // org.telegram.p043ui.Components.EditTextEmoji
            protected boolean onScrollYChange(int i) {
                if (CaptionContainerView.this.scrollAnimator != null && CaptionContainerView.this.scrollAnimator.isRunning() && i == CaptionContainerView.this.goingToScrollY) {
                    return false;
                }
                CaptionContainerView.this.invalidate();
                CaptionContainerView captionContainerView = CaptionContainerView.this;
                if (captionContainerView.waitingForScrollYChange) {
                    captionContainerView.waitingForScrollYChange = false;
                    if (captionContainerView.beforeScrollY != i && (captionContainerView.scrollAnimator == null || !CaptionContainerView.this.scrollAnimator.isRunning() || i != CaptionContainerView.this.goingToScrollY)) {
                        if (CaptionContainerView.this.scrollAnimator != null) {
                            CaptionContainerView.this.scrollAnimator.cancel();
                        }
                        CaptionContainerView.this.editText.getEditText().setScrollY(CaptionContainerView.this.beforeScrollY);
                        CaptionContainerView captionContainerView2 = CaptionContainerView.this;
                        EditTextCaption editText = captionContainerView2.editText.getEditText();
                        CaptionContainerView captionContainerView3 = CaptionContainerView.this;
                        captionContainerView3.goingToScrollY = i;
                        captionContainerView2.scrollAnimator = ObjectAnimator.ofInt(editText, "scrollY", captionContainerView3.beforeScrollY, i);
                        CaptionContainerView.this.scrollAnimator.setDuration(240L);
                        CaptionContainerView.this.scrollAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                        CaptionContainerView.this.scrollAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView.1.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (CaptionContainerView.this.scrollAnimator != animator) {
                                    return;
                                }
                                CaptionContainerView.this.scrollAnimator = null;
                                CaptionContainerView.this.editText.getEditText().setScrollY(CaptionContainerView.this.goingToScrollY);
                            }
                        });
                        CaptionContainerView.this.scrollAnimator.start();
                        return false;
                    }
                }
                return true;
            }
        };
        this.editText = editTextEmoji;
        editTextEmoji.setFocusable(true);
        editTextEmoji.setFocusableInTouchMode(true);
        editTextEmoji.getEditText().hintLayoutYFix = true;
        editTextEmoji.getEditText().drawHint = new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                CaptionContainerView.this.drawHint((Canvas) obj, (Runnable) obj2);
            }
        };
        editTextEmoji.getEditText().setSupportRtlHint(true);
        this.captionBlur = new BlurringShader.StoryBlurDrawer(blurManager, editTextEmoji.getEditText(), customBlur() ? 1 : 2);
        editTextEmoji.getEditText().setHintColor(-2130706433);
        editTextEmoji.getEditText().setHintText(LocaleController.getString(C3632R.string.AddCaption), false);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        editTextEmoji.getEditText().setTranslationX(AndroidUtilities.m104dp(-22));
        editTextEmoji.getEmojiButton().setAlpha(BitmapDescriptorFactory.HUE_RED);
        editTextEmoji.getEditText().addTextChangedListener(new C71662());
        editTextEmoji.getEditText().setLinkTextColor(-1);
        addView(editTextEmoji, LayoutHelper.createFrame(-1, -2, 87, 12, 12, 12, 12));
        BounceableImageView bounceableImageView = new BounceableImageView(context);
        this.applyButton = bounceableImageView;
        ScaleStateListAnimator.apply(bounceableImageView, 0.05f, 1.25f);
        Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.input_done).mutate();
        this.applyButtonCheck = mutate;
        mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogFloatingIcon), PorterDuff.Mode.SRC_IN));
        CombinedDrawable combinedDrawable = new CombinedDrawable(Theme.createCircleDrawable(AndroidUtilities.m104dp(16), Theme.getColor(Theme.key_dialogFloatingButton, resourcesProvider)), this.applyButtonCheck, 0, AndroidUtilities.m104dp(1));
        this.applyButtonDrawable = combinedDrawable;
        combinedDrawable.setCustomSize(AndroidUtilities.m104dp(32), AndroidUtilities.m104dp(32));
        this.applyButton.setImageDrawable(this.applyButtonDrawable);
        this.applyButton.setScaleType(ImageView.ScaleType.CENTER);
        this.applyButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.applyButton.setVisibility(8);
        this.applyButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CaptionContainerView.this.lambda$new$0(view);
            }
        });
        this.applyButton.setTranslationY(-AndroidUtilities.m104dp(1));
        addView(this.applyButton, LayoutHelper.createFrame(44, 44, 85));
        AnimatedTextView animatedTextView = new AnimatedTextView(context, false, true, true);
        this.limitTextView = animatedTextView;
        animatedTextView.setGravity(17);
        this.limitTextView.setTextSize(AndroidUtilities.m104dp(15));
        this.limitTextView.setTextColor(-1);
        this.limitTextView.setAnimationProperties(0.4f, 0L, 320L, cubicBezierInterpolator);
        this.limitTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.limitTextContainer = frameLayout3;
        frameLayout3.setTranslationX(AndroidUtilities.m104dp(2));
        this.limitTextContainer.addView(this.limitTextView, LayoutHelper.createFrame(52, 16, 85));
        addView(this.limitTextContainer, LayoutHelper.createFrame(52, 16, 85, 0, 0, 0, 50));
        paint2.setShader(linearGradient);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.recorder.CaptionContainerView$2 */
    /* loaded from: classes6.dex */
    public class C71662 implements TextWatcher {
        private int lastLength;
        private boolean lastOverLimit;

        C71662() {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (CaptionContainerView.this.scrollAnimator == null || !CaptionContainerView.this.scrollAnimator.isRunning()) {
                CaptionContainerView captionContainerView = CaptionContainerView.this;
                captionContainerView.beforeScrollY = captionContainerView.editText.getEditText().getScrollY();
                CaptionContainerView.this.waitingForScrollYChange = true;
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (CaptionContainerView.this.editText.getEditText().suppressOnTextChanged) {
                return;
            }
            CaptionContainerView captionContainerView = CaptionContainerView.this;
            if (captionContainerView.mentionContainer == null) {
                captionContainerView.createMentionsContainer();
            }
            if (CaptionContainerView.this.mentionContainer.getAdapter() != null) {
                CaptionContainerView.this.mentionContainer.getAdapter().lambda$searchUsernameOrHashtag$7(charSequence, CaptionContainerView.this.editText.getEditText().getSelectionStart(), null, false, false);
            }
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String str;
            CaptionContainerView captionContainerView;
            CaptionContainerView.this.codePointCount = Character.codePointCount(editable, 0, editable.length());
            int captionLimit = CaptionContainerView.this.getCaptionLimit();
            if (CaptionContainerView.this.codePointCount + 25 > captionLimit) {
                str = "" + (captionLimit - CaptionContainerView.this.codePointCount);
            } else {
                str = null;
            }
            CaptionContainerView.this.limitTextView.cancelAnimation();
            CaptionContainerView.this.limitTextView.setText(str);
            CaptionContainerView captionContainerView2 = CaptionContainerView.this;
            captionContainerView2.limitTextView.setTextColor(captionContainerView2.codePointCount >= captionLimit ? -1280137 : -1);
            if (CaptionContainerView.this.codePointCount > captionLimit && !UserConfig.getInstance(CaptionContainerView.this.currentAccount).isPremium() && CaptionContainerView.this.codePointCount < CaptionContainerView.this.getCaptionPremiumLimit() && CaptionContainerView.this.codePointCount > this.lastLength && (CaptionContainerView.this.captionLimitToast() || MessagesController.getInstance(CaptionContainerView.this.currentAccount).premiumLocked)) {
                AndroidUtilities.shakeViewSpring(CaptionContainerView.this.limitTextView, captionContainerView.shiftDp = -captionContainerView.shiftDp);
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
            }
            this.lastLength = CaptionContainerView.this.codePointCount;
            boolean z = CaptionContainerView.this.codePointCount > captionLimit;
            if (z != this.lastOverLimit) {
                CaptionContainerView.this.onCaptionLimitUpdate(z);
            }
            this.lastOverLimit = z;
            if (!CaptionContainerView.this.ignoreTextChange) {
                AndroidUtilities.cancelRunOnUIThread(CaptionContainerView.this.textChangeRunnable);
                AndroidUtilities.runOnUIThread(CaptionContainerView.this.textChangeRunnable, 1500L);
            }
            CaptionContainerView.this.ignoreTextChange = false;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CaptionContainerView.C71662.this.lambda$afterTextChanged$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$afterTextChanged$0() {
            CaptionContainerView.this.waitingForScrollYChange = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        closeKeyboard();
        AndroidUtilities.cancelRunOnUIThread(this.textChangeRunnable);
        this.textChangeRunnable.run();
    }

    public void invalidateBlur() {
        invalidate();
        this.editText.getEditText().invalidate();
        this.editText.getEmojiButton().invalidate();
        MentionsContainerView mentionsContainerView = this.mentionContainer;
        if (mentionsContainerView != null) {
            mentionsContainerView.invalidate();
        }
        if (this.editText.getEmojiView() == null || !customBlur()) {
            return;
        }
        this.editText.getEmojiView().invalidate();
    }

    public void setUiBlurBitmap(Utilities.CallbackVoidReturn<Bitmap> callbackVoidReturn) {
        this.getUiBlurBitmap = callbackVoidReturn;
    }

    public void closeKeyboard() {
        this.editText.closeKeyboard();
        this.editText.hidePopup(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.ignoreTouches || ignoreTouches() || !(this.bounds.contains(motionEvent.getX(), motionEvent.getY()) || this.keyboardShown)) {
            return false;
        }
        if (motionEvent.getAction() == 0 && !this.keyboardShown) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (childAt != null && childAt.isClickable() && childAt.getVisibility() == 0 && childAt.getAlpha() >= 0.5f && this.editText != childAt) {
                    this.rectF.set(childAt.getX(), childAt.getY(), childAt.getX() + childAt.getWidth(), childAt.getY() + childAt.getHeight());
                    if (this.rectF.contains(motionEvent.getX(), motionEvent.getY())) {
                        return super.dispatchTouchEvent(motionEvent);
                    }
                }
            }
            this.editText.getEditText().setForceCursorEnd(true);
            this.editText.getEditText().requestFocus();
            this.editText.openKeyboard();
            this.editText.getEditText().setScrollY(0);
            this.bounce.setPressed(true);
            return true;
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.bounce.setPressed(false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        this.bounce.setPressed(z && !this.keyboardShown);
    }

    private void animateScrollTo(boolean z) {
        EditTextCaption editText = this.editText.getEditText();
        if (editText == null || editText.getLayout() == null) {
            return;
        }
        ObjectAnimator objectAnimator = this.scrollAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        int scrollY = editText.getScrollY();
        EditTextEmoji editTextEmoji = this.editText;
        editTextEmoji.setSelection(z ? editTextEmoji.length() : 0);
        this.editText.getEditText().setForceCursorEnd(false);
        ObjectAnimator ofInt = ObjectAnimator.ofInt(editText, "scrollY", scrollY, z ? editText.getLayout().getLineTop(editText.getLineCount()) - ((editText.getHeight() - editText.getPaddingTop()) - editText.getPaddingBottom()) : 0);
        this.scrollAnimator = ofInt;
        ofInt.setDuration(360L);
        this.scrollAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.scrollAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMentionsContainer() {
        MentionsContainerView mentionsContainerView = new MentionsContainerView(getContext(), UserConfig.getInstance(this.currentAccount).getClientUserId(), 0, LaunchActivity.getLastFragment(), null, new DarkThemeResourceProvider()) { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView.3
            @Override // org.telegram.p043ui.Components.MentionsContainerView
            public void drawRoundRect(Canvas canvas, Rect rect, float f) {
                CaptionContainerView.this.rectF.set(rect);
                if (!CaptionContainerView.this.customBlur()) {
                    Paint paint = CaptionContainerView.this.mentionBackgroundBlur.getPaint(1.0f);
                    if (paint == null) {
                        CaptionContainerView.this.backgroundPaint.setAlpha(128);
                        canvas.drawRoundRect(CaptionContainerView.this.rectF, f, f, CaptionContainerView.this.backgroundPaint);
                        return;
                    }
                    canvas.drawRoundRect(CaptionContainerView.this.rectF, f, f, paint);
                    CaptionContainerView.this.backgroundPaint.setAlpha(80);
                    canvas.drawRoundRect(CaptionContainerView.this.rectF, f, f, CaptionContainerView.this.backgroundPaint);
                    return;
                }
                CaptionContainerView captionContainerView = CaptionContainerView.this;
                captionContainerView.drawBlur(captionContainerView.mentionBackgroundBlur, canvas, CaptionContainerView.this.rectF, f, false, -CaptionContainerView.this.mentionContainer.getX(), -CaptionContainerView.this.mentionContainer.getY(), false);
            }
        };
        this.mentionContainer = mentionsContainerView;
        this.mentionBackgroundBlur = new BlurringShader.StoryBlurDrawer(this.blurManager, mentionsContainerView, 0);
        setupMentionContainer();
        this.mentionContainer.withDelegate(new MentionsContainerView.Delegate() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView.4
            @Override // org.telegram.p043ui.Components.MentionsContainerView.Delegate
            public /* synthetic */ void addEmojiToRecent(String str) {
                MentionsContainerView.Delegate.CC.$default$addEmojiToRecent(this, str);
            }

            @Override // org.telegram.p043ui.Components.MentionsContainerView.Delegate
            public /* synthetic */ void onStickerSelected(TLRPC$TL_document tLRPC$TL_document, String str, Object obj) {
                MentionsContainerView.Delegate.CC.$default$onStickerSelected(this, tLRPC$TL_document, str, obj);
            }

            @Override // org.telegram.p043ui.Components.MentionsContainerView.Delegate
            public /* synthetic */ void sendBotInlineResult(TLRPC$BotInlineResult tLRPC$BotInlineResult, boolean z, int i) {
                MentionsContainerView.Delegate.CC.$default$sendBotInlineResult(this, tLRPC$BotInlineResult, z, i);
            }

            @Override // org.telegram.p043ui.Components.MentionsContainerView.Delegate
            public void replaceText(int i, int i2, CharSequence charSequence, boolean z) {
                CaptionContainerView.this.replaceWithText(i, i2, charSequence, z);
            }

            @Override // org.telegram.p043ui.Components.MentionsContainerView.Delegate
            public Paint.FontMetricsInt getFontMetrics() {
                return CaptionContainerView.this.editText.getEditText().getPaint().getFontMetricsInt();
            }
        });
        this.containerView.addView(this.mentionContainer, LayoutHelper.createFrame(-1, -1, 83));
    }

    protected void setupMentionContainer() {
        this.mentionContainer.getAdapter().setAllowStickers(false);
        this.mentionContainer.getAdapter().setAllowBots(false);
        this.mentionContainer.getAdapter().setAllowChats(false);
        this.mentionContainer.getAdapter().setSearchInDailogs(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void replaceWithText(int i, int i2, CharSequence charSequence, boolean z) {
        if (this.editText == null) {
            return;
        }
        try {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.editText.getText());
            spannableStringBuilder.replace(i, i2 + i, charSequence);
            if (z) {
                Emoji.replaceEmoji((CharSequence) spannableStringBuilder, this.editText.getEditText().getPaint().getFontMetricsInt(), AndroidUtilities.m104dp(20), false);
            }
            this.editText.setText(spannableStringBuilder);
            this.editText.setSelection(i + charSequence.length());
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public void onResume() {
        this.editText.onResume();
    }

    public void onPause() {
        this.editText.onPause();
    }

    public void setOnHeightUpdate(Utilities.Callback<Integer> callback) {
        this.onHeightUpdate = callback;
    }

    public int getEditTextHeight() {
        return (int) this.heightAnimated.get();
    }

    public int getEditTextHeightClosedKeyboard() {
        return Math.min(AndroidUtilities.m104dp(82), this.editText.getHeight());
    }

    public void setOnKeyboardOpen(Utilities.Callback<Boolean> callback) {
        this.onKeyboardOpen = callback;
    }

    protected int additionalKeyboardHeight() {
        return AndroidUtilities.navigationBarHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateKeyboard(int i) {
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierFrameLayout;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.notifyHeightChanged();
        }
        if (this.editText.isPopupShowing()) {
            i = Math.max(0, additionalKeyboardHeight() + this.editText.getEmojiPadding());
        } else if (this.editText.isWaitingForKeyboardOpen()) {
            i = Math.max(0, additionalKeyboardHeight() + this.editText.getKeyboardHeight());
        }
        SizeNotifierFrameLayout sizeNotifierFrameLayout2 = this.sizeNotifierFrameLayout;
        int max = Math.max(0, i - (sizeNotifierFrameLayout2 == null ? 0 : sizeNotifierFrameLayout2.getBottomPadding()));
        View view = (View) getParent();
        view.clearAnimation();
        ObjectAnimator objectAnimator = this.parentKeyboardAnimator;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.parentKeyboardAnimator.cancel();
            this.parentKeyboardAnimator = null;
        }
        this.parentKeyboardAnimator = ObjectAnimator.ofFloat(view, FrameLayout.TRANSLATION_Y, view.getTranslationY(), -max);
        if (max > AndroidUtilities.m104dp(20)) {
            this.parentKeyboardAnimator.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
            this.parentKeyboardAnimator.setDuration(250L);
        } else {
            this.parentKeyboardAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.parentKeyboardAnimator.setDuration(640L);
        }
        this.parentKeyboardAnimator.start();
        this.toKeyboardShow = max > AndroidUtilities.m104dp(20);
        AndroidUtilities.cancelRunOnUIThread(this.updateShowKeyboard);
        AndroidUtilities.runOnUIThread(this.updateShowKeyboard);
        if (max < AndroidUtilities.m104dp(20)) {
            this.editText.getEditText().clearFocus();
            this.editText.hidePopup(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        updateShowKeyboard(this.toKeyboardShow, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateEditTextLeft() {
        this.editText.getEditText().setTranslationX(AndroidUtilities.lerp(AndroidUtilities.m104dp(-22) + getEditTextLeft(), AndroidUtilities.m104dp(2), this.keyboardT));
    }

    private void updateShowKeyboard(final boolean z, boolean z2) {
        if (this.keyboardShown == z) {
            return;
        }
        this.keyboardShown = z;
        ValueAnimator valueAnimator = this.keyboardAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.keyboardAnimator = null;
        }
        Utilities.Callback<Boolean> callback = this.onKeyboardOpen;
        if (callback != null) {
            callback.run(Boolean.valueOf(z));
        }
        beforeUpdateShownKeyboard(z);
        if (z2) {
            if (z) {
                MentionsContainerView mentionsContainerView = this.mentionContainer;
                if (mentionsContainerView != null) {
                    mentionsContainerView.setVisibility(0);
                }
                this.applyButton.setVisibility(0);
            } else {
                this.editText.getEditText().scrollBy(0, -this.editText.getEditText().getScrollY());
            }
            float[] fArr = new float[2];
            fArr[0] = this.keyboardT;
            fArr[1] = z ? 1.0f : 0.0f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.keyboardAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    CaptionContainerView.this.lambda$updateShowKeyboard$3(valueAnimator2);
                }
            });
            if (!z) {
                this.editText.getEditText().setAllowDrawCursor(false);
            }
            this.keyboardAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (!z) {
                        CaptionContainerView.this.applyButton.setVisibility(8);
                        MentionsContainerView mentionsContainerView2 = CaptionContainerView.this.mentionContainer;
                        if (mentionsContainerView2 != null) {
                            mentionsContainerView2.setVisibility(8);
                        }
                    }
                    if (z) {
                        CaptionContainerView.this.editText.getEditText().setAllowDrawCursor(true);
                    }
                    CaptionContainerView.this.afterUpdateShownKeyboard(z);
                }
            });
            if (z) {
                this.keyboardAnimator.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                this.keyboardAnimator.setDuration(250L);
            } else {
                this.keyboardAnimator.setInterpolator(new FastOutSlowInInterpolator());
                this.keyboardAnimator.setDuration(420L);
            }
            this.keyboardAnimator.start();
        } else {
            this.keyboardT = z ? 1.0f : 0.0f;
            this.editText.getEditText().setTranslationX(AndroidUtilities.lerp(AndroidUtilities.m104dp(-22) + getEditTextLeft(), AndroidUtilities.m104dp(2), this.keyboardT));
            this.editText.setTranslationX(AndroidUtilities.lerp(0, AndroidUtilities.m104dp(-8), this.keyboardT));
            this.editText.setTranslationY(AndroidUtilities.lerp(0, AndroidUtilities.m104dp(10), this.keyboardT));
            this.limitTextContainer.setTranslationX(AndroidUtilities.lerp(-AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(2), this.keyboardT));
            this.limitTextContainer.setTranslationY(AndroidUtilities.lerp(-AndroidUtilities.m104dp(8), 0, this.keyboardT));
            this.editText.getEmojiButton().setAlpha(this.keyboardT);
            this.applyButton.setVisibility(z ? 0 : 8);
            this.applyButton.setAlpha(z ? 1.0f : 0.0f);
            onUpdateShowKeyboard(this.keyboardT);
            this.editText.getEditText().setAllowDrawCursor(z);
            afterUpdateShownKeyboard(z);
            invalidate();
        }
        animateScrollTo(z);
        this.editText.setSuggestionsEnabled(z);
        if (!z) {
            this.editText.getEditText().setSpoilersRevealed(false, true);
        }
        if (!z || SharedConfig.getDevicePerformanceClass() < 1 || LiteMode.isPowerSaverApplied()) {
            return;
        }
        if (this.blurBitmap == null) {
            this.blurBitmap = Bitmap.createBitmap((int) (this.rootView.getWidth() / 12.0f), (int) (this.rootView.getHeight() / 12.0f), Bitmap.Config.ARGB_8888);
        }
        this.ignoreDraw = true;
        drawBlurBitmap(this.blurBitmap, 12.0f);
        this.ignoreDraw = false;
        Bitmap bitmap = this.blurBitmap;
        if (bitmap != null && !bitmap.isRecycled()) {
            Bitmap bitmap2 = this.blurBitmap;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.blurBitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
            Matrix matrix = this.blurBitmapMatrix;
            if (matrix == null) {
                this.blurBitmapMatrix = new Matrix();
            } else {
                matrix.reset();
            }
            this.blurBitmapShader.setLocalMatrix(this.blurBitmapMatrix);
            if (this.blurPaint == null) {
                Paint paint = new Paint(3);
                this.blurPaint = paint;
                paint.setColor(-1);
            }
            this.blurPaint.setShader(this.blurBitmapShader);
            return;
        }
        this.blurBitmap = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateShowKeyboard$3(ValueAnimator valueAnimator) {
        this.keyboardT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.editText.getEditText().setTranslationX(AndroidUtilities.lerp(AndroidUtilities.m104dp(-22) + getEditTextLeft(), AndroidUtilities.m104dp(2), this.keyboardT));
        this.editText.setTranslationX(AndroidUtilities.lerp(0, AndroidUtilities.m104dp(-8), this.keyboardT));
        this.editText.setTranslationY(AndroidUtilities.lerp(0, AndroidUtilities.m104dp(10), this.keyboardT));
        this.limitTextContainer.setTranslationX(AndroidUtilities.lerp(-AndroidUtilities.m104dp(8), AndroidUtilities.m104dp(2), this.keyboardT));
        this.limitTextContainer.setTranslationY(AndroidUtilities.lerp(-AndroidUtilities.m104dp(8), 0, this.keyboardT));
        this.editText.getEmojiButton().setAlpha(this.keyboardT);
        this.applyButton.setAlpha((float) Math.pow(this.keyboardT, 16.0d));
        onUpdateShowKeyboard(this.keyboardT);
        MentionsContainerView mentionsContainerView = this.mentionContainer;
        if (mentionsContainerView != null) {
            mentionsContainerView.setAlpha((float) Math.pow(this.keyboardT, 4.0d));
        }
        this.editText.getEditText().invalidate();
        invalidate();
    }

    public int getCodePointCount() {
        return this.codePointCount;
    }

    public boolean isCaptionOverLimit() {
        return getCodePointCount() > getCaptionLimit();
    }

    protected int getCaptionLimit() {
        return UserConfig.getInstance(this.currentAccount).isPremium() ? getCaptionPremiumLimit() : getCaptionDefaultLimit();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void drawBlurBitmap(Bitmap bitmap, float f) {
        Utilities.stackBlurBitmap(bitmap, (int) f);
    }

    public boolean onBackPressed() {
        if (this.editText.isPopupShowing()) {
            this.editText.hidePopup(true);
            return true;
        } else if (!this.editText.isKeyboardVisible() || this.keyboardNotifier.ignoring) {
            return false;
        } else {
            closeKeyboard();
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int min;
        if (this.ignoreDraw) {
            return;
        }
        int height = this.editText.getHeight();
        if (this.keyboardShown) {
            min = Math.max(AndroidUtilities.m104dp(46), height);
        } else {
            min = Math.min(AndroidUtilities.m104dp(82), height);
        }
        float f = min;
        int i = (int) this.heightAnimated.set(f);
        if (i != this.lastHeight) {
            onEditHeightChange(i);
            Utilities.Callback<Integer> callback = this.onHeightUpdate;
            if (callback != null) {
                callback.run(Integer.valueOf(i));
            }
            this.lastHeight = min;
        }
        updateMentionsLayoutPosition();
        float f2 = i;
        float dpf2 = ((AndroidUtilities.dpf2(-1.0f) * this.keyboardT) + f) - f2;
        if (Math.abs(this.lastHeightTranslation - dpf2) >= 1.0f) {
            this.editText.getEditText().setTranslationY(dpf2);
        }
        this.lastHeightTranslation = dpf2;
        float lerp = AndroidUtilities.lerp(AndroidUtilities.m104dp(12), 0, this.keyboardT);
        this.bounds.set(lerp, (getHeight() - lerp) - f2, getWidth() - lerp, getHeight() - lerp);
        canvas.save();
        float scale = this.bounce.getScale(0.018f);
        canvas.scale(scale, scale, this.bounds.centerX(), this.bounds.centerY());
        float lerp2 = AndroidUtilities.lerp(AndroidUtilities.m104dp(21), 0, this.keyboardT);
        if (customBlur()) {
            drawBlur(this.backgroundBlur, canvas, this.bounds, lerp2, false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, true);
            this.backgroundPaint.setAlpha(AndroidUtilities.lerp(38, 64, this.keyboardT));
            canvas.drawRoundRect(this.bounds, lerp2, lerp2, this.backgroundPaint);
        } else {
            Paint[] paints = this.backgroundBlur.getPaints(1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            if (paints == null || paints[1] == null) {
                this.backgroundPaint.setAlpha(128);
                canvas.drawRoundRect(this.bounds, lerp2, lerp2, this.backgroundPaint);
            } else {
                if (paints[0] != null) {
                    canvas.drawRoundRect(this.bounds, lerp2, lerp2, paints[0]);
                }
                if (paints[1] != null) {
                    canvas.drawRoundRect(this.bounds, lerp2, lerp2, paints[1]);
                }
                this.backgroundPaint.setAlpha(51);
                canvas.drawRoundRect(this.bounds, lerp2, lerp2, this.backgroundPaint);
            }
        }
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public RectF getBounds() {
        return this.bounds;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawHint(Canvas canvas, Runnable runnable) {
        if (customBlur()) {
            if (this.hintTextBitmap == null) {
                runnable.run();
                return;
            }
            EditTextCaption editText = this.editText.getEditText();
            canvas.translate(-editText.hintLayoutX, BitmapDescriptorFactory.HUE_RED);
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.hintTextBitmap.getWidth(), this.hintTextBitmap.getHeight(), 255, 31);
            this.rectF.set(BitmapDescriptorFactory.HUE_RED, 1.0f, this.hintTextBitmap.getWidth(), this.hintTextBitmap.getHeight() - 1);
            drawBlur(this.captionBlur, canvas, this.rectF, BitmapDescriptorFactory.HUE_RED, true, (-this.editText.getX()) - editText.getPaddingLeft(), ((-this.editText.getY()) - editText.getPaddingTop()) - editText.getExtendedPaddingTop(), true);
            canvas.save();
            this.hintTextBitmapPaint.setAlpha(165);
            canvas.drawBitmap(this.hintTextBitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.hintTextBitmapPaint);
            canvas.restore();
            canvas.restore();
            return;
        }
        Paint paint = this.captionBlur.getPaint(1.0f);
        if (paint == null) {
            runnable.run();
            return;
        }
        EditTextCaption editText2 = this.editText.getEditText();
        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, editText2.getWidth(), editText2.getHeight(), 255, 31);
        runnable.run();
        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, editText2.getWidth(), editText2.getHeight(), paint);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawBackground(Canvas canvas, RectF rectF, float f, float f2, View view) {
        Bitmap bitmap;
        float f3 = this.keyboardT;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        if (f3 > BitmapDescriptorFactory.HUE_RED && this.blurPaint != null && this.blurBitmapShader != null && (bitmap = this.blurBitmap) != null && !bitmap.isRecycled()) {
            this.blurBitmapMatrix.reset();
            this.blurBitmapMatrix.postScale(this.rootView.getWidth() / this.blurBitmap.getWidth(), this.rootView.getHeight() / this.blurBitmap.getHeight());
            float f5 = 0.0f;
            for (int i = 0; i < 8 && view != null; i++) {
                f4 += view.getX();
                f5 += view.getY();
                ViewParent parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            this.blurBitmapMatrix.postTranslate(-f4, -f5);
            this.blurBitmapShader.setLocalMatrix(this.blurBitmapMatrix);
            this.blurPaint.setAlpha((int) (this.keyboardT * 255.0f * f2));
            canvas.drawRoundRect(rectF, f, f, this.blurPaint);
        }
        this.backgroundPaint.setAlpha((int) (this.blurPaint == null ? 128.0f : f2 * AndroidUtilities.lerp(128, 153, this.keyboardT)));
        canvas.drawRoundRect(rectF, f, f, this.backgroundPaint);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        EditTextEmoji editTextEmoji = this.editText;
        if (view == editTextEmoji) {
            float max = Math.max(0, (editTextEmoji.getHeight() - AndroidUtilities.m104dp(82)) - this.editText.getScrollY()) * (1.0f - this.keyboardT);
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
            canvas.save();
            canvas.clipRect(this.bounds);
            canvas.translate(BitmapDescriptorFactory.HUE_RED, max);
            boolean drawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            canvas.save();
            this.matrix.reset();
            this.matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, this.bounds.top - 1.0f);
            this.fadeGradient.setLocalMatrix(this.matrix);
            RectF rectF = this.bounds;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.drawRect(f, f2, rectF.right, f2 + AndroidUtilities.m104dp(10), this.fadePaint);
            this.matrix.reset();
            this.matrix.postRotate(180.0f);
            this.matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, this.bounds.bottom);
            this.fadeGradient.setLocalMatrix(this.matrix);
            RectF rectF2 = this.bounds;
            float f3 = rectF2.left;
            float m104dp = rectF2.bottom - AndroidUtilities.m104dp(10);
            RectF rectF3 = this.bounds;
            canvas.drawRect(f3, m104dp, rectF3.right, rectF3.bottom, this.fadePaint);
            canvas.restore();
            canvas.restore();
            return drawChild;
        } else if (clipChild(view)) {
            canvas.save();
            canvas.clipRect(this.bounds);
            boolean drawChild2 = super.drawChild(canvas, view, j);
            canvas.restore();
            return drawChild2;
        } else {
            return super.drawChild(canvas, view, j);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.editText.clearFocus();
    }

    public void clear() {
        this.ignoreTextChange = true;
        this.editText.setText("");
    }

    public void setText(CharSequence charSequence) {
        this.ignoreTextChange = true;
        this.editText.setText(charSequence);
    }

    public CharSequence getText() {
        return this.editText.getText();
    }

    public void updateMentionsLayoutPosition() {
        if (this.mentionContainer != null) {
            float translationY = ((View) getParent()).getTranslationY() - this.heightAnimated.get();
            if (this.mentionContainer.getY() != translationY) {
                this.mentionContainer.setTranslationY(translationY);
                this.mentionContainer.invalidate();
            }
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.CaptionContainerView$BounceableImageView */
    /* loaded from: classes6.dex */
    public static class BounceableImageView extends ImageView {
        private final ButtonBounce bounce;
        private final float scale;

        public BounceableImageView(Context context) {
            this(context, 0.2f);
        }

        public BounceableImageView(Context context, float f) {
            super(context);
            this.bounce = new ButtonBounce(this);
            this.scale = f;
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            super.setPressed(z);
            this.bounce.setPressed(z);
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            canvas.save();
            float scale = this.bounce.getScale(this.scale);
            canvas.scale(scale, scale, getWidth() / 2.0f, getHeight() / 2.0f);
            super.draw(canvas);
            canvas.restore();
        }
    }

    public int getSelectionLength() {
        EditTextEmoji editTextEmoji = this.editText;
        if (editTextEmoji != null && editTextEmoji.getEditText() != null) {
            try {
                return this.editText.getEditText().getSelectionEnd() - this.editText.getEditText().getSelectionStart();
            } catch (Exception e) {
                FileLog.m99e(e);
            }
        }
        return 0;
    }

    public void updateColors(Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
        this.applyButtonCheck.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogFloatingIcon), PorterDuff.Mode.SRC_IN));
        this.applyButtonDrawable.setBackgroundDrawable(Theme.createCircleDrawable(AndroidUtilities.m104dp(16), Theme.getColor(Theme.key_dialogFloatingButton, resourcesProvider)));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (customBlur()) {
            Bitmap bitmap = this.hintTextBitmap;
            if (bitmap != null) {
                bitmap.recycle();
                this.hintTextBitmap = null;
            }
            this.hintTextPaint.setColor(-16777216);
            this.hintTextPaint.setTextSize(AndroidUtilities.m104dp(16));
            String string = LocaleController.getString(C3632R.string.AddCaption);
            this.hintTextBitmap = Bitmap.createBitmap((int) Math.ceil(this.hintTextPaint.measureText(string)), (int) Math.ceil(this.hintTextPaint.getFontMetrics().descent - this.hintTextPaint.getFontMetrics().ascent), Bitmap.Config.ARGB_8888);
            new Canvas(this.hintTextBitmap).drawText(string, BitmapDescriptorFactory.HUE_RED, -((int) this.hintTextPaint.getFontMetrics().ascent), this.hintTextPaint);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.blurBitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.blurBitmapShader = null;
        this.blurPaint = null;
        Bitmap bitmap2 = this.hintTextBitmap;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.hintTextBitmap = null;
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.CaptionContainerView$PeriodDrawable */
    /* loaded from: classes6.dex */
    public static class PeriodDrawable extends Drawable {
        private final Paint fillPaint;
        private final AnimatedFloat fillT;
        private boolean filled;
        private final Paint strokePaint;
        public final AnimatedTextView.AnimatedTextDrawable textDrawable;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public PeriodDrawable() {
            Paint paint = new Paint(1);
            this.strokePaint = paint;
            this.fillPaint = new Paint(1);
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, false, false) { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView.PeriodDrawable.1
                @Override // android.graphics.drawable.Drawable
                public void invalidateSelf() {
                    PeriodDrawable.this.invalidateSelf();
                }
            };
            this.textDrawable = animatedTextDrawable;
            this.filled = false;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$PeriodDrawable$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CaptionContainerView.PeriodDrawable.this.invalidateSelf();
                }
            };
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.fillT = new AnimatedFloat(runnable, 0L, 350L, cubicBezierInterpolator);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(AndroidUtilities.dpf2(1.66f));
            paint.setStrokeCap(Paint.Cap.ROUND);
            animatedTextDrawable.setAnimationProperties(0.3f, 0L, 250L, cubicBezierInterpolator);
            animatedTextDrawable.setTypeface(AndroidUtilities.getTypeface("fonts/num.otf"));
            animatedTextDrawable.setTextSize(AndroidUtilities.dpf2(12.0f));
            animatedTextDrawable.setGravity(17);
            updateColors(-1, -15033089);
        }

        public void updateColors(int i, int i2) {
            this.strokePaint.setColor(i);
            this.textDrawable.setTextColor(i);
            this.fillPaint.setColor(i2);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            float centerY = getBounds().centerY();
            float centerY2 = getBounds().centerY();
            float dpf2 = AndroidUtilities.dpf2(21.0f) / 2.0f;
            float f = this.fillT.set(this.filled);
            if (f > BitmapDescriptorFactory.HUE_RED) {
                this.fillPaint.setAlpha((int) (f * 255.0f));
                canvas.drawCircle(centerY, centerY2, AndroidUtilities.dpf2(11.33f) * f, this.fillPaint);
            }
            this.strokePaint.setAlpha((int) ((1.0f - f) * 255.0f));
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(centerY - dpf2, centerY2 - dpf2, centerY + dpf2, dpf2 + centerY2);
            canvas.drawArc(rectF, 90.0f, 180.0f, false, this.strokePaint);
            float f2 = 19.285715f;
            for (int i = 0; i < 5; i++) {
                canvas.drawArc(AndroidUtilities.rectTmp, f2 + 270.0f, 12.857143f, false, this.strokePaint);
                f2 += 32.14286f;
            }
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, -1.0f);
            Rect rect = AndroidUtilities.rectTmp2;
            rect.set((int) (centerY - AndroidUtilities.m104dp(20)), (int) (centerY2 - AndroidUtilities.m104dp(20)), (int) (centerY + AndroidUtilities.m104dp(20)), (int) (centerY2 + AndroidUtilities.m104dp(20)));
            this.textDrawable.setBounds(rect);
            this.textDrawable.draw(canvas);
            canvas.restore();
        }

        public void setValue(int i, boolean z, boolean z2) {
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.textDrawable;
            animatedTextDrawable.setText("" + i, z2);
            this.filled = z;
            if (!z2) {
                this.fillT.set(z, true);
            }
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.m104dp(24);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return AndroidUtilities.m104dp(24);
        }
    }
}
