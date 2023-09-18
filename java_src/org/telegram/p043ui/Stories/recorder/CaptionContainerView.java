package org.telegram.p043ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
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
import org.telegram.messenger.C3473R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
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
import org.telegram.p043ui.Components.ButtonBounce;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EditTextCaption;
import org.telegram.p043ui.Components.EditTextEmoji;
import org.telegram.p043ui.Components.EmojiView;
import org.telegram.p043ui.Components.ItemOptions;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.MentionsContainerView;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.Stories.recorder.StoryRecorder;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$TL_document;
/* renamed from: org.telegram.ui.Stories.recorder.CaptionContainerView */
/* loaded from: classes7.dex */
public class CaptionContainerView extends FrameLayout {
    public ImageView applyButton;
    private final Paint backgroundPaint;
    private Bitmap blurBitmap;
    private Matrix blurBitmapMatrix;
    private BitmapShader blurBitmapShader;
    private Paint blurPaint;
    private final FrameLayout containerView;
    private int currentAccount;
    public final EditTextEmoji editText;
    private final LinearGradient fadeGradient;
    private final Paint fadePaint;
    private final AnimatedFloat heightAnimated;
    private boolean ignoreDraw;
    public boolean ignoreTouches;
    private ValueAnimator keyboardAnimator;
    public final KeyboardNotifier keyboardNotifier;
    public boolean keyboardShown;
    public float keyboardT;
    private int lastHeight;
    private float lastHeightTranslation;
    public AnimatedTextView limitTextView;
    private final Matrix matrix;
    public MentionsContainerView mentionContainer;
    private Utilities.Callback<Integer> onHeightUpdate;
    private Utilities.Callback<Boolean> onKeyboardOpen;
    private Utilities.Callback<Integer> onPeriodUpdate;
    private Utilities.Callback<Integer> onPremiumHintShow;
    ObjectAnimator parentKeyboardAnimator;
    public ImageView periodButton;
    private int periodIndex;
    private ItemOptions periodPopup;
    private boolean periodVisible;
    private final Theme.ResourcesProvider resourcesProvider;
    private final StoryRecorder.WindowView rootView;
    private int shiftDp;
    private boolean toKeyboardShow;
    private Runnable updateShowKeyboard;
    public static final int[] periods = {21600, 43200, 86400, 172800};
    public static final int[] periodDrawables = {C3473R.C3475drawable.msg_story_6h, C3473R.C3475drawable.msg_story_12h, C3473R.C3475drawable.msg_story_24h, C3473R.C3475drawable.msg_story_48h};

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean captionLimitToast() {
        return false;
    }

    protected void onCaptionLimitUpdate(boolean z) {
    }

    public CaptionContainerView(Context context, final int i, final StoryRecorder.WindowView windowView, FrameLayout frameLayout, final Theme.ResourcesProvider resourcesProvider) {
        super(context);
        Paint paint = new Paint(1);
        this.backgroundPaint = paint;
        this.periodVisible = true;
        this.periodIndex = 0;
        Paint paint2 = new Paint(1);
        this.fadePaint = paint2;
        LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m72dp(10), new int[]{-65536, 0}, new float[]{0.05f, 1.0f}, Shader.TileMode.CLAMP);
        this.fadeGradient = linearGradient;
        this.matrix = new Matrix();
        this.shiftDp = -4;
        this.updateShowKeyboard = new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CaptionContainerView.this.lambda$new$6();
            }
        };
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.heightAnimated = new AnimatedFloat(this, 0L, 300L, cubicBezierInterpolator);
        this.ignoreDraw = false;
        this.resourcesProvider = resourcesProvider;
        this.currentAccount = i;
        this.rootView = windowView;
        this.containerView = frameLayout;
        paint.setColor(Integer.MIN_VALUE);
        this.keyboardNotifier = new KeyboardNotifier(windowView, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                CaptionContainerView.this.updateKeyboard(((Integer) obj).intValue());
            }
        });
        EditTextEmoji editTextEmoji = new EditTextEmoji(context, windowView, null, 2, true, resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView.1
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
                if (emojiView != null) {
                    emojiView.shouldLightenBackground = false;
                    emojiView.fixBottomTabContainerTranslation = false;
                    emojiView.setShouldDrawBackground(false);
                }
            }

            @Override // org.telegram.p043ui.Components.EditTextEmoji
            protected void drawEmojiBackground(Canvas canvas, View view) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, view.getWidth(), view.getHeight());
                CaptionContainerView.this.drawBackground(canvas, rectF, BitmapDescriptorFactory.HUE_RED, 0.95f, view);
            }
        };
        this.editText = editTextEmoji;
        editTextEmoji.setHint(LocaleController.getString("StoryAddCaption", C3473R.string.StoryAddCaption));
        editTextEmoji.getEditText().setTranslationX(AndroidUtilities.m72dp(-22));
        editTextEmoji.getEmojiButton().setAlpha(BitmapDescriptorFactory.HUE_RED);
        editTextEmoji.getEditText().addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView.2
            private int lastLength;
            private boolean lastOverLimit;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                if (CaptionContainerView.this.editText.getEditText().suppressOnTextChanged) {
                    return;
                }
                CaptionContainerView captionContainerView = CaptionContainerView.this;
                if (captionContainerView.mentionContainer == null) {
                    captionContainerView.createMentionsContainer();
                }
                if (CaptionContainerView.this.mentionContainer.getAdapter() != null) {
                    CaptionContainerView.this.mentionContainer.getAdapter().setUserOrChar(UserConfig.getInstance(i).getCurrentUser(), null);
                    CaptionContainerView.this.mentionContainer.getAdapter().searchUsernameOrHashtag(charSequence, CaptionContainerView.this.editText.getEditText().getSelectionStart(), null, false, false);
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                int i2;
                CaptionContainerView captionContainerView;
                EditTextCaption editText = CaptionContainerView.this.editText.getEditText();
                if (editText != null && editText.getLayout() != null) {
                    editText.ignoreClipTop = editText.getLayout().getHeight() > (AndroidUtilities.m72dp(120) - editText.getPaddingTop()) - editText.getPaddingBottom();
                }
                try {
                    i2 = CaptionContainerView.this.editText.getEditText().getText().length();
                } catch (Exception unused) {
                    i2 = 0;
                }
                String str = null;
                boolean isPremium = UserConfig.getInstance(i).isPremium();
                MessagesController messagesController = MessagesController.getInstance(i);
                int i3 = isPremium ? messagesController.storyCaptionLengthLimitPremium : messagesController.storyCaptionLengthLimitDefault;
                if (i2 + 25 > i3) {
                    str = "" + (i3 - i2);
                }
                CaptionContainerView.this.limitTextView.cancelAnimation();
                CaptionContainerView.this.limitTextView.setText(str);
                CaptionContainerView.this.limitTextView.setTextColor(i2 >= i3 ? -1280137 : -1);
                if (i2 > i3 && !isPremium && i2 < MessagesController.getInstance(i).storyCaptionLengthLimitPremium && i2 > this.lastLength && (CaptionContainerView.this.captionLimitToast() || MessagesController.getInstance(i).premiumLocked)) {
                    AndroidUtilities.shakeViewSpring(CaptionContainerView.this.limitTextView, captionContainerView.shiftDp = -captionContainerView.shiftDp);
                    BotWebViewVibrationEffect.APP_ERROR.vibrate();
                }
                this.lastLength = i2;
                boolean z = i2 > i3;
                if (z != this.lastOverLimit) {
                    CaptionContainerView.this.onCaptionLimitUpdate(z);
                }
                this.lastOverLimit = z;
            }
        });
        editTextEmoji.getEditText().setLinkTextColor(-1);
        addView(editTextEmoji, LayoutHelper.createFrame(-1, -2, 87, 12, 12, 12, 12));
        this.applyButton = new BounceableImageView(context);
        CombinedDrawable combinedDrawable = new CombinedDrawable(Theme.createCircleDrawable(AndroidUtilities.m72dp(16), -10043398), context.getResources().getDrawable(C3473R.C3475drawable.input_done).mutate(), 0, AndroidUtilities.m72dp(1));
        combinedDrawable.setCustomSize(AndroidUtilities.m72dp(32), AndroidUtilities.m72dp(32));
        this.applyButton.setImageDrawable(combinedDrawable);
        this.applyButton.setScaleType(ImageView.ScaleType.CENTER);
        this.applyButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.applyButton.setVisibility(8);
        this.applyButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CaptionContainerView.this.lambda$new$0(view);
            }
        });
        this.applyButton.setTranslationY(-AndroidUtilities.m72dp(1));
        addView(this.applyButton, LayoutHelper.createFrame(44, 44, 85));
        AnimatedTextView animatedTextView = new AnimatedTextView(context, false, true, true);
        this.limitTextView = animatedTextView;
        animatedTextView.setGravity(17);
        this.limitTextView.setTextSize(AndroidUtilities.m72dp(15));
        this.limitTextView.setTextColor(-1);
        this.limitTextView.setAnimationProperties(0.4f, 0L, 320L, cubicBezierInterpolator);
        this.limitTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.limitTextView.setTranslationX(AndroidUtilities.m72dp(2));
        addView(this.limitTextView, LayoutHelper.createFrame(52, 16, 85, 0, 0, 0, 50));
        paint2.setShader(linearGradient);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        ImageView imageView = new ImageView(context);
        this.periodButton = imageView;
        imageView.setBackground(Theme.createSelectorDrawable(1090519039, 1, AndroidUtilities.m72dp(18)));
        this.periodButton.setScaleType(ImageView.ScaleType.CENTER);
        this.periodButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CaptionContainerView.this.lambda$new$5(i, windowView, resourcesProvider, view);
            }
        });
        setPeriod(86400, false);
        addView(this.periodButton, LayoutHelper.createFrame(44, 44, 85, 0, 0, 11, 11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        closeKeyboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(int i, StoryRecorder.WindowView windowView, Theme.ResourcesProvider resourcesProvider, View view) {
        String formatPluralString;
        ItemOptions itemOptions = this.periodPopup;
        if (itemOptions != null && itemOptions.isShown()) {
            return;
        }
        final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                CaptionContainerView.this.lambda$new$1((Integer) obj);
            }
        };
        boolean isPremium = UserConfig.getInstance(i).isPremium();
        final Utilities.Callback callback2 = isPremium ? null : new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                CaptionContainerView.this.lambda$new$2((Integer) obj);
            }
        };
        this.periodPopup = ItemOptions.makeOptions(windowView, resourcesProvider, this.periodButton);
        int i2 = 0;
        while (true) {
            int[] iArr = periods;
            if (i2 < iArr.length) {
                final int i3 = iArr[i2];
                ItemOptions itemOptions2 = this.periodPopup;
                if (i3 == Integer.MAX_VALUE) {
                    formatPluralString = LocaleController.getString("StoryPeriodKeep");
                } else {
                    formatPluralString = LocaleController.formatPluralString("Hours", i3 / 3600, new Object[0]);
                }
                itemOptions2.add(0, formatPluralString, this.periodIndex == i2 ? Theme.key_dialogTextBlue2 : Theme.key_actionBarDefaultSubmenuItem, new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        CaptionContainerView.lambda$new$3(Utilities.Callback.this, i3);
                    }
                }).putPremiumLock((isPremium || i3 == 86400 || i3 == Integer.MAX_VALUE) ? null : new Runnable() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        CaptionContainerView.lambda$new$4(Utilities.Callback.this, i3);
                    }
                });
                i2++;
            } else {
                this.periodPopup.addGap();
                this.periodPopup.addText(LocaleController.getString("StoryPeriodHint"), 13);
                this.periodPopup.setDimAlpha(0).show();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Integer num) {
        setPeriod(num.intValue());
        Utilities.Callback<Integer> callback = this.onPeriodUpdate;
        if (callback != null) {
            callback.run(num);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Integer num) {
        Utilities.Callback<Integer> callback = this.onPremiumHintShow;
        if (callback != null) {
            callback.run(num);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$3(Utilities.Callback callback, int i) {
        callback.run(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$4(Utilities.Callback callback, int i) {
        callback.run(Integer.valueOf(i));
    }

    public void closeKeyboard() {
        this.editText.closeKeyboard();
        this.editText.hidePopup(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.ignoreTouches) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMentionsContainer() {
        MentionsContainerView mentionsContainerView = new MentionsContainerView(getContext(), UserConfig.getInstance(this.currentAccount).getClientUserId(), 0, LaunchActivity.getLastFragment(), null, this.resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView.3
            @Override // org.telegram.p043ui.Components.MentionsContainerView
            public void drawRoundRect(Canvas canvas, Rect rect, float f) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(rect);
                CaptionContainerView captionContainerView = CaptionContainerView.this;
                captionContainerView.drawBackground(canvas, rectF, f, 0.9f, captionContainerView.mentionContainer);
            }
        };
        this.mentionContainer = mentionsContainerView;
        mentionsContainerView.getAdapter().setAllowStickers(false);
        this.mentionContainer.getAdapter().setAllowBots(false);
        this.mentionContainer.getAdapter().setAllowChats(false);
        this.mentionContainer.getAdapter().setSearchInDailogs(true);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void replaceWithText(int i, int i2, CharSequence charSequence, boolean z) {
        if (this.editText == null) {
            return;
        }
        try {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.editText.getText());
            spannableStringBuilder.replace(i, i2 + i, charSequence);
            if (z) {
                Emoji.replaceEmoji(spannableStringBuilder, this.editText.getEditText().getPaint().getFontMetricsInt(), AndroidUtilities.m72dp(20), false);
            }
            this.editText.setText(spannableStringBuilder);
            this.editText.setSelection(i + charSequence.length());
        } catch (Exception e) {
            FileLog.m67e(e);
        }
    }

    public void setPeriod(int i) {
        setPeriod(i, true);
    }

    public void setPeriodVisible(boolean z) {
        this.periodVisible = z;
        this.periodButton.setVisibility((!z || this.keyboardShown) ? 8 : 0);
    }

    public void setPeriod(int i, boolean z) {
        int i2 = 0;
        while (true) {
            int[] iArr = periods;
            if (i2 >= iArr.length) {
                i2 = 2;
                break;
            } else if (iArr[i2] == i) {
                break;
            } else {
                i2++;
            }
        }
        if (this.periodIndex == i2) {
            return;
        }
        Resources resources = getResources();
        int[] iArr2 = periodDrawables;
        this.periodIndex = i2;
        Drawable mutate = resources.getDrawable(iArr2[i2]).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        if (z) {
            AndroidUtilities.updateImageViewImageAnimated(this.periodButton, mutate);
        } else {
            this.periodButton.setImageDrawable(mutate);
        }
    }

    public void hidePeriodPopup() {
        ItemOptions itemOptions = this.periodPopup;
        if (itemOptions != null) {
            itemOptions.dismiss();
            this.periodPopup = null;
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

    public void setOnPeriodUpdate(Utilities.Callback<Integer> callback) {
        this.onPeriodUpdate = callback;
    }

    public void setOnPremiumHint(Utilities.Callback<Integer> callback) {
        this.onPremiumHintShow = callback;
    }

    public int getEditTextHeight() {
        int height = this.editText.getHeight();
        if (this.keyboardShown) {
            return Math.max(AndroidUtilities.m72dp(46), height);
        }
        return Math.min(AndroidUtilities.m72dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION), height);
    }

    public void setOnKeyboardOpen(Utilities.Callback<Boolean> callback) {
        this.onKeyboardOpen = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateKeyboard(int i) {
        this.rootView.notifyHeightChanged();
        if (this.editText.isPopupShowing() || this.editText.isWaitingForKeyboardOpen()) {
            i = Math.max(0, AndroidUtilities.navigationBarHeight + this.editText.getKeyboardHeight());
        }
        int max = Math.max(0, i - this.rootView.getBottomPadding(true));
        View view = (View) getParent();
        view.clearAnimation();
        ObjectAnimator objectAnimator = this.parentKeyboardAnimator;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            this.parentKeyboardAnimator.cancel();
            this.parentKeyboardAnimator = null;
        }
        this.parentKeyboardAnimator = ObjectAnimator.ofFloat(view, FrameLayout.TRANSLATION_Y, view.getTranslationY(), -max);
        if (max > AndroidUtilities.m72dp(20)) {
            this.parentKeyboardAnimator.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
            this.parentKeyboardAnimator.setDuration(250L);
        } else {
            this.parentKeyboardAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.parentKeyboardAnimator.setDuration(640L);
        }
        this.parentKeyboardAnimator.start();
        this.toKeyboardShow = max > AndroidUtilities.m72dp(20);
        AndroidUtilities.cancelRunOnUIThread(this.updateShowKeyboard);
        AndroidUtilities.runOnUIThread(this.updateShowKeyboard);
        if (max < AndroidUtilities.m72dp(20)) {
            this.editText.getEditText().clearFocus();
            this.editText.hidePopup(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6() {
        updateShowKeyboard(this.toKeyboardShow, true);
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
        if (z2) {
            if (z) {
                MentionsContainerView mentionsContainerView = this.mentionContainer;
                if (mentionsContainerView != null) {
                    mentionsContainerView.setVisibility(0);
                }
                this.applyButton.setVisibility(0);
            } else {
                this.editText.getEditText().scrollBy(0, -this.editText.getEditText().getScrollY());
                this.periodButton.setVisibility(this.periodVisible ? 0 : 8);
            }
            float[] fArr = new float[2];
            fArr[0] = this.keyboardT;
            fArr[1] = z ? 1.0f : 0.0f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.keyboardAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    CaptionContainerView.this.lambda$updateShowKeyboard$7(valueAnimator2);
                }
            });
            this.keyboardAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.CaptionContainerView.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (!z) {
                        CaptionContainerView.this.applyButton.setVisibility(8);
                        MentionsContainerView mentionsContainerView2 = CaptionContainerView.this.mentionContainer;
                        if (mentionsContainerView2 != null) {
                            mentionsContainerView2.setVisibility(8);
                            return;
                        }
                        return;
                    }
                    CaptionContainerView.this.periodButton.setVisibility(8);
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
            this.editText.getEditText().setTranslationX(AndroidUtilities.lerp(AndroidUtilities.m72dp(-22), AndroidUtilities.m72dp(2), this.keyboardT));
            this.editText.setTranslationX(AndroidUtilities.lerp(0, AndroidUtilities.m72dp(-8), this.keyboardT));
            this.editText.setTranslationY(AndroidUtilities.lerp(0, AndroidUtilities.m72dp(10), this.keyboardT));
            this.limitTextView.setTranslationX(AndroidUtilities.lerp(-AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(2), this.keyboardT));
            this.limitTextView.setTranslationY(AndroidUtilities.lerp(-AndroidUtilities.m72dp(8), 0, this.keyboardT));
            this.editText.getEmojiButton().setAlpha(this.keyboardT);
            this.applyButton.setVisibility(z ? 0 : 8);
            this.applyButton.setAlpha(z ? 1.0f : 0.0f);
            ImageView imageView = this.periodButton;
            if (!z && this.periodVisible) {
                r4 = 0;
            }
            imageView.setVisibility(r4);
            this.periodButton.setAlpha(z ? 0.0f : 1.0f);
            invalidate();
        }
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
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.blurBitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateShowKeyboard$7(ValueAnimator valueAnimator) {
        this.keyboardT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.editText.getEditText().setTranslationX(AndroidUtilities.lerp(AndroidUtilities.m72dp(-22), AndroidUtilities.m72dp(2), this.keyboardT));
        this.editText.setTranslationX(AndroidUtilities.lerp(0, AndroidUtilities.m72dp(-8), this.keyboardT));
        this.editText.setTranslationY(AndroidUtilities.lerp(0, AndroidUtilities.m72dp(10), this.keyboardT));
        this.limitTextView.setTranslationX(AndroidUtilities.lerp(-AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(2), this.keyboardT));
        this.limitTextView.setTranslationY(AndroidUtilities.lerp(-AndroidUtilities.m72dp(8), 0, this.keyboardT));
        this.editText.getEmojiButton().setAlpha(this.keyboardT);
        this.applyButton.setAlpha((float) Math.pow(this.keyboardT, 16.0d));
        this.periodButton.setAlpha(1.0f - this.keyboardT);
        MentionsContainerView mentionsContainerView = this.mentionContainer;
        if (mentionsContainerView != null) {
            mentionsContainerView.setAlpha((float) Math.pow(this.keyboardT, 4.0d));
        }
        invalidate();
    }

    public boolean isCaptionOverLimit() {
        int i;
        try {
            i = this.editText.getEditText().getText().length();
        } catch (Exception unused) {
            i = 0;
        }
        return i > (UserConfig.getInstance(this.currentAccount).isPremium() ? MessagesController.getInstance(this.currentAccount).storyCaptionLengthLimitPremium : MessagesController.getInstance(this.currentAccount).storyCaptionLengthLimitDefault);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void drawBlurBitmap(Bitmap bitmap, float f) {
        Utilities.stackBlurBitmap(bitmap, (int) f);
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
            min = Math.max(AndroidUtilities.m72dp(46), height);
        } else {
            min = Math.min(AndroidUtilities.m72dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION), height);
        }
        if (min != this.lastHeight) {
            Utilities.Callback<Integer> callback = this.onHeightUpdate;
            if (callback != null) {
                callback.run(Integer.valueOf(min));
            }
            this.lastHeight = min;
        }
        int i = (int) this.heightAnimated.set(min);
        updateMentionsLayoutPosition();
        float f = min - i;
        if (Math.abs(this.lastHeightTranslation - f) >= 1.0f) {
            this.editText.getEditText().setTranslationY(f);
        }
        this.lastHeightTranslation = f;
        float lerp = AndroidUtilities.lerp(AndroidUtilities.m72dp(12), 0, this.keyboardT);
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(lerp, (getHeight() - lerp) - i, getWidth() - lerp, getHeight() - lerp);
        drawBackground(canvas, rectF, AndroidUtilities.lerp(AndroidUtilities.m72dp(21), 0, this.keyboardT), 1.0f, this);
        canvas.save();
        canvas.clipRect(rectF);
        super.dispatchDraw(canvas);
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
        if (view == this.editText) {
            float lerp = AndroidUtilities.lerp(AndroidUtilities.m72dp(12), 0, this.keyboardT);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(lerp, (getHeight() - lerp) - this.heightAnimated.get(), getWidth() - lerp, getHeight() - lerp);
            float max = Math.max(0, this.editText.getHeight() - AndroidUtilities.m72dp(143)) * (1.0f - this.keyboardT);
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), 255, 31);
            canvas.save();
            canvas.translate(BitmapDescriptorFactory.HUE_RED, max);
            boolean drawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            canvas.save();
            this.matrix.reset();
            this.matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, rectF.top - 1.0f);
            this.fadeGradient.setLocalMatrix(this.matrix);
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.drawRect(f, f2, rectF.right, f2 + AndroidUtilities.m72dp(10), this.fadePaint);
            this.matrix.reset();
            this.matrix.postRotate(180.0f);
            this.matrix.postTranslate(BitmapDescriptorFactory.HUE_RED, rectF.bottom);
            this.fadeGradient.setLocalMatrix(this.matrix);
            canvas.drawRect(rectF.left, rectF.bottom - AndroidUtilities.m72dp(10), rectF.right, rectF.bottom, this.fadePaint);
            canvas.restore();
            canvas.restore();
            return drawChild;
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.editText.clearFocus();
    }

    public void clear() {
        this.editText.setText("");
    }

    public void setText(CharSequence charSequence) {
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
    /* loaded from: classes7.dex */
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
}
