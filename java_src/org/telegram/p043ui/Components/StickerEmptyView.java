package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
/* renamed from: org.telegram.ui.Components.StickerEmptyView */
/* loaded from: classes6.dex */
public class StickerEmptyView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private boolean animateLayoutChange;
    int colorKey1;
    int currentAccount;
    int keyboardSize;
    private int lastH;
    public LinearLayout linearLayout;
    boolean preventMoving;
    private RadialProgressView progressBar;
    private boolean progressShowing;
    public final View progressView;
    private final Theme.ResourcesProvider resourcesProvider;
    Runnable showProgressRunnable;
    private int stickerType;
    public BackupImageView stickerView;
    public final LinkSpanDrawable.LinksTextView subtitle;
    public final TextView title;

    public StickerEmptyView(Context context, View view, int i) {
        this(context, view, i, null);
    }

    public StickerEmptyView(Context context, View view, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        this.showProgressRunnable = new Runnable() { // from class: org.telegram.ui.Components.StickerEmptyView.1
            @Override // java.lang.Runnable
            public void run() {
                StickerEmptyView stickerEmptyView = StickerEmptyView.this;
                View view2 = stickerEmptyView.progressView;
                if (view2 == null) {
                    stickerEmptyView.progressBar.animate().alpha(1.0f).scaleY(1.0f).scaleX(1.0f).setDuration(150L).start();
                    return;
                }
                if (view2.getVisibility() != 0) {
                    StickerEmptyView.this.progressView.setVisibility(0);
                    StickerEmptyView.this.progressView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
                StickerEmptyView.this.progressView.animate().setListener(null).cancel();
                StickerEmptyView.this.progressView.animate().alpha(1.0f).setDuration(150L).start();
            }
        };
        this.colorKey1 = Theme.key_emptyListPlaceholder;
        this.resourcesProvider = resourcesProvider;
        this.progressView = view;
        this.stickerType = i;
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.StickerEmptyView.2
            @Override // android.view.View
            public void setVisibility(int i2) {
                if (getVisibility() == 8 && i2 == 0) {
                    StickerEmptyView.this.setSticker();
                    if (LiteMode.isEnabled(3)) {
                        StickerEmptyView.this.stickerView.getImageReceiver().startAnimation();
                    }
                } else if (i2 == 8) {
                    StickerEmptyView.this.stickerView.getImageReceiver().clearImage();
                }
                super.setVisibility(i2);
            }
        };
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(1);
        BackupImageView backupImageView = new BackupImageView(context);
        this.stickerView = backupImageView;
        backupImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.StickerEmptyView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                StickerEmptyView.this.lambda$new$0(view2);
            }
        });
        TextView textView = new TextView(context);
        this.title = textView;
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTag(Integer.valueOf(i2));
        textView.setTextColor(getThemedColor(i2));
        textView.setTextSize(1, 20.0f);
        textView.setGravity(17);
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        this.subtitle = linksTextView;
        int i3 = Theme.key_windowBackgroundWhiteGrayText;
        linksTextView.setTag(Integer.valueOf(i3));
        linksTextView.setTextColor(getThemedColor(i3));
        linksTextView.setLinkTextColor(getThemedColor(Theme.key_windowBackgroundWhiteLinkText));
        linksTextView.setTextSize(1, 14.0f);
        linksTextView.setGravity(17);
        this.linearLayout.addView(this.stickerView, LayoutHelper.createLinear(117, 117, 1));
        this.linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 1, 0, 12, 0, 0));
        this.linearLayout.addView(linksTextView, LayoutHelper.createLinear(-2, -2, 1, 0, 8, 0, 0));
        addView(this.linearLayout, LayoutHelper.createFrame(-2, -2, 17, 46, 0, 46, 30));
        if (view == null) {
            RadialProgressView radialProgressView = new RadialProgressView(context, resourcesProvider);
            this.progressBar = radialProgressView;
            radialProgressView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.progressBar.setScaleY(0.5f);
            this.progressBar.setScaleX(0.5f);
            addView(this.progressBar, LayoutHelper.createFrame(-2, -2, 17));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        this.stickerView.getImageReceiver().startAnimation();
    }

    public void createButtonLayout(CharSequence charSequence, final Runnable runnable) {
        ((LinearLayout.LayoutParams) this.subtitle.getLayoutParams()).topMargin = AndroidUtilities.m107dp(12);
        TextView textView = new TextView(getContext());
        textView.setText(charSequence);
        int i = Theme.key_featuredStickers_buttonText;
        textView.setTextColor(Theme.getColor(i, this.resourcesProvider));
        textView.setPadding(AndroidUtilities.m107dp(45), AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(45), AndroidUtilities.m107dp(12));
        textView.setGravity(17);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 15.0f);
        FrameLayout frameLayout = new FrameLayout(this, getContext()) { // from class: org.telegram.ui.Components.StickerEmptyView.3
            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
        };
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.StickerEmptyView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AndroidUtilities.runOnUIThread(runnable, 100L);
            }
        });
        frameLayout.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(8), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), ColorUtils.setAlphaComponent(Theme.getColor(i, this.resourcesProvider), 30)));
        ScaleStateListAnimator.apply(frameLayout, 0.05f, 1.5f);
        frameLayout.addView(textView);
        this.linearLayout.setClipChildren(false);
        this.linearLayout.addView(frameLayout, LayoutHelper.createLinear(-2, -2, 1, 0, 28, 0, 4));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        if ((this.animateLayoutChange || this.preventMoving) && (i5 = this.lastH) > 0 && i5 != getMeasuredHeight()) {
            float measuredHeight = (this.lastH - getMeasuredHeight()) / 2.0f;
            LinearLayout linearLayout = this.linearLayout;
            linearLayout.setTranslationY(linearLayout.getTranslationY() + measuredHeight);
            if (!this.preventMoving) {
                this.linearLayout.animate().translationY(BitmapDescriptorFactory.HUE_RED).setInterpolator(CubicBezierInterpolator.DEFAULT).setDuration(250L);
            }
            RadialProgressView radialProgressView = this.progressBar;
            if (radialProgressView != null) {
                radialProgressView.setTranslationY(radialProgressView.getTranslationY() + measuredHeight);
                if (!this.preventMoving) {
                    this.progressBar.animate().translationY(BitmapDescriptorFactory.HUE_RED).setInterpolator(CubicBezierInterpolator.DEFAULT).setDuration(250L);
                }
            }
        }
        this.lastH = getMeasuredHeight();
    }

    public void setColors(int i, int i2, int i3, int i4) {
        this.title.setTag(Integer.valueOf(i));
        this.title.setTextColor(getThemedColor(i));
        this.subtitle.setTag(Integer.valueOf(i2));
        this.subtitle.setTextColor(getThemedColor(i2));
        this.colorKey1 = i3;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (getVisibility() != i && i == 0) {
            if (this.progressShowing) {
                this.linearLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleY(0.8f).scaleX(0.8f).setDuration(150L).start();
                this.progressView.animate().setListener(null).cancel();
                this.progressView.setVisibility(0);
                this.progressView.setAlpha(1.0f);
            } else {
                this.linearLayout.animate().alpha(1.0f).scaleY(1.0f).scaleX(1.0f).setDuration(150L).start();
                View view = this.progressView;
                if (view != null) {
                    view.animate().setListener(null).cancel();
                    this.progressView.animate().setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.StickerEmptyView.4
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            StickerEmptyView.this.progressView.setVisibility(8);
                        }
                    }).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).start();
                } else {
                    this.progressBar.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleY(0.5f).scaleX(0.5f).setDuration(150L).start();
                }
                this.stickerView.getImageReceiver().startAnimation();
            }
        }
        super.setVisibility(i);
        if (getVisibility() == 0) {
            setSticker();
            return;
        }
        this.lastH = 0;
        this.linearLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.linearLayout.setScaleX(0.8f);
        this.linearLayout.setScaleY(0.8f);
        View view2 = this.progressView;
        if (view2 != null) {
            view2.animate().setListener(null).cancel();
            this.progressView.animate().setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.StickerEmptyView.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StickerEmptyView.this.progressView.setVisibility(8);
                }
            }).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).start();
        } else {
            this.progressBar.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.progressBar.setScaleX(0.5f);
            this.progressBar.setScaleY(0.5f);
        }
        this.stickerView.getImageReceiver().stopAnimation();
        this.stickerView.getImageReceiver().clearImage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getVisibility() == 0) {
            setSticker();
        }
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.diceStickersDidLoad);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.diceStickersDidLoad);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSticker() {
        TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet;
        TLRPC$Document tLRPC$Document;
        int i;
        TLRPC$Document tLRPC$Document2 = null;
        String str = null;
        tLRPC$Document2 = null;
        tLRPC$Document2 = null;
        if (this.stickerType == 16) {
            tLRPC$Document = MediaDataController.getInstance(this.currentAccount).getEmojiAnimatedSticker("👍");
            tLRPC$TL_messages_stickerSet = null;
        } else {
            TLRPC$TL_messages_stickerSet stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME);
            if (stickerSetByName == null) {
                stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME);
            }
            if (stickerSetByName != null && (i = this.stickerType) >= 0 && i < stickerSetByName.documents.size()) {
                tLRPC$Document2 = stickerSetByName.documents.get(this.stickerType);
            }
            tLRPC$TL_messages_stickerSet = stickerSetByName;
            tLRPC$Document = tLRPC$Document2;
            str = "130_130";
        }
        if (!LiteMode.isEnabled(3)) {
            str = str + "_firstframe";
        }
        String str2 = str;
        if (tLRPC$Document != null) {
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tLRPC$Document.thumbs, this.colorKey1, 0.2f);
            if (svgThumb != null) {
                svgThumb.overrideWidthAndHeight(512, 512);
            }
            this.stickerView.setImage(ImageLocation.getForDocument(tLRPC$Document), str2, "tgs", svgThumb, tLRPC$TL_messages_stickerSet);
            int i2 = this.stickerType;
            if (i2 == 9 || i2 == 0) {
                this.stickerView.getImageReceiver().setAutoRepeat(1);
                return;
            } else {
                this.stickerView.getImageReceiver().setAutoRepeat(2);
                return;
            }
        }
        MediaDataController.getInstance(this.currentAccount).loadStickersByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME, false, tLRPC$TL_messages_stickerSet == null);
        this.stickerView.getImageReceiver().clearImage();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.diceStickersDidLoad && AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME.equals((String) objArr[0]) && getVisibility() == 0) {
            setSticker();
        }
    }

    public void setKeyboardHeight(int i, boolean z) {
        if (this.keyboardSize != i) {
            if (getVisibility() != 0) {
                z = false;
            }
            this.keyboardSize = i;
            float m107dp = (-(i >> 1)) + (i > 0 ? AndroidUtilities.m107dp(20) : 0);
            if (z) {
                ViewPropertyAnimator translationY = this.linearLayout.animate().translationY(m107dp);
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
                translationY.setInterpolator(cubicBezierInterpolator).setDuration(250L);
                RadialProgressView radialProgressView = this.progressBar;
                if (radialProgressView != null) {
                    radialProgressView.animate().translationY(m107dp).setInterpolator(cubicBezierInterpolator).setDuration(250L);
                    return;
                }
                return;
            }
            this.linearLayout.setTranslationY(m107dp);
            RadialProgressView radialProgressView2 = this.progressBar;
            if (radialProgressView2 != null) {
                radialProgressView2.setTranslationY(m107dp);
            }
        }
    }

    public void showProgress(boolean z) {
        showProgress(z, true);
    }

    public void showProgress(boolean z, boolean z2) {
        if (this.progressShowing != z) {
            this.progressShowing = z;
            if (getVisibility() != 0) {
                return;
            }
            if (z2) {
                if (z) {
                    this.linearLayout.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleY(0.8f).scaleX(0.8f).setDuration(150L).start();
                    this.showProgressRunnable.run();
                    return;
                }
                this.linearLayout.animate().alpha(1.0f).scaleY(1.0f).scaleX(1.0f).setDuration(150L).start();
                View view = this.progressView;
                if (view != null) {
                    view.animate().setListener(null).cancel();
                    this.progressView.animate().setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.StickerEmptyView.6
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            StickerEmptyView.this.progressView.setVisibility(8);
                        }
                    }).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).start();
                } else {
                    this.progressBar.animate().alpha(BitmapDescriptorFactory.HUE_RED).scaleY(0.5f).scaleX(0.5f).setDuration(150L).start();
                }
                this.stickerView.getImageReceiver().startAnimation();
            } else if (z) {
                this.linearLayout.animate().cancel();
                this.linearLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.linearLayout.setScaleX(0.8f);
                this.linearLayout.setScaleY(0.8f);
                View view2 = this.progressView;
                if (view2 != null) {
                    view2.animate().setListener(null).cancel();
                    this.progressView.setAlpha(1.0f);
                    this.progressView.setVisibility(0);
                    return;
                }
                this.progressBar.setAlpha(1.0f);
                this.progressBar.setScaleX(1.0f);
                this.progressBar.setScaleY(1.0f);
            } else {
                this.linearLayout.animate().cancel();
                this.linearLayout.setAlpha(1.0f);
                this.linearLayout.setScaleX(1.0f);
                this.linearLayout.setScaleY(1.0f);
                View view3 = this.progressView;
                if (view3 != null) {
                    view3.animate().setListener(null).cancel();
                    this.progressView.setVisibility(8);
                    return;
                }
                this.progressBar.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.progressBar.setScaleX(0.5f);
                this.progressBar.setScaleY(0.5f);
            }
        }
    }

    public void setAnimateLayoutChange(boolean z) {
        this.animateLayoutChange = z;
    }

    public void setPreventMoving(boolean z) {
        this.preventMoving = z;
        if (z) {
            return;
        }
        this.linearLayout.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        RadialProgressView radialProgressView = this.progressBar;
        if (radialProgressView != null) {
            radialProgressView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setStickerType(int i) {
        if (this.stickerType != i) {
            this.stickerType = i;
            setSticker();
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (getWhitespaceCount(charSequence) > 4 && charSequence.length() > 20) {
            int length = charSequence.length() >> 1;
            int i = -1;
            int i2 = 0;
            for (int i3 = 0; i3 < charSequence.length(); i3++) {
                if (Character.isWhitespace(charSequence.charAt(i3))) {
                    int abs = Math.abs(length - i3);
                    if (i == -1 || abs < i2) {
                        i = i3;
                        i2 = abs;
                    }
                }
            }
            if (i > 0) {
                charSequence = ((Object) charSequence.subSequence(0, i)) + "\n" + ((Object) charSequence.subSequence(i + 1, charSequence.length()));
            }
        }
        this.subtitle.setText(charSequence);
    }

    private int getWhitespaceCount(CharSequence charSequence) {
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (Character.isWhitespace(charSequence.charAt(i2))) {
                i++;
            }
        }
        return i;
    }
}
