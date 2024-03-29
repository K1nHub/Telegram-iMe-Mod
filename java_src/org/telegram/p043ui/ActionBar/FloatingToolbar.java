package org.telegram.p043ui.ActionBar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.Size;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.FloatingToolbar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.ActionBar.FloatingToolbar */
/* loaded from: classes5.dex */
public final class FloatingToolbar {
    private static final MenuItem.OnMenuItemClickListener NO_OP_MENUITEM_CLICK_LISTENER = new MenuItem.OnMenuItemClickListener() { // from class: org.telegram.ui.ActionBar.FloatingToolbar$$ExternalSyntheticLambda0
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            boolean lambda$static$0;
            lambda$static$0 = FloatingToolbar.lambda$static$0(menuItem);
            return lambda$static$0;
        }
    };
    public static final List<Integer> premiumOptions = Arrays.asList(Integer.valueOf(C3632R.C3635id.menu_bold), Integer.valueOf(C3632R.C3635id.menu_italic), Integer.valueOf(C3632R.C3635id.menu_strike), Integer.valueOf(C3632R.C3635id.menu_link), Integer.valueOf(C3632R.C3635id.menu_mono), Integer.valueOf(C3632R.C3635id.menu_underline), Integer.valueOf(C3632R.C3635id.menu_spoiler), Integer.valueOf(C3632R.C3635id.menu_quote));
    private int currentStyle;
    private Menu mMenu;
    private final FloatingToolbarPopup mPopup;
    private int mSuggestedWidth;
    private final View mWindowView;
    private Runnable premiumLockClickListener;
    private Utilities.Callback0Return<Boolean> quoteShowCallback;
    private final Theme.ResourcesProvider resourcesProvider;
    private final Rect mContentRect = new Rect();
    private final Rect mPreviousContentRect = new Rect();
    private List<MenuItem> mShowingMenuItems = new ArrayList();
    private MenuItem.OnMenuItemClickListener mMenuItemClickListener = NO_OP_MENUITEM_CLICK_LISTENER;
    private boolean mWidthChanged = true;
    private final View.OnLayoutChangeListener mOrientationChangeHandler = new View.OnLayoutChangeListener() { // from class: org.telegram.ui.ActionBar.FloatingToolbar.1
        private final Rect mNewRect = new Rect();
        private final Rect mOldRect = new Rect();

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.mNewRect.set(i, i2, i3, i4);
            this.mOldRect.set(i5, i6, i7, i8);
            if (!FloatingToolbar.this.mPopup.isShowing() || this.mNewRect.equals(this.mOldRect)) {
                return;
            }
            FloatingToolbar.this.mWidthChanged = true;
            FloatingToolbar.this.updateLayout();
        }
    };
    private final Comparator<MenuItem> mMenuItemComparator = new Comparator() { // from class: org.telegram.ui.ActionBar.FloatingToolbar$$ExternalSyntheticLambda1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int lambda$new$1;
            lambda$new$1 = FloatingToolbar.lambda$new$1((MenuItem) obj, (MenuItem) obj2);
            return lambda$new$1;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$0(MenuItem menuItem) {
        return false;
    }

    public void setOnPremiumLockClick(Runnable runnable) {
        this.premiumLockClickListener = runnable;
    }

    public void setQuoteShowVisible(Utilities.Callback0Return<Boolean> callback0Return) {
        this.quoteShowCallback = callback0Return;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$new$1(MenuItem menuItem, MenuItem menuItem2) {
        return menuItem.getOrder() - menuItem2.getOrder();
    }

    public FloatingToolbar(Context context, View view, int i, Theme.ResourcesProvider resourcesProvider) {
        this.mWindowView = view;
        this.currentStyle = i;
        this.resourcesProvider = resourcesProvider;
        this.mPopup = new FloatingToolbarPopup(context, view);
    }

    public FloatingToolbar setMenu(Menu menu) {
        this.mMenu = menu;
        return this;
    }

    public FloatingToolbar setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        if (onMenuItemClickListener != null) {
            this.mMenuItemClickListener = onMenuItemClickListener;
        } else {
            this.mMenuItemClickListener = NO_OP_MENUITEM_CLICK_LISTENER;
        }
        return this;
    }

    public FloatingToolbar setContentRect(Rect rect) {
        this.mContentRect.set(rect);
        return this;
    }

    public FloatingToolbar show() {
        registerOrientationHandler();
        doShow();
        return this;
    }

    public FloatingToolbar updateLayout() {
        if (this.mPopup.isShowing()) {
            doShow();
        }
        return this;
    }

    public void dismiss() {
        unregisterOrientationHandler();
        this.mPopup.dismiss();
    }

    public void hide() {
        this.mPopup.hide();
    }

    private void doShow() {
        List<MenuItem> visibleAndEnabledMenuItems = getVisibleAndEnabledMenuItems(this.mMenu);
        Collections.sort(visibleAndEnabledMenuItems, this.mMenuItemComparator);
        if (!isCurrentlyShowing(visibleAndEnabledMenuItems) || this.mWidthChanged) {
            this.mPopup.dismiss();
            this.mPopup.layoutMenuItems(visibleAndEnabledMenuItems, this.mMenuItemClickListener, this.mSuggestedWidth);
            this.mShowingMenuItems = visibleAndEnabledMenuItems;
        }
        if (!this.mPopup.isShowing()) {
            this.mPopup.show(this.mContentRect);
        } else if (!this.mPreviousContentRect.equals(this.mContentRect)) {
            this.mPopup.updateCoordinates(this.mContentRect);
        }
        this.mWidthChanged = false;
        this.mPreviousContentRect.set(this.mContentRect);
    }

    private boolean isCurrentlyShowing(List<MenuItem> list) {
        if (this.mShowingMenuItems == null || list.size() != this.mShowingMenuItems.size()) {
            return false;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            MenuItem menuItem = list.get(i);
            MenuItem menuItem2 = this.mShowingMenuItems.get(i);
            if (menuItem.getItemId() != menuItem2.getItemId() || !TextUtils.equals(menuItem.getTitle(), menuItem2.getTitle()) || !Objects.equals(menuItem.getIcon(), menuItem2.getIcon()) || menuItem.getGroupId() != menuItem2.getGroupId()) {
                return false;
            }
        }
        return true;
    }

    private List<MenuItem> getVisibleAndEnabledMenuItems(Menu menu) {
        Utilities.Callback0Return<Boolean> callback0Return;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; menu != null && i < menu.size(); i++) {
            MenuItem item = menu.getItem(i);
            if (item.isVisible() && item.isEnabled()) {
                SubMenu subMenu = item.getSubMenu();
                if (subMenu != null) {
                    arrayList.addAll(getVisibleAndEnabledMenuItems(subMenu));
                } else if ((item.getItemId() != C3632R.C3635id.menu_quote || (callback0Return = this.quoteShowCallback) == null || callback0Return.run().booleanValue()) && item.getItemId() != 16908353 && (item.getItemId() != C3632R.C3635id.menu_regular || this.premiumLockClickListener == null)) {
                    arrayList.add(item);
                }
            }
        }
        return arrayList;
    }

    private void registerOrientationHandler() {
        unregisterOrientationHandler();
        this.mWindowView.addOnLayoutChangeListener(this.mOrientationChangeHandler);
    }

    private void unregisterOrientationHandler() {
        this.mWindowView.removeOnLayoutChangeListener(this.mOrientationChangeHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup */
    /* loaded from: classes5.dex */
    public final class FloatingToolbarPopup {
        private final Drawable mArrow;
        private final AnimationSet mCloseOverflowAnimation;
        private final ViewGroup mContentContainer;
        private final Context mContext;
        private final AnimatorSet mDismissAnimation;
        private final Interpolator mFastOutLinearInInterpolator;
        private final Interpolator mFastOutSlowInInterpolator;
        private boolean mHidden;
        private final AnimatorSet mHideAnimation;
        private final int mIconTextSpacing;
        private boolean mIsOverflowOpen;
        private final int mLineHeight;
        private final Interpolator mLinearOutSlowInInterpolator;
        private final Interpolator mLogAccelerateInterpolator;
        private final ViewGroup mMainPanel;
        private Size mMainPanelSize;
        private final int mMarginHorizontal;
        private final int mMarginVertical;
        private MenuItem.OnMenuItemClickListener mOnMenuItemClickListener;
        private final AnimationSet mOpenOverflowAnimation;
        private boolean mOpenOverflowUpwards;
        private final Drawable mOverflow;
        private final FrameLayout mOverflowButton;
        private final ImageView mOverflowButtonIcon;
        private final View mOverflowButtonShadow;
        private final Size mOverflowButtonSize;
        private final TextView mOverflowButtonText;
        private final OverflowPanel mOverflowPanel;
        private Size mOverflowPanelSize;
        private final OverflowPanelViewHelper mOverflowPanelViewHelper;
        private final View mParent;
        private final PopupWindow mPopupWindow;
        private final AnimatorSet mShowAnimation;
        private final AnimatedVectorDrawable mToArrow;
        private final AnimatedVectorDrawable mToOverflow;
        private int mTransitionDurationScale;
        private final Rect mViewPortOnScreen = new Rect();
        private final Point mCoordsOnWindow = new Point();
        private final int[] mTmpCoords = new int[2];
        private final Region mTouchableRegion = new Region();
        private final Runnable mPreparePopupContentRTLHelper = new Runnable() { // from class: org.telegram.ui.ActionBar.FloatingToolbar.FloatingToolbarPopup.1
            @Override // java.lang.Runnable
            public void run() {
                FloatingToolbarPopup.this.setPanelsStatesAtRestingPosition();
                FloatingToolbarPopup.this.setContentAreaAsTouchableSurface();
                FloatingToolbarPopup.this.mContentContainer.setAlpha(1.0f);
            }
        };
        private boolean mDismissed = true;
        private final View.OnClickListener mMenuItemButtonOnClickListener = new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.FloatingToolbar.FloatingToolbarPopup.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!(view.getTag() instanceof MenuItem) || FloatingToolbarPopup.this.mOnMenuItemClickListener == null) {
                    return;
                }
                FloatingToolbarPopup.this.mOnMenuItemClickListener.onMenuItemClick((MenuItem) view.getTag());
            }
        };
        private int shiftDp = -4;

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isInRTLMode() {
            return false;
        }

        private void setTouchableSurfaceInsetsComputer() {
        }

        public FloatingToolbarPopup(Context context, View view) {
            ViewGroup viewGroup;
            int themedColor;
            this.mParent = view;
            this.mContext = context;
            ViewGroup createContentContainer = FloatingToolbar.this.createContentContainer(context);
            this.mContentContainer = createContentContainer;
            this.mPopupWindow = FloatingToolbar.createPopupWindow(createContentContainer);
            this.mMarginHorizontal = AndroidUtilities.m107dp(16);
            this.mMarginVertical = AndroidUtilities.m107dp(8);
            this.mLineHeight = AndroidUtilities.m107dp(48);
            int m107dp = AndroidUtilities.m107dp(8);
            this.mIconTextSpacing = m107dp;
            this.mLogAccelerateInterpolator = new LogAccelerateInterpolator();
            this.mFastOutSlowInInterpolator = AnimationUtils.loadInterpolator(context, 17563661);
            this.mLinearOutSlowInInterpolator = AnimationUtils.loadInterpolator(context, 17563662);
            this.mFastOutLinearInInterpolator = AnimationUtils.loadInterpolator(context, 17563663);
            Drawable mutate = context.getDrawable(C3632R.C3634drawable.ft_avd_tooverflow).mutate();
            this.mArrow = mutate;
            mutate.setAutoMirrored(true);
            Drawable mutate2 = context.getDrawable(C3632R.C3634drawable.ft_avd_toarrow).mutate();
            this.mOverflow = mutate2;
            mutate2.setAutoMirrored(true);
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) context.getDrawable(C3632R.C3634drawable.ft_avd_toarrow_animation).mutate();
            this.mToArrow = animatedVectorDrawable;
            animatedVectorDrawable.setAutoMirrored(true);
            AnimatedVectorDrawable animatedVectorDrawable2 = (AnimatedVectorDrawable) context.getDrawable(C3632R.C3634drawable.ft_avd_tooverflow_animation).mutate();
            this.mToOverflow = animatedVectorDrawable2;
            animatedVectorDrawable2.setAutoMirrored(true);
            FrameLayout frameLayout = new FrameLayout(context);
            this.mOverflowButton = frameLayout;
            ImageButton imageButton = new ImageButton(context, FloatingToolbar.this) { // from class: org.telegram.ui.ActionBar.FloatingToolbar.FloatingToolbarPopup.3
                @Override // android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (FloatingToolbarPopup.this.mIsOverflowOpen) {
                        return false;
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }
            };
            this.mOverflowButtonIcon = imageButton;
            imageButton.setLayoutParams(new ViewGroup.LayoutParams(AndroidUtilities.m107dp(56), AndroidUtilities.m107dp(48)));
            imageButton.setPaddingRelative(AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(12), AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(12));
            imageButton.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageButton.setImageDrawable(mutate2);
            TextView textView = new TextView(context);
            this.mOverflowButtonText = textView;
            textView.setText(LocaleController.getString(C3632R.string.Back));
            textView.setTextSize(1, 16.0f);
            textView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            View view2 = new View(context);
            this.mOverflowButtonShadow = view2;
            if (FloatingToolbar.this.currentStyle != 0) {
                viewGroup = createContentContainer;
                if (FloatingToolbar.this.currentStyle != 2) {
                    themedColor = FloatingToolbar.this.getThemedColor(Theme.key_windowBackgroundWhiteBlackText);
                    int i = Theme.key_listSelector;
                    imageButton.setBackground(Theme.createSelectorDrawable(FloatingToolbar.this.getThemedColor(i), 1));
                    frameLayout.setBackground(Theme.createSelectorDrawable(FloatingToolbar.this.getThemedColor(i), 2));
                    view2.setBackgroundColor(FloatingToolbar.this.getThemedColor(Theme.key_divider));
                } else {
                    imageButton.setBackground(Theme.createSelectorDrawable(553648127, 1));
                    frameLayout.setBackground(Theme.createSelectorDrawable(553648127, 2));
                    view2.setBackgroundColor(-16777216);
                    themedColor = -328966;
                }
            } else {
                int i2 = Theme.key_dialogTextBlack;
                int themedColor2 = FloatingToolbar.this.getThemedColor(i2);
                int i3 = Theme.key_listSelector;
                viewGroup = createContentContainer;
                imageButton.setBackground(Theme.createSelectorDrawable(FloatingToolbar.this.getThemedColor(i3), 1));
                frameLayout.setBackground(Theme.createSelectorDrawable(FloatingToolbar.this.getThemedColor(i3), 2));
                view2.setBackgroundColor(Theme.multAlpha(FloatingToolbar.this.getThemedColor(i2), 0.4f));
                themedColor = themedColor2;
            }
            mutate2.setTint(themedColor);
            mutate.setTint(themedColor);
            animatedVectorDrawable.setTint(themedColor);
            animatedVectorDrawable2.setTint(themedColor);
            textView.setTextColor(themedColor);
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    FloatingToolbar.FloatingToolbarPopup.this.lambda$new$0(view3);
                }
            });
            frameLayout.addView(imageButton, LayoutHelper.createFrame(-2, -2, 19));
            frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2, 19, 56, 0, 0, 0));
            frameLayout.addView(view2, LayoutHelper.createFrame(-1.0f, 1.0f / AndroidUtilities.density, 55));
            this.mOverflowButtonSize = measure(imageButton);
            this.mMainPanel = createMainPanel();
            this.mOverflowPanelViewHelper = new OverflowPanelViewHelper(context, m107dp);
            this.mOverflowPanel = createOverflowPanel();
            Animation.AnimationListener createOverflowAnimationListener = createOverflowAnimationListener();
            AnimationSet animationSet = new AnimationSet(true);
            this.mOpenOverflowAnimation = animationSet;
            animationSet.setAnimationListener(createOverflowAnimationListener);
            AnimationSet animationSet2 = new AnimationSet(true);
            this.mCloseOverflowAnimation = animationSet2;
            animationSet2.setAnimationListener(createOverflowAnimationListener);
            this.mShowAnimation = FloatingToolbar.createEnterAnimation(viewGroup);
            ViewGroup viewGroup2 = viewGroup;
            this.mDismissAnimation = FloatingToolbar.createExitAnimation(viewGroup2, ImageReceiver.DEFAULT_CROSSFADE_DURATION, new C37954(FloatingToolbar.this));
            this.mHideAnimation = FloatingToolbar.createExitAnimation(viewGroup2, 0, new C37965(FloatingToolbar.this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            onBackPressed();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$4 */
        /* loaded from: classes5.dex */
        public class C37954 extends AnimatorListenerAdapter {
            C37954(FloatingToolbar floatingToolbar) {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                NotificationCenter.getInstance(UserConfig.selectedAccount).doOnIdle(new Runnable() { // from class: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$4$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FloatingToolbar.FloatingToolbarPopup.C37954.this.lambda$onAnimationEnd$0();
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onAnimationEnd$0() {
                FloatingToolbarPopup.this.mPopupWindow.dismiss();
                FloatingToolbarPopup.this.mContentContainer.removeAllViews();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$5 */
        /* loaded from: classes5.dex */
        public class C37965 extends AnimatorListenerAdapter {
            C37965(FloatingToolbar floatingToolbar) {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                NotificationCenter.getInstance(UserConfig.selectedAccount).doOnIdle(new Runnable() { // from class: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FloatingToolbar.FloatingToolbarPopup.C37965.this.lambda$onAnimationEnd$0();
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onAnimationEnd$0() {
                FloatingToolbarPopup.this.mPopupWindow.dismiss();
            }
        }

        private void onBackPressed() {
            if (this.mIsOverflowOpen) {
                this.mOverflowButtonIcon.setImageDrawable(this.mToOverflow);
                this.mToOverflow.start();
                closeOverflow();
                return;
            }
            this.mOverflowButtonIcon.setImageDrawable(this.mToArrow);
            this.mToArrow.start();
            openOverflow();
        }

        private void updateOverflowButtonClickListener() {
            if (this.mIsOverflowOpen) {
                this.mOverflowButton.setClickable(true);
                this.mOverflowButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        FloatingToolbar.FloatingToolbarPopup.this.lambda$updateOverflowButtonClickListener$1(view);
                    }
                });
                this.mOverflowButtonIcon.setClickable(false);
                this.mOverflowButtonIcon.setOnClickListener(null);
                return;
            }
            this.mOverflowButton.setClickable(false);
            this.mOverflowButton.setOnClickListener(null);
            this.mOverflowButtonIcon.setClickable(true);
            this.mOverflowButtonIcon.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FloatingToolbar.FloatingToolbarPopup.this.lambda$updateOverflowButtonClickListener$2(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateOverflowButtonClickListener$1(View view) {
            onBackPressed();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateOverflowButtonClickListener$2(View view) {
            onBackPressed();
        }

        public void layoutMenuItems(List<MenuItem> list, MenuItem.OnMenuItemClickListener onMenuItemClickListener, int i) {
            this.mOnMenuItemClickListener = onMenuItemClickListener;
            cancelOverflowAnimations();
            clearPanels();
            List<MenuItem> layoutMainPanelItems = layoutMainPanelItems(list, getAdjustedToolbarWidth(i));
            if (!layoutMainPanelItems.isEmpty()) {
                layoutOverflowPanelItems(layoutMainPanelItems);
            }
            updatePopupSize();
        }

        public void show(Rect rect) {
            if (isShowing()) {
                return;
            }
            this.mHidden = false;
            this.mDismissed = false;
            cancelDismissAndHideAnimations();
            cancelOverflowAnimations();
            refreshCoordinatesAndOverflowDirection(rect);
            preparePopupContent();
            PopupWindow popupWindow = this.mPopupWindow;
            View view = this.mParent;
            Point point = this.mCoordsOnWindow;
            popupWindow.showAtLocation(view, 0, point.x, point.y);
            setTouchableSurfaceInsetsComputer();
            runShowAnimation();
        }

        public void dismiss() {
            if (this.mDismissed) {
                return;
            }
            this.mHidden = false;
            this.mDismissed = true;
            this.mHideAnimation.cancel();
            runDismissAnimation();
            setZeroTouchableSurface();
        }

        public void hide() {
            if (isShowing()) {
                this.mHidden = true;
                runHideAnimation();
                setZeroTouchableSurface();
            }
        }

        public boolean isShowing() {
            return (this.mDismissed || this.mHidden) ? false : true;
        }

        public void updateCoordinates(Rect rect) {
            if (isShowing() && this.mPopupWindow.isShowing()) {
                cancelOverflowAnimations();
                refreshCoordinatesAndOverflowDirection(rect);
                preparePopupContent();
                PopupWindow popupWindow = this.mPopupWindow;
                Point point = this.mCoordsOnWindow;
                popupWindow.update(point.x, point.y, popupWindow.getWidth(), this.mPopupWindow.getHeight());
            }
        }

        private void refreshCoordinatesAndOverflowDirection(Rect rect) {
            int i;
            refreshViewPort();
            int min = Math.min(rect.centerX() - (this.mPopupWindow.getWidth() / 2), this.mViewPortOnScreen.right - this.mPopupWindow.getWidth());
            int i2 = rect.top;
            Rect rect2 = this.mViewPortOnScreen;
            int i3 = i2 - rect2.top;
            int i4 = rect2.bottom - rect.bottom;
            int i5 = this.mMarginVertical * 2;
            int i6 = this.mLineHeight + i5;
            if (hasOverflow()) {
                int calculateOverflowHeight = calculateOverflowHeight(2) + i5;
                Rect rect3 = this.mViewPortOnScreen;
                int i7 = (rect3.bottom - rect.top) + i6;
                int i8 = (rect.bottom - rect3.top) + i6;
                if (i3 >= calculateOverflowHeight) {
                    updateOverflowHeight(i3 - i5);
                    i = rect.top - this.mPopupWindow.getHeight();
                    this.mOpenOverflowUpwards = true;
                } else if (i3 >= i6 && i7 >= calculateOverflowHeight) {
                    updateOverflowHeight(i7 - i5);
                    i = rect.top - i6;
                    this.mOpenOverflowUpwards = false;
                } else if (i4 >= calculateOverflowHeight) {
                    updateOverflowHeight(i4 - i5);
                    i = rect.bottom;
                    this.mOpenOverflowUpwards = false;
                } else if (i4 >= i6 && rect3.height() >= calculateOverflowHeight) {
                    updateOverflowHeight(i8 - i5);
                    i = (rect.bottom + i6) - this.mPopupWindow.getHeight();
                    this.mOpenOverflowUpwards = true;
                } else {
                    updateOverflowHeight(this.mViewPortOnScreen.height() - i5);
                    i = this.mViewPortOnScreen.top;
                    this.mOpenOverflowUpwards = false;
                }
            } else if (i3 >= i6) {
                i = rect.top - i6;
            } else if (i4 >= i6) {
                i = rect.bottom;
            } else if (i4 >= this.mLineHeight) {
                i = rect.bottom - this.mMarginVertical;
            } else {
                i = Math.max(this.mViewPortOnScreen.top, rect.top - i6);
            }
            this.mParent.getRootView().getLocationOnScreen(this.mTmpCoords);
            int[] iArr = this.mTmpCoords;
            int i9 = iArr[0];
            int i10 = iArr[1];
            this.mParent.getRootView().getLocationInWindow(this.mTmpCoords);
            int[] iArr2 = this.mTmpCoords;
            this.mCoordsOnWindow.set(Math.max(0, min - (i9 - iArr2[0])), Math.max(0, i - (i10 - iArr2[1])));
        }

        private void runShowAnimation() {
            this.mShowAnimation.start();
        }

        private void runDismissAnimation() {
            this.mDismissAnimation.start();
        }

        private void runHideAnimation() {
            this.mHideAnimation.start();
        }

        private void cancelDismissAndHideAnimations() {
            this.mDismissAnimation.cancel();
            this.mHideAnimation.cancel();
        }

        private void cancelOverflowAnimations() {
            this.mContentContainer.clearAnimation();
            this.mMainPanel.animate().cancel();
            this.mOverflowPanel.animate().cancel();
            this.mToArrow.stop();
            this.mToOverflow.stop();
        }

        private void openOverflow() {
            final int width = this.mOverflowPanelSize.getWidth();
            final int height = this.mOverflowPanelSize.getHeight();
            final int width2 = this.mContentContainer.getWidth();
            final int height2 = this.mContentContainer.getHeight();
            final float y = this.mContentContainer.getY();
            final float x = this.mContentContainer.getX();
            final float width3 = x + this.mContentContainer.getWidth();
            Animation animation = new Animation() { // from class: org.telegram.ui.ActionBar.FloatingToolbar.FloatingToolbarPopup.6
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    FloatingToolbarPopup floatingToolbarPopup = FloatingToolbarPopup.this;
                    floatingToolbarPopup.setWidth(floatingToolbarPopup.mContentContainer, width2 + ((int) (f * (width - width2))));
                    if (FloatingToolbarPopup.this.isInRTLMode()) {
                        FloatingToolbarPopup.this.mContentContainer.setX(x);
                        FloatingToolbarPopup.this.mMainPanel.setX(BitmapDescriptorFactory.HUE_RED);
                        FloatingToolbarPopup.this.mOverflowPanel.setX(BitmapDescriptorFactory.HUE_RED);
                        return;
                    }
                    FloatingToolbarPopup.this.mContentContainer.setX(width3 - FloatingToolbarPopup.this.mContentContainer.getWidth());
                    FloatingToolbarPopup.this.mMainPanel.setX(FloatingToolbarPopup.this.mContentContainer.getWidth() - width2);
                    FloatingToolbarPopup.this.mOverflowPanel.setX(FloatingToolbarPopup.this.mContentContainer.getWidth() - width);
                }
            };
            Animation animation2 = new Animation() { // from class: org.telegram.ui.ActionBar.FloatingToolbar.FloatingToolbarPopup.7
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    FloatingToolbarPopup floatingToolbarPopup = FloatingToolbarPopup.this;
                    floatingToolbarPopup.setHeight(floatingToolbarPopup.mContentContainer, height2 + ((int) (f * (height - height2))));
                    if (FloatingToolbarPopup.this.mOpenOverflowUpwards) {
                        FloatingToolbarPopup.this.mContentContainer.setY(y - (FloatingToolbarPopup.this.mContentContainer.getHeight() - height2));
                        FloatingToolbarPopup.this.positionContentYCoordinatesIfOpeningOverflowUpwards();
                    }
                }
            };
            final float x2 = this.mOverflowButton.getX();
            float f = width;
            final float width4 = isInRTLMode() ? (f + x2) - this.mOverflowButtonIcon.getWidth() : (x2 - f) + this.mOverflowButtonIcon.getWidth();
            Animation animation3 = new Animation() { // from class: org.telegram.ui.ActionBar.FloatingToolbar.FloatingToolbarPopup.8
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f2, Transformation transformation) {
                    float f3 = x2;
                    FloatingToolbarPopup.this.mOverflowButton.setX(f3 + ((width4 - f3) * f2) + (FloatingToolbarPopup.this.isInRTLMode() ? BitmapDescriptorFactory.HUE_RED : FloatingToolbarPopup.this.mContentContainer.getWidth() - width2));
                    FloatingToolbarPopup.this.mOverflowButtonText.setAlpha(f2);
                    FloatingToolbarPopup.this.mOverflowButtonShadow.setAlpha(f2);
                }
            };
            animation.setInterpolator(this.mLogAccelerateInterpolator);
            animation.setDuration(getAdjustedDuration(250));
            animation2.setInterpolator(this.mFastOutSlowInInterpolator);
            animation2.setDuration(getAdjustedDuration(250));
            animation3.setInterpolator(this.mFastOutSlowInInterpolator);
            animation3.setDuration(getAdjustedDuration(250));
            this.mOpenOverflowAnimation.getAnimations().clear();
            this.mOpenOverflowAnimation.addAnimation(animation);
            this.mOpenOverflowAnimation.addAnimation(animation2);
            this.mOpenOverflowAnimation.addAnimation(animation3);
            this.mContentContainer.startAnimation(this.mOpenOverflowAnimation);
            this.mIsOverflowOpen = true;
            updateOverflowButtonClickListener();
            this.mMainPanel.animate().alpha(BitmapDescriptorFactory.HUE_RED).withLayer().setInterpolator(this.mLinearOutSlowInInterpolator).setDuration(250L).start();
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mOverflowButton.getLayoutParams();
            layoutParams.width = this.mOverflowPanel.getWidth();
            this.mOverflowButton.setLayoutParams(layoutParams);
            this.mOverflowPanel.setAlpha(1.0f);
        }

        private void closeOverflow() {
            final int width = this.mMainPanelSize.getWidth();
            final int width2 = this.mContentContainer.getWidth();
            final float x = this.mContentContainer.getX();
            final float width3 = x + this.mContentContainer.getWidth();
            Animation animation = new Animation() { // from class: org.telegram.ui.ActionBar.FloatingToolbar.FloatingToolbarPopup.9
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    FloatingToolbarPopup floatingToolbarPopup = FloatingToolbarPopup.this;
                    floatingToolbarPopup.setWidth(floatingToolbarPopup.mContentContainer, width2 + ((int) (f * (width - width2))));
                    if (FloatingToolbarPopup.this.isInRTLMode()) {
                        FloatingToolbarPopup.this.mContentContainer.setX(x);
                        FloatingToolbarPopup.this.mMainPanel.setX(BitmapDescriptorFactory.HUE_RED);
                        FloatingToolbarPopup.this.mOverflowPanel.setX(BitmapDescriptorFactory.HUE_RED);
                        return;
                    }
                    FloatingToolbarPopup.this.mContentContainer.setX(width3 - FloatingToolbarPopup.this.mContentContainer.getWidth());
                    FloatingToolbarPopup.this.mMainPanel.setX(FloatingToolbarPopup.this.mContentContainer.getWidth() - width);
                    FloatingToolbarPopup.this.mOverflowPanel.setX(FloatingToolbarPopup.this.mContentContainer.getWidth() - width2);
                }
            };
            final int height = this.mMainPanelSize.getHeight();
            final int height2 = this.mContentContainer.getHeight();
            final float y = this.mContentContainer.getY() + this.mContentContainer.getHeight();
            Animation animation2 = new Animation() { // from class: org.telegram.ui.ActionBar.FloatingToolbar.FloatingToolbarPopup.10
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    FloatingToolbarPopup floatingToolbarPopup = FloatingToolbarPopup.this;
                    floatingToolbarPopup.setHeight(floatingToolbarPopup.mContentContainer, height2 + ((int) (f * (height - height2))));
                    if (FloatingToolbarPopup.this.mOpenOverflowUpwards) {
                        FloatingToolbarPopup.this.mContentContainer.setY(y - FloatingToolbarPopup.this.mContentContainer.getHeight());
                        FloatingToolbarPopup.this.positionContentYCoordinatesIfOpeningOverflowUpwards();
                    }
                }
            };
            final float x2 = this.mOverflowButton.getX();
            final float width4 = isInRTLMode() ? (x2 - width2) + this.mOverflowButtonIcon.getWidth() : (width2 + x2) - this.mOverflowButtonIcon.getWidth();
            Animation animation3 = new Animation() { // from class: org.telegram.ui.ActionBar.FloatingToolbar.FloatingToolbarPopup.11
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    float f2 = x2;
                    FloatingToolbarPopup.this.mOverflowButton.setX(f2 + ((width4 - f2) * f) + (FloatingToolbarPopup.this.isInRTLMode() ? BitmapDescriptorFactory.HUE_RED : FloatingToolbarPopup.this.mContentContainer.getWidth() - width2));
                    float f3 = 1.0f - f;
                    FloatingToolbarPopup.this.mOverflowButtonText.setAlpha(f3);
                    FloatingToolbarPopup.this.mOverflowButtonShadow.setAlpha(f3);
                }
            };
            animation.setInterpolator(this.mFastOutSlowInInterpolator);
            animation.setDuration(getAdjustedDuration(250));
            animation2.setInterpolator(this.mLogAccelerateInterpolator);
            animation2.setDuration(getAdjustedDuration(250));
            animation3.setInterpolator(this.mFastOutSlowInInterpolator);
            animation3.setDuration(getAdjustedDuration(250));
            this.mCloseOverflowAnimation.getAnimations().clear();
            this.mCloseOverflowAnimation.addAnimation(animation);
            this.mCloseOverflowAnimation.addAnimation(animation2);
            this.mCloseOverflowAnimation.addAnimation(animation3);
            this.mContentContainer.startAnimation(this.mCloseOverflowAnimation);
            this.mIsOverflowOpen = false;
            updateOverflowButtonClickListener();
            this.mMainPanel.animate().alpha(1.0f).withLayer().setInterpolator(this.mFastOutLinearInInterpolator).setDuration(100L).start();
            this.mOverflowPanel.animate().alpha(BitmapDescriptorFactory.HUE_RED).withLayer().setInterpolator(this.mLinearOutSlowInInterpolator).setDuration(150L).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPanelsStatesAtRestingPosition() {
            this.mOverflowButton.setEnabled(true);
            this.mOverflowPanel.awakenScrollBars();
            if (this.mIsOverflowOpen) {
                Size size = this.mOverflowPanelSize;
                setSize(this.mContentContainer, size);
                this.mMainPanel.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.mMainPanel.setVisibility(4);
                this.mOverflowPanel.setAlpha(1.0f);
                this.mOverflowPanel.setVisibility(0);
                this.mOverflowButtonIcon.setImageDrawable(this.mArrow);
                this.mOverflowButton.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions));
                if (isInRTLMode()) {
                    this.mContentContainer.setX(this.mMarginHorizontal);
                    this.mMainPanel.setX(BitmapDescriptorFactory.HUE_RED);
                    this.mOverflowButton.setX(size.getWidth() - this.mOverflowButtonSize.getWidth());
                    this.mOverflowPanel.setX(BitmapDescriptorFactory.HUE_RED);
                } else {
                    this.mContentContainer.setX((this.mPopupWindow.getWidth() - size.getWidth()) - this.mMarginHorizontal);
                    this.mMainPanel.setX(-this.mContentContainer.getX());
                    this.mOverflowButton.setX(BitmapDescriptorFactory.HUE_RED);
                    this.mOverflowPanel.setX(BitmapDescriptorFactory.HUE_RED);
                }
                if (this.mOpenOverflowUpwards) {
                    this.mContentContainer.setY(this.mMarginVertical);
                    this.mMainPanel.setY(size.getHeight() - this.mContentContainer.getHeight());
                    this.mOverflowButton.setY(size.getHeight() - this.mOverflowButtonSize.getHeight());
                    this.mOverflowPanel.setY(BitmapDescriptorFactory.HUE_RED);
                    return;
                }
                this.mContentContainer.setY(this.mMarginVertical);
                this.mMainPanel.setY(BitmapDescriptorFactory.HUE_RED);
                this.mOverflowButton.setY(BitmapDescriptorFactory.HUE_RED);
                this.mOverflowPanel.setY(this.mOverflowButtonSize.getHeight());
                return;
            }
            Size size2 = this.mMainPanelSize;
            setSize(this.mContentContainer, size2);
            this.mMainPanel.setAlpha(1.0f);
            this.mMainPanel.setVisibility(0);
            this.mOverflowPanel.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.mOverflowPanel.setVisibility(4);
            this.mOverflowButtonIcon.setImageDrawable(this.mOverflow);
            this.mOverflowButton.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions));
            if (hasOverflow()) {
                if (isInRTLMode()) {
                    this.mContentContainer.setX(this.mMarginHorizontal);
                    this.mMainPanel.setX(BitmapDescriptorFactory.HUE_RED);
                    this.mOverflowButton.setX(BitmapDescriptorFactory.HUE_RED);
                    this.mOverflowPanel.setX(BitmapDescriptorFactory.HUE_RED);
                } else {
                    this.mContentContainer.setX((this.mPopupWindow.getWidth() - size2.getWidth()) - this.mMarginHorizontal);
                    this.mMainPanel.setX(BitmapDescriptorFactory.HUE_RED);
                    this.mOverflowButton.setX(size2.getWidth() - this.mOverflowButtonSize.getWidth());
                    this.mOverflowPanel.setX(size2.getWidth() - this.mOverflowPanelSize.getWidth());
                }
                if (this.mOpenOverflowUpwards) {
                    this.mContentContainer.setY((this.mMarginVertical + this.mOverflowPanelSize.getHeight()) - size2.getHeight());
                    this.mMainPanel.setY(BitmapDescriptorFactory.HUE_RED);
                    this.mOverflowButton.setY(BitmapDescriptorFactory.HUE_RED);
                    this.mOverflowPanel.setY(size2.getHeight() - this.mOverflowPanelSize.getHeight());
                    return;
                }
                this.mContentContainer.setY(this.mMarginVertical);
                this.mMainPanel.setY(BitmapDescriptorFactory.HUE_RED);
                this.mOverflowButton.setY(BitmapDescriptorFactory.HUE_RED);
                this.mOverflowPanel.setY(this.mOverflowButtonSize.getHeight());
                return;
            }
            this.mContentContainer.setX(this.mMarginHorizontal);
            this.mContentContainer.setY(this.mMarginVertical);
            this.mMainPanel.setX(BitmapDescriptorFactory.HUE_RED);
            this.mMainPanel.setY(BitmapDescriptorFactory.HUE_RED);
        }

        private void updateOverflowHeight(int i) {
            if (hasOverflow()) {
                int calculateOverflowHeight = calculateOverflowHeight((i - this.mOverflowButtonSize.getHeight()) / this.mLineHeight);
                if (this.mOverflowPanelSize.getHeight() != calculateOverflowHeight) {
                    this.mOverflowPanelSize = new Size(this.mOverflowPanelSize.getWidth(), calculateOverflowHeight);
                }
                setSize(this.mOverflowPanel, this.mOverflowPanelSize);
                if (this.mIsOverflowOpen) {
                    setSize(this.mContentContainer, this.mOverflowPanelSize);
                    if (this.mOpenOverflowUpwards) {
                        int height = this.mOverflowPanelSize.getHeight() - calculateOverflowHeight;
                        ViewGroup viewGroup = this.mContentContainer;
                        float f = height;
                        viewGroup.setY(viewGroup.getY() + f);
                        FrameLayout frameLayout = this.mOverflowButton;
                        frameLayout.setY(frameLayout.getY() - f);
                    }
                } else {
                    setSize(this.mContentContainer, this.mMainPanelSize);
                }
                updatePopupSize();
            }
        }

        private void updatePopupSize() {
            int i;
            Size size = this.mMainPanelSize;
            int i2 = 0;
            if (size != null) {
                i2 = Math.max(0, size.getWidth());
                i = Math.max(0, this.mMainPanelSize.getHeight());
            } else {
                i = 0;
            }
            Size size2 = this.mOverflowPanelSize;
            if (size2 != null) {
                i2 = Math.max(i2, size2.getWidth());
                i = Math.max(i, this.mOverflowPanelSize.getHeight());
            }
            this.mPopupWindow.setWidth(i2 + (this.mMarginHorizontal * 2));
            this.mPopupWindow.setHeight(i + (this.mMarginVertical * 2));
            maybeComputeTransitionDurationScale();
        }

        private void refreshViewPort() {
            this.mParent.getWindowVisibleDisplayFrame(this.mViewPortOnScreen);
        }

        private int getAdjustedToolbarWidth(int i) {
            refreshViewPort();
            int width = this.mViewPortOnScreen.width() - (AndroidUtilities.m107dp(16) * 2);
            if (i <= 0) {
                i = AndroidUtilities.m107dp(400);
            }
            return Math.min(i, width);
        }

        private void setZeroTouchableSurface() {
            this.mTouchableRegion.setEmpty();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContentAreaAsTouchableSurface() {
            int width;
            int height;
            if (this.mIsOverflowOpen) {
                width = this.mOverflowPanelSize.getWidth();
                height = this.mOverflowPanelSize.getHeight();
            } else {
                width = this.mMainPanelSize.getWidth();
                height = this.mMainPanelSize.getHeight();
            }
            this.mTouchableRegion.set((int) this.mContentContainer.getX(), (int) this.mContentContainer.getY(), ((int) this.mContentContainer.getX()) + width, ((int) this.mContentContainer.getY()) + height);
        }

        private boolean hasOverflow() {
            return this.mOverflowPanelSize != null;
        }

        public List<MenuItem> layoutMainPanelItems(List<MenuItem> list, int i) {
            LinkedList linkedList = new LinkedList(list);
            this.mMainPanel.removeAllViews();
            this.mMainPanel.setPaddingRelative(0, 0, 0, 0);
            Iterator it = linkedList.iterator();
            int i2 = i;
            boolean z = true;
            while (it.hasNext()) {
                MenuItem menuItem = (MenuItem) it.next();
                boolean z2 = !it.hasNext();
                if (menuItem == null || FloatingToolbar.this.premiumLockClickListener == null || !FloatingToolbar.premiumOptions.contains(Integer.valueOf(menuItem.getItemId()))) {
                    View createMenuItemButton = FloatingToolbar.this.createMenuItemButton(this.mContext, menuItem, this.mIconTextSpacing, z, z2);
                    if (createMenuItemButton instanceof LinearLayout) {
                        ((LinearLayout) createMenuItemButton).setGravity(17);
                    }
                    createMenuItemButton.setPaddingRelative((int) ((z ? 1.5d : 1.0d) * createMenuItemButton.getPaddingStart()), createMenuItemButton.getPaddingTop(), (int) (createMenuItemButton.getPaddingEnd() * (z2 ? 1.5d : 1.0d)), createMenuItemButton.getPaddingBottom());
                    createMenuItemButton.measure(0, 0);
                    int min = Math.min(createMenuItemButton.getMeasuredWidth(), i);
                    boolean z3 = min <= i2 - this.mOverflowButtonSize.getWidth();
                    boolean z4 = z2 && min <= i2;
                    if (!z3 && !z4) {
                        break;
                    }
                    setButtonTagAndClickListener(createMenuItemButton, menuItem);
                    this.mMainPanel.addView(createMenuItemButton);
                    ViewGroup.LayoutParams layoutParams = createMenuItemButton.getLayoutParams();
                    layoutParams.width = min;
                    createMenuItemButton.setLayoutParams(layoutParams);
                    i2 -= min;
                    it.remove();
                    z = false;
                }
            }
            if (!linkedList.isEmpty()) {
                this.mMainPanel.setPaddingRelative(0, 0, this.mOverflowButtonSize.getWidth(), 0);
            }
            this.mMainPanelSize = measure(this.mMainPanel);
            return linkedList;
        }

        private void layoutOverflowPanelItems(List<MenuItem> list) {
            ArrayAdapter arrayAdapter = (ArrayAdapter) this.mOverflowPanel.getAdapter();
            arrayAdapter.clear();
            if (FloatingToolbar.this.premiumLockClickListener != null) {
                Collections.sort(list, new Comparator() { // from class: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda4
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int lambda$layoutOverflowPanelItems$3;
                        lambda$layoutOverflowPanelItems$3 = FloatingToolbar.FloatingToolbarPopup.lambda$layoutOverflowPanelItems$3((MenuItem) obj, (MenuItem) obj2);
                        return lambda$layoutOverflowPanelItems$3;
                    }
                });
            }
            int size = list.size();
            boolean premiumFeaturesBlocked = MessagesController.getInstance(UserConfig.selectedAccount).premiumFeaturesBlocked();
            for (int i = 0; i < size; i++) {
                MenuItem menuItem = list.get(i);
                boolean z = true;
                if (FloatingToolbar.this.premiumLockClickListener != null && FloatingToolbar.premiumOptions.contains(Integer.valueOf(menuItem.getItemId()))) {
                    z = true ^ premiumFeaturesBlocked;
                }
                if (z) {
                    arrayAdapter.add(menuItem);
                }
            }
            this.mOverflowPanel.setAdapter((ListAdapter) arrayAdapter);
            if (this.mOpenOverflowUpwards) {
                this.mOverflowPanel.setY(BitmapDescriptorFactory.HUE_RED);
            } else {
                this.mOverflowPanel.setY(this.mOverflowButtonSize.getHeight());
            }
            Size size2 = new Size(Math.max(getOverflowWidth(), this.mOverflowButtonSize.getWidth()), calculateOverflowHeight(4));
            this.mOverflowPanelSize = size2;
            setSize(this.mOverflowPanel, size2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int lambda$layoutOverflowPanelItems$3(MenuItem menuItem, MenuItem menuItem2) {
            List<Integer> list = FloatingToolbar.premiumOptions;
            return (list.contains(Integer.valueOf(menuItem.getItemId())) ? 1 : 0) - (list.contains(Integer.valueOf(menuItem2.getItemId())) ? 1 : 0);
        }

        private void preparePopupContent() {
            this.mContentContainer.removeAllViews();
            if (hasOverflow()) {
                this.mContentContainer.addView(this.mOverflowPanel);
            }
            this.mContentContainer.addView(this.mMainPanel);
            if (hasOverflow()) {
                this.mContentContainer.addView(this.mOverflowButton);
            }
            setPanelsStatesAtRestingPosition();
            setContentAreaAsTouchableSurface();
            if (isInRTLMode()) {
                this.mContentContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.mContentContainer.post(this.mPreparePopupContentRTLHelper);
            }
        }

        private void clearPanels() {
            this.mOverflowPanelSize = null;
            this.mMainPanelSize = null;
            this.mIsOverflowOpen = false;
            updateOverflowButtonClickListener();
            this.mMainPanel.removeAllViews();
            ArrayAdapter arrayAdapter = (ArrayAdapter) this.mOverflowPanel.getAdapter();
            arrayAdapter.clear();
            this.mOverflowPanel.setAdapter((ListAdapter) arrayAdapter);
            this.mContentContainer.removeAllViews();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void positionContentYCoordinatesIfOpeningOverflowUpwards() {
            if (this.mOpenOverflowUpwards) {
                this.mMainPanel.setY(this.mContentContainer.getHeight() - this.mMainPanelSize.getHeight());
                this.mOverflowButton.setY(this.mContentContainer.getHeight() - this.mOverflowButton.getHeight());
                this.mOverflowPanel.setY(this.mContentContainer.getHeight() - this.mOverflowPanelSize.getHeight());
            }
        }

        private int getOverflowWidth() {
            int count = this.mOverflowPanel.getAdapter().getCount();
            int i = 0;
            for (int i2 = 0; i2 < count; i2++) {
                i = Math.max(this.mOverflowPanelViewHelper.calculateWidth((MenuItem) this.mOverflowPanel.getAdapter().getItem(i2)), i);
            }
            return i;
        }

        private int calculateOverflowHeight(int i) {
            int min = Math.min(4, Math.min(Math.max(2, i), this.mOverflowPanel.getCount()));
            return (min * this.mLineHeight) + this.mOverflowButtonSize.getHeight() + (min < this.mOverflowPanel.getCount() ? (int) (this.mLineHeight * 0.5f) : 0);
        }

        private void setButtonTagAndClickListener(View view, MenuItem menuItem) {
            view.setTag(menuItem);
            view.setOnClickListener(this.mMenuItemButtonOnClickListener);
        }

        private int getAdjustedDuration(int i) {
            int i2 = this.mTransitionDurationScale;
            if (i2 < 150) {
                return Math.max(i - 50, 0);
            }
            return i2 > 300 ? i + 50 : i;
        }

        private void maybeComputeTransitionDurationScale() {
            Size size = this.mMainPanelSize;
            if (size == null || this.mOverflowPanelSize == null) {
                return;
            }
            int width = size.getWidth() - this.mOverflowPanelSize.getWidth();
            int height = this.mOverflowPanelSize.getHeight() - this.mMainPanelSize.getHeight();
            this.mTransitionDurationScale = (int) (Math.sqrt((width * width) + (height * height)) / this.mContentContainer.getContext().getResources().getDisplayMetrics().density);
        }

        private ViewGroup createMainPanel() {
            return new LinearLayout(this.mContext) { // from class: org.telegram.ui.ActionBar.FloatingToolbar.FloatingToolbarPopup.12
                @Override // android.widget.LinearLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    if (FloatingToolbarPopup.this.isOverflowAnimating() && FloatingToolbarPopup.this.mMainPanelSize != null) {
                        i = View.MeasureSpec.makeMeasureSpec(FloatingToolbarPopup.this.mMainPanelSize.getWidth(), 1073741824);
                    }
                    super.onMeasure(i, i2);
                }

                @Override // android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                    return FloatingToolbarPopup.this.isOverflowAnimating();
                }
            };
        }

        private OverflowPanel createOverflowPanel() {
            final OverflowPanel overflowPanel = new OverflowPanel(this, this);
            overflowPanel.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            overflowPanel.setDivider(null);
            overflowPanel.setDividerHeight(0);
            overflowPanel.setAdapter((ListAdapter) new ArrayAdapter<MenuItem>(this.mContext, 0) { // from class: org.telegram.ui.ActionBar.FloatingToolbar.FloatingToolbarPopup.13
                @Override // android.widget.ArrayAdapter, android.widget.Adapter
                public View getView(int i, View view, ViewGroup viewGroup) {
                    return FloatingToolbarPopup.this.mOverflowPanelViewHelper.getView(getItem(i), FloatingToolbarPopup.this.mOverflowPanelSize.getWidth(), view);
                }
            });
            overflowPanel.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda3
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    FloatingToolbar.FloatingToolbarPopup.this.lambda$createOverflowPanel$4(overflowPanel, adapterView, view, i, j);
                }
            });
            return overflowPanel;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createOverflowPanel$4(OverflowPanel overflowPanel, AdapterView adapterView, View view, int i, long j) {
            MenuItem menuItem = (MenuItem) overflowPanel.getAdapter().getItem(i);
            if (FloatingToolbar.this.premiumLockClickListener != null && FloatingToolbar.premiumOptions.contains(Integer.valueOf(menuItem.getItemId()))) {
                int i2 = -this.shiftDp;
                this.shiftDp = i2;
                AndroidUtilities.shakeViewSpring(view, i2);
                BotWebViewVibrationEffect.APP_ERROR.vibrate();
                FloatingToolbar.this.premiumLockClickListener.run();
                return;
            }
            MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.mOnMenuItemClickListener;
            if (onMenuItemClickListener != null) {
                onMenuItemClickListener.onMenuItemClick(menuItem);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isOverflowAnimating() {
            return (this.mOpenOverflowAnimation.hasStarted() && !this.mOpenOverflowAnimation.hasEnded()) || (this.mCloseOverflowAnimation.hasStarted() && !this.mCloseOverflowAnimation.hasEnded());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$14  reason: invalid class name */
        /* loaded from: classes5.dex */
        public class animationAnimation$AnimationListenerC379214 implements Animation.AnimationListener {
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            animationAnimation$AnimationListenerC379214() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                FloatingToolbarPopup.this.mOverflowButton.setEnabled(false);
                FloatingToolbarPopup.this.mMainPanel.setVisibility(0);
                FloatingToolbarPopup.this.mOverflowPanel.setVisibility(0);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                FloatingToolbarPopup.this.mContentContainer.post(new Runnable() { // from class: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$14$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FloatingToolbar.FloatingToolbarPopup.animationAnimation$AnimationListenerC379214.this.lambda$onAnimationEnd$0();
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onAnimationEnd$0() {
                FloatingToolbarPopup.this.setPanelsStatesAtRestingPosition();
                FloatingToolbarPopup.this.setContentAreaAsTouchableSurface();
            }
        }

        private Animation.AnimationListener createOverflowAnimationListener() {
            return new animationAnimation$AnimationListenerC379214();
        }

        private Size measure(View view) {
            view.measure(0, 0);
            return new Size(view.getMeasuredWidth(), view.getMeasuredHeight());
        }

        private void setSize(View view, int i, int i2) {
            view.setMinimumWidth(i);
            view.setMinimumHeight(i2);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(0, 0);
            }
            layoutParams.width = i;
            layoutParams.height = i2;
            view.setLayoutParams(layoutParams);
        }

        private void setSize(View view, Size size) {
            setSize(view, size.getWidth(), size.getHeight());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWidth(View view, int i) {
            setSize(view, i, view.getLayoutParams().height);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHeight(View view, int i) {
            setSize(view, view.getLayoutParams().width, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$OverflowPanel */
        /* loaded from: classes5.dex */
        public final class OverflowPanel extends ListView {
            private final FloatingToolbarPopup mPopup;

            OverflowPanel(FloatingToolbarPopup floatingToolbarPopup, FloatingToolbarPopup floatingToolbarPopup2) {
                super(floatingToolbarPopup2.mContext);
                this.mPopup = floatingToolbarPopup2;
                setVerticalScrollBarEnabled(false);
                setOutlineProvider(new ViewOutlineProvider(this, floatingToolbarPopup) { // from class: org.telegram.ui.ActionBar.FloatingToolbar.FloatingToolbarPopup.OverflowPanel.1
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view, Outline outline) {
                        outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() + AndroidUtilities.m107dp(6), AndroidUtilities.m107dp(6));
                    }
                });
                setClipToOutline(true);
            }

            @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.mPopup.mOverflowPanelSize.getHeight() - this.mPopup.mOverflowButtonSize.getHeight(), 1073741824));
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (this.mPopup.isOverflowAnimating()) {
                    return true;
                }
                return super.dispatchTouchEvent(motionEvent);
            }

            @Override // android.view.View
            protected boolean awakenScrollBars() {
                return super.awakenScrollBars();
            }
        }

        /* renamed from: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator */
        /* loaded from: classes5.dex */
        private final class LogAccelerateInterpolator implements Interpolator {
            private final float LOGS_SCALE;

            private LogAccelerateInterpolator(FloatingToolbarPopup floatingToolbarPopup) {
                this.LOGS_SCALE = 1.0f / computeLog(1.0f, 100);
            }

            private float computeLog(float f, int i) {
                return (float) (1.0d - Math.pow(i, -f));
            }

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return 1.0f - (computeLog(1.0f - f, 100) * this.LOGS_SCALE);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.ActionBar.FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper */
        /* loaded from: classes5.dex */
        public final class OverflowPanelViewHelper {
            private final Context mContext;
            private final int mIconTextSpacing;
            private final int mSidePadding = AndroidUtilities.m107dp(18);
            private final View mCalculator = createMenuButton(null);

            public OverflowPanelViewHelper(Context context, int i) {
                this.mContext = context;
                this.mIconTextSpacing = i;
            }

            public View getView(MenuItem menuItem, int i, View view) {
                if (view != null) {
                    FloatingToolbar.updateMenuItemButton(view, menuItem, this.mIconTextSpacing, FloatingToolbar.this.premiumLockClickListener != null);
                } else {
                    view = createMenuButton(menuItem);
                }
                view.setMinimumWidth(i);
                return view;
            }

            public int calculateWidth(MenuItem menuItem) {
                FloatingToolbar.updateMenuItemButton(this.mCalculator, menuItem, this.mIconTextSpacing, FloatingToolbar.this.premiumLockClickListener != null);
                this.mCalculator.measure(0, 0);
                return this.mCalculator.getMeasuredWidth();
            }

            private View createMenuButton(MenuItem menuItem) {
                View createMenuItemButton = FloatingToolbar.this.createMenuItemButton(this.mContext, menuItem, this.mIconTextSpacing, false, false);
                int i = this.mSidePadding;
                createMenuItemButton.setPadding(i, 0, i, 0);
                return createMenuItemButton;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View createMenuItemButton(Context context, MenuItem menuItem, int i, boolean z, boolean z2) {
        int themedColor;
        int i2;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        boolean z3 = false;
        linearLayout.setOrientation(0);
        linearLayout.setMinimumWidth(AndroidUtilities.m107dp(48));
        linearLayout.setMinimumHeight(AndroidUtilities.m107dp(48));
        linearLayout.setPaddingRelative(AndroidUtilities.m107dp(16), 0, AndroidUtilities.m107dp(16), 0);
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 14.0f);
        textView.setFocusable(false);
        textView.setImportantForAccessibility(2);
        textView.setFocusableInTouchMode(false);
        int themedColor2 = getThemedColor(Theme.key_listSelector);
        int i3 = this.currentStyle;
        if (i3 == 0) {
            themedColor = getThemedColor(Theme.key_dialogTextBlack);
            textView.setTextColor(themedColor);
        } else if (i3 == 2) {
            themedColor = -328966;
            textView.setTextColor(-328966);
            themedColor2 = 553648127;
        } else if (i3 == 1) {
            themedColor = getThemedColor(Theme.key_windowBackgroundWhiteBlackText);
            textView.setTextColor(themedColor);
        } else {
            themedColor = getThemedColor(Theme.key_windowBackgroundWhiteBlackText);
        }
        if (z || z2) {
            linearLayout.setBackground(Theme.createRadSelectorDrawable(themedColor2, z ? 6 : 0, z2 ? 6 : 0, z2 ? 6 : 0, z ? 6 : 0));
        } else {
            linearLayout.setBackground(Theme.getSelectorDrawable(themedColor2, false));
        }
        textView.setPaddingRelative(AndroidUtilities.m107dp(11), 0, 0, 0);
        linearLayout.addView(textView, new LinearLayout.LayoutParams(-2, AndroidUtilities.m107dp(48)));
        linearLayout.addView(new Space(context), new LinearLayout.LayoutParams(-1, 1, 1.0f));
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C3632R.C3634drawable.msg_mini_lock3);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.multAlpha(themedColor, 0.4f), PorterDuff.Mode.SRC_IN));
        imageView.setVisibility(8);
        linearLayout.addView(imageView, LayoutHelper.createLinear(-2, -1, BitmapDescriptorFactory.HUE_RED, 0, 12, 0, 0, 0));
        if (menuItem != null) {
            if (this.premiumLockClickListener != null) {
                i2 = i;
                z3 = true;
            } else {
                i2 = i;
            }
            updateMenuItemButton(linearLayout, menuItem, i2, z3);
        }
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateMenuItemButton(View view, MenuItem menuItem, int i, boolean z) {
        ViewGroup viewGroup = (ViewGroup) view;
        TextView textView = (TextView) viewGroup.getChildAt(0);
        textView.setEllipsize(null);
        if (TextUtils.isEmpty(menuItem.getTitle())) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(menuItem.getTitle());
        }
        textView.setPaddingRelative(0, 0, 0, 0);
        viewGroup.getChildAt(2).setVisibility(z && premiumOptions.contains(Integer.valueOf(menuItem.getItemId())) ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewGroup createContentContainer(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        int m107dp = AndroidUtilities.m107dp(20);
        marginLayoutParams.rightMargin = m107dp;
        marginLayoutParams.topMargin = m107dp;
        marginLayoutParams.leftMargin = m107dp;
        marginLayoutParams.bottomMargin = m107dp;
        relativeLayout.setLayoutParams(marginLayoutParams);
        relativeLayout.setElevation(AndroidUtilities.m107dp(2));
        relativeLayout.setFocusable(true);
        relativeLayout.setFocusableInTouchMode(true);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        float m107dp2 = AndroidUtilities.m107dp(6);
        gradientDrawable.setCornerRadii(new float[]{m107dp2, m107dp2, m107dp2, m107dp2, m107dp2, m107dp2, m107dp2, m107dp2});
        int i = this.currentStyle;
        if (i == 0) {
            gradientDrawable.setColor(getThemedColor(Theme.key_dialogBackground));
        } else if (i == 2) {
            gradientDrawable.setColor(-115203550);
        } else if (i == 1) {
            gradientDrawable.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
        }
        relativeLayout.setBackgroundDrawable(gradientDrawable);
        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        relativeLayout.setClipToOutline(true);
        return relativeLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static PopupWindow createPopupWindow(ViewGroup viewGroup) {
        LinearLayout linearLayout = new LinearLayout(viewGroup.getContext());
        PopupWindow popupWindow = new PopupWindow(linearLayout);
        popupWindow.setClippingEnabled(false);
        popupWindow.setAnimationStyle(0);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        viewGroup.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        linearLayout.addView(viewGroup);
        return popupWindow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AnimatorSet createEnterAnimation(View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(150L));
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AnimatorSet createExitAnimation(View view, int i, Animator.AnimatorListener animatorListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED).setDuration(100L));
        animatorSet.setStartDelay(i);
        animatorSet.addListener(animatorListener);
        return animatorSet;
    }
}
