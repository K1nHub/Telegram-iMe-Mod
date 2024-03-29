package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BackDrawable;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.AvatarConstructorFragment;
import org.telegram.p043ui.Components.ColorPicker;
import org.telegram.p043ui.Components.ImageUpdater;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.SelectAnimatedEmojiDialog;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$TL_videoSizeEmojiMarkup;
import org.telegram.tgnet.TLRPC$TL_videoSizeStickerMarkup;
import org.telegram.tgnet.TLRPC$VideoSize;
/* renamed from: org.telegram.ui.Components.AvatarConstructorFragment */
/* loaded from: classes6.dex */
public class AvatarConstructorFragment extends BaseFragment {
    public static final int[][] defaultColors = {new int[]{-11694593, -13910017, -14622003, -15801871}, new int[]{-10569989, -14692629, -12191817, -14683687}, new int[]{-16133536, -10560448, -4070106, -8331477}, new int[]{-693938, -690388, -11246, -22717}, new int[]{-636796, -1090751, -612560, -35006}, new int[]{-439392, -304000, -19910, -98718}, new int[]{-8160001, -5217281, -36183, -1938945}};
    CanvasButton avatarClickableArea;
    final ImageUpdater.AvatarFor avatarFor;
    private BackgroundSelectView backgroundSelectView;
    private BottomSheet bottomSheet;
    private FrameLayout button;
    private TextView chooseBackgroundHint;
    private TextView chooseEmojiHint;
    int collapsedHeight;
    BackgroundGradient colorPickerGradient;
    boolean colorPickerInAnimatoin;
    View colorPickerPreviewView;
    Delegate delegate;
    boolean drawForBlur;
    ValueAnimator expandAnimator;
    boolean expandWithKeyboard;
    int expandedHeight;
    boolean forGroup;
    private int gradientBackgroundItemWidth;
    ImageUpdater imageUpdater;
    boolean isLandscapeMode;
    ValueAnimator keyboardVisibilityAnimator;
    boolean keyboardVisible;
    float keyboardVisibleProgress;
    ValueAnimator lightProgressAnimator;
    LinearLayout linearLayout;
    protected C3704ActionBar overlayActionBar;
    PreviewView previewView;
    float progressToExpand;
    private SelectAnimatedEmojiDialog selectAnimatedEmojiDialog;
    private ActionBarMenuItem setPhotoItem;
    boolean wasChanged;
    Paint actionBarPaint = new Paint();
    public boolean finishOnDone = true;
    boolean isLightInternal = false;
    float progressToLightStatusBar = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: org.telegram.ui.Components.AvatarConstructorFragment$Delegate */
    /* loaded from: classes6.dex */
    public interface Delegate {
        void onDone(BackgroundGradient backgroundGradient, long j, TLRPC$Document tLRPC$Document, PreviewView previewView);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return false;
    }

    public AvatarConstructorFragment(ImageUpdater imageUpdater, ImageUpdater.AvatarFor avatarFor) {
        this.imageUpdater = imageUpdater;
        this.avatarFor = avatarFor;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(Context context) {
        String string;
        this.hasOwnBackground = true;
        this.actionBar.setBackgroundDrawable(null);
        this.actionBar.setCastShadows(false);
        this.actionBar.setAddToContainer(false);
        this.actionBar.setOccupyStatusBar(true);
        C3704ActionBar c3704ActionBar = this.actionBar;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        c3704ActionBar.setTitleColor(Theme.getColor(i));
        this.actionBar.setItemsColor(Theme.getColor(i), false);
        this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_listSelector), false);
        this.actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setAllowOverlayTitle(false);
        this.actionBar.setTitle(LocaleController.getString("PhotoEditor", C3632R.string.PhotoEditor));
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.AvatarConstructorFragment.1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    AvatarConstructorFragment.this.discardEditor();
                }
            }
        });
        this.actionBar.getTitleTextView().setAlpha(BitmapDescriptorFactory.HUE_RED);
        C3704ActionBar c3704ActionBar2 = new C3704ActionBar(getContext());
        this.overlayActionBar = c3704ActionBar2;
        c3704ActionBar2.setCastShadows(false);
        this.overlayActionBar.setAddToContainer(false);
        this.overlayActionBar.setOccupyStatusBar(true);
        this.overlayActionBar.setClipChildren(false);
        int alphaComponent = ColorUtils.setAlphaComponent(-1, 60);
        this.overlayActionBar.setItemsColor(-1, false);
        this.overlayActionBar.setBackButtonDrawable(new BackDrawable(false));
        this.overlayActionBar.setAllowOverlayTitle(false);
        this.overlayActionBar.setItemsBackgroundColor(alphaComponent, false);
        ActionBarMenu createMenu = this.overlayActionBar.createMenu();
        createMenu.setClipChildren(false);
        ImageUpdater.AvatarFor avatarFor = this.avatarFor;
        if (avatarFor != null && avatarFor.type == 2) {
            string = LocaleController.getString("SuggestPhoto", C3632R.string.SuggestPhoto);
        } else {
            string = LocaleController.getString("SetPhoto", C3632R.string.SetPhoto);
        }
        ActionBarMenuItem addItem = createMenu.addItem(1, string);
        this.setPhotoItem = addItem;
        addItem.setBackground(Theme.createSelectorDrawable(alphaComponent, 3));
        this.overlayActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.AvatarConstructorFragment.2
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    AvatarConstructorFragment.this.discardEditor();
                }
                if (i2 == 1) {
                    AvatarConstructorFragment.this.onDonePressed();
                }
            }
        });
        this.linearLayout = new LinearLayout(getContext()) { // from class: org.telegram.ui.Components.AvatarConstructorFragment.3
            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                if (view == AvatarConstructorFragment.this.previewView) {
                    return true;
                }
                return super.drawChild(canvas, view, j);
            }
        };
        final ContainerLayout containerLayout = new ContainerLayout(context) { // from class: org.telegram.ui.Components.AvatarConstructorFragment.4
            boolean isScrolling;
            boolean maybeScroll;
            float scrollFromY;
            float startFromProgressToExpand;

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                measureKeyboardHeight();
                boolean z = View.MeasureSpec.getSize(i2) > View.MeasureSpec.getSize(i3) + this.keyboardHeight;
                AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
                if (z != avatarConstructorFragment.isLandscapeMode) {
                    avatarConstructorFragment.isLandscapeMode = z;
                    AndroidUtilities.removeFromParent(avatarConstructorFragment.previewView);
                    AndroidUtilities.requestAdjustNothing(AvatarConstructorFragment.this.getParentActivity(), AvatarConstructorFragment.this.getClassGuid());
                    AvatarConstructorFragment avatarConstructorFragment2 = AvatarConstructorFragment.this;
                    if (avatarConstructorFragment2.isLandscapeMode) {
                        avatarConstructorFragment2.setProgressToExpand(BitmapDescriptorFactory.HUE_RED, false);
                        AvatarConstructorFragment.this.previewView.setExpanded(false);
                        addView(AvatarConstructorFragment.this.previewView, 0, LayoutHelper.createFrame(-1, -1));
                    } else {
                        avatarConstructorFragment2.linearLayout.addView(avatarConstructorFragment2.previewView, 0, LayoutHelper.createFrame(-1, -2));
                    }
                    AndroidUtilities.requestAdjustResize(AvatarConstructorFragment.this.getParentActivity(), AvatarConstructorFragment.this.getClassGuid());
                }
                AvatarConstructorFragment avatarConstructorFragment3 = AvatarConstructorFragment.this;
                if (avatarConstructorFragment3.isLandscapeMode) {
                    int size = (int) (View.MeasureSpec.getSize(i2) * 0.55f);
                    ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.linearLayout.getLayoutParams()).bottomMargin = 0;
                    ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.linearLayout.getLayoutParams()).leftMargin = (int) (View.MeasureSpec.getSize(i2) * 0.45f);
                    ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.previewView.getLayoutParams()).rightMargin = size;
                    ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.button.getLayoutParams()).rightMargin = size + AndroidUtilities.m107dp(16);
                    ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.chooseBackgroundHint.getLayoutParams()).topMargin = 0;
                    ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.chooseEmojiHint.getLayoutParams()).topMargin = AndroidUtilities.m107dp(10);
                } else {
                    ((ViewGroup.MarginLayoutParams) avatarConstructorFragment3.linearLayout.getLayoutParams()).bottomMargin = AndroidUtilities.m107dp(64);
                    ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.linearLayout.getLayoutParams()).leftMargin = 0;
                    ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.previewView.getLayoutParams()).rightMargin = 0;
                    ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.button.getLayoutParams()).rightMargin = AndroidUtilities.m107dp(16);
                    ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.chooseBackgroundHint.getLayoutParams()).topMargin = AndroidUtilities.m107dp(10);
                    ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.chooseEmojiHint.getLayoutParams()).topMargin = AndroidUtilities.m107dp(18);
                }
                AvatarConstructorFragment avatarConstructorFragment4 = AvatarConstructorFragment.this;
                boolean z2 = avatarConstructorFragment4.keyboardVisible;
                avatarConstructorFragment4.keyboardVisible = this.keyboardHeight >= AndroidUtilities.m107dp(20);
                if (z2 != AvatarConstructorFragment.this.keyboardVisible) {
                    super.onMeasure(i2, i3);
                    AvatarConstructorFragment avatarConstructorFragment5 = AvatarConstructorFragment.this;
                    int measuredHeight = avatarConstructorFragment5.keyboardVisible ? (-avatarConstructorFragment5.selectAnimatedEmojiDialog.getTop()) + ((BaseFragment) AvatarConstructorFragment.this).actionBar.getMeasuredHeight() + AndroidUtilities.m107dp(8) : 0;
                    LinearLayout linearLayout = AvatarConstructorFragment.this.linearLayout;
                    linearLayout.setTranslationY((linearLayout.getTranslationY() + ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.linearLayout.getLayoutParams()).topMargin) - measuredHeight);
                    ((ViewGroup.MarginLayoutParams) AvatarConstructorFragment.this.linearLayout.getLayoutParams()).topMargin = measuredHeight;
                    AvatarConstructorFragment avatarConstructorFragment6 = AvatarConstructorFragment.this;
                    avatarConstructorFragment6.createKeyboardVisibleAnimator(avatarConstructorFragment6.keyboardVisible);
                }
                super.onMeasure(i2, i3);
                AvatarConstructorFragment avatarConstructorFragment7 = AvatarConstructorFragment.this;
                avatarConstructorFragment7.collapsedHeight = avatarConstructorFragment7.previewView.getMeasuredHeight();
                AvatarConstructorFragment avatarConstructorFragment8 = AvatarConstructorFragment.this;
                avatarConstructorFragment8.expandedHeight = avatarConstructorFragment8.previewView.getMeasuredWidth();
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
                if (view == avatarConstructorFragment.overlayActionBar) {
                    return true;
                }
                if (view == ((BaseFragment) avatarConstructorFragment).actionBar) {
                    AvatarConstructorFragment avatarConstructorFragment2 = AvatarConstructorFragment.this;
                    if (avatarConstructorFragment2.keyboardVisibleProgress > BitmapDescriptorFactory.HUE_RED) {
                        avatarConstructorFragment2.actionBarPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                        AvatarConstructorFragment avatarConstructorFragment3 = AvatarConstructorFragment.this;
                        avatarConstructorFragment3.actionBarPaint.setAlpha((int) (avatarConstructorFragment3.keyboardVisibleProgress * 255.0f));
                        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, view.getMeasuredWidth(), view.getMeasuredHeight(), AvatarConstructorFragment.this.actionBarPaint);
                        AvatarConstructorFragment.this.getParentLayout().drawHeaderShadow(canvas, (int) (AvatarConstructorFragment.this.keyboardVisibleProgress * 255.0f), view.getMeasuredHeight());
                    }
                }
                return super.drawChild(canvas, view, j);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                int save = canvas.save();
                super.dispatchDraw(canvas);
                AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
                if (!avatarConstructorFragment.isLandscapeMode) {
                    if (!avatarConstructorFragment.drawForBlur) {
                        canvas.save();
                        float x = AvatarConstructorFragment.this.linearLayout.getX() + AvatarConstructorFragment.this.previewView.getX();
                        float y = AvatarConstructorFragment.this.linearLayout.getY() + AvatarConstructorFragment.this.previewView.getY();
                        AvatarConstructorFragment avatarConstructorFragment2 = AvatarConstructorFragment.this;
                        int i2 = avatarConstructorFragment2.expandedHeight - avatarConstructorFragment2.collapsedHeight;
                        int i3 = AndroidUtilities.statusBarHeight;
                        int currentActionBarHeight = C3704ActionBar.getCurrentActionBarHeight();
                        AvatarConstructorFragment avatarConstructorFragment3 = AvatarConstructorFragment.this;
                        float lerp = AndroidUtilities.lerp(y, i3 + ((currentActionBarHeight - avatarConstructorFragment3.collapsedHeight) >> 1), avatarConstructorFragment3.keyboardVisibleProgress);
                        canvas.translate(x, lerp);
                        AvatarConstructorFragment.this.previewView.draw(canvas);
                        RectF rectF = AndroidUtilities.rectTmp;
                        float f = i2 / 2.0f;
                        AvatarConstructorFragment avatarConstructorFragment4 = AvatarConstructorFragment.this;
                        rectF.set(x, lerp - (avatarConstructorFragment4.progressToExpand * f), avatarConstructorFragment4.previewView.getMeasuredWidth() + x, AvatarConstructorFragment.this.previewView.getMeasuredHeight() + lerp + (f * AvatarConstructorFragment.this.progressToExpand));
                        float f2 = x + AvatarConstructorFragment.this.previewView.f1816cx;
                        float f3 = lerp + AvatarConstructorFragment.this.previewView.f1817cy;
                        AvatarConstructorFragment avatarConstructorFragment5 = AvatarConstructorFragment.this;
                        avatarConstructorFragment5.avatarClickableArea.setRect((int) (f2 - avatarConstructorFragment5.previewView.size), (int) (f3 - AvatarConstructorFragment.this.previewView.size), (int) (f2 + AvatarConstructorFragment.this.previewView.size), (int) (f3 + AvatarConstructorFragment.this.previewView.size));
                        canvas.restore();
                    }
                    canvas.restoreToCount(save);
                    float alpha = AvatarConstructorFragment.this.previewView.expandProgress.get() * (1.0f - (AvatarConstructorFragment.this.colorPickerPreviewView.getVisibility() == 0 ? AvatarConstructorFragment.this.colorPickerPreviewView.getAlpha() : 0.0f));
                    if (alpha != BitmapDescriptorFactory.HUE_RED) {
                        AvatarConstructorFragment.this.overlayActionBar.setVisibility(0);
                        int save2 = canvas.save();
                        canvas.translate(AvatarConstructorFragment.this.overlayActionBar.getX(), AvatarConstructorFragment.this.overlayActionBar.getY());
                        if (alpha != 1.0f) {
                            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AvatarConstructorFragment.this.overlayActionBar.getMeasuredWidth(), AvatarConstructorFragment.this.overlayActionBar.getMeasuredHeight(), (int) (alpha * 255.0f), 31);
                        }
                        AvatarConstructorFragment.this.overlayActionBar.draw(canvas);
                        canvas.restoreToCount(save2);
                    } else {
                        AvatarConstructorFragment.this.overlayActionBar.setVisibility(8);
                    }
                }
                if (AvatarConstructorFragment.this.colorPickerInAnimatoin) {
                    invalidate();
                }
            }

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (AvatarConstructorFragment.this.keyboardVisibleProgress == BitmapDescriptorFactory.HUE_RED) {
                    return false;
                }
                return onTouchEvent(motionEvent);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                boolean z;
                if (AvatarConstructorFragment.this.avatarClickableArea.checkTouchEvent(motionEvent)) {
                    return true;
                }
                if (!AvatarConstructorFragment.this.isLandscapeMode) {
                    if (motionEvent.getAction() == 0) {
                        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = AvatarConstructorFragment.this.selectAnimatedEmojiDialog;
                        Rect rect = AndroidUtilities.rectTmp2;
                        selectAnimatedEmojiDialog.getHitRect(rect);
                        rect.offset(0, (int) AvatarConstructorFragment.this.linearLayout.getY());
                        if (AvatarConstructorFragment.this.keyboardVisibleProgress == BitmapDescriptorFactory.HUE_RED && !rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                            this.maybeScroll = true;
                            motionEvent.getX();
                            this.scrollFromY = motionEvent.getY();
                        }
                    } else if (motionEvent.getAction() == 2 && ((z = this.maybeScroll) || this.isScrolling)) {
                        if (!z) {
                            AvatarConstructorFragment.this.setProgressToExpand(Utilities.clamp(this.startFromProgressToExpand + ((-(this.scrollFromY - motionEvent.getY())) / AvatarConstructorFragment.this.expandedHeight), 1.0f, (float) BitmapDescriptorFactory.HUE_RED), true);
                        } else if (Math.abs(this.scrollFromY - motionEvent.getY()) > AndroidUtilities.touchSlop) {
                            this.maybeScroll = false;
                            this.isScrolling = true;
                            this.startFromProgressToExpand = AvatarConstructorFragment.this.progressToExpand;
                            motionEvent.getX();
                            this.scrollFromY = motionEvent.getY();
                        }
                    } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                        if (this.isScrolling) {
                            AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
                            avatarConstructorFragment.setExpanded(avatarConstructorFragment.progressToExpand > 0.5f, false, false);
                        }
                        this.maybeScroll = false;
                        this.isScrolling = false;
                    }
                }
                return this.isScrolling || super.onTouchEvent(motionEvent) || this.maybeScroll;
            }
        };
        containerLayout.setFitsSystemWindows(true);
        containerLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.linearLayout.setClipChildren(false);
        this.linearLayout.setClipToPadding(false);
        this.linearLayout.setPadding(0, AndroidUtilities.statusBarHeight, 0, 0);
        this.linearLayout.setOrientation(1);
        LinearLayout linearLayout = this.linearLayout;
        PreviewView previewView = new PreviewView(this, getContext()) { // from class: org.telegram.ui.Components.AvatarConstructorFragment.5
            @Override // org.telegram.p043ui.Components.AvatarConstructorFragment.PreviewView, android.view.View
            public void invalidate() {
                super.invalidate();
                containerLayout.invalidate();
            }
        };
        this.previewView = previewView;
        linearLayout.addView(previewView);
        TextView textView = new TextView(getContext());
        this.chooseBackgroundHint = textView;
        textView.setText(LocaleController.getString("ChooseBackground", C3632R.string.ChooseBackground));
        TextView textView2 = this.chooseBackgroundHint;
        int i2 = Theme.key_windowBackgroundWhiteGrayText;
        textView2.setTextColor(Theme.getColor(i2));
        this.chooseBackgroundHint.setTextSize(1, 14.0f);
        this.chooseBackgroundHint.setGravity(17);
        this.linearLayout.addView(this.chooseBackgroundHint, LayoutHelper.createLinear(-1, -2, 0, 21, 10, 21, 10));
        FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.Components.AvatarConstructorFragment.6
            private Path path = new Path();
            private Paint paint = new Paint(1);

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Theme.applyDefaultShadow(this.paint);
                this.paint.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, AvatarConstructorFragment.this.getResourceProvider()));
                this.paint.setAlpha((int) (getAlpha() * 255.0f));
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                this.path.rewind();
                this.path.addRoundRect(rectF, AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(12), Path.Direction.CW);
                canvas.drawPath(this.path, this.paint);
                super.dispatchDraw(canvas);
            }
        };
        BackgroundSelectView backgroundSelectView = new BackgroundSelectView(getContext());
        this.backgroundSelectView = backgroundSelectView;
        frameLayout.addView(backgroundSelectView);
        this.linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, 48, 0, 12, 0, 12, 0));
        TextView textView3 = new TextView(getContext());
        this.chooseEmojiHint = textView3;
        textView3.setText(LocaleController.getString("ChooseEmojiOrSticker", C3632R.string.ChooseEmojiOrSticker));
        this.chooseEmojiHint.setTextColor(Theme.getColor(i2));
        this.chooseEmojiHint.setTextSize(1, 14.0f);
        this.chooseEmojiHint.setGravity(17);
        this.linearLayout.addView(this.chooseEmojiHint, LayoutHelper.createLinear(-1, -2, 0, 21, 18, 21, 10));
        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = new SelectAnimatedEmojiDialog(this, getContext(), false, null, 4, true, null, 16, Theme.isCurrentThemeDark() ? -1 : getThemedColor(Theme.key_windowBackgroundWhiteBlueIcon)) { // from class: org.telegram.ui.Components.AvatarConstructorFragment.7
            private boolean firstLayout = true;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                super.onLayout(z, i3, i4, i5, i6);
                if (this.firstLayout) {
                    this.firstLayout = false;
                    AvatarConstructorFragment.this.selectAnimatedEmojiDialog.onShow(null);
                }
            }

            @Override // org.telegram.p043ui.SelectAnimatedEmojiDialog
            protected void onEmojiSelected(View view, Long l, TLRPC$Document tLRPC$Document, Integer num) {
                AvatarConstructorFragment.this.setPreview(l == null ? 0L : l.longValue(), tLRPC$Document);
            }
        };
        this.selectAnimatedEmojiDialog = selectAnimatedEmojiDialog;
        selectAnimatedEmojiDialog.forUser = !this.forGroup;
        selectAnimatedEmojiDialog.setAnimationsEnabled(this.fragmentBeginToShow);
        this.selectAnimatedEmojiDialog.setClipChildren(false);
        this.linearLayout.addView(this.selectAnimatedEmojiDialog, LayoutHelper.createLinear(-1, -1, 0, 12, 0, 12, 12));
        this.linearLayout.setClipChildren(false);
        containerLayout.addView(this.linearLayout, LayoutHelper.createFrame(-1, -1, 0, 0, 0, 0, 64));
        View view = new View(getContext());
        this.colorPickerPreviewView = view;
        view.setVisibility(8);
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        this.button = frameLayout2;
        frameLayout2.setBackground(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, 8.0f));
        TextView textView4 = new TextView(getContext());
        textView4.setTextSize(1, 14.0f);
        int i3 = this.imageUpdater.setForType;
        if (i3 == 1) {
            textView4.setText(LocaleController.getString("SetChannelPhoto", C3632R.string.SetChannelPhoto));
        } else if (i3 == 2) {
            textView4.setText(LocaleController.getString("SetGroupPhoto", C3632R.string.SetGroupPhoto));
        } else {
            ImageUpdater.AvatarFor avatarFor2 = this.avatarFor;
            if (avatarFor2 != null && avatarFor2.type == 2) {
                textView4.setText(LocaleController.getString("SuggestPhoto", C3632R.string.SuggestPhoto));
            } else {
                textView4.setText(LocaleController.getString("SetProfilePhotoAvatarConstructor", C3632R.string.SetProfilePhotoAvatarConstructor));
            }
        }
        textView4.setGravity(17);
        textView4.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView4.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        this.button.addView(textView4, LayoutHelper.createFrame(-2, -2, 17));
        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AvatarConstructorFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AvatarConstructorFragment.this.lambda$createView$0(view2);
            }
        });
        containerLayout.addView(this.button, LayoutHelper.createFrame(-1, 48, 80, 16, 16, 16, 16));
        containerLayout.addView(this.actionBar);
        containerLayout.addView(this.overlayActionBar);
        containerLayout.addView(this.colorPickerPreviewView, LayoutHelper.createFrame(-1, -1));
        CanvasButton canvasButton = new CanvasButton(containerLayout);
        this.avatarClickableArea = canvasButton;
        canvasButton.setDelegate(new Runnable() { // from class: org.telegram.ui.Components.AvatarConstructorFragment$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                AvatarConstructorFragment.this.lambda$createView$1();
            }
        });
        this.fragmentView = containerLayout;
        return containerLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        onDonePressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPreview(long j, TLRPC$Document tLRPC$Document) {
        PreviewView previewView = this.previewView;
        previewView.documentId = j;
        previewView.document = tLRPC$Document;
        if (j == 0) {
            previewView.backupImageView.setAnimatedEmojiDrawable(null);
            this.previewView.backupImageView.getImageReceiver().setImage(ImageLocation.getForDocument(tLRPC$Document), "100_100", null, null, DocumentObject.getSvgThumb(tLRPC$Document, Theme.key_windowBackgroundWhiteGrayIcon, 0.2f), 0L, "tgs", tLRPC$Document, 0);
        } else {
            previewView.backupImageView.setAnimatedEmojiDrawable(new AnimatedEmojiDrawable(14, this.currentAccount, j));
            this.previewView.backupImageView.getImageReceiver().clearImage();
        }
        if (this.previewView.getImageReceiver() != null && this.previewView.getImageReceiver().getAnimation() != null) {
            this.previewView.getImageReceiver().getAnimation().seekTo(0L, true);
        }
        if (this.previewView.getImageReceiver() != null && this.previewView.getImageReceiver().getLottieAnimation() != null) {
            this.previewView.getImageReceiver().getLottieAnimation().setCurrentFrame(0, false, true);
        }
        this.wasChanged = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void discardEditor() {
        if (getParentActivity() == null) {
            return;
        }
        if (this.wasChanged) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setMessage(LocaleController.getString("PhotoEditorDiscardAlert", C3632R.string.PhotoEditorDiscardAlert));
            builder.setTitle(LocaleController.getString("DiscardChanges", C3632R.string.DiscardChanges));
            builder.setPositiveButton(LocaleController.getString("PassportDiscard", C3632R.string.PassportDiscard), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.AvatarConstructorFragment$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    AvatarConstructorFragment.this.lambda$discardEditor$2(dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
            AlertDialog create = builder.create();
            showDialog(create);
            create.redPositive();
            return;
        }
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$discardEditor$2(DialogInterface dialogInterface, int i) {
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createKeyboardVisibleAnimator(final boolean z) {
        if (this.isLandscapeMode) {
            return;
        }
        float[] fArr = new float[2];
        fArr[0] = this.keyboardVisibleProgress;
        final float f = BitmapDescriptorFactory.HUE_RED;
        fArr[1] = z ? 1.0f : 0.0f;
        this.keyboardVisibilityAnimator = ValueAnimator.ofFloat(fArr);
        final float f2 = ((this.expandedHeight - this.collapsedHeight) - AndroidUtilities.statusBarHeight) * this.progressToExpand;
        if (z) {
            this.previewView.setExpanded(false);
            f2 = this.linearLayout.getTranslationY();
        } else {
            f = this.linearLayout.getTranslationY();
        }
        if (this.expandWithKeyboard && !z) {
            this.previewView.setExpanded(true);
        } else {
            this.expandWithKeyboard = false;
        }
        this.keyboardVisibilityAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AvatarConstructorFragment.8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AvatarConstructorFragment.this.keyboardVisibleProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float lerp = AndroidUtilities.lerp(f2, f, AvatarConstructorFragment.this.keyboardVisibleProgress);
                ((BaseFragment) AvatarConstructorFragment.this).actionBar.getTitleTextView().setAlpha(AvatarConstructorFragment.this.keyboardVisibleProgress);
                AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
                if (avatarConstructorFragment.expandWithKeyboard && !z) {
                    avatarConstructorFragment.setProgressToExpand(1.0f - avatarConstructorFragment.keyboardVisibleProgress, false);
                }
                AvatarConstructorFragment.this.linearLayout.setTranslationY(lerp);
                AvatarConstructorFragment.this.button.setTranslationY(lerp);
                AvatarConstructorFragment.this.fragmentView.invalidate();
                ((BaseFragment) AvatarConstructorFragment.this).actionBar.invalidate();
            }
        });
        this.keyboardVisibilityAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AvatarConstructorFragment.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
                avatarConstructorFragment.setProgressToExpand(avatarConstructorFragment.expandWithKeyboard ? 1.0f : BitmapDescriptorFactory.HUE_RED, false);
                AvatarConstructorFragment.this.expandWithKeyboard = false;
            }
        });
        this.keyboardVisibilityAnimator.setDuration(250L);
        this.keyboardVisibilityAnimator.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
        this.keyboardVisibilityAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDonePressed() {
        if (this.previewView.getImageReceiver() == null || !this.previewView.getImageReceiver().hasImageLoaded()) {
            return;
        }
        Delegate delegate = this.delegate;
        if (delegate != null) {
            PreviewView previewView = this.previewView;
            delegate.onDone(previewView.backgroundGradient, previewView.documentId, previewView.document, previewView);
        }
        if (this.finishOnDone) {
            finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExpanded(final boolean z, final boolean z2, boolean z3) {
        if (this.isLandscapeMode) {
            return;
        }
        cancelExpandAnimator();
        float[] fArr = new float[2];
        fArr[0] = this.progressToExpand;
        fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        this.expandAnimator = ValueAnimator.ofFloat(fArr);
        if (z2) {
            this.previewView.overrideExpandProgress = this.progressToExpand;
            if (Build.VERSION.SDK_INT >= 23) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
            }
        }
        this.expandAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AvatarConstructorFragment$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AvatarConstructorFragment.this.lambda$setExpanded$3(z2, valueAnimator);
            }
        });
        this.expandAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AvatarConstructorFragment.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
                avatarConstructorFragment.expandAnimator = null;
                avatarConstructorFragment.setProgressToExpand(z ? 1.0f : BitmapDescriptorFactory.HUE_RED, false);
                if (z2) {
                    PreviewView previewView = AvatarConstructorFragment.this.previewView;
                    previewView.overrideExpandProgress = -1.0f;
                    previewView.setExpanded(z);
                }
            }
        });
        if (z3) {
            this.expandAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.expandAnimator.setDuration(350L);
            this.expandAnimator.setStartDelay(150L);
        } else {
            this.expandAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.expandAnimator.setDuration(250L);
        }
        this.expandAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setExpanded$3(boolean z, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        setProgressToExpand(floatValue, false);
        if (z) {
            PreviewView previewView = this.previewView;
            previewView.overrideExpandProgress = floatValue;
            previewView.invalidate();
        }
    }

    void cancelExpandAnimator() {
        ValueAnimator valueAnimator = this.expandAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.expandAnimator.cancel();
            this.expandAnimator = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProgressToExpand(float f, boolean z) {
        this.progressToExpand = f;
        float f2 = ((this.expandedHeight - this.collapsedHeight) - AndroidUtilities.statusBarHeight) * f;
        if (this.keyboardVisibleProgress == BitmapDescriptorFactory.HUE_RED) {
            this.linearLayout.setTranslationY(f2);
            this.button.setTranslationY(f2);
        }
        this.previewView.setTranslationY(((-(this.expandedHeight - this.collapsedHeight)) / 2.0f) * f);
        this.fragmentView.invalidate();
        if (z) {
            this.previewView.setExpanded(f > 0.5f);
        }
    }

    public void startFrom(AvatarConstructorPreviewCell avatarConstructorPreviewCell) {
        BackgroundGradient backgroundGradient = avatarConstructorPreviewCell.getBackgroundGradient();
        PreviewView previewView = this.previewView;
        if (previewView == null) {
            return;
        }
        previewView.setGradient(backgroundGradient);
        if (avatarConstructorPreviewCell.getAnimatedEmoji() != null) {
            long documentId = avatarConstructorPreviewCell.getAnimatedEmoji().getDocumentId();
            PreviewView previewView2 = this.previewView;
            previewView2.documentId = documentId;
            previewView2.backupImageView.setAnimatedEmojiDrawable(new AnimatedEmojiDrawable(14, this.currentAccount, documentId));
        }
        this.backgroundSelectView.selectGradient(backgroundGradient);
        this.selectAnimatedEmojiDialog.setForUser(avatarConstructorPreviewCell.forUser);
    }

    public void startFrom(TLRPC$VideoSize tLRPC$VideoSize) {
        BackgroundGradient backgroundGradient = new BackgroundGradient();
        backgroundGradient.color1 = ColorUtils.setAlphaComponent(tLRPC$VideoSize.background_colors.get(0).intValue(), 255);
        backgroundGradient.color2 = tLRPC$VideoSize.background_colors.size() > 1 ? ColorUtils.setAlphaComponent(tLRPC$VideoSize.background_colors.get(1).intValue(), 255) : 0;
        backgroundGradient.color3 = tLRPC$VideoSize.background_colors.size() > 2 ? ColorUtils.setAlphaComponent(tLRPC$VideoSize.background_colors.get(2).intValue(), 255) : 0;
        backgroundGradient.color4 = tLRPC$VideoSize.background_colors.size() > 3 ? ColorUtils.setAlphaComponent(tLRPC$VideoSize.background_colors.get(3).intValue(), 255) : 0;
        this.previewView.setGradient(backgroundGradient);
        TLRPC$Document tLRPC$Document = null;
        if (tLRPC$VideoSize instanceof TLRPC$TL_videoSizeEmojiMarkup) {
            setPreview(((TLRPC$TL_videoSizeEmojiMarkup) tLRPC$VideoSize).emoji_id, null);
        } else {
            TLRPC$TL_videoSizeStickerMarkup tLRPC$TL_videoSizeStickerMarkup = new TLRPC$TL_videoSizeStickerMarkup();
            TLRPC$TL_messages_stickerSet stickerSet = MediaDataController.getInstance(this.currentAccount).getStickerSet(tLRPC$TL_videoSizeStickerMarkup.stickerset, false);
            if (stickerSet != null) {
                for (int i = 0; i < stickerSet.documents.size(); i++) {
                    if (stickerSet.documents.get(i).f1610id == tLRPC$TL_videoSizeStickerMarkup.sticker_id) {
                        tLRPC$Document = stickerSet.documents.get(i);
                    }
                }
            }
            setPreview(0L, tLRPC$Document);
        }
        this.backgroundSelectView.selectGradient(backgroundGradient);
        this.selectAnimatedEmojiDialog.setForUser(true);
    }

    /* renamed from: org.telegram.ui.Components.AvatarConstructorFragment$PreviewView */
    /* loaded from: classes6.dex */
    public class PreviewView extends FrameLayout {
        BackgroundGradient backgroundGradient;
        BackupImageView backupImageView;
        float changeBackgroundProgress;
        private ColorFilter colorFilter;

        /* renamed from: cx */
        private float f1816cx;

        /* renamed from: cy */
        private float f1817cy;
        public TLRPC$Document document;
        public long documentId;
        AnimatedFloat expandProgress;
        boolean expanded;
        GradientTools gradientTools;
        GradientTools outGradientTools;
        float overrideExpandProgress;
        private float size;

        public PreviewView(Context context) {
            super(context);
            this.gradientTools = new GradientTools();
            this.outGradientTools = new GradientTools();
            this.changeBackgroundProgress = 1.0f;
            this.colorFilter = new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN);
            this.expandProgress = new AnimatedFloat(this, 200L, CubicBezierInterpolator.EASE_OUT);
            this.overrideExpandProgress = -1.0f;
            BackupImageView backupImageView = new BackupImageView(context, AvatarConstructorFragment.this) { // from class: org.telegram.ui.Components.AvatarConstructorFragment.PreviewView.1
                @Override // android.view.View
                public void invalidate() {
                    super.invalidate();
                    PreviewView.this.invalidate();
                }

                @Override // android.view.View
                public void invalidate(Rect rect) {
                    super.invalidate(rect);
                    PreviewView.this.invalidate();
                }

                @Override // android.view.View
                public void invalidate(int i, int i2, int i3, int i4) {
                    super.invalidate(i, i2, i3, i4);
                    PreviewView.this.invalidate();
                }
            };
            this.backupImageView = backupImageView;
            backupImageView.getImageReceiver().setAutoRepeatCount(1);
            this.backupImageView.getImageReceiver().setAspectFit(true);
            setClipChildren(false);
            addView(this.backupImageView, LayoutHelper.createFrame(70, 70, 17));
        }

        public void setExpanded(boolean z) {
            if (this.expanded == z) {
                return;
            }
            this.expanded = z;
            if (z) {
                AnimatedEmojiDrawable animatedEmojiDrawable = this.backupImageView.animatedEmojiDrawable;
                if (animatedEmojiDrawable != null && animatedEmojiDrawable.getImageReceiver() != null) {
                    this.backupImageView.animatedEmojiDrawable.getImageReceiver().startAnimation();
                }
                this.backupImageView.imageReceiver.startAnimation();
            }
            if (Build.VERSION.SDK_INT >= 23) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
            }
            invalidate();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            if (AvatarConstructorFragment.this.isLandscapeMode) {
                super.onMeasure(i, i2);
            } else {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(140), 1073741824));
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.f1816cx = getMeasuredWidth() / 2.0f;
            this.f1817cy = getMeasuredHeight() / 2.0f;
            float measuredWidth = AvatarConstructorFragment.this.isLandscapeMode ? getMeasuredWidth() * 0.3f : AndroidUtilities.m107dp(50);
            this.expandProgress.set(this.expanded ? 1.0f : 0.0f);
            float f = this.overrideExpandProgress;
            if (f >= BitmapDescriptorFactory.HUE_RED) {
                this.expandProgress.set(f, true);
            }
            float lerp = AndroidUtilities.lerp(measuredWidth, getMeasuredWidth() / 2.0f, this.expandProgress.get());
            this.size = lerp;
            this.size = AndroidUtilities.lerp(lerp, AndroidUtilities.m107dp(21), AvatarConstructorFragment.this.keyboardVisibleProgress);
            this.f1816cx = AndroidUtilities.lerp(this.f1816cx, (getMeasuredWidth() - AndroidUtilities.m107dp(12)) - AndroidUtilities.m107dp(21), AvatarConstructorFragment.this.keyboardVisibleProgress);
            canvas.save();
            AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
            int i = avatarConstructorFragment.expandedHeight - avatarConstructorFragment.collapsedHeight;
            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, (-i) / 2.0f, getMeasuredWidth(), getMeasuredHeight() + ((i / 2.0f) * AvatarConstructorFragment.this.progressToExpand));
            BackgroundGradient backgroundGradient = this.backgroundGradient;
            if (backgroundGradient != null) {
                this.gradientTools.setColors(backgroundGradient.color1, backgroundGradient.color2, backgroundGradient.color3, backgroundGradient.color4);
                GradientTools gradientTools = this.gradientTools;
                float f2 = this.f1816cx;
                float f3 = this.size;
                float f4 = this.f1817cy;
                gradientTools.setBounds(f2 - f3, f4 - f3, f2 + f3, f4 + f3);
                if (this.changeBackgroundProgress != 1.0f) {
                    GradientTools gradientTools2 = this.outGradientTools;
                    float f5 = this.f1816cx;
                    float f6 = this.size;
                    float f7 = this.f1817cy;
                    gradientTools2.setBounds(f5 - f6, f7 - f6, f5 + f6, f7 + f6);
                    this.outGradientTools.paint.setAlpha(255);
                    float f8 = measuredWidth;
                    drawBackround(canvas, this.f1816cx, this.f1817cy, f8, this.size, this.outGradientTools.paint);
                    this.gradientTools.paint.setAlpha((int) (this.changeBackgroundProgress * 255.0f));
                    drawBackround(canvas, this.f1816cx, this.f1817cy, f8, this.size, this.gradientTools.paint);
                    float f9 = this.changeBackgroundProgress + 0.064f;
                    this.changeBackgroundProgress = f9;
                    if (f9 > 1.0f) {
                        this.changeBackgroundProgress = 1.0f;
                    }
                    invalidate();
                } else {
                    this.gradientTools.paint.setAlpha(255);
                    drawBackround(canvas, this.f1816cx, this.f1817cy, measuredWidth, this.size, this.gradientTools.paint);
                }
            }
            float lerp2 = AndroidUtilities.lerp(AndroidUtilities.lerp(AvatarConstructorFragment.this.isLandscapeMode ? (int) ((measuredWidth * 2.0f) * 0.7f) : AndroidUtilities.m107dp(70), (int) (getMeasuredWidth() * 0.7f), this.expandProgress.get()), (int) (AndroidUtilities.m107dp(42) * 0.7f), AvatarConstructorFragment.this.keyboardVisibleProgress) / 2.0f;
            BackupImageView backupImageView = this.backupImageView;
            AnimatedEmojiDrawable animatedEmojiDrawable = backupImageView.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                if (animatedEmojiDrawable.getImageReceiver() != null) {
                    this.backupImageView.animatedEmojiDrawable.getImageReceiver().setRoundRadius((int) (2.0f * lerp2 * 0.13f));
                }
                AnimatedEmojiDrawable animatedEmojiDrawable2 = this.backupImageView.animatedEmojiDrawable;
                float f10 = this.f1816cx;
                float f11 = this.f1817cy;
                animatedEmojiDrawable2.setBounds((int) (f10 - lerp2), (int) (f11 - lerp2), (int) (f10 + lerp2), (int) (f11 + lerp2));
                this.backupImageView.animatedEmojiDrawable.setColorFilter(this.colorFilter);
                this.backupImageView.animatedEmojiDrawable.draw(canvas);
                return;
            }
            ImageReceiver imageReceiver = backupImageView.imageReceiver;
            float f12 = this.f1816cx - lerp2;
            float f13 = this.f1817cy - lerp2;
            float f14 = lerp2 * 2.0f;
            imageReceiver.setImageCoords(f12, f13, f14, f14);
            this.backupImageView.imageReceiver.setRoundRadius((int) (f14 * 0.13f));
            this.backupImageView.imageReceiver.draw(canvas);
        }

        private void drawBackround(Canvas canvas, float f, float f2, float f3, float f4, Paint paint) {
            float f5 = this.expandProgress.get();
            if (f5 == BitmapDescriptorFactory.HUE_RED) {
                canvas.drawCircle(f, f2, f4, paint);
                return;
            }
            float lerp = AndroidUtilities.lerp(f3, (float) BitmapDescriptorFactory.HUE_RED, f5);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(f - f4, f2 - f4, f + f4, f2 + f4);
            canvas.drawRoundRect(rectF, lerp, lerp, paint);
        }

        public void setGradient(BackgroundGradient backgroundGradient) {
            BackgroundGradient backgroundGradient2 = this.backgroundGradient;
            if (backgroundGradient2 != null) {
                this.outGradientTools.setColors(backgroundGradient2.color1, backgroundGradient2.color2, backgroundGradient2.color3, backgroundGradient2.color4);
                this.changeBackgroundProgress = BitmapDescriptorFactory.HUE_RED;
                AvatarConstructorFragment.this.wasChanged = true;
            }
            this.backgroundGradient = backgroundGradient;
            if (Build.VERSION.SDK_INT >= 23) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
            }
            invalidate();
        }

        public long getDuration() {
            ImageReceiver imageReceiver = this.backupImageView.getImageReceiver();
            AnimatedEmojiDrawable animatedEmojiDrawable = this.backupImageView.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                imageReceiver = animatedEmojiDrawable.getImageReceiver();
            }
            if (imageReceiver == null || imageReceiver.getLottieAnimation() == null) {
                return 5000L;
            }
            return imageReceiver.getLottieAnimation().getDuration();
        }

        public ImageReceiver getImageReceiver() {
            ImageReceiver imageReceiver = this.backupImageView.getImageReceiver();
            AnimatedEmojiDrawable animatedEmojiDrawable = this.backupImageView.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                ImageReceiver imageReceiver2 = animatedEmojiDrawable.getImageReceiver();
                this.backupImageView.animatedEmojiDrawable.setColorFilter(this.colorFilter);
                return imageReceiver2;
            }
            return imageReceiver;
        }

        public boolean hasAnimation() {
            return (getImageReceiver().getAnimation() == null && getImageReceiver().getLottieAnimation() == null) ? false : true;
        }

        @Override // android.view.View
        public void invalidate() {
            super.invalidate();
            AvatarConstructorFragment.this.fragmentView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.AvatarConstructorFragment$BackgroundSelectView */
    /* loaded from: classes6.dex */
    public class BackgroundSelectView extends RecyclerListView {
        RecyclerView.Adapter adapter;
        BackgroundGradient customSelectedGradient;
        ArrayList<BackgroundGradient> gradients;
        int selectedItemId;
        int stableIdPointer;

        public BackgroundSelectView(Context context) {
            super(context);
            this.gradients = new ArrayList<>();
            this.stableIdPointer = 200;
            this.selectedItemId = -1;
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
            linearLayoutManager.setOrientation(0);
            setLayoutManager(linearLayoutManager);
            int i = 0;
            while (true) {
                int[][] iArr = AvatarConstructorFragment.defaultColors;
                if (i < iArr.length) {
                    BackgroundGradient backgroundGradient = new BackgroundGradient();
                    int i2 = this.stableIdPointer;
                    this.stableIdPointer = i2 + 1;
                    backgroundGradient.stableId = i2;
                    backgroundGradient.color1 = iArr[i][0];
                    backgroundGradient.color2 = iArr[i][1];
                    backgroundGradient.color3 = iArr[i][2];
                    backgroundGradient.color4 = iArr[i][3];
                    this.gradients.add(backgroundGradient);
                    i++;
                } else {
                    this.useLayoutPositionOnClick = true;
                    setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.AvatarConstructorFragment$BackgroundSelectView$$ExternalSyntheticLambda0
                        @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
                        public final void onItemClick(View view, int i3) {
                            AvatarConstructorFragment.BackgroundSelectView.this.lambda$new$0(view, i3);
                        }
                    });
                    RecyclerView.Adapter adapter = new RecyclerView.Adapter(AvatarConstructorFragment.this) { // from class: org.telegram.ui.Components.AvatarConstructorFragment.BackgroundSelectView.1
                        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i3) {
                            BackgroundSelectView backgroundSelectView = BackgroundSelectView.this;
                            return new RecyclerListView.Holder(new GradientSelectorView(backgroundSelectView.getContext()));
                        }

                        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i3) {
                            if (viewHolder.getItemViewType() == 0) {
                                GradientSelectorView gradientSelectorView = (GradientSelectorView) viewHolder.itemView;
                                gradientSelectorView.setGradient(BackgroundSelectView.this.gradients.get(i3));
                                BackgroundSelectView backgroundSelectView = BackgroundSelectView.this;
                                gradientSelectorView.setSelectedInternal(backgroundSelectView.selectedItemId == backgroundSelectView.gradients.get(i3).stableId, true);
                                return;
                            }
                            GradientSelectorView gradientSelectorView2 = (GradientSelectorView) viewHolder.itemView;
                            gradientSelectorView2.setCustom(true);
                            gradientSelectorView2.setGradient(BackgroundSelectView.this.customSelectedGradient);
                            gradientSelectorView2.setSelectedInternal(BackgroundSelectView.this.selectedItemId == 1, true);
                        }

                        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                        public int getItemCount() {
                            return BackgroundSelectView.this.gradients.size() + 1;
                        }

                        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                        public long getItemId(int i3) {
                            if (i3 >= BackgroundSelectView.this.gradients.size()) {
                                return 1L;
                            }
                            return BackgroundSelectView.this.gradients.get(i3).stableId;
                        }

                        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                        public int getItemViewType(int i3) {
                            return i3 >= BackgroundSelectView.this.gradients.size() ? 1 : 0;
                        }
                    };
                    this.adapter = adapter;
                    setAdapter(adapter);
                    setOverScrollMode(1);
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, int i) {
            BackgroundGradient backgroundGradient;
            if (view instanceof GradientSelectorView) {
                GradientSelectorView gradientSelectorView = (GradientSelectorView) view;
                if (!gradientSelectorView.isCustom) {
                    BackgroundGradient backgroundGradient2 = gradientSelectorView.backgroundGradient;
                    this.selectedItemId = backgroundGradient2.stableId;
                    AvatarConstructorFragment.this.previewView.setGradient(backgroundGradient2);
                    RecyclerView.Adapter adapter = this.adapter;
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                        return;
                    }
                    return;
                }
            }
            if (this.selectedItemId == 1 || (backgroundGradient = this.customSelectedGradient) == null) {
                AvatarConstructorFragment.this.showColorPicker();
                return;
            }
            this.selectedItemId = 1;
            AvatarConstructorFragment.this.previewView.setGradient(backgroundGradient);
            RecyclerView.Adapter adapter2 = this.adapter;
            if (adapter2 != null) {
                adapter2.notifyDataSetChanged();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public void onMeasure(int i, int i2) {
            AvatarConstructorFragment.this.gradientBackgroundItemWidth = View.MeasureSpec.getSize(i) / this.adapter.getItemCount();
            if (AvatarConstructorFragment.this.gradientBackgroundItemWidth >= AndroidUtilities.m107dp(36)) {
                if (AvatarConstructorFragment.this.gradientBackgroundItemWidth > AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION)) {
                    AvatarConstructorFragment.this.gradientBackgroundItemWidth = AndroidUtilities.m107dp(48);
                }
            } else {
                AvatarConstructorFragment.this.gradientBackgroundItemWidth = AndroidUtilities.m107dp(36);
            }
            super.onMeasure(i, i2);
        }

        public void selectGradient(BackgroundGradient backgroundGradient) {
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= this.gradients.size()) {
                    break;
                } else if (this.gradients.get(i).equals(backgroundGradient)) {
                    this.selectedItemId = this.gradients.get(i).stableId;
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                this.customSelectedGradient = backgroundGradient;
                this.selectedItemId = 1;
            }
            this.adapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showColorPicker() {
        if (this.bottomSheet != null) {
            return;
        }
        if (!this.previewView.expanded) {
            setExpanded(true, true, true);
        }
        BackgroundGradient backgroundGradient = this.previewView.backgroundGradient;
        final boolean[] zArr = {false};
        AndroidUtilities.requestAdjustNothing(getParentActivity(), getClassGuid());
        BottomSheet bottomSheet = new BottomSheet(getContext(), true) { // from class: org.telegram.ui.Components.AvatarConstructorFragment.11
            @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
            public void dismiss() {
                super.dismiss();
                AvatarConstructorFragment.this.backgroundSelectView.selectGradient(AvatarConstructorFragment.this.colorPickerGradient);
                AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
                avatarConstructorFragment.colorPickerInAnimatoin = true;
                avatarConstructorFragment.fragmentView.invalidate();
                AvatarConstructorFragment.this.colorPickerPreviewView.animate().setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AvatarConstructorFragment.11.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AvatarConstructorFragment avatarConstructorFragment2 = AvatarConstructorFragment.this;
                        avatarConstructorFragment2.colorPickerInAnimatoin = false;
                        avatarConstructorFragment2.colorPickerPreviewView.setVisibility(8);
                    }
                }).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(200L).start();
            }

            @Override // org.telegram.p043ui.ActionBar.BottomSheet
            public void dismissInternal() {
                super.dismissInternal();
                AndroidUtilities.requestAdjustResize(AvatarConstructorFragment.this.getParentActivity(), AvatarConstructorFragment.this.getClassGuid());
                AvatarConstructorFragment.this.bottomSheet = null;
            }
        };
        this.bottomSheet = bottomSheet;
        bottomSheet.fixNavigationBar();
        this.bottomSheet.pauseAllHeavyOperations = false;
        this.drawForBlur = true;
        this.colorPickerPreviewView.setBackground(new BitmapDrawable(getContext().getResources(), AndroidUtilities.makeBlurBitmap(this.fragmentView, 12.0f, 10)));
        this.drawForBlur = false;
        this.colorPickerPreviewView.setVisibility(0);
        this.colorPickerPreviewView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.colorPickerInAnimatoin = true;
        this.fragmentView.invalidate();
        this.colorPickerPreviewView.animate().setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AvatarConstructorFragment.12
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                AvatarConstructorFragment.this.colorPickerInAnimatoin = false;
            }
        }).alpha(1.0f).setDuration(200L).start();
        this.colorPickerGradient = new BackgroundGradient();
        ColorPicker colorPicker = new ColorPicker(this, getContext(), false, new ColorPicker.ColorPickerDelegate() { // from class: org.telegram.ui.Components.AvatarConstructorFragment$$ExternalSyntheticLambda6
            @Override // org.telegram.p043ui.Components.ColorPicker.ColorPickerDelegate
            public /* synthetic */ void deleteTheme() {
                ColorPicker.ColorPickerDelegate.CC.$default$deleteTheme(this);
            }

            @Override // org.telegram.p043ui.Components.ColorPicker.ColorPickerDelegate
            public /* synthetic */ int getDefaultColor(int i) {
                return ColorPicker.ColorPickerDelegate.CC.$default$getDefaultColor(this, i);
            }

            @Override // org.telegram.p043ui.Components.ColorPicker.ColorPickerDelegate
            public /* synthetic */ void openThemeCreate(boolean z) {
                ColorPicker.ColorPickerDelegate.CC.$default$openThemeCreate(this, z);
            }

            @Override // org.telegram.p043ui.Components.ColorPicker.ColorPickerDelegate
            public final void setColor(int i, int i2, boolean z) {
                AvatarConstructorFragment.this.lambda$showColorPicker$4(i, i2, z);
            }
        }) { // from class: org.telegram.ui.Components.AvatarConstructorFragment.13
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(300), 1073741824));
            }
        };
        BackgroundGradient backgroundGradient2 = this.previewView.backgroundGradient;
        if (backgroundGradient2 != null) {
            BackgroundGradient backgroundGradient3 = this.colorPickerGradient;
            int i = backgroundGradient2.color4;
            backgroundGradient3.color4 = i;
            colorPicker.setColor(i, 3);
            BackgroundGradient backgroundGradient4 = this.colorPickerGradient;
            int i2 = this.previewView.backgroundGradient.color3;
            backgroundGradient4.color3 = i2;
            colorPicker.setColor(i2, 2);
            BackgroundGradient backgroundGradient5 = this.colorPickerGradient;
            int i3 = this.previewView.backgroundGradient.color2;
            backgroundGradient5.color2 = i3;
            colorPicker.setColor(i3, 1);
            BackgroundGradient backgroundGradient6 = this.colorPickerGradient;
            int i4 = this.previewView.backgroundGradient.color1;
            backgroundGradient6.color1 = i4;
            colorPicker.setColor(i4, 0);
        }
        colorPicker.setType(-1, true, 4, this.colorPickerGradient.colorsCount(), false, 0, false);
        this.previewView.setGradient(this.colorPickerGradient);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, AndroidUtilities.m107dp(8), 0, 0);
        linearLayout.addView(colorPicker);
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setBackground(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, 8.0f));
        TextView textView = new TextView(getContext());
        textView.setTextSize(1, 14.0f);
        textView.setText(LocaleController.getString("SetColor", C3632R.string.SetColor));
        textView.setGravity(17);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2, 17));
        linearLayout.addView(frameLayout, LayoutHelper.createFrame(-1, 48, 0, 16, -8, 16, 16));
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AvatarConstructorFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AvatarConstructorFragment.this.lambda$showColorPicker$5(zArr, view);
            }
        });
        this.bottomSheet.setCustomView(linearLayout);
        BottomSheet bottomSheet2 = this.bottomSheet;
        bottomSheet2.smoothKeyboardAnimationEnabled = true;
        bottomSheet2.setDimBehind(false);
        this.bottomSheet.show();
        isLightStatusBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showColorPicker$4(int i, int i2, boolean z) {
        if (i2 == 0) {
            BackgroundGradient backgroundGradient = this.colorPickerGradient;
            int i3 = backgroundGradient.color1;
            if (i3 != i && (i3 == 0 || i == 0)) {
                BackgroundGradient copy = backgroundGradient.copy();
                this.colorPickerGradient = copy;
                this.previewView.setGradient(copy);
            }
            this.colorPickerGradient.color1 = i;
        } else if (i2 == 1) {
            BackgroundGradient backgroundGradient2 = this.colorPickerGradient;
            int i4 = backgroundGradient2.color2;
            if (i4 != i && (i4 == 0 || i == 0)) {
                BackgroundGradient copy2 = backgroundGradient2.copy();
                this.colorPickerGradient = copy2;
                this.previewView.setGradient(copy2);
            }
            this.colorPickerGradient.color2 = i;
        } else if (i2 == 2) {
            BackgroundGradient backgroundGradient3 = this.colorPickerGradient;
            int i5 = backgroundGradient3.color3;
            if (i5 != i && (i5 == 0 || i == 0)) {
                BackgroundGradient copy3 = backgroundGradient3.copy();
                this.colorPickerGradient = copy3;
                this.previewView.setGradient(copy3);
            }
            this.colorPickerGradient.color3 = i;
        } else if (i2 == 3) {
            BackgroundGradient backgroundGradient4 = this.colorPickerGradient;
            int i6 = backgroundGradient4.color4;
            if (i6 != i && (i6 == 0 || i == 0)) {
                BackgroundGradient copy4 = backgroundGradient4.copy();
                this.colorPickerGradient = copy4;
                this.previewView.setGradient(copy4);
            }
            this.colorPickerGradient.color4 = i;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
        }
        this.previewView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showColorPicker$5(boolean[] zArr, View view) {
        zArr[0] = true;
        this.backgroundSelectView.selectGradient(this.colorPickerGradient);
        this.bottomSheet.dismiss();
    }

    /* renamed from: org.telegram.ui.Components.AvatarConstructorFragment$BackgroundGradient */
    /* loaded from: classes6.dex */
    public static class BackgroundGradient {
        int color1;
        int color2;
        int color3;
        int color4;
        public int stableId;

        public BackgroundGradient copy() {
            BackgroundGradient backgroundGradient = new BackgroundGradient();
            backgroundGradient.color1 = this.color1;
            backgroundGradient.color2 = this.color2;
            backgroundGradient.color3 = this.color3;
            backgroundGradient.color4 = this.color4;
            return backgroundGradient;
        }

        public int colorsCount() {
            if (this.color4 != 0) {
                return 4;
            }
            if (this.color3 != 0) {
                return 3;
            }
            return this.color2 != 0 ? 2 : 1;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof BackgroundGradient) {
                BackgroundGradient backgroundGradient = (BackgroundGradient) obj;
                return this.color1 == backgroundGradient.color1 && this.color2 == backgroundGradient.color2 && this.color3 == backgroundGradient.color3 && this.color4 == backgroundGradient.color4;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.stableId), Integer.valueOf(this.color1), Integer.valueOf(this.color2), Integer.valueOf(this.color3), Integer.valueOf(this.color4));
        }

        public int getAverageColor() {
            int i = this.color1;
            int i2 = this.color2;
            if (i2 != 0) {
                i = ColorUtils.blendARGB(i, i2, 0.5f);
            }
            int i3 = this.color3;
            if (i3 != 0) {
                i = ColorUtils.blendARGB(i, i3, 0.5f);
            }
            int i4 = this.color4;
            return i4 != 0 ? ColorUtils.blendARGB(i, i4, 0.5f) : i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.AvatarConstructorFragment$GradientSelectorView */
    /* loaded from: classes6.dex */
    public class GradientSelectorView extends View {
        Drawable addIcon;
        BackgroundGradient backgroundGradient;
        Paint defaultPaint;
        GradientTools gradientTools;
        boolean isCustom;
        Paint optionsPaint;
        AnimatedFloat progressToSelect;
        boolean selected;

        public GradientSelectorView(Context context) {
            super(context);
            this.progressToSelect = new AnimatedFloat(400L, AndroidUtilities.overshootInterpolator);
            this.gradientTools = new GradientTools();
            this.progressToSelect.setParent(this);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AvatarConstructorFragment.this.gradientBackgroundItemWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(48), 1073741824));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Paint paint;
            super.onDraw(canvas);
            this.progressToSelect.set(this.selected ? 1.0f : 0.0f, false);
            float measuredWidth = getMeasuredWidth() / 2.0f;
            float measuredHeight = getMeasuredHeight() / 2.0f;
            BackgroundGradient backgroundGradient = this.backgroundGradient;
            if (backgroundGradient != null) {
                this.gradientTools.setColors(backgroundGradient.color1, backgroundGradient.color2, backgroundGradient.color3, backgroundGradient.color4);
                this.gradientTools.setBounds(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                paint = this.gradientTools.paint;
            } else {
                if (this.defaultPaint == null) {
                    Paint paint2 = new Paint(1);
                    this.defaultPaint = paint2;
                    paint2.setColor(Theme.getColor(Theme.key_chat_emojiPanelBackground));
                }
                paint = this.defaultPaint;
            }
            if (this.progressToSelect.get() == BitmapDescriptorFactory.HUE_RED) {
                canvas.drawCircle(measuredWidth, measuredHeight, AndroidUtilities.m107dp(15), paint);
            } else {
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(AndroidUtilities.m107dp(2));
                canvas.drawCircle(measuredWidth, measuredHeight, AndroidUtilities.dpf2(13.5f), paint);
                paint.setStyle(Paint.Style.FILL);
                canvas.drawCircle(measuredWidth, measuredHeight, AndroidUtilities.m107dp(10) + (AndroidUtilities.m107dp(5) * (1.0f - this.progressToSelect.get())), paint);
            }
            if (this.isCustom) {
                if (this.backgroundGradient == null) {
                    if (this.addIcon == null) {
                        Drawable drawable = ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.msg_filled_plus);
                        this.addIcon = drawable;
                        drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_emojiSearchIcon), PorterDuff.Mode.MULTIPLY));
                    }
                    Drawable drawable2 = this.addIcon;
                    drawable2.setBounds((int) (measuredWidth - (drawable2.getIntrinsicWidth() / 2.0f)), (int) (measuredHeight - (this.addIcon.getIntrinsicHeight() / 2.0f)), (int) (measuredWidth + (this.addIcon.getIntrinsicWidth() / 2.0f)), (int) (measuredHeight + (this.addIcon.getIntrinsicHeight() / 2.0f)));
                    this.addIcon.draw(canvas);
                    return;
                }
                if (this.optionsPaint == null) {
                    Paint paint3 = new Paint(1);
                    this.optionsPaint = paint3;
                    paint3.setColor(-1);
                }
                this.optionsPaint.setAlpha(Math.round(Utilities.clamp(this.progressToSelect.get(), 1.0f, (float) BitmapDescriptorFactory.HUE_RED) * 255.0f));
                canvas.drawCircle(measuredWidth, measuredHeight, AndroidUtilities.m108dp(1.5f), this.optionsPaint);
                canvas.drawCircle(measuredWidth - (AndroidUtilities.m107dp(5) * this.progressToSelect.get()), measuredHeight, AndroidUtilities.m108dp(1.5f), this.optionsPaint);
                canvas.drawCircle(measuredWidth + (AndroidUtilities.m107dp(5) * this.progressToSelect.get()), measuredHeight, AndroidUtilities.m108dp(1.5f), this.optionsPaint);
            }
        }

        void setGradient(BackgroundGradient backgroundGradient) {
            this.backgroundGradient = backgroundGradient;
        }

        void setSelectedInternal(boolean z, boolean z2) {
            if (this.selected != z) {
                this.selected = z;
                invalidate();
            }
            if (z2) {
                return;
            }
            this.progressToSelect.set(z ? 1.0f : BitmapDescriptorFactory.HUE_RED, false);
        }

        public void setCustom(boolean z) {
            this.isCustom = z;
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        PreviewView previewView = this.previewView;
        float f = BitmapDescriptorFactory.HUE_RED;
        boolean z = previewView == null || (!previewView.expanded && (previewView.overrideExpandProgress < BitmapDescriptorFactory.HUE_RED || previewView.backgroundGradient == null)) ? AndroidUtilities.computePerceivedBrightness(Theme.getColor(Theme.key_windowBackgroundGray)) > 0.721f : AndroidUtilities.computePerceivedBrightness(previewView.backgroundGradient.getAverageColor()) > 0.721f;
        if (this.isLightInternal != z) {
            this.isLightInternal = z;
            if (this.actionBar.getAlpha() == BitmapDescriptorFactory.HUE_RED) {
                if (!z) {
                    f = 1.0f;
                }
                setProgressToLightStatusBar(f);
            } else {
                ValueAnimator valueAnimator = this.lightProgressAnimator;
                if (valueAnimator != null) {
                    valueAnimator.removeAllListeners();
                    this.lightProgressAnimator.cancel();
                }
                float[] fArr = new float[2];
                fArr[0] = this.progressToLightStatusBar;
                if (!z) {
                    f = 1.0f;
                }
                fArr[1] = f;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
                this.lightProgressAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AvatarConstructorFragment$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        AvatarConstructorFragment.this.lambda$isLightStatusBar$6(valueAnimator2);
                    }
                });
                this.lightProgressAnimator.setDuration(150L).start();
            }
        }
        BottomSheet bottomSheet = this.bottomSheet;
        if (bottomSheet != null) {
            AndroidUtilities.setLightStatusBar(bottomSheet.getWindow(), z);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$isLightStatusBar$6(ValueAnimator valueAnimator) {
        setProgressToLightStatusBar(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void setProgressToLightStatusBar(float f) {
        if (this.progressToLightStatusBar != f) {
            this.progressToLightStatusBar = f;
            int blendARGB = ColorUtils.blendARGB(-16777216, -1, f);
            int alphaComponent = ColorUtils.setAlphaComponent(blendARGB, 60);
            this.overlayActionBar.setItemsColor(blendARGB, false);
            this.setPhotoItem.setBackground(Theme.createSelectorDrawable(alphaComponent, 3));
        }
    }

    public void setDelegate(Delegate delegate) {
        this.delegate = delegate;
    }

    /* renamed from: onPreviewClick */
    public void lambda$createView$1() {
        if (this.isLandscapeMode) {
            return;
        }
        if (this.keyboardVisibleProgress > BitmapDescriptorFactory.HUE_RED) {
            if (this.keyboardVisibilityAnimator != null) {
                this.progressToExpand = 1.0f;
                this.expandWithKeyboard = true;
            }
            AndroidUtilities.hideKeyboard(this.fragmentView);
            return;
        }
        setExpanded(!this.previewView.expanded, true, false);
    }

    /* renamed from: org.telegram.ui.Components.AvatarConstructorFragment$ContainerLayout */
    /* loaded from: classes6.dex */
    private class ContainerLayout extends SizeNotifierFrameLayout implements NestedScrollingParent {
        private NestedScrollingParentHelper nestedScrollingParentHelper;

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public boolean onNestedFling(View view, float f, float f2, boolean z) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public boolean onNestedPreFling(View view, float f, float f2) {
            return false;
        }

        public ContainerLayout(Context context) {
            super(context);
            this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public boolean onStartNestedScroll(View view, View view2, int i) {
            AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
            return avatarConstructorFragment.keyboardVisibleProgress <= BitmapDescriptorFactory.HUE_RED && !avatarConstructorFragment.isLandscapeMode;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public void onNestedScrollAccepted(View view, View view2, int i) {
            this.nestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i);
            AvatarConstructorFragment.this.cancelExpandAnimator();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public void onStopNestedScroll(View view) {
            this.nestedScrollingParentHelper.onStopNestedScroll(view);
            AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
            avatarConstructorFragment.setExpanded(avatarConstructorFragment.progressToExpand > 0.5f, false, false);
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
            AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
            if (avatarConstructorFragment.keyboardVisibleProgress > BitmapDescriptorFactory.HUE_RED || avatarConstructorFragment.isLandscapeMode || i4 == 0) {
                return;
            }
            avatarConstructorFragment.cancelExpandAnimator();
            AvatarConstructorFragment avatarConstructorFragment2 = AvatarConstructorFragment.this;
            AvatarConstructorFragment.this.setProgressToExpand(Utilities.clamp(avatarConstructorFragment2.progressToExpand - (i4 / avatarConstructorFragment2.expandedHeight), 1.0f, (float) BitmapDescriptorFactory.HUE_RED), true);
        }

        @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
        public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
            AvatarConstructorFragment avatarConstructorFragment = AvatarConstructorFragment.this;
            if (avatarConstructorFragment.keyboardVisibleProgress > BitmapDescriptorFactory.HUE_RED || avatarConstructorFragment.isLandscapeMode || i2 <= 0 || avatarConstructorFragment.progressToExpand <= BitmapDescriptorFactory.HUE_RED) {
                return;
            }
            avatarConstructorFragment.cancelExpandAnimator();
            AvatarConstructorFragment avatarConstructorFragment2 = AvatarConstructorFragment.this;
            AvatarConstructorFragment.this.setProgressToExpand(Utilities.clamp(avatarConstructorFragment2.progressToExpand - (i2 / avatarConstructorFragment2.expandedHeight), 1.0f, (float) BitmapDescriptorFactory.HUE_RED), true);
            iArr[1] = i2;
        }

        @Override // android.view.ViewGroup
        public int getNestedScrollAxes() {
            return this.nestedScrollingParentHelper.getNestedScrollAxes();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        discardEditor();
        return false;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        AndroidUtilities.requestAdjustResize(getParentActivity(), getClassGuid());
    }
}
