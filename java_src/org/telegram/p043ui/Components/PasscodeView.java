package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.SystemClock;
import android.os.Vibrator;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.p010os.CancellationSignal;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.controller.WalletFingerprintController;
import com.iMe.fork.enums.LockedSection;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.crypto.Cipher;
import kotlin.Lazy;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FingerprintController;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.support.fingerprint.FingerprintManagerCompat;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.PasscodeView;
import org.telegram.p043ui.LaunchActivity;
/* renamed from: org.telegram.ui.Components.PasscodeView */
/* loaded from: classes7.dex */
public class PasscodeView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final int[] ids = {C3473R.C3476id.passcode_btn_0, C3473R.C3476id.passcode_btn_1, C3473R.C3476id.passcode_btn_2, C3473R.C3476id.passcode_btn_3, C3473R.C3476id.passcode_btn_4, C3473R.C3476id.passcode_btn_5, C3473R.C3476id.passcode_btn_6, C3473R.C3476id.passcode_btn_7, C3473R.C3476id.passcode_btn_8, C3473R.C3476id.passcode_btn_9, C3473R.C3476id.passcode_btn_backspace, C3473R.C3476id.passcode_btn_fingerprint};
    private SpringAnimation backgroundAnimationSpring;
    private Drawable backgroundDrawable;
    private FrameLayout backgroundFrameLayout;
    private LinkedList<Boolean> backgroundSpringNextQueue;
    private LinkedList<Runnable> backgroundSpringQueue;
    private CancellationSignal cancellationSignal;
    private ImageView checkImage;
    private Runnable checkRunnable;
    private final Lazy<CryptoPreferenceHelper> cryptoPreferenceHelper;
    private final int currentAccount;
    private PasscodeViewDelegate delegate;
    private ImageView eraseView;
    private AlertDialog fingerprintDialog;
    private ImageView fingerprintImage;
    private ImageView fingerprintImageView;
    private TextView fingerprintStatusTextView;
    private ImageView fingerprintView;
    private TextView forgotPasscodeTextView;
    private RLottieImageView imageView;
    private int imageY;
    private ArrayList<InnerAnimator> innerAnimators;
    private boolean isWalletLoading;
    private final boolean isWalletScreen;
    private int keyboardHeight;
    private int lastValue;
    private ArrayList<TextView> lettersTextViews;
    private final LockedSection lockedSection;
    private ArrayList<FrameLayout> numberFrameLayouts;
    private ArrayList<TextView> numberTextViews;
    private FrameLayout numbersFrameLayout;
    private TextView passcodeTextView;
    private EditTextBoldCursor passwordEditText;
    private AnimatingTextView passwordEditText2;
    private FrameLayout passwordFrameLayout;
    private int[] pos;
    private Rect rect;
    private TextView retryTextView;
    private final LockedSectionsController.SectionPasscodeData sectionPasscodeData;
    private boolean selfCancelled;
    private WalletDelegate walletDelegate;
    private AnimatorSet walletLoadingAnimation;
    private final Runnable walletLoadingAnimationStartRunnable;
    private final Runnable walletTriesTimeoutCheckRunnable;

    /* renamed from: org.telegram.ui.Components.PasscodeView$PasscodeViewDelegate */
    /* loaded from: classes7.dex */
    public interface PasscodeViewDelegate {
        void didAcceptedPassword(PasscodeView passcodeView);
    }

    /* renamed from: org.telegram.ui.Components.PasscodeView$WalletDelegate */
    /* loaded from: classes7.dex */
    public interface WalletDelegate {
        void onFingerPrintConfirmed(Cipher cipher);

        void onForgotPinCodeClicked();

        void onPinCodeEntered(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onShow$15(View view, MotionEvent motionEvent) {
        return true;
    }

    public PasscodeView(Context context) {
        this(context, null, null, null);
    }

    public static void checkRetryTextViewPublic(PasscodeView passcodeView, LockedSectionsController.SectionPasscodeData sectionPasscodeData, LockedSection lockedSection, int i, Runnable runnable) {
        checkRetryTextView(passcodeView, sectionPasscodeData, lockedSection, i, runnable);
    }

    public PasscodeView(Context context, AttributeSet attributeSet) {
        this(context, null, null, attributeSet);
    }

    public void setWalletDelegate(WalletDelegate walletDelegate) {
        this.walletDelegate = walletDelegate;
    }

    public void resetWalletLoadingAnimation() {
        AndroidUtilities.cancelRunOnUIThread(this.walletLoadingAnimationStartRunnable);
        Iterator<FrameLayout> it = this.numberFrameLayouts.iterator();
        while (it.hasNext()) {
            it.next().setEnabled(true);
        }
        AnimatorSet animatorSet = this.walletLoadingAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.walletLoadingAnimation = null;
        }
    }

    public void updateLoadingState(boolean z, boolean z2) {
        int i;
        if (this.isWalletLoading == z) {
            return;
        }
        this.isWalletLoading = z;
        TextView textView = this.passcodeTextView;
        if (z) {
            i = C3473R.string.common_progress_state_title;
        } else {
            i = C3473R.string.wallet_enter_eth_pin_title;
        }
        textView.setText(LocaleController.getInternalString(i));
        resetWalletLoadingAnimation();
        if (z2) {
            this.imageView.setAutoRepeat(this.isWalletLoading);
            if (this.isWalletLoading) {
                Iterator<FrameLayout> it = this.numberFrameLayouts.iterator();
                while (it.hasNext()) {
                    it.next().setEnabled(false);
                }
                this.imageView.setScaleX(2.0f);
                this.imageView.setScaleY(2.0f);
                this.imageView.setAnimation(C3473R.raw.fork_state_progress, 56, 56);
                this.imageView.playAnimation();
                return;
            }
            this.imageView.setScaleX(1.0f);
            this.imageView.setScaleY(1.0f);
            this.imageView.setAnimation(C3473R.raw.passcode_lock_close, 56, 56);
        } else if (this.isWalletLoading) {
            AndroidUtilities.runOnUIThread(this.walletLoadingAnimationStartRunnable, 200L);
        }
    }

    public void onWalletPinCodeError() {
        this.passwordEditText2.eraseAllCharacters(true);
        this.forgotPasscodeTextView.setVisibility(0);
        onPasscodeError();
        Drawable drawable = this.backgroundDrawable;
        if (drawable instanceof MotionBackgroundDrawable) {
            ((MotionBackgroundDrawable) drawable).rotatePreview(true);
        }
        checkWalletRetryTextView();
    }

    public void checkRetryTextView() {
        checkRetryTextView(this, this.sectionPasscodeData, this.lockedSection, this.currentAccount, this.checkRunnable);
    }

    private long getWalletPinCodeRetryInMs() {
        return this.cryptoPreferenceHelper.getValue().getWalletPinCodeTimeoutUntil() - DateExtKt.now();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkWalletRetryTextView() {
        if (this.cryptoPreferenceHelper.getValue().getWalletPinCodeBadTriesCount() == 0) {
            return;
        }
        long walletPinCodeRetryInMs = getWalletPinCodeRetryInMs();
        if (walletPinCodeRetryInMs > 0) {
            int max = (int) Math.max(1L, TimeUnit.MILLISECONDS.toSeconds(walletPinCodeRetryInMs));
            if (max != this.lastValue) {
                this.retryTextView.setText(LocaleController.formatString("TooManyTries", C3473R.string.TooManyTries, LocaleController.formatPluralString("Seconds", max, new Object[0])));
                this.lastValue = max;
            }
            if (this.retryTextView.getVisibility() != 0) {
                this.retryTextView.setVisibility(0);
                this.passwordFrameLayout.setVisibility(4);
                if (this.numbersFrameLayout.getVisibility() == 0) {
                    this.numbersFrameLayout.setVisibility(4);
                }
                AndroidUtilities.hideKeyboard(this.passwordEditText);
            }
            AndroidUtilities.cancelRunOnUIThread(this.walletTriesTimeoutCheckRunnable);
            AndroidUtilities.runOnUIThread(this.walletTriesTimeoutCheckRunnable, 100L);
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.walletTriesTimeoutCheckRunnable);
        if (this.passwordFrameLayout.getVisibility() != 0) {
            this.retryTextView.setVisibility(4);
            this.passwordFrameLayout.setVisibility(0);
            this.numbersFrameLayout.setVisibility(0);
        }
    }

    private LockedSectionsController getLockedSectionsController() {
        return LockedSectionsController.getInstance(this.currentAccount);
    }

    private WalletFingerprintController getWalletFingerprintController() {
        return WalletFingerprintController.getInstance(this.currentAccount);
    }

    private boolean isWalletFingerprintEnabled() {
        WalletFingerprintController walletFingerprintController = getWalletFingerprintController();
        return this.isWalletScreen && walletFingerprintController.isWalletFingerprintUnlockEnabled() && !walletFingerprintController.getWalletPinCodeEncrypted().isEmpty();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.didGenerateFingerprintKeyPair) {
            checkFingerprintButton();
            if (((Boolean) objArr[0]).booleanValue() && SharedConfig.appLocked) {
                checkFingerprint();
            }
        } else if (i != NotificationCenter.passcodeDismissed || objArr[0] == this) {
        } else {
            setVisibility(8);
            AlertDialog alertDialog = this.fingerprintDialog;
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PasscodeView$AnimatingTextView */
    /* loaded from: classes7.dex */
    public static class AnimatingTextView extends FrameLayout {
        private ArrayList<TextView> characterTextViews;
        private AnimatorSet currentAnimation;
        private Runnable dotRunnable;
        private ArrayList<TextView> dotTextViews;
        private StringBuilder stringBuilder;

        public AnimatingTextView(Context context) {
            super(context);
            this.characterTextViews = new ArrayList<>(4);
            this.dotTextViews = new ArrayList<>(4);
            this.stringBuilder = new StringBuilder(4);
            for (int i = 0; i < 4; i++) {
                TextView textView = new TextView(context);
                textView.setTextColor(-1);
                textView.setTextSize(1, 36.0f);
                textView.setGravity(17);
                textView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                textView.setPivotX(AndroidUtilities.m72dp(25));
                textView.setPivotY(AndroidUtilities.m72dp(25));
                addView(textView, LayoutHelper.createFrame(50, 50, 51));
                this.characterTextViews.add(textView);
                TextView textView2 = new TextView(context);
                textView2.setTextColor(-1);
                textView2.setTextSize(1, 36.0f);
                textView2.setGravity(17);
                textView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
                textView2.setText("•");
                textView2.setPivotX(AndroidUtilities.m72dp(25));
                textView2.setPivotY(AndroidUtilities.m72dp(25));
                addView(textView2, LayoutHelper.createFrame(50, 50, 51));
                this.dotTextViews.add(textView2);
            }
        }

        private int getXForTextView(int i) {
            return (((getMeasuredWidth() - (this.stringBuilder.length() * AndroidUtilities.m72dp(30))) / 2) + (i * AndroidUtilities.m72dp(30))) - AndroidUtilities.m72dp(10);
        }

        public void appendCharacter(String str) {
            if (this.stringBuilder.length() == 4) {
                return;
            }
            try {
                performHapticFeedback(3);
            } catch (Exception e) {
                FileLog.m67e(e);
            }
            ArrayList arrayList = new ArrayList();
            final int length = this.stringBuilder.length();
            this.stringBuilder.append(str);
            TextView textView = this.characterTextViews.get(length);
            textView.setText(str);
            textView.setTranslationX(getXForTextView(length));
            arrayList.add(ObjectAnimator.ofFloat(textView, View.SCALE_X, BitmapDescriptorFactory.HUE_RED, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(textView, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(textView, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, AndroidUtilities.m72dp(20), BitmapDescriptorFactory.HUE_RED));
            TextView textView2 = this.dotTextViews.get(length);
            textView2.setTranslationX(getXForTextView(length));
            textView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
            arrayList.add(ObjectAnimator.ofFloat(textView2, View.SCALE_X, BitmapDescriptorFactory.HUE_RED, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(textView2, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED, 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(textView2, View.TRANSLATION_Y, AndroidUtilities.m72dp(20), BitmapDescriptorFactory.HUE_RED));
            for (int i = length + 1; i < 4; i++) {
                TextView textView3 = this.characterTextViews.get(i);
                if (textView3.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    arrayList.add(ObjectAnimator.ofFloat(textView3, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView3, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView3, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                }
                TextView textView4 = this.dotTextViews.get(i);
                if (textView4.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    arrayList.add(ObjectAnimator.ofFloat(textView4, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView4, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView4, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                }
            }
            Runnable runnable = this.dotRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AnimatingTextView.this.dotRunnable != this) {
                        return;
                    }
                    ArrayList arrayList2 = new ArrayList();
                    TextView textView5 = (TextView) AnimatingTextView.this.characterTextViews.get(length);
                    arrayList2.add(ObjectAnimator.ofFloat(textView5, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                    arrayList2.add(ObjectAnimator.ofFloat(textView5, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList2.add(ObjectAnimator.ofFloat(textView5, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    TextView textView6 = (TextView) AnimatingTextView.this.dotTextViews.get(length);
                    arrayList2.add(ObjectAnimator.ofFloat(textView6, View.SCALE_X, 1.0f));
                    arrayList2.add(ObjectAnimator.ofFloat(textView6, View.SCALE_Y, 1.0f));
                    arrayList2.add(ObjectAnimator.ofFloat(textView6, View.ALPHA, 1.0f));
                    AnimatingTextView.this.currentAnimation = new AnimatorSet();
                    AnimatingTextView.this.currentAnimation.setDuration(150L);
                    AnimatingTextView.this.currentAnimation.playTogether(arrayList2);
                    AnimatingTextView.this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.1.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (AnimatingTextView.this.currentAnimation == null || !AnimatingTextView.this.currentAnimation.equals(animator)) {
                                return;
                            }
                            AnimatingTextView.this.currentAnimation = null;
                        }
                    });
                    AnimatingTextView.this.currentAnimation.start();
                }
            };
            this.dotRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 1500L);
            for (int i2 = 0; i2 < length; i2++) {
                TextView textView5 = this.characterTextViews.get(i2);
                arrayList.add(ObjectAnimator.ofFloat(textView5, View.TRANSLATION_X, getXForTextView(i2)));
                arrayList.add(ObjectAnimator.ofFloat(textView5, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                arrayList.add(ObjectAnimator.ofFloat(textView5, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                arrayList.add(ObjectAnimator.ofFloat(textView5, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                arrayList.add(ObjectAnimator.ofFloat(textView5, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
                TextView textView6 = this.dotTextViews.get(i2);
                arrayList.add(ObjectAnimator.ofFloat(textView6, View.TRANSLATION_X, getXForTextView(i2)));
                arrayList.add(ObjectAnimator.ofFloat(textView6, View.SCALE_X, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(textView6, View.SCALE_Y, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(textView6, View.ALPHA, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(textView6, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
            }
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.currentAnimation = animatorSet2;
            animatorSet2.setDuration(150L);
            this.currentAnimation.playTogether(arrayList);
            this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (AnimatingTextView.this.currentAnimation == null || !AnimatingTextView.this.currentAnimation.equals(animator)) {
                        return;
                    }
                    AnimatingTextView.this.currentAnimation = null;
                }
            });
            this.currentAnimation.start();
        }

        public String getString() {
            return this.stringBuilder.toString();
        }

        public int length() {
            return this.stringBuilder.length();
        }

        public boolean eraseLastCharacter() {
            if (this.stringBuilder.length() == 0) {
                return false;
            }
            try {
                performHapticFeedback(3);
            } catch (Exception e) {
                FileLog.m67e(e);
            }
            ArrayList arrayList = new ArrayList();
            int length = this.stringBuilder.length() - 1;
            if (length != 0) {
                this.stringBuilder.deleteCharAt(length);
            }
            for (int i = length; i < 4; i++) {
                TextView textView = this.characterTextViews.get(i);
                if (textView.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    arrayList.add(ObjectAnimator.ofFloat(textView, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView, View.TRANSLATION_X, getXForTextView(i)));
                }
                TextView textView2 = this.dotTextViews.get(i);
                if (textView2.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    arrayList.add(ObjectAnimator.ofFloat(textView2, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, View.TRANSLATION_X, getXForTextView(i)));
                }
            }
            if (length == 0) {
                this.stringBuilder.deleteCharAt(length);
            }
            for (int i2 = 0; i2 < length; i2++) {
                arrayList.add(ObjectAnimator.ofFloat(this.characterTextViews.get(i2), View.TRANSLATION_X, getXForTextView(i2)));
                arrayList.add(ObjectAnimator.ofFloat(this.dotTextViews.get(i2), View.TRANSLATION_X, getXForTextView(i2)));
            }
            Runnable runnable = this.dotRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.dotRunnable = null;
            }
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.currentAnimation = animatorSet2;
            animatorSet2.setDuration(150L);
            this.currentAnimation.playTogether(arrayList);
            this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (AnimatingTextView.this.currentAnimation == null || !AnimatingTextView.this.currentAnimation.equals(animator)) {
                        return;
                    }
                    AnimatingTextView.this.currentAnimation = null;
                }
            });
            this.currentAnimation.start();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void eraseAllCharacters(boolean z) {
            if (this.stringBuilder.length() == 0) {
                return;
            }
            Runnable runnable = this.dotRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.dotRunnable = null;
            }
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.currentAnimation = null;
            }
            StringBuilder sb = this.stringBuilder;
            sb.delete(0, sb.length());
            if (!z) {
                for (int i = 0; i < 4; i++) {
                    this.characterTextViews.get(i).setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.dotTextViews.get(i).setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < 4; i2++) {
                TextView textView = this.characterTextViews.get(i2);
                if (textView.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    arrayList.add(ObjectAnimator.ofFloat(textView, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                }
                TextView textView2 = this.dotTextViews.get(i2);
                if (textView2.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                    arrayList.add(ObjectAnimator.ofFloat(textView2, View.SCALE_X, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED));
                    arrayList.add(ObjectAnimator.ofFloat(textView2, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
                }
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.currentAnimation = animatorSet2;
            animatorSet2.setDuration(150L);
            this.currentAnimation.playTogether(arrayList);
            this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.AnimatingTextView.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (AnimatingTextView.this.currentAnimation == null || !AnimatingTextView.this.currentAnimation.equals(animator)) {
                        return;
                    }
                    AnimatingTextView.this.currentAnimation = null;
                }
            });
            this.currentAnimation.start();
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            Runnable runnable = this.dotRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.dotRunnable = null;
            }
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.currentAnimation = null;
            }
            for (int i5 = 0; i5 < 4; i5++) {
                if (i5 < this.stringBuilder.length()) {
                    TextView textView = this.characterTextViews.get(i5);
                    textView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    textView.setScaleX(1.0f);
                    textView.setScaleY(1.0f);
                    textView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    textView.setTranslationX(getXForTextView(i5));
                    TextView textView2 = this.dotTextViews.get(i5);
                    textView2.setAlpha(1.0f);
                    textView2.setScaleX(1.0f);
                    textView2.setScaleY(1.0f);
                    textView2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    textView2.setTranslationX(getXForTextView(i5));
                } else {
                    this.characterTextViews.get(i5).setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.dotTextViews.get(i5).setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
            }
            super.onLayout(z, i, i2, i3, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PasscodeView$InnerAnimator */
    /* loaded from: classes7.dex */
    public static class InnerAnimator {
        private AnimatorSet animatorSet;
        private float startRadius;

        private InnerAnimator() {
        }
    }

    public PasscodeView(Context context, LockedSection lockedSection, final BaseFragment baseFragment, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.cryptoPreferenceHelper = KoinJavaComponent.inject(CryptoPreferenceHelper.class);
        this.currentAccount = UserConfig.selectedAccount;
        this.walletTriesTimeoutCheckRunnable = new Runnable() { // from class: org.telegram.ui.Components.PasscodeView.1
            @Override // java.lang.Runnable
            public void run() {
                PasscodeView.this.checkWalletRetryTextView();
                AndroidUtilities.runOnUIThread(PasscodeView.this.walletTriesTimeoutCheckRunnable, 100L);
            }
        };
        this.walletLoadingAnimationStartRunnable = new Runnable() { // from class: org.telegram.ui.Components.PasscodeView.2
            @Override // java.lang.Runnable
            public void run() {
                int i;
                Iterator it = PasscodeView.this.numberFrameLayouts.iterator();
                while (true) {
                    i = 0;
                    if (!it.hasNext()) {
                        break;
                    }
                    ((FrameLayout) it.next()).setEnabled(false);
                }
                ArrayList arrayList = new ArrayList();
                Iterator it2 = PasscodeView.this.passwordEditText2.characterTextViews.iterator();
                while (it2.hasNext()) {
                    TextView textView = (TextView) it2.next();
                    textView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    textView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                }
                Iterator it3 = PasscodeView.this.passwordEditText2.dotTextViews.iterator();
                while (it3.hasNext()) {
                    TextView textView2 = (TextView) it3.next();
                    textView2.setAlpha(1.0f);
                    textView2.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView2, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED, 10.0f);
                    ofFloat.setRepeatCount(-1);
                    ofFloat.setRepeatMode(2);
                    ofFloat.setStartDelay(i);
                    arrayList.add(ofFloat);
                    i += 100;
                }
                PasscodeView.this.walletLoadingAnimation = new AnimatorSet();
                PasscodeView.this.walletLoadingAnimation.playTogether(arrayList);
                PasscodeView.this.walletLoadingAnimation.start();
            }
        };
        char c = 0;
        this.isWalletLoading = false;
        this.walletDelegate = null;
        this.keyboardHeight = 0;
        this.rect = new Rect();
        this.backgroundSpringQueue = new LinkedList<>();
        this.backgroundSpringNextQueue = new LinkedList<>();
        this.innerAnimators = new ArrayList<>();
        this.checkRunnable = new Runnable() { // from class: org.telegram.ui.Components.PasscodeView.9
            @Override // java.lang.Runnable
            public void run() {
                PasscodeView.this.checkRetryTextView();
                AndroidUtilities.runOnUIThread(PasscodeView.this.checkRunnable, 100L);
            }
        };
        this.pos = new int[2];
        boolean z = attributeSet != null;
        this.isWalletScreen = z;
        this.lockedSection = lockedSection;
        this.sectionPasscodeData = getLockedSectionsController().getSectionsPasscodeData(lockedSection);
        setWillNotDraw(false);
        setVisibility(8);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.PasscodeView.3
            private Paint paint = new Paint();

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                if (PasscodeView.this.backgroundDrawable != null) {
                    if ((PasscodeView.this.backgroundDrawable instanceof MotionBackgroundDrawable) || (PasscodeView.this.backgroundDrawable instanceof ColorDrawable) || (PasscodeView.this.backgroundDrawable instanceof GradientDrawable)) {
                        PasscodeView.this.backgroundDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                        PasscodeView.this.backgroundDrawable.draw(canvas);
                    } else {
                        float max = Math.max(getMeasuredWidth() / PasscodeView.this.backgroundDrawable.getIntrinsicWidth(), (getMeasuredHeight() + PasscodeView.this.keyboardHeight) / PasscodeView.this.backgroundDrawable.getIntrinsicHeight());
                        int ceil = (int) Math.ceil(PasscodeView.this.backgroundDrawable.getIntrinsicWidth() * max);
                        int ceil2 = (int) Math.ceil(PasscodeView.this.backgroundDrawable.getIntrinsicHeight() * max);
                        int measuredWidth = (getMeasuredWidth() - ceil) / 2;
                        int measuredHeight = ((getMeasuredHeight() - ceil2) + PasscodeView.this.keyboardHeight) / 2;
                        PasscodeView.this.backgroundDrawable.setBounds(measuredWidth, measuredHeight, ceil + measuredWidth, ceil2 + measuredHeight);
                        PasscodeView.this.backgroundDrawable.draw(canvas);
                    }
                } else {
                    super.onDraw(canvas);
                }
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), this.paint);
            }

            @Override // android.view.View
            public void setBackgroundColor(int i) {
                this.paint.setColor(i);
            }
        };
        this.backgroundFrameLayout = frameLayout;
        frameLayout.setWillNotDraw(false);
        addView(this.backgroundFrameLayout, LayoutHelper.createFrame(-1, -1));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        rLottieImageView.setAnimation(C3473R.raw.passcode_lock_close, 58, 58);
        this.imageView.setAutoRepeat(false);
        addView(this.imageView, LayoutHelper.createFrame(58, 58, 51));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.passwordFrameLayout = frameLayout2;
        this.backgroundFrameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, -1));
        if (lockedSection != null) {
            ImageView imageView = new ImageView(context);
            imageView.setImageResource(C3473R.C3475drawable.ic_ab_back);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setBackgroundResource(C3473R.C3475drawable.bar_selector_lock);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PasscodeView.lambda$new$0(BaseFragment.this, view);
                }
            });
            addView(imageView, LayoutHelper.createFrame(54, 54, 51));
            ((FrameLayout.LayoutParams) imageView.getLayoutParams()).topMargin = AndroidUtilities.statusBarHeight;
        }
        TextView textView = new TextView(context);
        this.passcodeTextView = textView;
        textView.setTextColor(-1);
        this.passcodeTextView.setTextSize(1, 14.0f);
        this.passcodeTextView.setGravity(1);
        this.passwordFrameLayout.addView(this.passcodeTextView, LayoutHelper.createFrame(-2, -2, 81, 0, 0, 0, 74));
        TextView textView2 = new TextView(context);
        this.retryTextView = textView2;
        textView2.setTextColor(-1);
        this.retryTextView.setTextSize(1, 15.0f);
        this.retryTextView.setGravity(1);
        this.retryTextView.setVisibility(4);
        this.backgroundFrameLayout.addView(this.retryTextView, LayoutHelper.createFrame(-2, -2, 17));
        AnimatingTextView animatingTextView = new AnimatingTextView(context);
        this.passwordEditText2 = animatingTextView;
        this.passwordFrameLayout.addView(animatingTextView, LayoutHelper.createFrame(-1, -2, 81, 70, 0, 70, 6));
        if (z) {
            TextView textView3 = new TextView(context);
            this.forgotPasscodeTextView = textView3;
            textView3.setTextColor(-1);
            this.forgotPasscodeTextView.setTextSize(1, 14.0f);
            this.forgotPasscodeTextView.setGravity(1);
            this.forgotPasscodeTextView.setText(LocaleController.getInternalString(C3473R.string.wallet_enter_eth_pin_forgot));
            this.forgotPasscodeTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PasscodeView.this.lambda$new$1(view);
                }
            });
            this.passwordFrameLayout.addView(this.forgotPasscodeTextView, LayoutHelper.createFrame(-2, -2, 81, 0, 0, 0, 8));
        }
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        this.passwordEditText = editTextBoldCursor;
        float f = 36.0f;
        editTextBoldCursor.setTextSize(1, 36.0f);
        this.passwordEditText.setTextColor(-1);
        this.passwordEditText.setMaxLines(1);
        this.passwordEditText.setLines(1);
        this.passwordEditText.setGravity(1);
        this.passwordEditText.setSingleLine(true);
        this.passwordEditText.setImeOptions(6);
        this.passwordEditText.setTypeface(Typeface.DEFAULT);
        this.passwordEditText.setBackgroundDrawable(null);
        this.passwordEditText.setCursorColor(-1);
        this.passwordEditText.setCursorSize(AndroidUtilities.m72dp(32));
        this.passwordFrameLayout.addView(this.passwordEditText, LayoutHelper.createFrame(-1, -2, 81, 70, 0, 70, 0));
        this.passwordEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda8
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView4, int i, KeyEvent keyEvent) {
                boolean lambda$new$2;
                lambda$new$2 = PasscodeView.this.lambda$new$2(textView4, i, keyEvent);
                return lambda$new$2;
            }
        });
        this.passwordEditText.addTextChangedListener(new C50804());
        this.passwordEditText.setCustomSelectionActionModeCallback(new ActionMode.Callback(this) { // from class: org.telegram.ui.Components.PasscodeView.5
            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
            }

            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }
        });
        ImageView imageView2 = new ImageView(context);
        this.checkImage = imageView2;
        imageView2.setImageResource(C3473R.C3475drawable.passcode_check);
        this.checkImage.setScaleType(ImageView.ScaleType.CENTER);
        ImageView imageView3 = this.checkImage;
        int i = C3473R.C3475drawable.bar_selector_lock;
        imageView3.setBackgroundResource(i);
        this.passwordFrameLayout.addView(this.checkImage, LayoutHelper.createFrame(60, 60, 85, 0, 0, 10, 4));
        this.checkImage.setContentDescription(LocaleController.getString("Done", C3473R.string.Done));
        this.checkImage.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PasscodeView.this.lambda$new$3(view);
            }
        });
        ImageView imageView4 = new ImageView(context);
        this.fingerprintImage = imageView4;
        imageView4.setImageResource(C3473R.C3475drawable.fingerprint);
        this.fingerprintImage.setScaleType(ImageView.ScaleType.CENTER);
        this.fingerprintImage.setBackgroundResource(i);
        this.passwordFrameLayout.addView(this.fingerprintImage, LayoutHelper.createFrame(60, 60, 83, 10, 0, 0, 4));
        this.fingerprintImage.setContentDescription(LocaleController.getString("AccDescrFingerprint", C3473R.string.AccDescrFingerprint));
        this.fingerprintImage.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PasscodeView.this.lambda$new$4(view);
            }
        });
        FrameLayout frameLayout3 = new FrameLayout(context);
        frameLayout3.setBackgroundColor(654311423);
        this.passwordFrameLayout.addView(frameLayout3, LayoutHelper.createFrame(-1, 1, 83, 20, 0, 20, 0));
        FrameLayout frameLayout4 = new FrameLayout(context);
        this.numbersFrameLayout = frameLayout4;
        this.backgroundFrameLayout.addView(frameLayout4, LayoutHelper.createFrame(-1, -1, 51));
        this.lettersTextViews = new ArrayList<>(10);
        this.numberTextViews = new ArrayList<>(10);
        this.numberFrameLayouts = new ArrayList<>(10);
        int i2 = 0;
        while (i2 < 10) {
            TextView textView4 = new TextView(context);
            textView4.setTextColor(-1);
            textView4.setTextSize(1, f);
            textView4.setGravity(17);
            Locale locale = Locale.US;
            Object[] objArr = new Object[1];
            objArr[c] = Integer.valueOf(i2);
            textView4.setText(String.format(locale, "%d", objArr));
            this.numbersFrameLayout.addView(textView4, LayoutHelper.createFrame(50, 50, 51));
            textView4.setImportantForAccessibility(2);
            this.numberTextViews.add(textView4);
            TextView textView5 = new TextView(context);
            textView5.setTextSize(1, 12.0f);
            textView5.setTextColor(Integer.MAX_VALUE);
            textView5.setGravity(17);
            this.numbersFrameLayout.addView(textView5, LayoutHelper.createFrame(50, 50, 51));
            textView5.setImportantForAccessibility(2);
            if (i2 == 0) {
                textView5.setText("+");
            } else {
                switch (i2) {
                    case 2:
                        textView5.setText("ABC");
                        continue;
                    case 3:
                        textView5.setText("DEF");
                        continue;
                    case 4:
                        textView5.setText("GHI");
                        continue;
                    case 5:
                        textView5.setText("JKL");
                        continue;
                    case 6:
                        textView5.setText("MNO");
                        continue;
                    case 7:
                        textView5.setText("PQRS");
                        continue;
                    case 8:
                        textView5.setText("TUV");
                        continue;
                    case 9:
                        textView5.setText("WXYZ");
                        continue;
                }
            }
            this.lettersTextViews.add(textView5);
            i2++;
            f = 36.0f;
            c = 0;
        }
        ImageView imageView5 = new ImageView(context);
        this.eraseView = imageView5;
        imageView5.setScaleType(ImageView.ScaleType.CENTER);
        this.eraseView.setImageResource(C3473R.C3475drawable.passcode_delete);
        this.numbersFrameLayout.addView(this.eraseView, LayoutHelper.createFrame(50, 50, 51));
        ImageView imageView6 = new ImageView(context);
        this.fingerprintView = imageView6;
        imageView6.setScaleType(ImageView.ScaleType.CENTER);
        this.fingerprintView.setImageResource(C3473R.C3475drawable.fingerprint);
        this.fingerprintView.setVisibility(8);
        this.numbersFrameLayout.addView(this.fingerprintView, LayoutHelper.createFrame(50, 50, 51));
        checkFingerprintButton();
        int i3 = 0;
        while (true) {
            if (i3 >= 12) {
                for (int i4 = 11; i4 >= 0; i4--) {
                    this.numbersFrameLayout.addView(this.numberFrameLayouts.get(i4), LayoutHelper.createFrame(100, 100, 51));
                }
                return;
            }
            FrameLayout frameLayout5 = new FrameLayout(this, context) { // from class: org.telegram.ui.Components.PasscodeView.6
                @Override // android.view.View
                public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                    super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                    accessibilityNodeInfo.setClassName("android.widget.Button");
                }
            };
            frameLayout5.setBackgroundResource(C3473R.C3475drawable.bar_selector_lock);
            frameLayout5.setTag(Integer.valueOf(i3));
            if (i3 == 11) {
                frameLayout5.setContentDescription(LocaleController.getString("AccDescrFingerprint", C3473R.string.AccDescrFingerprint));
                setNextFocus(frameLayout5, C3473R.C3476id.passcode_btn_0);
            } else if (i3 == 10) {
                frameLayout5.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda6
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        boolean lambda$new$5;
                        lambda$new$5 = PasscodeView.this.lambda$new$5(view);
                        return lambda$new$5;
                    }
                });
                frameLayout5.setContentDescription(LocaleController.getString("AccDescrBackspace", C3473R.string.AccDescrBackspace));
                setNextFocus(frameLayout5, C3473R.C3476id.passcode_btn_1);
            } else {
                frameLayout5.setContentDescription(i3 + "");
                if (i3 == 0) {
                    setNextFocus(frameLayout5, C3473R.C3476id.passcode_btn_backspace);
                } else if (i3 == 9) {
                    if (this.fingerprintView.getVisibility() == 0) {
                        setNextFocus(frameLayout5, C3473R.C3476id.passcode_btn_fingerprint);
                    } else {
                        setNextFocus(frameLayout5, C3473R.C3476id.passcode_btn_0);
                    }
                } else {
                    setNextFocus(frameLayout5, ids[i3 + 1]);
                }
            }
            frameLayout5.setId(ids[i3]);
            frameLayout5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PasscodeView.this.lambda$new$8(view);
                }
            });
            this.numberFrameLayouts.add(frameLayout5);
            i3++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(BaseFragment baseFragment, View view) {
        if (baseFragment != null) {
            baseFragment.removeSelfFromStack();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        WalletDelegate walletDelegate = this.walletDelegate;
        if (walletDelegate != null) {
            walletDelegate.onForgotPinCodeClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$2(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            processDone(false);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.PasscodeView$4 */
    /* loaded from: classes7.dex */
    public class C50804 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        C50804() {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            final boolean z;
            if (PasscodeView.this.backgroundDrawable instanceof MotionBackgroundDrawable) {
                final MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) PasscodeView.this.backgroundDrawable;
                motionBackgroundDrawable.setAnimationProgressProvider(null);
                float posAnimationProgress = motionBackgroundDrawable.getPosAnimationProgress();
                boolean z2 = true;
                if (i2 == 0 && i3 == 1) {
                    motionBackgroundDrawable.switchToNextPosition(true);
                    z = true;
                } else if (i2 == 1 && i3 == 0) {
                    motionBackgroundDrawable.switchToPrevPosition(true);
                    z = false;
                } else {
                    z = false;
                    z2 = false;
                }
                if (z2) {
                    if (posAnimationProgress >= 1.0f) {
                        PasscodeView.this.animateBackground(motionBackgroundDrawable);
                        return;
                    }
                    PasscodeView.this.backgroundSpringQueue.offer(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$4$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            PasscodeView.C50804.this.lambda$beforeTextChanged$0(z, motionBackgroundDrawable);
                        }
                    });
                    PasscodeView.this.backgroundSpringNextQueue.offer(Boolean.valueOf(z));
                    ArrayList<Runnable> arrayList = new ArrayList();
                    ArrayList<Integer> arrayList2 = new ArrayList();
                    for (int i4 = 0; i4 < PasscodeView.this.backgroundSpringQueue.size(); i4++) {
                        Runnable runnable = (Runnable) PasscodeView.this.backgroundSpringQueue.get(i4);
                        if (((Boolean) PasscodeView.this.backgroundSpringNextQueue.get(i4)).booleanValue() != z) {
                            arrayList.add(runnable);
                            arrayList2.add(Integer.valueOf(i4));
                        }
                    }
                    for (Runnable runnable2 : arrayList) {
                        PasscodeView.this.backgroundSpringQueue.remove(runnable2);
                    }
                    for (Integer num : arrayList2) {
                        int intValue = num.intValue();
                        if (intValue < PasscodeView.this.backgroundSpringNextQueue.size()) {
                            PasscodeView.this.backgroundSpringNextQueue.remove(intValue);
                        }
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$beforeTextChanged$0(boolean z, MotionBackgroundDrawable motionBackgroundDrawable) {
            if (z) {
                motionBackgroundDrawable.switchToNextPosition(true);
            } else {
                motionBackgroundDrawable.switchToPrevPosition(true);
            }
            PasscodeView.this.animateBackground(motionBackgroundDrawable);
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (PasscodeView.this.passwordEditText.length() == 4) {
                if (PasscodeView.this.isWalletScreen || ((SharedConfig.passcodeType == 0 && PasscodeView.this.sectionPasscodeData == null) || (PasscodeView.this.sectionPasscodeData != null && PasscodeView.this.sectionPasscodeData.getPasscodeType() == 0))) {
                    PasscodeView.this.processDone(false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        processDone(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        checkFingerprint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$5(View view) {
        this.passwordEditText.setText("");
        this.passwordEditText2.eraseAllCharacters(true);
        Drawable drawable = this.backgroundDrawable;
        if (drawable instanceof MotionBackgroundDrawable) {
            ((MotionBackgroundDrawable) drawable).switchToPrevPosition(true);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public /* synthetic */ void lambda$new$8(View view) {
        boolean z;
        final boolean z2;
        int intValue = ((Integer) view.getTag()).intValue();
        switch (intValue) {
            case 0:
                this.passwordEditText2.appendCharacter(SessionDescription.SUPPORTED_SDP_VERSION);
                z = false;
                break;
            case 1:
                this.passwordEditText2.appendCharacter(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                z = false;
                break;
            case 2:
                this.passwordEditText2.appendCharacter("2");
                z = false;
                break;
            case 3:
                this.passwordEditText2.appendCharacter("3");
                z = false;
                break;
            case 4:
                this.passwordEditText2.appendCharacter("4");
                z = false;
                break;
            case 5:
                this.passwordEditText2.appendCharacter("5");
                z = false;
                break;
            case 6:
                this.passwordEditText2.appendCharacter("6");
                z = false;
                break;
            case 7:
                this.passwordEditText2.appendCharacter("7");
                z = false;
                break;
            case 8:
                this.passwordEditText2.appendCharacter("8");
                z = false;
                break;
            case 9:
                this.passwordEditText2.appendCharacter("9");
                z = false;
                break;
            case 10:
                z = this.passwordEditText2.eraseLastCharacter();
                break;
            case 11:
                checkFingerprint();
                z = false;
                break;
            default:
                z = false;
                break;
        }
        TextView textView = this.forgotPasscodeTextView;
        if (textView != null) {
            textView.setVisibility(this.passwordEditText2.length() == 0 ? 0 : 8);
        }
        if (this.passwordEditText2.length() == 4) {
            processDone(false);
        }
        if (intValue == 11) {
            return;
        }
        Drawable drawable = this.backgroundDrawable;
        if (drawable instanceof MotionBackgroundDrawable) {
            final MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) drawable;
            motionBackgroundDrawable.setAnimationProgressProvider(null);
            float posAnimationProgress = motionBackgroundDrawable.getPosAnimationProgress();
            boolean z3 = true;
            if (intValue == 10) {
                if (z) {
                    motionBackgroundDrawable.switchToPrevPosition(true);
                } else {
                    z3 = false;
                }
                z2 = false;
            } else {
                motionBackgroundDrawable.switchToNextPosition(true);
                z2 = true;
            }
            if (z3) {
                if (posAnimationProgress >= 1.0f) {
                    animateBackground(motionBackgroundDrawable);
                    return;
                }
                this.backgroundSpringQueue.offer(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        PasscodeView.this.lambda$new$6(z2, motionBackgroundDrawable);
                    }
                });
                this.backgroundSpringNextQueue.offer(Boolean.valueOf(z2));
                ArrayList<Runnable> arrayList = new ArrayList();
                ArrayList<Integer> arrayList2 = new ArrayList();
                for (int i = 0; i < this.backgroundSpringQueue.size(); i++) {
                    Runnable runnable = this.backgroundSpringQueue.get(i);
                    Boolean bool = this.backgroundSpringNextQueue.get(i);
                    if (bool != null && bool.booleanValue() != z2) {
                        arrayList.add(runnable);
                        arrayList2.add(Integer.valueOf(i));
                    }
                }
                for (Runnable runnable2 : arrayList) {
                    this.backgroundSpringQueue.remove(runnable2);
                }
                Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda14
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int lambda$new$7;
                        lambda$new$7 = PasscodeView.lambda$new$7((Integer) obj, (Integer) obj2);
                        return lambda$new$7;
                    }
                });
                for (Integer num : arrayList2) {
                    this.backgroundSpringNextQueue.remove(num.intValue());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(boolean z, MotionBackgroundDrawable motionBackgroundDrawable) {
        if (z) {
            motionBackgroundDrawable.switchToNextPosition(true);
        } else {
            motionBackgroundDrawable.switchToPrevPosition(true);
        }
        animateBackground(motionBackgroundDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$new$7(Integer num, Integer num2) {
        return num2.intValue() - num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateBackground(final MotionBackgroundDrawable motionBackgroundDrawable) {
        SpringAnimation springAnimation = this.backgroundAnimationSpring;
        if (springAnimation != null && springAnimation.isRunning()) {
            this.backgroundAnimationSpring.cancel();
        }
        final FloatValueHolder floatValueHolder = new FloatValueHolder(BitmapDescriptorFactory.HUE_RED);
        motionBackgroundDrawable.setAnimationProgressProvider(new GenericProvider() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda15
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                Float lambda$animateBackground$9;
                lambda$animateBackground$9 = PasscodeView.lambda$animateBackground$9(FloatValueHolder.this, (MotionBackgroundDrawable) obj);
                return lambda$animateBackground$9;
            }
        });
        SpringAnimation spring = new SpringAnimation(floatValueHolder).setSpring(new SpringForce(100.0f).setStiffness(300.0f).setDampingRatio(1.0f));
        this.backgroundAnimationSpring = spring;
        spring.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda9
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                PasscodeView.this.lambda$animateBackground$10(motionBackgroundDrawable, dynamicAnimation, z, f, f2);
            }
        });
        this.backgroundAnimationSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda10
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                MotionBackgroundDrawable.this.updateAnimation(true);
            }
        });
        this.backgroundAnimationSpring.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Float lambda$animateBackground$9(FloatValueHolder floatValueHolder, MotionBackgroundDrawable motionBackgroundDrawable) {
        return Float.valueOf(floatValueHolder.getValue() / 100.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateBackground$10(MotionBackgroundDrawable motionBackgroundDrawable, DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        this.backgroundAnimationSpring = null;
        motionBackgroundDrawable.setAnimationProgressProvider(null);
        if (z) {
            return;
        }
        motionBackgroundDrawable.setPosAnimationProgress(1.0f);
        if (this.backgroundSpringQueue.isEmpty()) {
            return;
        }
        this.backgroundSpringQueue.poll().run();
        this.backgroundSpringNextQueue.poll();
    }

    private void setNextFocus(View view, int i) {
        view.setNextFocusForwardId(i);
        if (Build.VERSION.SDK_INT >= 22) {
            view.setAccessibilityTraversalBefore(i);
        }
    }

    public void setDelegate(PasscodeViewDelegate passcodeViewDelegate) {
        this.delegate = passcodeViewDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone(boolean z) {
        String string;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData2;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData3;
        if (this.isWalletScreen && this.walletDelegate != null) {
            if (FingerprintController.isKeyReady() && FingerprintController.checkDeviceFingerprintsChanged()) {
                FingerprintController.deleteInvalidKey();
                WalletFingerprintController walletFingerprintController = getWalletFingerprintController();
                walletFingerprintController.setWalletPinCodeEncrypted("");
                walletFingerprintController.saveConfig();
            }
            this.walletDelegate.onPinCodeEntered(this.passwordEditText2.getString());
            return;
        }
        LockedSectionsController lockedSectionsController = getLockedSectionsController();
        if (!z) {
            if (this.isWalletScreen && getWalletPinCodeRetryInMs() > 0) {
                return;
            }
            if (SharedConfig.passcodeRetryInMs > 0 && this.sectionPasscodeData == null) {
                return;
            }
            LockedSectionsController.SectionPasscodeData sectionPasscodeData4 = this.sectionPasscodeData;
            if (sectionPasscodeData4 != null && sectionPasscodeData4.getPasscodeRetryInMs() > 0) {
                return;
            }
            if (this.isWalletScreen || ((SharedConfig.passcodeType == 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData2 = this.sectionPasscodeData) != null && sectionPasscodeData2.getPasscodeType() == 0))) {
                string = this.passwordEditText2.getString();
            } else {
                string = (!(SharedConfig.passcodeType == 1 && this.sectionPasscodeData == null) && ((sectionPasscodeData3 = this.sectionPasscodeData) == null || sectionPasscodeData3.getPasscodeType() != 1)) ? "" : this.passwordEditText.getText().toString();
            }
            if (string.length() == 0) {
                onPasscodeError();
                return;
            } else if (!SharedConfig.checkPasscode(string, this.currentAccount, this.lockedSection)) {
                SharedConfig.increaseBadPasscodeTries(this.currentAccount, this.lockedSection);
                if ((SharedConfig.passcodeRetryInMs > 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData = this.sectionPasscodeData) != null && sectionPasscodeData.getPasscodeRetryInMs() > 0)) {
                    checkRetryTextView();
                }
                this.passwordEditText.setText("");
                this.passwordEditText2.eraseAllCharacters(true);
                onPasscodeError();
                Drawable drawable = this.backgroundDrawable;
                if (drawable instanceof MotionBackgroundDrawable) {
                    MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) drawable;
                    SpringAnimation springAnimation = this.backgroundAnimationSpring;
                    if (springAnimation != null) {
                        springAnimation.cancel();
                        motionBackgroundDrawable.setPosAnimationProgress(1.0f);
                    }
                    if (motionBackgroundDrawable.getPosAnimationProgress() >= 1.0f) {
                        motionBackgroundDrawable.rotatePreview(true);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        LockedSectionsController.SectionPasscodeData sectionPasscodeData5 = this.sectionPasscodeData;
        if (sectionPasscodeData5 != null) {
            sectionPasscodeData5.setBadPasscodeTries(0);
        } else {
            SharedConfig.badPasscodeTries = 0;
        }
        this.passwordEditText.clearFocus();
        AndroidUtilities.hideKeyboard(this.passwordEditText);
        if (Build.VERSION.SDK_INT >= 23 && FingerprintController.isKeyReady() && FingerprintController.checkDeviceFingerprintsChanged()) {
            FingerprintController.deleteInvalidKey();
        }
        LockedSectionsController.SectionPasscodeData sectionPasscodeData6 = this.sectionPasscodeData;
        if (sectionPasscodeData6 != null) {
            if (sectionPasscodeData6.getTimeout() != 0) {
                this.sectionPasscodeData.setLastAcceptedTime((int) (SystemClock.elapsedRealtime() / 1000));
            }
            this.sectionPasscodeData.setSectionLocked(false);
        } else {
            SharedConfig.appLocked = false;
        }
        if (this.sectionPasscodeData != null) {
            lockedSectionsController.saveConfig();
        } else {
            SharedConfig.saveConfig();
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetPasscode, new Object[0]);
        setOnTouchListener(null);
        PasscodeViewDelegate passcodeViewDelegate = this.delegate;
        if (passcodeViewDelegate != null) {
            passcodeViewDelegate.didAcceptedPassword(this);
        }
        if (this.lockedSection == null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    PasscodeView.this.lambda$processDone$12();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$12() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(200L);
        animatorSet.playTogether(ObjectAnimator.ofFloat(this, View.TRANSLATION_Y, AndroidUtilities.m72dp(20)), ObjectAnimator.ofFloat(this, View.ALPHA, AndroidUtilities.m73dp((float) BitmapDescriptorFactory.HUE_RED)));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PasscodeView.this.setVisibility(8);
            }
        });
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shakeTextView(final float f, final int i) {
        if (i == 6) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.passcodeTextView, View.TRANSLATION_X, AndroidUtilities.m73dp(f)));
        animatorSet.setDuration(50L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PasscodeView passcodeView = PasscodeView.this;
                int i2 = i;
                passcodeView.shakeTextView(i2 == 5 ? BitmapDescriptorFactory.HUE_RED : -f, i2 + 1);
            }
        });
        animatorSet.start();
    }

    private static void checkRetryTextView(PasscodeView passcodeView, LockedSectionsController.SectionPasscodeData sectionPasscodeData, LockedSection lockedSection, int i, Runnable runnable) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long lastUptimeMillis = sectionPasscodeData != null ? sectionPasscodeData.getLastUptimeMillis() : SharedConfig.lastUptimeMillis;
        long passcodeRetryInMs = sectionPasscodeData != null ? sectionPasscodeData.getPasscodeRetryInMs() : SharedConfig.passcodeRetryInMs;
        int passcodeType = sectionPasscodeData != null ? sectionPasscodeData.getPasscodeType() : SharedConfig.passcodeType;
        TextView textView = passcodeView != null ? passcodeView.retryTextView : null;
        FrameLayout frameLayout = passcodeView != null ? passcodeView.passwordFrameLayout : null;
        FrameLayout frameLayout2 = passcodeView != null ? passcodeView.numbersFrameLayout : null;
        EditTextBoldCursor editTextBoldCursor = passcodeView != null ? passcodeView.passwordEditText : null;
        if (elapsedRealtime > lastUptimeMillis) {
            passcodeRetryInMs -= elapsedRealtime - lastUptimeMillis;
            if (passcodeRetryInMs < 0) {
                passcodeRetryInMs = 0;
            }
        }
        if (sectionPasscodeData != null) {
            sectionPasscodeData.setLastUptimeMillis(elapsedRealtime);
        } else {
            SharedConfig.lastUptimeMillis = elapsedRealtime;
        }
        if (sectionPasscodeData != null) {
            sectionPasscodeData.setPasscodeRetryInMs(passcodeRetryInMs);
        } else {
            SharedConfig.passcodeRetryInMs = passcodeRetryInMs;
        }
        if (sectionPasscodeData != null) {
            LockedSectionsController.getInstance(i).saveConfig();
        } else {
            SharedConfig.saveConfig();
        }
        if (passcodeRetryInMs > 0) {
            int max = Math.max(1, (int) Math.ceil(passcodeRetryInMs / 1000.0d));
            if (passcodeView != null && max != passcodeView.lastValue) {
                textView.setText(LocaleController.formatString("TooManyTries", C3473R.string.TooManyTries, LocaleController.formatPluralString("Seconds", max, new Object[0])));
                passcodeView.lastValue = max;
            }
            if (passcodeView != null && textView.getVisibility() != 0) {
                textView.setVisibility(0);
                frameLayout.setVisibility(4);
                if (frameLayout2.getVisibility() == 0) {
                    frameLayout2.setVisibility(4);
                }
                AndroidUtilities.hideKeyboard(editTextBoldCursor);
            }
            AndroidUtilities.cancelRunOnUIThread(runnable);
            AndroidUtilities.runOnUIThread(runnable, 100L);
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(runnable);
        if (passcodeView == null || frameLayout.getVisibility() == 0) {
            return;
        }
        textView.setVisibility(4);
        frameLayout.setVisibility(0);
        if (passcodeType == 0 || passcodeView.isWalletScreen) {
            frameLayout2.setVisibility(0);
        } else if (passcodeType == 1) {
            AndroidUtilities.showKeyboard(editTextBoldCursor);
        }
    }

    private void onPasscodeError() {
        Vibrator vibrator = (Vibrator) getContext().getSystemService("vibrator");
        if (vibrator != null) {
            vibrator.vibrate(200L);
        }
        shakeTextView(2.0f, 0);
    }

    public void onResume() {
        LockedSectionsController.SectionPasscodeData sectionPasscodeData;
        if (this.isWalletScreen) {
            checkWalletRetryTextView();
            if (this.isWalletLoading) {
                this.walletLoadingAnimation.start();
            }
        } else {
            checkRetryTextView();
        }
        if (this.retryTextView.getVisibility() != 0) {
            if ((SharedConfig.passcodeType == 1 && this.sectionPasscodeData == null && !this.isWalletScreen) || ((sectionPasscodeData = this.sectionPasscodeData) != null && sectionPasscodeData.getPasscodeType() == 1)) {
                EditTextBoldCursor editTextBoldCursor = this.passwordEditText;
                if (editTextBoldCursor != null) {
                    editTextBoldCursor.requestFocus();
                    AndroidUtilities.showKeyboard(this.passwordEditText);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        PasscodeView.this.lambda$onResume$13();
                    }
                }, 200L);
            }
            checkFingerprint();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResume$13() {
        EditTextBoldCursor editTextBoldCursor;
        if (this.retryTextView.getVisibility() == 0 || (editTextBoldCursor = this.passwordEditText) == null) {
            return;
        }
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(this.passwordEditText);
    }

    public void onPause() {
        CancellationSignal cancellationSignal;
        AnimatorSet animatorSet;
        if (this.isWalletScreen) {
            if (this.isWalletLoading && (animatorSet = this.walletLoadingAnimation) != null) {
                animatorSet.pause();
            }
            AndroidUtilities.cancelRunOnUIThread(this.walletTriesTimeoutCheckRunnable);
        }
        AndroidUtilities.cancelRunOnUIThread(this.checkRunnable);
        AlertDialog alertDialog = this.fingerprintDialog;
        if (alertDialog != null) {
            try {
                if (alertDialog.isShowing()) {
                    this.fingerprintDialog.dismiss();
                }
                this.fingerprintDialog = null;
            } catch (Exception e) {
                FileLog.m67e(e);
            }
        }
        try {
            if (Build.VERSION.SDK_INT < 23 || (cancellationSignal = this.cancellationSignal) == null) {
                return;
            }
            cancellationSignal.cancel();
            this.cancellationSignal = null;
        } catch (Exception e2) {
            FileLog.m67e(e2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didGenerateFingerprintKeyPair);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.passcodeDismissed);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didGenerateFingerprintKeyPair);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.passcodeDismissed);
    }

    private void checkFingerprint() {
        Activity activity;
        if (Build.VERSION.SDK_INT >= 23 && (activity = (Activity) getContext()) != null && this.fingerprintView.getVisibility() == 0 && !ApplicationLoader.mainInterfacePaused) {
            if (!(activity instanceof LaunchActivity) || ((LaunchActivity) activity).allowShowFingerprintDialog(this) || this.isWalletScreen || this.lockedSection != null) {
                try {
                    AlertDialog alertDialog = this.fingerprintDialog;
                    if (alertDialog != null) {
                        if (alertDialog.isShowing()) {
                            return;
                        }
                    }
                } catch (Exception e) {
                    FileLog.m67e(e);
                }
                try {
                    FingerprintManagerCompat from = FingerprintManagerCompat.from(ApplicationLoader.applicationContext);
                    if (from.isHardwareDetected() && from.hasEnrolledFingerprints() && FingerprintController.isKeyReady() && !FingerprintController.checkDeviceFingerprintsChanged()) {
                        RelativeLayout relativeLayout = new RelativeLayout(getContext());
                        relativeLayout.setPadding(AndroidUtilities.m72dp(24), 0, AndroidUtilities.m72dp(24), 0);
                        TextView textView = new TextView(getContext());
                        textView.setId(1000);
                        textView.setTextAppearance(16974344);
                        int i = Theme.key_dialogTextBlack;
                        textView.setTextColor(Theme.getColor(i));
                        textView.setText(LocaleController.getString("FingerprintInfo", C3473R.string.FingerprintInfo));
                        relativeLayout.addView(textView);
                        RelativeLayout.LayoutParams createRelative = LayoutHelper.createRelative(-2, -2);
                        createRelative.addRule(10);
                        createRelative.addRule(20);
                        textView.setLayoutParams(createRelative);
                        ImageView imageView = new ImageView(getContext());
                        this.fingerprintImageView = imageView;
                        imageView.setImageResource(C3473R.C3475drawable.ic_fp_40px);
                        this.fingerprintImageView.setId(1001);
                        relativeLayout.addView(this.fingerprintImageView, LayoutHelper.createRelative(-2.0f, -2.0f, 0, 20, 0, 0, 20, 3, 1000));
                        TextView textView2 = new TextView(getContext());
                        this.fingerprintStatusTextView = textView2;
                        textView2.setGravity(16);
                        this.fingerprintStatusTextView.setText(LocaleController.getString("FingerprintHelp", C3473R.string.FingerprintHelp));
                        this.fingerprintStatusTextView.setTextAppearance(16974320);
                        this.fingerprintStatusTextView.setTextColor(Theme.getColor(i) & 1124073471);
                        relativeLayout.addView(this.fingerprintStatusTextView);
                        RelativeLayout.LayoutParams createRelative2 = LayoutHelper.createRelative(-2, -2);
                        createRelative2.setMarginStart(AndroidUtilities.m72dp(16));
                        createRelative2.addRule(8, 1001);
                        createRelative2.addRule(6, 1001);
                        createRelative2.addRule(17, 1001);
                        this.fingerprintStatusTextView.setLayoutParams(createRelative2);
                        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                        builder.setTitle(LocaleController.getString("AppName", C3473R.string.AppName));
                        builder.setView(relativeLayout);
                        builder.setNegativeButton(LocaleController.getString("Cancel", C3473R.string.Cancel), null);
                        builder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda0
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                PasscodeView.this.lambda$checkFingerprint$14(dialogInterface);
                            }
                        });
                        AlertDialog alertDialog2 = this.fingerprintDialog;
                        if (alertDialog2 != null) {
                            try {
                                if (alertDialog2.isShowing()) {
                                    this.fingerprintDialog.dismiss();
                                }
                            } catch (Exception e2) {
                                FileLog.m67e(e2);
                            }
                        }
                        this.fingerprintDialog = builder.show();
                        this.cancellationSignal = new CancellationSignal();
                        this.selfCancelled = false;
                        FingerprintController.createCipher();
                        FingerprintController.initDecodeCipher();
                        from.authenticate(this.isWalletScreen ? new FingerprintManagerCompat.CryptoObject(FingerprintController.getCipher()) : null, 0, this.cancellationSignal, new FingerprintManagerCompat.AuthenticationCallback() { // from class: org.telegram.ui.Components.PasscodeView.10
                            @Override // org.telegram.messenger.support.fingerprint.FingerprintManagerCompat.AuthenticationCallback
                            public void onAuthenticationError(int i2, CharSequence charSequence) {
                                if (i2 == 10) {
                                    try {
                                        if (PasscodeView.this.fingerprintDialog.isShowing()) {
                                            PasscodeView.this.fingerprintDialog.dismiss();
                                        }
                                    } catch (Exception e3) {
                                        FileLog.m67e(e3);
                                    }
                                    PasscodeView.this.fingerprintDialog = null;
                                } else if (PasscodeView.this.selfCancelled || i2 == 5) {
                                } else {
                                    PasscodeView.this.showFingerprintError(charSequence);
                                }
                            }

                            @Override // org.telegram.messenger.support.fingerprint.FingerprintManagerCompat.AuthenticationCallback
                            public void onAuthenticationHelp(int i2, CharSequence charSequence) {
                                PasscodeView.this.showFingerprintError(charSequence);
                            }

                            @Override // org.telegram.messenger.support.fingerprint.FingerprintManagerCompat.AuthenticationCallback
                            public void onAuthenticationFailed() {
                                PasscodeView.this.showFingerprintError(LocaleController.getString("FingerprintNotRecognized", C3473R.string.FingerprintNotRecognized));
                            }

                            @Override // org.telegram.messenger.support.fingerprint.FingerprintManagerCompat.AuthenticationCallback
                            public void onAuthenticationSucceeded(FingerprintManagerCompat.AuthenticationResult authenticationResult) {
                                try {
                                    if (PasscodeView.this.fingerprintDialog.isShowing()) {
                                        PasscodeView.this.fingerprintDialog.dismiss();
                                    }
                                } catch (Exception e3) {
                                    FileLog.m67e(e3);
                                }
                                PasscodeView.this.fingerprintDialog = null;
                                if (!PasscodeView.this.isWalletScreen || PasscodeView.this.walletDelegate == null) {
                                    PasscodeView.this.processDone(true);
                                } else {
                                    PasscodeView.this.walletDelegate.onFingerPrintConfirmed(authenticationResult.getCryptoObject().getCipher());
                                }
                            }
                        }, null);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkFingerprint$14(DialogInterface dialogInterface) {
        CancellationSignal cancellationSignal = this.cancellationSignal;
        if (cancellationSignal != null) {
            this.selfCancelled = true;
            try {
                cancellationSignal.cancel();
            } catch (Exception e) {
                FileLog.m67e(e);
            }
            this.cancellationSignal = null;
        }
    }

    public void onShow(boolean z, boolean z2) {
        onShow(z, z2, -1, -1, null, null);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x0067 -> B:53:0x0075). Please submit an issue!!! */
    private void checkFingerprintButton() {
        LockedSectionsController.SectionPasscodeData sectionPasscodeData;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData2;
        Activity activity = (Activity) getContext();
        if (Build.VERSION.SDK_INT >= 23 && activity != null && (isWalletFingerprintEnabled() || ((SharedConfig.useFingerprint && this.sectionPasscodeData == null && !this.isWalletScreen) || ((sectionPasscodeData2 = this.sectionPasscodeData) != null && sectionPasscodeData2.isUseFingerprint())))) {
            try {
                AlertDialog alertDialog = this.fingerprintDialog;
                if (alertDialog != null) {
                    if (alertDialog.isShowing()) {
                        return;
                    }
                }
            } catch (Exception e) {
                FileLog.m67e(e);
            }
            try {
                FingerprintManagerCompat from = FingerprintManagerCompat.from(ApplicationLoader.applicationContext);
                if (from.isHardwareDetected() && from.hasEnrolledFingerprints() && FingerprintController.isKeyReady() && !FingerprintController.checkDeviceFingerprintsChanged()) {
                    this.fingerprintView.setVisibility(0);
                } else {
                    this.fingerprintView.setVisibility(8);
                }
            } catch (Throwable th) {
                FileLog.m67e(th);
                this.fingerprintView.setVisibility(8);
            }
        } else {
            this.fingerprintView.setVisibility(8);
        }
        if ((SharedConfig.passcodeType == 1 && this.sectionPasscodeData == null && !this.isWalletScreen) || ((sectionPasscodeData = this.sectionPasscodeData) != null && sectionPasscodeData.getPasscodeType() == 1)) {
            this.fingerprintImage.setVisibility(this.fingerprintView.getVisibility());
        }
        if (this.numberFrameLayouts.size() >= 11) {
            this.numberFrameLayouts.get(11).setVisibility(this.fingerprintView.getVisibility());
        }
    }

    public void onShow(boolean z, boolean z2, int i, int i2, Runnable runnable, Runnable runnable2) {
        LockedSectionsController.SectionPasscodeData sectionPasscodeData;
        View currentFocus;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData2;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData3;
        EditTextBoldCursor editTextBoldCursor;
        checkFingerprintButton();
        checkRetryTextView();
        Activity activity = (Activity) getContext();
        if (!(SharedConfig.passcodeType == 1 && this.sectionPasscodeData == null && !this.isWalletScreen) && ((sectionPasscodeData = this.sectionPasscodeData) == null || sectionPasscodeData.getPasscodeType() != 1)) {
            if (activity != null && (currentFocus = activity.getCurrentFocus()) != null) {
                currentFocus.clearFocus();
                AndroidUtilities.hideKeyboard(((Activity) getContext()).getCurrentFocus());
            }
        } else if (!z2 && this.retryTextView.getVisibility() != 0 && (editTextBoldCursor = this.passwordEditText) != null) {
            editTextBoldCursor.requestFocus();
            AndroidUtilities.showKeyboard(this.passwordEditText);
        }
        if (z && this.retryTextView.getVisibility() != 0) {
            checkFingerprint();
        }
        if (getVisibility() == 0) {
            return;
        }
        setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.backgroundDrawable = null;
        if (Theme.getCachedWallpaper() instanceof MotionBackgroundDrawable) {
            this.backgroundDrawable = Theme.getCachedWallpaper();
            this.backgroundFrameLayout.setBackgroundColor(-1090519040);
        } else if (Theme.isCustomTheme() && !"CJz3BZ6YGEYBAAAABboWp6SAv04".equals(Theme.getSelectedBackgroundSlug()) && !"qeZWES8rGVIEAAAARfWlK1lnfiI".equals(Theme.getSelectedBackgroundSlug())) {
            BackgroundGradientDrawable currentGradientWallpaper = Theme.getCurrentGradientWallpaper();
            this.backgroundDrawable = currentGradientWallpaper;
            if (currentGradientWallpaper == null) {
                this.backgroundDrawable = Theme.getCachedWallpaper();
            }
            if (this.backgroundDrawable instanceof BackgroundGradientDrawable) {
                this.backgroundFrameLayout.setBackgroundColor(570425344);
            } else {
                this.backgroundFrameLayout.setBackgroundColor(-1090519040);
            }
        } else if ("d".equals(Theme.getSelectedBackgroundSlug()) || Theme.isPatternWallpaper()) {
            this.backgroundFrameLayout.setBackgroundColor(-11436898);
        } else {
            Drawable cachedWallpaper = Theme.getCachedWallpaper();
            this.backgroundDrawable = cachedWallpaper;
            if (cachedWallpaper instanceof BackgroundGradientDrawable) {
                this.backgroundFrameLayout.setBackgroundColor(570425344);
            } else if (cachedWallpaper != null) {
                this.backgroundFrameLayout.setBackgroundColor(-1090519040);
            } else {
                this.backgroundFrameLayout.setBackgroundColor(-11436898);
            }
        }
        Drawable drawable = this.backgroundDrawable;
        if (drawable instanceof MotionBackgroundDrawable) {
            MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) drawable;
            int[] colors = motionBackgroundDrawable.getColors();
            this.backgroundDrawable = new MotionBackgroundDrawable(colors[0], colors[1], colors[2], colors[3], false);
            if (motionBackgroundDrawable.hasPattern() && motionBackgroundDrawable.getIntensity() < 0) {
                this.backgroundFrameLayout.setBackgroundColor(2130706432);
            } else {
                this.backgroundFrameLayout.setBackgroundColor(570425344);
            }
            ((MotionBackgroundDrawable) this.backgroundDrawable).setParentView(this.backgroundFrameLayout);
        }
        if (this.isWalletScreen) {
            this.passcodeTextView.setText(LocaleController.getInternalString(C3473R.string.wallet_enter_eth_pin_title));
        } else {
            LockedSection lockedSection = this.lockedSection;
            if (lockedSection != null) {
                this.passcodeTextView.setText(LocaleController.getInternalString(lockedSection == LockedSection.ARCHIVE ? C3473R.string.enter_archive_passcode : C3473R.string.enter_cloud_passcode));
            } else {
                this.passcodeTextView.setText(LocaleController.getString("EnterYourTelegramPasscode", C3473R.string.EnterYourTelegramPasscode));
            }
        }
        if (this.isWalletScreen || ((SharedConfig.passcodeType == 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData2 = this.sectionPasscodeData) != null && sectionPasscodeData2.getPasscodeType() == 0))) {
            if (this.retryTextView.getVisibility() != 0) {
                this.numbersFrameLayout.setVisibility(0);
            }
            this.passwordEditText.setVisibility(8);
            this.passwordEditText2.setVisibility(0);
            this.checkImage.setVisibility(8);
            this.fingerprintImage.setVisibility(8);
        } else if ((SharedConfig.passcodeType == 1 && this.sectionPasscodeData == null) || ((sectionPasscodeData3 = this.sectionPasscodeData) != null && sectionPasscodeData3.getPasscodeType() == 1)) {
            this.passwordEditText.setFilters(new InputFilter[0]);
            this.passwordEditText.setInputType(129);
            this.numbersFrameLayout.setVisibility(8);
            this.passwordEditText.setFocusable(true);
            this.passwordEditText.setFocusableInTouchMode(true);
            this.passwordEditText.setVisibility(0);
            this.passwordEditText2.setVisibility(8);
            this.checkImage.setVisibility(0);
            this.fingerprintImage.setVisibility(this.fingerprintView.getVisibility());
        }
        setVisibility(0);
        this.passwordEditText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        this.passwordEditText.setText("");
        this.passwordEditText2.eraseAllCharacters(false);
        if (z2) {
            setAlpha(BitmapDescriptorFactory.HUE_RED);
            getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC507511(i, i2, runnable));
            requestLayout();
        } else {
            setAlpha(1.0f);
            this.imageView.setScaleX(1.0f);
            this.imageView.setScaleY(1.0f);
            this.imageView.stopAnimation();
            this.imageView.getAnimatedDrawable().setCurrentFrame(38, false);
            if (runnable != null) {
                runnable.run();
            }
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.PasscodeView$$ExternalSyntheticLambda7
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean lambda$onShow$15;
                lambda$onShow$15 = PasscodeView.lambda$onShow$15(view, motionEvent);
                return lambda$onShow$15;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.PasscodeView$11 */
    /* loaded from: classes7.dex */
    public class ViewTreeObserver$OnGlobalLayoutListenerC507511 implements ViewTreeObserver.OnGlobalLayoutListener {
        final /* synthetic */ Runnable val$onShow;
        final /* synthetic */ int val$x;
        final /* synthetic */ int val$y;

        ViewTreeObserver$OnGlobalLayoutListenerC507511(int i, int i2, Runnable runnable) {
            this.val$x = i;
            this.val$y = i2;
            this.val$onShow = runnable;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            float f;
            int m72dp;
            int i;
            final AnimatorSet animatorSet;
            char c;
            int i2;
            float f2 = 1.0f;
            PasscodeView.this.setAlpha(1.0f);
            PasscodeView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            RLottieImageView rLottieImageView = PasscodeView.this.imageView;
            float f3 = BitmapDescriptorFactory.HUE_RED;
            rLottieImageView.setProgress(BitmapDescriptorFactory.HUE_RED);
            PasscodeView.this.imageView.playAnimation();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.PasscodeView$11$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    PasscodeView.ViewTreeObserver$OnGlobalLayoutListenerC507511.this.lambda$onGlobalLayout$0();
                }
            }, 350L);
            AnimatorSet animatorSet2 = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            Point point = AndroidUtilities.displaySize;
            int i3 = point.x;
            int i4 = point.y;
            int i5 = Build.VERSION.SDK_INT;
            char c2 = 0;
            int i6 = i4 + (i5 >= 21 ? AndroidUtilities.statusBarHeight : 0);
            if (i5 < 21) {
                arrayList.add(ObjectAnimator.ofFloat(PasscodeView.this.backgroundFrameLayout, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                animatorSet2.setDuration(350L);
            } else {
                int i7 = this.val$x;
                int i8 = (i3 - i7) * (i3 - i7);
                int i9 = this.val$y;
                double sqrt = Math.sqrt(i8 + ((i6 - i9) * (i6 - i9)));
                int i10 = this.val$x;
                int i11 = this.val$y;
                double sqrt2 = Math.sqrt((i10 * i10) + ((i6 - i11) * (i6 - i11)));
                int i12 = this.val$x;
                int i13 = this.val$y;
                double sqrt3 = Math.sqrt((i12 * i12) + (i13 * i13));
                int i14 = this.val$x;
                int i15 = (i3 - i14) * (i3 - i14);
                int i16 = this.val$y;
                final double max = Math.max(Math.max(Math.max(sqrt, sqrt2), sqrt3), Math.sqrt(i15 + (i16 * i16)));
                PasscodeView.this.innerAnimators.clear();
                int childCount = PasscodeView.this.numbersFrameLayout.getChildCount();
                int i17 = -1;
                int i18 = -1;
                while (i18 < childCount) {
                    View childAt = i18 == i17 ? PasscodeView.this.passcodeTextView : PasscodeView.this.numbersFrameLayout.getChildAt(i18);
                    if ((childAt instanceof TextView) || (childAt instanceof ImageView)) {
                        childAt.setScaleX(0.7f);
                        childAt.setScaleY(0.7f);
                        childAt.setAlpha(f3);
                        InnerAnimator innerAnimator = new InnerAnimator();
                        childAt.getLocationInWindow(PasscodeView.this.pos);
                        int measuredWidth = PasscodeView.this.pos[c2] + (childAt.getMeasuredWidth() / 2);
                        int measuredHeight = PasscodeView.this.pos[1] + (childAt.getMeasuredHeight() / 2);
                        int i19 = this.val$x;
                        int i20 = (i19 - measuredWidth) * (i19 - measuredWidth);
                        int i21 = this.val$y;
                        innerAnimator.startRadius = ((float) Math.sqrt(i20 + ((i21 - measuredHeight) * (i21 - measuredHeight)))) - AndroidUtilities.m72dp(40);
                        if (i18 != i17) {
                            animatorSet = new AnimatorSet();
                            Animator[] animatorArr = new Animator[2];
                            Property property = View.SCALE_X;
                            i = childCount;
                            float[] fArr = new float[1];
                            fArr[c2] = f2;
                            animatorArr[c2] = ObjectAnimator.ofFloat(childAt, property, fArr);
                            Property property2 = View.SCALE_Y;
                            float[] fArr2 = new float[1];
                            fArr2[c2] = f2;
                            animatorArr[1] = ObjectAnimator.ofFloat(childAt, property2, fArr2);
                            animatorSet.playTogether(animatorArr);
                            animatorSet.setDuration(140L);
                            animatorSet.setInterpolator(new DecelerateInterpolator());
                        } else {
                            i = childCount;
                            animatorSet = null;
                        }
                        innerAnimator.animatorSet = new AnimatorSet();
                        AnimatorSet animatorSet3 = innerAnimator.animatorSet;
                        Animator[] animatorArr2 = new Animator[3];
                        Property property3 = View.SCALE_X;
                        float[] fArr3 = new float[2];
                        fArr3[c2] = i18 == -1 ? 0.9f : 0.6f;
                        float f4 = 1.04f;
                        fArr3[1] = i18 == -1 ? 1.0f : 1.04f;
                        animatorArr2[c2] = ObjectAnimator.ofFloat(childAt, property3, fArr3);
                        Property property4 = View.SCALE_Y;
                        float[] fArr4 = new float[2];
                        fArr4[0] = i18 == -1 ? 0.9f : 0.6f;
                        if (i18 == -1) {
                            c = 1;
                            f4 = 1.0f;
                        } else {
                            c = 1;
                        }
                        fArr4[c] = f4;
                        animatorArr2[c] = ObjectAnimator.ofFloat(childAt, property4, fArr4);
                        animatorArr2[2] = ObjectAnimator.ofFloat(childAt, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f);
                        animatorSet3.playTogether(animatorArr2);
                        innerAnimator.animatorSet.addListener(new AnimatorListenerAdapter(this) { // from class: org.telegram.ui.Components.PasscodeView.11.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                AnimatorSet animatorSet4 = animatorSet;
                                if (animatorSet4 != null) {
                                    animatorSet4.start();
                                }
                            }
                        });
                        i2 = -1;
                        innerAnimator.animatorSet.setDuration(i18 == -1 ? 232L : 200L);
                        innerAnimator.animatorSet.setInterpolator(new DecelerateInterpolator());
                        PasscodeView.this.innerAnimators.add(innerAnimator);
                    } else {
                        i = childCount;
                        i2 = i17;
                    }
                    i18++;
                    i17 = i2;
                    childCount = i;
                    f2 = 1.0f;
                    f3 = BitmapDescriptorFactory.HUE_RED;
                    c2 = 0;
                }
                arrayList.add(ViewAnimationUtils.createCircularReveal(PasscodeView.this.backgroundFrameLayout, this.val$x, this.val$y, BitmapDescriptorFactory.HUE_RED, (float) max));
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                arrayList.add(ofFloat);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.PasscodeView$11$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PasscodeView.ViewTreeObserver$OnGlobalLayoutListenerC507511.this.lambda$onGlobalLayout$1(max, valueAnimator);
                    }
                });
                animatorSet2.setInterpolator(Easings.easeInOutQuad);
                animatorSet2.setDuration(498L);
            }
            animatorSet2.playTogether(arrayList);
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.PasscodeView.11.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Runnable runnable = ViewTreeObserver$OnGlobalLayoutListenerC507511.this.val$onShow;
                    if (runnable != null) {
                        runnable.run();
                    }
                    if ((!(SharedConfig.passcodeType == 1 && PasscodeView.this.sectionPasscodeData == null && !PasscodeView.this.isWalletScreen) && (PasscodeView.this.sectionPasscodeData == null || PasscodeView.this.sectionPasscodeData.getPasscodeType() != 1)) || PasscodeView.this.retryTextView.getVisibility() == 0 || PasscodeView.this.passwordEditText == null) {
                        return;
                    }
                    PasscodeView.this.passwordEditText.requestFocus();
                    AndroidUtilities.showKeyboard(PasscodeView.this.passwordEditText);
                }
            });
            animatorSet2.start();
            AnimatorSet animatorSet4 = new AnimatorSet();
            animatorSet4.setDuration(332L);
            if (!AndroidUtilities.isTablet() && PasscodeView.this.getContext().getResources().getConfiguration().orientation == 2) {
                f = ((PasscodeView.this.isWalletScreen || ((SharedConfig.passcodeType == 0 && PasscodeView.this.sectionPasscodeData == null) || (PasscodeView.this.sectionPasscodeData != null && PasscodeView.this.sectionPasscodeData.getPasscodeType() == 0))) ? i3 / 2.0f : i3) / 2.0f;
                m72dp = AndroidUtilities.m72dp(30);
            } else {
                f = i3 / 2.0f;
                m72dp = AndroidUtilities.m72dp(29);
            }
            animatorSet4.playTogether(ObjectAnimator.ofFloat(PasscodeView.this.imageView, View.TRANSLATION_X, this.val$x - AndroidUtilities.m72dp(29), f - m72dp), ObjectAnimator.ofFloat(PasscodeView.this.imageView, View.TRANSLATION_Y, this.val$y - AndroidUtilities.m72dp(29), PasscodeView.this.imageY), ObjectAnimator.ofFloat(PasscodeView.this.imageView, View.SCALE_X, 0.5f, 1.0f), ObjectAnimator.ofFloat(PasscodeView.this.imageView, View.SCALE_Y, 0.5f, 1.0f));
            animatorSet4.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            animatorSet4.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGlobalLayout$0() {
            PasscodeView.this.imageView.performHapticFeedback(3, 2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGlobalLayout$1(double d, ValueAnimator valueAnimator) {
            double animatedFraction = d * valueAnimator.getAnimatedFraction();
            int i = 0;
            while (i < PasscodeView.this.innerAnimators.size()) {
                InnerAnimator innerAnimator = (InnerAnimator) PasscodeView.this.innerAnimators.get(i);
                if (innerAnimator.startRadius <= animatedFraction) {
                    innerAnimator.animatorSet.start();
                    PasscodeView.this.innerAnimators.remove(i);
                    i--;
                }
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFingerprintError(CharSequence charSequence) {
        this.fingerprintImageView.setImageResource(C3473R.C3475drawable.ic_fingerprint_error);
        this.fingerprintStatusTextView.setText(charSequence);
        this.fingerprintStatusTextView.setTextColor(-765666);
        Vibrator vibrator = (Vibrator) getContext().getSystemService("vibrator");
        if (vibrator != null) {
            vibrator.vibrate(200L);
        }
        AndroidUtilities.shakeView(this.fingerprintStatusTextView);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        FrameLayout.LayoutParams layoutParams;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData2;
        int i5;
        FrameLayout.LayoutParams layoutParams2;
        int m72dp;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData3;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData4;
        LockedSectionsController.SectionPasscodeData sectionPasscodeData5;
        int size = View.MeasureSpec.getSize(i);
        int i6 = AndroidUtilities.displaySize.y;
        int i7 = Build.VERSION.SDK_INT;
        int i8 = 0;
        int i9 = i6 - (i7 >= 21 ? 0 : AndroidUtilities.statusBarHeight);
        if (!AndroidUtilities.isTablet() && getContext().getResources().getConfiguration().orientation == 2) {
            this.imageView.setTranslationX((((this.isWalletScreen || ((SharedConfig.passcodeType == 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData5 = this.sectionPasscodeData) != null && sectionPasscodeData5.getPasscodeType() == 0))) ? size / 2.0f : size) / 2.0f) - AndroidUtilities.m72dp(29));
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.passwordFrameLayout.getLayoutParams();
            layoutParams3.width = (this.isWalletScreen || (SharedConfig.passcodeType == 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData4 = this.sectionPasscodeData) != null && sectionPasscodeData4.getPasscodeType() == 0)) ? size / 2 : size;
            layoutParams3.height = AndroidUtilities.m72dp(140);
            layoutParams3.topMargin = ((i9 - AndroidUtilities.m72dp(140)) / 2) + ((this.isWalletScreen || (SharedConfig.passcodeType == 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData3 = this.sectionPasscodeData) != null && sectionPasscodeData3.getPasscodeType() == 0)) ? AndroidUtilities.m72dp(40) : 0);
            this.passwordFrameLayout.setLayoutParams(layoutParams3);
            layoutParams = (FrameLayout.LayoutParams) this.numbersFrameLayout.getLayoutParams();
            layoutParams.height = i9;
            int i10 = size / 2;
            layoutParams.leftMargin = i10;
            layoutParams.topMargin = (i9 - i9) + (i7 >= 21 ? AndroidUtilities.statusBarHeight : 0);
            layoutParams.width = i10;
            this.numbersFrameLayout.setLayoutParams(layoutParams);
        } else {
            this.imageView.setTranslationX((size / 2.0f) - AndroidUtilities.m72dp(29));
            if (AndroidUtilities.isTablet()) {
                if (size > AndroidUtilities.m72dp(498)) {
                    i5 = (size - AndroidUtilities.m72dp(498)) / 2;
                    size = AndroidUtilities.m72dp(498);
                } else {
                    i5 = 0;
                }
                if (i9 > AndroidUtilities.m72dp(528)) {
                    int i11 = i5;
                    i3 = (i9 - AndroidUtilities.m72dp(528)) / 2;
                    i9 = AndroidUtilities.m72dp(528);
                    i4 = i11;
                } else {
                    i4 = i5;
                    i3 = 0;
                }
            } else {
                i3 = 0;
                i4 = 0;
            }
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.passwordFrameLayout.getLayoutParams();
            int i12 = i9 / 3;
            layoutParams4.height = ((this.isWalletScreen || (SharedConfig.passcodeType == 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData2 = this.sectionPasscodeData) != null && sectionPasscodeData2.getPasscodeType() == 0)) ? AndroidUtilities.m72dp(40) : 0) + i12;
            layoutParams4.width = size;
            layoutParams4.topMargin = i3;
            layoutParams4.leftMargin = i4;
            this.passwordFrameLayout.setTag(Integer.valueOf(i3));
            this.passwordFrameLayout.setLayoutParams(layoutParams4);
            layoutParams = (FrameLayout.LayoutParams) this.numbersFrameLayout.getLayoutParams();
            layoutParams.height = i12 * 2;
            layoutParams.leftMargin = i4;
            if (AndroidUtilities.isTablet()) {
                layoutParams.topMargin = (i9 - layoutParams.height) + i3 + AndroidUtilities.m72dp(20);
            } else {
                layoutParams.topMargin = (i9 - layoutParams.height) + i3 + ((this.isWalletScreen || (SharedConfig.passcodeType == 0 && this.sectionPasscodeData == null) || ((sectionPasscodeData = this.sectionPasscodeData) != null && sectionPasscodeData.getPasscodeType() == 0)) ? AndroidUtilities.m72dp(40) : 0);
            }
            layoutParams.width = size;
            this.numbersFrameLayout.setLayoutParams(layoutParams);
        }
        int m72dp2 = (layoutParams.width - (AndroidUtilities.m72dp(50) * 3)) / 4;
        int m72dp3 = (layoutParams.height - (AndroidUtilities.m72dp(50) * 4)) / 5;
        while (i8 < 12) {
            int i13 = 11;
            if (i8 == 0) {
                i13 = 10;
            } else if (i8 != 10) {
                i13 = i8 == 11 ? 9 : i8 - 1;
            }
            int i14 = i13 / 3;
            int i15 = i13 % 3;
            if (i8 < 10) {
                TextView textView = this.numberTextViews.get(i8);
                TextView textView2 = this.lettersTextViews.get(i8);
                layoutParams2 = (FrameLayout.LayoutParams) textView.getLayoutParams();
                FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) textView2.getLayoutParams();
                m72dp = ((AndroidUtilities.m72dp(50) + m72dp3) * i14) + m72dp3;
                layoutParams2.topMargin = m72dp;
                layoutParams5.topMargin = m72dp;
                int m72dp4 = ((AndroidUtilities.m72dp(50) + m72dp2) * i15) + m72dp2;
                layoutParams2.leftMargin = m72dp4;
                layoutParams5.leftMargin = m72dp4;
                layoutParams5.topMargin += AndroidUtilities.m72dp(40);
                textView.setLayoutParams(layoutParams2);
                textView2.setLayoutParams(layoutParams5);
            } else if (i8 == 10) {
                layoutParams2 = (FrameLayout.LayoutParams) this.eraseView.getLayoutParams();
                int m72dp5 = ((AndroidUtilities.m72dp(50) + m72dp3) * i14) + m72dp3 + AndroidUtilities.m72dp(8);
                layoutParams2.topMargin = m72dp5;
                layoutParams2.leftMargin = ((AndroidUtilities.m72dp(50) + m72dp2) * i15) + m72dp2;
                m72dp = m72dp5 - AndroidUtilities.m72dp(8);
                this.eraseView.setLayoutParams(layoutParams2);
            } else {
                layoutParams2 = (FrameLayout.LayoutParams) this.fingerprintView.getLayoutParams();
                int m72dp6 = ((AndroidUtilities.m72dp(50) + m72dp3) * i14) + m72dp3 + AndroidUtilities.m72dp(8);
                layoutParams2.topMargin = m72dp6;
                layoutParams2.leftMargin = ((AndroidUtilities.m72dp(50) + m72dp2) * i15) + m72dp2;
                m72dp = m72dp6 - AndroidUtilities.m72dp(8);
                this.fingerprintView.setLayoutParams(layoutParams2);
            }
            FrameLayout frameLayout = this.numberFrameLayouts.get(i8);
            FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
            layoutParams6.topMargin = m72dp - AndroidUtilities.m72dp(17);
            layoutParams6.leftMargin = layoutParams2.leftMargin - AndroidUtilities.m72dp(25);
            frameLayout.setLayoutParams(layoutParams6);
            i8++;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        LockedSectionsController.SectionPasscodeData sectionPasscodeData;
        View rootView = getRootView();
        int height = (rootView.getHeight() - AndroidUtilities.statusBarHeight) - AndroidUtilities.getViewInset(rootView);
        getWindowVisibleDisplayFrame(this.rect);
        Rect rect = this.rect;
        this.keyboardHeight = height - (rect.bottom - rect.top);
        if (((SharedConfig.passcodeType == 1 && this.sectionPasscodeData == null && !this.isWalletScreen) || ((sectionPasscodeData = this.sectionPasscodeData) != null && sectionPasscodeData.getPasscodeType() == 1)) && (AndroidUtilities.isTablet() || getContext().getResources().getConfiguration().orientation != 2)) {
            int intValue = this.passwordFrameLayout.getTag() != null ? ((Integer) this.passwordFrameLayout.getTag()).intValue() : 0;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.passwordFrameLayout.getLayoutParams();
            layoutParams.topMargin = ((intValue + layoutParams.height) - (this.keyboardHeight / 2)) - (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0);
            this.passwordFrameLayout.setLayoutParams(layoutParams);
        }
        super.onLayout(z, i, i2, i3, i4);
        this.passcodeTextView.getLocationInWindow(this.pos);
        if (!AndroidUtilities.isTablet() && getContext().getResources().getConfiguration().orientation == 2) {
            RLottieImageView rLottieImageView = this.imageView;
            int m72dp = this.pos[1] - AndroidUtilities.m72dp(100);
            this.imageY = m72dp;
            rLottieImageView.setTranslationY(m72dp);
            return;
        }
        RLottieImageView rLottieImageView2 = this.imageView;
        int m72dp2 = this.pos[1] - AndroidUtilities.m72dp(100);
        this.imageY = m72dp2;
        rLottieImageView2.setTranslationY(m72dp2);
    }
}
