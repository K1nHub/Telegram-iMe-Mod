package org.telegram.p043ui.ActionBar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.transition.ChangeBounds;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$Menu;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Adapters.FiltersView;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.CloseProgressDrawable2;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_reactionCount;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.ActionBar.ActionBarMenuItem */
/* loaded from: classes5.dex */
public class ActionBarMenuItem extends FrameLayout {
    private int additionalXOffset;
    private int additionalYOffset;
    private boolean allowCloseAnimation;
    private boolean animateClear;
    private boolean animationEnabled;
    private ImageView clearButton;
    private AnimatorSet clearButtonAnimator;
    private ArrayList<FiltersView.MediaFilterData> currentSearchFilters;
    private ActionBarMenuItemDelegate delegate;
    private float dimMenu;
    private boolean fixBackground;
    private boolean forceSmoothKeyboard;
    protected RLottieImageView iconView;
    private boolean ignoreOnTextChange;
    public boolean isRippleVisible;
    private boolean isSearchField;
    private boolean layoutInScreen;
    private ArrayList<Item> lazyList;
    private HashMap<Integer, Item> lazyMap;
    protected ActionBarMenuItemSearchListener listener;
    private int[] location;
    private boolean longClickEnabled;
    private final AnimationNotificationsLocker notificationsLocker;
    private View.OnClickListener onClickListener;
    protected boolean overrideMenuClick;
    private ActionBarMenu parentMenu;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout popupLayout;
    private ActionBarPopupWindow popupWindow;
    private boolean processedPopupClick;
    private CloseProgressDrawable2 progressDrawable;
    private Rect rect;
    private final Theme.ResourcesProvider resourcesProvider;
    private View searchAdditionalButton;
    private FrameLayout searchContainer;
    AnimatorSet searchContainerAnimator;
    private EditTextBoldCursor searchField;
    private TextView searchFieldCaption;
    private CharSequence searchFieldHint;
    private CharSequence searchFieldText;
    private LinearLayout searchFilterLayout;
    public int searchItemPaddingStart;
    public int searchRightMargin;
    private int selectedFilterIndex;
    private View selectedMenuView;
    private Runnable showMenuRunnable;
    private View showSubMenuFrom;
    private boolean showSubmenuByMove;
    private ActionBarSubMenuItemDelegate subMenuDelegate;
    private int subMenuOpenSide;
    protected TextView textView;
    private float transitionOffset;
    private boolean wrapSearchInScrollView;
    private FrameLayout wrappedSearchFrameLayout;
    private int yOffset;

    /* renamed from: org.telegram.ui.ActionBar.ActionBarMenuItem$ActionBarMenuItemDelegate */
    /* loaded from: classes5.dex */
    public interface ActionBarMenuItemDelegate {
        void onItemClick(int i);
    }

    /* renamed from: org.telegram.ui.ActionBar.ActionBarMenuItem$ActionBarMenuItemSearchListener */
    /* loaded from: classes5.dex */
    public static class ActionBarMenuItemSearchListener {
        public boolean canCollapseSearch() {
            return true;
        }

        public boolean canToggleSearch() {
            return true;
        }

        public boolean forceShowClear() {
            return false;
        }

        public Animator getCustomToggleTransition() {
            return null;
        }

        public void onCaptionCleared() {
        }

        public void onLayout(int i, int i2, int i3, int i4) {
        }

        public void onPreToggleSearch() {
        }

        public void onSearchCollapse() {
        }

        public void onSearchExpand() {
        }

        public void onSearchFilterCleared(FiltersView.MediaFilterData mediaFilterData) {
        }

        public void onSearchPressed(EditText editText) {
        }

        public void onTextChanged(EditText editText) {
        }
    }

    /* renamed from: org.telegram.ui.ActionBar.ActionBarMenuItem$ActionBarSubMenuItemDelegate */
    /* loaded from: classes5.dex */
    public interface ActionBarSubMenuItemDelegate {
        void onHideSubMenu();

        void onShowSubMenu();
    }

    protected void onDismiss() {
    }

    public ActionBarMenuItem(Context context, ActionBarMenu actionBarMenu, int i, int i2, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(context, actionBarMenu, i, i2, z, resourcesProvider, null);
    }

    public ActionBarMenuItem(Context context, AttributeSet attributeSet) {
        this(context, null, 0, Theme.getColor(Theme.key_sheet_other), false, null, attributeSet);
    }

    public static ActionBarPopupWindow.GapView addColoredGap(ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, Theme.ResourcesProvider resourcesProvider) {
        ActionBarPopupWindow.GapView gapView = new ActionBarPopupWindow.GapView(actionBarPopupWindowLayout.getContext(), resourcesProvider, Theme.key_actionBarDefaultSubmenuSeparator);
        gapView.setTag(C3632R.C3635id.fit_width_tag, 1);
        actionBarPopupWindowLayout.addView((View) gapView, LayoutHelper.createLinear(-1, 8));
        return gapView;
    }

    public void disableRipple() {
        this.isRippleVisible = false;
        setBackground(null);
    }

    public int getAdditionalYOffset() {
        return this.additionalYOffset;
    }

    public void dropPopupLayout() {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        if (actionBarPopupWindowLayout == null) {
            return;
        }
        actionBarPopupWindowLayout.removeInnerViews();
        this.popupLayout = null;
    }

    public void setSubItemVisible(int i, boolean z) {
        if (z) {
            showSubItem(i);
        } else {
            hideSubItem(i);
        }
    }

    public static void addText(ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, String str, Theme.ResourcesProvider resourcesProvider) {
        TextView textView = new TextView(actionBarPopupWindowLayout.getContext());
        textView.setTextSize(1, 13.0f);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
        textView.setPadding(AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(8));
        textView.setText(str);
        textView.setTag(C3632R.C3635id.fit_width_tag, 1);
        textView.setMaxWidth(AndroidUtilities.m107dp(200));
        actionBarPopupWindowLayout.addView((View) textView, LayoutHelper.createLinear(-1, -2));
    }

    public void setSearchPaddingStart(int i) {
        this.searchItemPaddingStart = i;
        FrameLayout frameLayout = this.searchContainer;
        if (frameLayout != null) {
            ((ViewGroup.MarginLayoutParams) frameLayout.getLayoutParams()).leftMargin = AndroidUtilities.m107dp(i);
            this.searchContainer.setClipChildren(this.searchItemPaddingStart != 0);
            FrameLayout frameLayout2 = this.searchContainer;
            frameLayout2.setLayoutParams(frameLayout2.getLayoutParams());
        }
    }

    public ActionBarMenuItem(Context context, ActionBarMenu actionBarMenu, int i, int i2) {
        this(context, actionBarMenu, i, i2, false);
    }

    public ActionBarMenuItem(Context context, ActionBarMenu actionBarMenu, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
        this(context, actionBarMenu, i, i2, false, resourcesProvider);
    }

    public ActionBarMenuItem(Context context, ActionBarMenu actionBarMenu, int i, int i2, boolean z) {
        this(context, actionBarMenu, i, i2, z, null);
    }

    public ActionBarMenuItem(Context context, ActionBarMenu actionBarMenu, int i, int i2, boolean z, Theme.ResourcesProvider resourcesProvider, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isRippleVisible = true;
        new ArrayList();
        this.allowCloseAnimation = true;
        this.animationEnabled = true;
        this.animateClear = true;
        this.showSubmenuByMove = true;
        this.currentSearchFilters = new ArrayList<>();
        this.selectedFilterIndex = -1;
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.resourcesProvider = resourcesProvider;
        if (i != 0) {
            setBackgroundDrawable(Theme.createSelectorDrawable(i, z ? 5 : 1));
        }
        this.parentMenu = actionBarMenu;
        if (z) {
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 15.0f);
            this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textView.setGravity(17);
            this.textView.setPadding(AndroidUtilities.m107dp(4), 0, AndroidUtilities.m107dp(4), 0);
            this.textView.setImportantForAccessibility(2);
            if (i2 != 0) {
                this.textView.setTextColor(i2);
            }
            addView(this.textView, LayoutHelper.createFrame(-2, -1));
            return;
        }
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.iconView = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        this.iconView.setImportantForAccessibility(2);
        addView(this.iconView, LayoutHelper.createFrame(-1, -1));
        if (i2 != 0) {
            this.iconView.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f + this.transitionOffset);
    }

    public void setLongClickEnabled(boolean z) {
        this.longClickEnabled = z;
    }

    public void setFixBackground(boolean z) {
        this.fixBackground = z;
        invalidate();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.fixBackground) {
            getBackground().draw(canvas);
        }
        super.draw(canvas);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        int[] iArr;
        ActionBarPopupWindow actionBarPopupWindow2;
        ActionBarPopupWindow actionBarPopupWindow3;
        if (motionEvent.getActionMasked() == 0) {
            if (this.longClickEnabled && hasSubMenu() && ((actionBarPopupWindow3 = this.popupWindow) == null || !actionBarPopupWindow3.isShowing())) {
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActionBarMenuItem.this.lambda$onTouchEvent$0();
                    }
                };
                this.showMenuRunnable = runnable;
                AndroidUtilities.runOnUIThread(runnable, 200L);
            }
        } else if (motionEvent.getActionMasked() == 2) {
            if (this.showSubmenuByMove && hasSubMenu() && ((actionBarPopupWindow2 = this.popupWindow) == null || !actionBarPopupWindow2.isShowing())) {
                if (motionEvent.getY() > getHeight()) {
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    toggleSubMenu();
                    return true;
                }
            } else if (this.showSubmenuByMove && (actionBarPopupWindow = this.popupWindow) != null && actionBarPopupWindow.isShowing()) {
                getLocationOnScreen(this.location);
                float x = motionEvent.getX() + this.location[0];
                float y = motionEvent.getY();
                float f = y + iArr[1];
                this.popupLayout.getLocationOnScreen(this.location);
                int[] iArr2 = this.location;
                float f2 = x - iArr2[0];
                float f3 = f - iArr2[1];
                this.selectedMenuView = null;
                for (int i = 0; i < this.popupLayout.getItemsCount(); i++) {
                    View itemAt = this.popupLayout.getItemAt(i);
                    itemAt.getHitRect(this.rect);
                    Object tag = itemAt.getTag();
                    if ((tag instanceof Integer) && ((Integer) tag).intValue() < 100) {
                        if (!this.rect.contains((int) f2, (int) f3)) {
                            itemAt.setPressed(false);
                            itemAt.setSelected(false);
                            if (Build.VERSION.SDK_INT == 21 && itemAt.getBackground() != null) {
                                itemAt.getBackground().setVisible(false, false);
                            }
                        } else {
                            itemAt.setPressed(true);
                            itemAt.setSelected(true);
                            int i2 = Build.VERSION.SDK_INT;
                            if (i2 >= 21) {
                                if (i2 == 21 && itemAt.getBackground() != null) {
                                    itemAt.getBackground().setVisible(true, false);
                                }
                                itemAt.drawableHotspotChanged(f2, f3 - itemAt.getTop());
                            }
                            this.selectedMenuView = itemAt;
                        }
                    }
                }
            }
        } else {
            ActionBarPopupWindow actionBarPopupWindow4 = this.popupWindow;
            if (actionBarPopupWindow4 != null && actionBarPopupWindow4.isShowing() && motionEvent.getActionMasked() == 1) {
                View view = this.selectedMenuView;
                if (view != null) {
                    view.setSelected(false);
                    ActionBarMenu actionBarMenu = this.parentMenu;
                    if (actionBarMenu != null) {
                        actionBarMenu.onItemClick(((Integer) this.selectedMenuView.getTag()).intValue());
                    } else {
                        ActionBarMenuItemDelegate actionBarMenuItemDelegate = this.delegate;
                        if (actionBarMenuItemDelegate != null) {
                            actionBarMenuItemDelegate.onItemClick(((Integer) this.selectedMenuView.getTag()).intValue());
                        }
                    }
                    this.popupWindow.dismiss(this.allowCloseAnimation);
                } else if (this.showSubmenuByMove) {
                    this.popupWindow.dismiss();
                }
            } else {
                View view2 = this.selectedMenuView;
                if (view2 != null) {
                    view2.setSelected(false);
                    this.selectedMenuView = null;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTouchEvent$0() {
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        toggleSubMenu();
    }

    public void setDelegate(ActionBarMenuItemDelegate actionBarMenuItemDelegate) {
        this.delegate = actionBarMenuItemDelegate;
    }

    public void setSubMenuDelegate(ActionBarSubMenuItemDelegate actionBarSubMenuItemDelegate) {
        this.subMenuDelegate = actionBarSubMenuItemDelegate;
    }

    public void setShowSubmenuByMove(boolean z) {
        this.showSubmenuByMove = z;
    }

    public void setIconColor(int i) {
        RLottieImageView rLottieImageView = this.iconView;
        if (rLottieImageView != null) {
            rLottieImageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        }
        TextView textView = this.textView;
        if (textView != null) {
            textView.setTextColor(i);
        }
        ImageView imageView = this.clearButton;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        }
    }

    public void setSubMenuOpenSide(int i) {
        this.subMenuOpenSide = i;
    }

    public void setLayoutInScreen(boolean z) {
        this.layoutInScreen = z;
    }

    public void setForceSmoothKeyboard(boolean z) {
        this.forceSmoothKeyboard = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createPopupLayout() {
        if (this.popupLayout != null) {
            return;
        }
        this.rect = new Rect();
        this.location = new int[2];
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getContext(), C3632R.C3634drawable.popup_fixed_alert2, this.resourcesProvider, 1);
        this.popupLayout = actionBarPopupWindowLayout;
        actionBarPopupWindowLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda9
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean lambda$createPopupLayout$1;
                lambda$createPopupLayout$1 = ActionBarMenuItem.this.lambda$createPopupLayout$1(view, motionEvent);
                return lambda$createPopupLayout$1;
            }
        });
        this.popupLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda15
            @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                ActionBarMenuItem.this.lambda$createPopupLayout$2(keyEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createPopupLayout$1(View view, MotionEvent motionEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (motionEvent.getActionMasked() == 0 && (actionBarPopupWindow = this.popupWindow) != null && actionBarPopupWindow.isShowing()) {
            view.getHitRect(this.rect);
            if (this.rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
            this.popupWindow.dismiss();
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createPopupLayout$2(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.popupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.popupWindow.dismiss();
        }
    }

    public void removeAllSubItems() {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        if (actionBarPopupWindowLayout == null) {
            return;
        }
        actionBarPopupWindowLayout.removeInnerViews();
    }

    public void setShowedFromBottom(boolean z) {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        if (actionBarPopupWindowLayout == null) {
            return;
        }
        actionBarPopupWindowLayout.setShownFromBottom(z);
    }

    public void setFitSubItems(boolean z) {
        this.popupLayout.setFitItems(z);
    }

    public void addSubItem(View view, int i, int i2) {
        createPopupLayout();
        this.popupLayout.addView(view, new LinearLayout.LayoutParams(i, i2));
    }

    public void addSubItem(int i, View view, int i2, int i3) {
        createPopupLayout();
        view.setLayoutParams(new LinearLayout.LayoutParams(i2, i3));
        this.popupLayout.addView(view);
        view.setTag(Integer.valueOf(i));
        view.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ActionBarMenuItem.this.lambda$addSubItem$3(view2);
            }
        });
        view.setBackgroundDrawable(Theme.getSelectorDrawable(false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addSubItem$3(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            if (this.processedPopupClick) {
                return;
            }
            this.processedPopupClick = true;
            this.popupWindow.dismiss(this.allowCloseAnimation);
        }
        ActionBarMenu actionBarMenu = this.parentMenu;
        if (actionBarMenu != null) {
            actionBarMenu.onItemClick(((Integer) view.getTag()).intValue());
            return;
        }
        ActionBarMenuItemDelegate actionBarMenuItemDelegate = this.delegate;
        if (actionBarMenuItemDelegate != null) {
            actionBarMenuItemDelegate.onItemClick(((Integer) view.getTag()).intValue());
        }
    }

    public TextView addSubItem(int i, CharSequence charSequence) {
        createPopupLayout();
        TextView textView = new TextView(getContext());
        textView.setTextColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItem));
        textView.setBackgroundDrawable(Theme.getSelectorDrawable(false));
        if (!LocaleController.isRTL) {
            textView.setGravity(16);
        } else {
            textView.setGravity(21);
        }
        textView.setPadding(AndroidUtilities.m107dp(16), 0, AndroidUtilities.m107dp(16), 0);
        textView.setTextSize(1, 16.0f);
        textView.setMinWidth(AndroidUtilities.m107dp(196));
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTag(Integer.valueOf(i));
        textView.setText(charSequence);
        this.popupLayout.addView(textView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView.getLayoutParams();
        if (LocaleController.isRTL) {
            layoutParams.gravity = 5;
        }
        layoutParams.width = -1;
        layoutParams.height = AndroidUtilities.m107dp(48);
        textView.setLayoutParams(layoutParams);
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActionBarMenuItem.this.lambda$addSubItem$4(view);
            }
        });
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addSubItem$4(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            if (this.processedPopupClick) {
                return;
            }
            this.processedPopupClick = true;
            if (!this.allowCloseAnimation) {
                this.popupWindow.setAnimationStyle(C3632R.style.PopupAnimation);
            }
            this.popupWindow.dismiss(this.allowCloseAnimation);
        }
        ActionBarMenu actionBarMenu = this.parentMenu;
        if (actionBarMenu != null) {
            actionBarMenu.onItemClick(((Integer) view.getTag()).intValue());
            return;
        }
        ActionBarMenuItemDelegate actionBarMenuItemDelegate = this.delegate;
        if (actionBarMenuItemDelegate != null) {
            actionBarMenuItemDelegate.onItemClick(((Integer) view.getTag()).intValue());
        }
    }

    public ActionBarMenuSubItem addSubItem(int i, int i2, CharSequence charSequence) {
        return addSubItem(i, i2, null, charSequence, true, false);
    }

    public ActionBarMenuSubItem addSubItem(int i, int i2, CharSequence charSequence, Theme.ResourcesProvider resourcesProvider) {
        return addSubItem(i, i2, null, charSequence, true, false, resourcesProvider);
    }

    public ActionBarMenuSubItem addSubItem(int i, int i2, CharSequence charSequence, boolean z) {
        return addSubItem(i, i2, null, charSequence, true, z);
    }

    public View addGap(int i) {
        createPopupLayout();
        View view = new View(getContext());
        view.setMinimumWidth(AndroidUtilities.m107dp(196));
        view.setTag(Integer.valueOf(i));
        view.setTag(C3632R.C3635id.object_tag, 1);
        this.popupLayout.addView(view);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (LocaleController.isRTL) {
            layoutParams.gravity = 5;
        }
        layoutParams.width = -1;
        layoutParams.height = AndroidUtilities.m107dp(6);
        view.setLayoutParams(layoutParams);
        return view;
    }

    public ActionBarMenuSubItem addSubItem(int i, int i2, Drawable drawable, CharSequence charSequence, boolean z, boolean z2) {
        return addSubItem(i, i2, drawable, charSequence, z, z2, this.resourcesProvider);
    }

    public ActionBarMenuSubItem addSubItem(int i, int i2, Drawable drawable, CharSequence charSequence, final boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        createPopupLayout();
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), z2, false, false, resourcesProvider);
        actionBarMenuSubItem.setTextAndIcon(charSequence, i2, drawable);
        actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m107dp(196));
        actionBarMenuSubItem.setTag(Integer.valueOf(i));
        this.popupLayout.addView(actionBarMenuSubItem);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) actionBarMenuSubItem.getLayoutParams();
        if (LocaleController.isRTL) {
            layoutParams.gravity = 5;
        }
        layoutParams.width = -1;
        layoutParams.height = AndroidUtilities.m107dp(48);
        actionBarMenuSubItem.setLayoutParams(layoutParams);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActionBarMenuItem.this.lambda$addSubItem$5(z, view);
            }
        });
        return actionBarMenuSubItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addSubItem$5(boolean z, View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing() && z) {
            if (this.processedPopupClick) {
                return;
            }
            this.processedPopupClick = true;
            this.popupWindow.dismiss(this.allowCloseAnimation);
        }
        ActionBarMenu actionBarMenu = this.parentMenu;
        if (actionBarMenu != null) {
            actionBarMenu.onItemClick(((Integer) view.getTag()).intValue());
            return;
        }
        ActionBarMenuItemDelegate actionBarMenuItemDelegate = this.delegate;
        if (actionBarMenuItemDelegate != null) {
            actionBarMenuItemDelegate.onItemClick(((Integer) view.getTag()).intValue());
        }
    }

    public ActionBarMenuSubItem addSwipeBackItem(int i, Drawable drawable, String str, View view) {
        createPopupLayout();
        final ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), false, false, false, this.resourcesProvider);
        actionBarMenuSubItem.setTextAndIcon(str, i, drawable);
        actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m107dp(196));
        actionBarMenuSubItem.setRightIcon(C3632R.C3634drawable.msg_arrowright);
        this.popupLayout.addView(actionBarMenuSubItem);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) actionBarMenuSubItem.getLayoutParams();
        if (LocaleController.isRTL) {
            layoutParams.gravity = 5;
        }
        layoutParams.width = -1;
        layoutParams.height = AndroidUtilities.m107dp(48);
        actionBarMenuSubItem.setLayoutParams(layoutParams);
        final int addViewToSwipeBack = this.popupLayout.addViewToSwipeBack(view);
        actionBarMenuSubItem.openSwipeBackLayout = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                ActionBarMenuItem.this.lambda$addSwipeBackItem$6(addViewToSwipeBack);
            }
        };
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ActionBarMenuSubItem.this.openSwipeBack();
            }
        });
        this.popupLayout.swipeBackGravityRight = true;
        return actionBarMenuSubItem;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addSwipeBackItem$6(int i) {
        if (this.popupLayout.getSwipeBack() != null) {
            this.popupLayout.getSwipeBack().openForeground(i);
        }
    }

    public View addDivider(int i) {
        createPopupLayout();
        TextView textView = new TextView(getContext());
        textView.setBackgroundColor(i);
        textView.setMinimumWidth(AndroidUtilities.m107dp(196));
        this.popupLayout.addView(textView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = 1;
        int m107dp = AndroidUtilities.m107dp(3);
        layoutParams.bottomMargin = m107dp;
        layoutParams.topMargin = m107dp;
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    public void redrawPopup(int i) {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        if (actionBarPopupWindowLayout == null || actionBarPopupWindowLayout.getBackgroundColor() == i) {
            return;
        }
        this.popupLayout.setBackgroundColor(i);
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupLayout.invalidate();
    }

    public void setPopupItemsColor(int i, boolean z) {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        if (actionBarPopupWindowLayout == null) {
            return;
        }
        LinearLayout linearLayout = actionBarPopupWindowLayout.linearLayout;
        int childCount = linearLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = linearLayout.getChildAt(i2);
            if (childAt instanceof TextView) {
                ((TextView) childAt).setTextColor(i);
            } else if (childAt instanceof ActionBarMenuSubItem) {
                if (z) {
                    ((ActionBarMenuSubItem) childAt).setIconColor(i);
                } else {
                    ((ActionBarMenuSubItem) childAt).setTextColor(i);
                }
            }
        }
    }

    public void setPopupItemsSelectorColor(int i) {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        if (actionBarPopupWindowLayout == null) {
            return;
        }
        LinearLayout linearLayout = actionBarPopupWindowLayout.linearLayout;
        int childCount = linearLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = linearLayout.getChildAt(i2);
            if (childAt instanceof ActionBarMenuSubItem) {
                ((ActionBarMenuSubItem) childAt).setSelectorColor(i);
            }
        }
    }

    public void setupPopupRadialSelectors(int i) {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        if (actionBarPopupWindowLayout != null) {
            actionBarPopupWindowLayout.setupRadialSelectors(i);
        }
    }

    public boolean hasSubMenu() {
        ArrayList<Item> arrayList;
        return (this.popupLayout == null && ((arrayList = this.lazyList) == null || arrayList.isEmpty())) ? false : true;
    }

    public ActionBarPopupWindow.ActionBarPopupWindowLayout getPopupLayout() {
        if (this.popupLayout == null) {
            createPopupLayout();
        }
        return this.popupLayout;
    }

    public void setMenuYOffset(int i) {
        this.yOffset = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void toggleSubMenu(final View view, View view2) {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout;
        View childAt;
        C3704ActionBar c3704ActionBar;
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            layoutLazyItems();
        }
        if (this.popupLayout != null) {
            ActionBarMenu actionBarMenu = this.parentMenu;
            if (actionBarMenu == null || !actionBarMenu.isActionMode || (c3704ActionBar = actionBarMenu.parentActionBar) == null || c3704ActionBar.isActionModeShowed()) {
                Runnable runnable = this.showMenuRunnable;
                FrameLayout frameLayout = null;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                    this.showMenuRunnable = null;
                }
                ActionBarPopupWindow actionBarPopupWindow2 = this.popupWindow;
                if (actionBarPopupWindow2 != null && actionBarPopupWindow2.isShowing()) {
                    this.popupWindow.dismiss();
                    return;
                }
                this.showSubMenuFrom = view2;
                ActionBarSubMenuItemDelegate actionBarSubMenuItemDelegate = this.subMenuDelegate;
                if (actionBarSubMenuItemDelegate != null) {
                    actionBarSubMenuItemDelegate.onShowSubMenu();
                }
                if (this.popupLayout.getParent() != null) {
                    ((ViewGroup) this.popupLayout.getParent()).removeView(this.popupLayout);
                }
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout2 = this.popupLayout;
                if (view != null) {
                    LinearLayout linearLayout = new LinearLayout(getContext()) { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.1
                        @Override // android.widget.LinearLayout, android.view.View
                        protected void onMeasure(int i, int i2) {
                            ActionBarMenuItem.this.popupLayout.measure(i, i2);
                            if (ActionBarMenuItem.this.popupLayout.getSwipeBack() != null) {
                                view.getLayoutParams().width = ActionBarMenuItem.this.popupLayout.getSwipeBack().getChildAt(0).getMeasuredWidth();
                            } else {
                                view.getLayoutParams().width = ActionBarMenuItem.this.popupLayout.getMeasuredWidth() - AndroidUtilities.m107dp(16);
                            }
                            super.onMeasure(i, i2);
                        }
                    };
                    linearLayout.setOrientation(1);
                    frameLayout = new FrameLayout(getContext());
                    frameLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    frameLayout.animate().alpha(1.0f).setDuration(100L).setStartDelay(this.popupLayout.shownFromBottom ? 165L : 0L).start();
                    if (view.getParent() instanceof ViewGroup) {
                        ((ViewGroup) view.getParent()).removeView(view);
                    }
                    if ((view instanceof ActionBarMenuSubItem) || (view instanceof LinearLayout)) {
                        Drawable mutate = ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.popup_fixed_alert2).mutate();
                        mutate.setColorFilter(new PorterDuffColorFilter(this.popupLayout.getBackgroundColor(), PorterDuff.Mode.MULTIPLY));
                        frameLayout.setBackground(mutate);
                    }
                    frameLayout.addView(view, LayoutHelper.createFrame(-1, -2));
                    linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2));
                    linearLayout.addView(this.popupLayout, LayoutHelper.createLinear(-2, -2, 0, 0, -10, 0, 0));
                    this.popupLayout.setTopView(frameLayout);
                    actionBarPopupWindowLayout = linearLayout;
                } else {
                    actionBarPopupWindowLayout2.setTopView(null);
                    actionBarPopupWindowLayout = actionBarPopupWindowLayout2;
                }
                ActionBarPopupWindow actionBarPopupWindow3 = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
                this.popupWindow = actionBarPopupWindow3;
                if (this.animationEnabled && Build.VERSION.SDK_INT >= 19) {
                    actionBarPopupWindow3.setAnimationStyle(0);
                } else {
                    actionBarPopupWindow3.setAnimationStyle(C3632R.style.PopupAnimation);
                }
                boolean z = this.animationEnabled;
                if (!z) {
                    this.popupWindow.setAnimationEnabled(z);
                }
                this.popupWindow.setOutsideTouchable(true);
                this.popupWindow.setClippingEnabled(true);
                if (this.layoutInScreen) {
                    this.popupWindow.setLayoutInScreen(true);
                }
                this.popupWindow.setInputMethodMode(2);
                this.popupWindow.setSoftInputMode(0);
                actionBarPopupWindowLayout.setFocusableInTouchMode(true);
                actionBarPopupWindowLayout.setOnKeyListener(new View.OnKeyListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda8
                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view3, int i, KeyEvent keyEvent) {
                        boolean lambda$toggleSubMenu$8;
                        lambda$toggleSubMenu$8 = ActionBarMenuItem.this.lambda$toggleSubMenu$8(view3, i, keyEvent);
                        return lambda$toggleSubMenu$8;
                    }
                });
                this.popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda10
                    @Override // android.widget.PopupWindow.OnDismissListener
                    public final void onDismiss() {
                        ActionBarMenuItem.this.lambda$toggleSubMenu$9();
                    }
                });
                actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x - AndroidUtilities.m107dp(40), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.y, Integer.MIN_VALUE));
                if (frameLayout != null && frameLayout.getLayoutParams() != null && this.popupLayout.getSwipeBack() != null && (childAt = this.popupLayout.getSwipeBack().getChildAt(0)) != null && childAt.getMeasuredWidth() > 0) {
                    frameLayout.getLayoutParams().width = childAt.getMeasuredWidth() + AndroidUtilities.m107dp(16);
                }
                this.processedPopupClick = false;
                this.popupWindow.setFocusable(true);
                updateOrShowPopup(true, actionBarPopupWindowLayout.getMeasuredWidth() == 0);
                this.popupLayout.updateRadialSelectors();
                if (this.popupLayout.getSwipeBack() != null) {
                    this.popupLayout.getSwipeBack().closeForeground(false);
                }
                this.popupWindow.startAnimation();
                float f = this.dimMenu;
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    this.popupWindow.dimBehind(f);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$toggleSubMenu$8(View view, int i, KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (i == 82 && keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 1 && (actionBarPopupWindow = this.popupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.popupWindow.dismiss();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleSubMenu$9() {
        onDismiss();
        ActionBarSubMenuItemDelegate actionBarSubMenuItemDelegate = this.subMenuDelegate;
        if (actionBarSubMenuItemDelegate != null) {
            actionBarSubMenuItemDelegate.onHideSubMenu();
        }
    }

    public void setDimMenu(float f) {
        this.dimMenu = f;
    }

    public void toggleSubMenu() {
        toggleSubMenu(null, null);
    }

    public void setOnMenuDismiss(final Utilities.Callback<Boolean> callback) {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda11
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    ActionBarMenuItem.this.lambda$setOnMenuDismiss$10(callback);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOnMenuDismiss$10(Utilities.Callback callback) {
        if (callback != null) {
            callback.run(Boolean.valueOf(this.processedPopupClick));
        }
    }

    public void openSearch(boolean z) {
        ActionBarMenu actionBarMenu;
        checkCreateSearchField();
        FrameLayout frameLayout = this.searchContainer;
        if (frameLayout == null || frameLayout.getVisibility() == 0 || (actionBarMenu = this.parentMenu) == null) {
            return;
        }
        actionBarMenu.parentActionBar.onSearchFieldVisibilityChanged(toggleSearch(z));
    }

    public boolean isSearchFieldVisible() {
        FrameLayout frameLayout = this.searchContainer;
        return frameLayout != null && frameLayout.getVisibility() == 0;
    }

    public boolean toggleSearch(boolean z) {
        ActionBarMenuItemSearchListener actionBarMenuItemSearchListener;
        RLottieImageView iconView;
        Animator customToggleTransition;
        checkCreateSearchField();
        ActionBarMenuItemSearchListener actionBarMenuItemSearchListener2 = this.listener;
        if (actionBarMenuItemSearchListener2 != null) {
            actionBarMenuItemSearchListener2.onPreToggleSearch();
        }
        if (this.searchContainer == null || !((actionBarMenuItemSearchListener = this.listener) == null || actionBarMenuItemSearchListener.canToggleSearch())) {
            return false;
        }
        ActionBarMenuItemSearchListener actionBarMenuItemSearchListener3 = this.listener;
        if (actionBarMenuItemSearchListener3 != null && (customToggleTransition = actionBarMenuItemSearchListener3.getCustomToggleTransition()) != null) {
            customToggleTransition.start();
            return true;
        }
        final ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.parentMenu.getChildCount(); i++) {
            View childAt = this.parentMenu.getChildAt(i);
            if (childAt instanceof ActionBarMenuItem) {
                ActionBarMenuItem actionBarMenuItem = (ActionBarMenuItem) childAt;
                if ((!(actionBarMenuItem.getTag() instanceof Integer) || ((Integer) actionBarMenuItem.getTag()).intValue() != IdFabric$Menu.OPTIONS) && (iconView = actionBarMenuItem.getIconView()) != null) {
                    arrayList.add(iconView);
                }
            }
        }
        if (this.searchContainer.getTag() != null) {
            this.searchContainer.setTag(null);
            AnimatorSet animatorSet = this.searchContainerAnimator;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
                this.searchContainerAnimator.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.searchContainerAnimator = animatorSet2;
            FrameLayout frameLayout = this.searchContainer;
            animatorSet2.playTogether(ObjectAnimator.ofFloat(frameLayout, View.ALPHA, frameLayout.getAlpha(), BitmapDescriptorFactory.HUE_RED));
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((View) arrayList.get(i2)).setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.searchContainerAnimator.playTogether(ObjectAnimator.ofFloat((View) arrayList.get(i2), View.ALPHA, ((View) arrayList.get(i2)).getAlpha(), 1.0f));
            }
            this.searchContainerAnimator.setDuration(150L);
            this.searchContainerAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ActionBarMenuItem.this.searchContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        ((View) arrayList.get(i3)).setAlpha(1.0f);
                    }
                    ActionBarMenuItem.this.searchContainer.setVisibility(8);
                }
            });
            this.searchContainerAnimator.start();
            this.searchField.clearFocus();
            setVisibility(0);
            if (!this.currentSearchFilters.isEmpty() && this.listener != null) {
                for (int i3 = 0; i3 < this.currentSearchFilters.size(); i3++) {
                    if (this.currentSearchFilters.get(i3).removable) {
                        this.listener.onSearchFilterCleared(this.currentSearchFilters.get(i3));
                    }
                }
            }
            ActionBarMenuItemSearchListener actionBarMenuItemSearchListener4 = this.listener;
            if (actionBarMenuItemSearchListener4 != null) {
                actionBarMenuItemSearchListener4.onSearchCollapse();
            }
            if (z) {
                AndroidUtilities.hideKeyboard(this.searchField);
            }
            this.parentMenu.requestLayout();
            requestLayout();
            return false;
        }
        this.searchContainer.setVisibility(0);
        this.searchContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
        AnimatorSet animatorSet3 = this.searchContainerAnimator;
        if (animatorSet3 != null) {
            animatorSet3.removeAllListeners();
            this.searchContainerAnimator.cancel();
        }
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.searchContainerAnimator = animatorSet4;
        FrameLayout frameLayout2 = this.searchContainer;
        animatorSet4.playTogether(ObjectAnimator.ofFloat(frameLayout2, View.ALPHA, frameLayout2.getAlpha(), 1.0f));
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            this.searchContainerAnimator.playTogether(ObjectAnimator.ofFloat((View) arrayList.get(i4), View.ALPHA, ((View) arrayList.get(i4)).getAlpha(), BitmapDescriptorFactory.HUE_RED));
        }
        this.searchContainerAnimator.setDuration(150L);
        this.searchContainerAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ActionBarMenuItem.this.searchContainer.setAlpha(1.0f);
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    ((View) arrayList.get(i5)).setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
            }
        });
        this.searchContainerAnimator.start();
        setVisibility(8);
        clearSearchFilters();
        this.searchField.setText("");
        this.searchField.requestFocus();
        if (z) {
            AndroidUtilities.showKeyboard(this.searchField);
        }
        ActionBarMenuItemSearchListener actionBarMenuItemSearchListener5 = this.listener;
        if (actionBarMenuItemSearchListener5 != null) {
            actionBarMenuItemSearchListener5.onSearchExpand();
        }
        this.searchContainer.setTag(1);
        return true;
    }

    public void removeSearchFilter(FiltersView.MediaFilterData mediaFilterData) {
        if (mediaFilterData.removable) {
            this.currentSearchFilters.remove(mediaFilterData);
            int i = this.selectedFilterIndex;
            if (i < 0 || i > this.currentSearchFilters.size() - 1) {
                this.selectedFilterIndex = this.currentSearchFilters.size() - 1;
            }
            onFiltersChanged();
            this.searchField.hideActionMode();
        }
    }

    public void addSearchFilter(FiltersView.MediaFilterData mediaFilterData) {
        this.currentSearchFilters.add(mediaFilterData);
        if (this.searchContainer.getTag() != null) {
            this.selectedFilterIndex = this.currentSearchFilters.size() - 1;
        }
        onFiltersChanged();
    }

    public void clearSearchFilters() {
        int i = 0;
        while (i < this.currentSearchFilters.size()) {
            if (this.currentSearchFilters.get(i).removable) {
                this.currentSearchFilters.remove(i);
                i--;
            }
            i++;
        }
        onFiltersChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFiltersChanged() {
        final SearchFilterView searchFilterView;
        boolean z = !this.currentSearchFilters.isEmpty();
        ArrayList arrayList = new ArrayList(this.currentSearchFilters);
        FrameLayout frameLayout = this.searchContainer;
        if (frameLayout != null && Build.VERSION.SDK_INT >= 19 && frameLayout.getTag() != null) {
            TransitionSet transitionSet = new TransitionSet();
            ChangeBounds changeBounds = new ChangeBounds();
            changeBounds.setDuration(150L);
            transitionSet.addTransition(new Visibility(this) { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.4
                @Override // android.transition.Visibility
                public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                    if (view instanceof SearchFilterView) {
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(view, View.SCALE_X, 0.5f, 1.0f), ObjectAnimator.ofFloat(view, View.SCALE_Y, 0.5f, 1.0f));
                        animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                        return animatorSet;
                    }
                    return ObjectAnimator.ofFloat(view, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f);
                }

                @Override // android.transition.Visibility
                public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                    if (view instanceof SearchFilterView) {
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, view.getAlpha(), BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(view, View.SCALE_X, view.getScaleX(), 0.5f), ObjectAnimator.ofFloat(view, View.SCALE_Y, view.getScaleX(), 0.5f));
                        animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                        return animatorSet;
                    }
                    return ObjectAnimator.ofFloat(view, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED);
                }
            }.setDuration(150L)).addTransition(changeBounds);
            transitionSet.setOrdering(0);
            transitionSet.setInterpolator((TimeInterpolator) CubicBezierInterpolator.EASE_OUT);
            transitionSet.addListener(new Transition.TransitionListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.5
                @Override // android.transition.Transition.TransitionListener
                public void onTransitionPause(Transition transition) {
                }

                @Override // android.transition.Transition.TransitionListener
                public void onTransitionResume(Transition transition) {
                }

                @Override // android.transition.Transition.TransitionListener
                public void onTransitionStart(Transition transition) {
                    ActionBarMenuItem.this.notificationsLocker.lock();
                }

                @Override // android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition) {
                    ActionBarMenuItem.this.notificationsLocker.unlock();
                }

                @Override // android.transition.Transition.TransitionListener
                public void onTransitionCancel(Transition transition) {
                    ActionBarMenuItem.this.notificationsLocker.unlock();
                }
            });
            TransitionManager.beginDelayedTransition(this.searchFilterLayout, transitionSet);
        }
        int i = 0;
        while (i < this.searchFilterLayout.getChildCount()) {
            if (!arrayList.remove(((SearchFilterView) this.searchFilterLayout.getChildAt(i)).getFilter())) {
                this.searchFilterLayout.removeViewAt(i);
                i--;
            }
            i++;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            FiltersView.MediaFilterData mediaFilterData = (FiltersView.MediaFilterData) arrayList.get(i2);
            if (mediaFilterData.reaction != null) {
                searchFilterView = new ReactionFilterView(getContext(), this.resourcesProvider);
            } else {
                searchFilterView = new SearchFilterView(getContext(), this.resourcesProvider);
            }
            searchFilterView.setData(mediaFilterData);
            searchFilterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ActionBarMenuItem.this.lambda$onFiltersChanged$11(searchFilterView, view);
                }
            });
            this.searchFilterLayout.addView(searchFilterView, LayoutHelper.createLinear(-2, -1, 0, 0, 0, 6, 0));
        }
        int i3 = 0;
        while (i3 < this.searchFilterLayout.getChildCount()) {
            ((SearchFilterView) this.searchFilterLayout.getChildAt(i3)).setExpanded(i3 == this.selectedFilterIndex);
            i3++;
        }
        this.searchFilterLayout.setTag(z ? 1 : null);
        final float x = this.searchField.getX();
        if (this.searchContainer.getTag() != null) {
            this.searchField.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.6
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    ActionBarMenuItem.this.searchField.getViewTreeObserver().removeOnPreDrawListener(this);
                    if (ActionBarMenuItem.this.searchField.getX() != x) {
                        ActionBarMenuItem.this.searchField.setTranslationX(x - ActionBarMenuItem.this.searchField.getX());
                    }
                    ActionBarMenuItem.this.searchField.animate().translationX(BitmapDescriptorFactory.HUE_RED).setDuration(250L).setStartDelay(0L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
                    return true;
                }
            });
        }
        checkClearButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFiltersChanged$11(SearchFilterView searchFilterView, View view) {
        int indexOf = this.currentSearchFilters.indexOf(searchFilterView.getFilter());
        if (this.selectedFilterIndex != indexOf) {
            this.selectedFilterIndex = indexOf;
            onFiltersChanged();
        } else if (searchFilterView.getFilter().removable) {
            if (!searchFilterView.selectedForDelete) {
                searchFilterView.setSelectedForDelete(true);
                return;
            }
            FiltersView.MediaFilterData filter = searchFilterView.getFilter();
            removeSearchFilter(filter);
            ActionBarMenuItemSearchListener actionBarMenuItemSearchListener = this.listener;
            if (actionBarMenuItemSearchListener != null) {
                actionBarMenuItemSearchListener.onSearchFilterCleared(filter);
                this.listener.onTextChanged(this.searchField);
            }
        }
    }

    public boolean isSubMenuShowing() {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        return actionBarPopupWindow != null && actionBarPopupWindow.isShowing();
    }

    public void closeSubMenu() {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss();
    }

    public void setIcon(Drawable drawable) {
        RLottieImageView rLottieImageView = this.iconView;
        if (rLottieImageView == null) {
            return;
        }
        if (drawable instanceof RLottieDrawable) {
            rLottieImageView.setAnimation((RLottieDrawable) drawable);
        } else {
            rLottieImageView.setImageDrawable(drawable);
        }
    }

    public RLottieImageView getIconView() {
        return this.iconView;
    }

    public TextView getTextView() {
        return this.textView;
    }

    public void setIcon(int i) {
        RLottieImageView rLottieImageView = this.iconView;
        if (rLottieImageView == null) {
            return;
        }
        rLottieImageView.setImageResource(i);
    }

    public void setText(CharSequence charSequence) {
        TextView textView = this.textView;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    public View getContentView() {
        RLottieImageView rLottieImageView = this.iconView;
        return rLottieImageView != null ? rLottieImageView : this.textView;
    }

    public void setSearchFieldHint(CharSequence charSequence) {
        this.searchFieldHint = charSequence;
        if (this.searchFieldCaption == null) {
            return;
        }
        this.searchField.setHint(charSequence);
        setContentDescription(charSequence);
    }

    public void setSearchFieldText(CharSequence charSequence, boolean z) {
        this.searchFieldText = charSequence;
        if (this.searchFieldCaption == null) {
            return;
        }
        this.animateClear = z;
        this.searchField.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        this.searchField.setSelection(charSequence.length());
    }

    public void onSearchPressed() {
        ActionBarMenuItemSearchListener actionBarMenuItemSearchListener = this.listener;
        if (actionBarMenuItemSearchListener != null) {
            actionBarMenuItemSearchListener.onSearchPressed(this.searchField);
        }
    }

    public EditTextBoldCursor getSearchField() {
        checkCreateSearchField();
        return this.searchField;
    }

    public ActionBarMenuItem setOverrideMenuClick(boolean z) {
        this.overrideMenuClick = z;
        return this;
    }

    public ActionBarMenuItem setIsSearchField(boolean z) {
        return setIsSearchField(z, false);
    }

    public void setSearchAdditionalButton(View view) {
        this.searchAdditionalButton = view;
    }

    public ActionBarMenuItem setIsSearchField(boolean z, boolean z2) {
        if (this.parentMenu == null) {
            return this;
        }
        this.isSearchField = z;
        this.wrapSearchInScrollView = z2;
        return this;
    }

    private void checkCreateSearchField() {
        if (this.searchContainer == null && this.isSearchField) {
            FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.7
                private boolean ignoreRequestLayout;

                @Override // android.view.View
                public void setVisibility(int i) {
                    super.setVisibility(i);
                    if (ActionBarMenuItem.this.clearButton != null) {
                        ActionBarMenuItem.this.clearButton.setVisibility(i);
                    }
                    if (ActionBarMenuItem.this.searchAdditionalButton != null) {
                        ActionBarMenuItem.this.searchAdditionalButton.setVisibility(i);
                    }
                    if (ActionBarMenuItem.this.wrappedSearchFrameLayout != null) {
                        ActionBarMenuItem.this.wrappedSearchFrameLayout.setVisibility(i);
                    }
                }

                @Override // android.view.View
                public void setAlpha(float f) {
                    super.setAlpha(f);
                    if (ActionBarMenuItem.this.clearButton == null || ActionBarMenuItem.this.clearButton.getTag() == null) {
                        return;
                    }
                    ActionBarMenuItem.this.clearButton.setAlpha(f);
                    ActionBarMenuItem.this.clearButton.setScaleX(f);
                    ActionBarMenuItem.this.clearButton.setScaleY(f);
                }

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    int i3;
                    int i4;
                    if (!ActionBarMenuItem.this.wrapSearchInScrollView) {
                        measureChildWithMargins(ActionBarMenuItem.this.clearButton, i, 0, i2, 0);
                        if (ActionBarMenuItem.this.searchAdditionalButton != null) {
                            measureChildWithMargins(ActionBarMenuItem.this.searchAdditionalButton, i, 0, i2, 0);
                        }
                    }
                    if (!LocaleController.isRTL) {
                        if (ActionBarMenuItem.this.searchFieldCaption.getVisibility() == 0) {
                            measureChildWithMargins(ActionBarMenuItem.this.searchFieldCaption, i, View.MeasureSpec.getSize(i) / 2, i2, 0);
                            i4 = ActionBarMenuItem.this.searchFieldCaption.getMeasuredWidth() + AndroidUtilities.m107dp(4);
                        } else {
                            i4 = 0;
                        }
                        int size = View.MeasureSpec.getSize(i);
                        this.ignoreRequestLayout = true;
                        measureChildWithMargins(ActionBarMenuItem.this.searchFilterLayout, i, i4, i2, 0);
                        int measuredWidth = ActionBarMenuItem.this.searchFilterLayout.getVisibility() == 0 ? ActionBarMenuItem.this.searchFilterLayout.getMeasuredWidth() : 0;
                        measureChildWithMargins(ActionBarMenuItem.this.searchField, i, i4 + measuredWidth + (ActionBarMenuItem.this.searchAdditionalButton != null ? ActionBarMenuItem.this.searchAdditionalButton.getMeasuredWidth() : 0), i2, 0);
                        this.ignoreRequestLayout = false;
                        setMeasuredDimension(Math.max(measuredWidth + ActionBarMenuItem.this.searchField.getMeasuredWidth(), size), View.MeasureSpec.getSize(i2));
                        return;
                    }
                    if (ActionBarMenuItem.this.searchFieldCaption.getVisibility() == 0) {
                        measureChildWithMargins(ActionBarMenuItem.this.searchFieldCaption, i, View.MeasureSpec.getSize(i) / 2, i2, 0);
                        i3 = ActionBarMenuItem.this.searchFieldCaption.getMeasuredWidth() + AndroidUtilities.m107dp(4);
                    } else {
                        i3 = 0;
                    }
                    int size2 = View.MeasureSpec.getSize(i);
                    this.ignoreRequestLayout = true;
                    measureChildWithMargins(ActionBarMenuItem.this.searchFilterLayout, i, i3, i2, 0);
                    int measuredWidth2 = ActionBarMenuItem.this.searchFilterLayout.getVisibility() == 0 ? ActionBarMenuItem.this.searchFilterLayout.getMeasuredWidth() : 0;
                    measureChildWithMargins(ActionBarMenuItem.this.searchField, View.MeasureSpec.makeMeasureSpec(size2 - AndroidUtilities.m107dp(12), 0), i3 + measuredWidth2, i2, 0);
                    this.ignoreRequestLayout = false;
                    setMeasuredDimension(Math.max(measuredWidth2 + ActionBarMenuItem.this.searchField.getMeasuredWidth(), size2), View.MeasureSpec.getSize(i2));
                }

                @Override // android.view.View, android.view.ViewParent
                public void requestLayout() {
                    if (this.ignoreRequestLayout) {
                        return;
                    }
                    super.requestLayout();
                }

                @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                    super.onLayout(z, i, i2, i3, i4);
                    int i5 = 0;
                    if (!LocaleController.isRTL && ActionBarMenuItem.this.searchFieldCaption.getVisibility() == 0) {
                        i5 = AndroidUtilities.m107dp(4) + ActionBarMenuItem.this.searchFieldCaption.getMeasuredWidth();
                    }
                    if (ActionBarMenuItem.this.searchFilterLayout.getVisibility() == 0) {
                        i5 += ActionBarMenuItem.this.searchFilterLayout.getMeasuredWidth();
                    }
                    ActionBarMenuItem.this.searchField.layout(i5, ActionBarMenuItem.this.searchField.getTop(), ActionBarMenuItem.this.searchField.getMeasuredWidth() + i5, ActionBarMenuItem.this.searchField.getBottom());
                }
            };
            this.searchContainer = frameLayout;
            frameLayout.setClipChildren(this.searchItemPaddingStart != 0);
            this.wrappedSearchFrameLayout = null;
            if (this.wrapSearchInScrollView) {
                this.wrappedSearchFrameLayout = new FrameLayout(getContext());
                HorizontalScrollView horizontalScrollView = new HorizontalScrollView(this, getContext()) { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.8
                    boolean isDragging;

                    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
                    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                        checkDragg(motionEvent);
                        return super.onInterceptTouchEvent(motionEvent);
                    }

                    @Override // android.widget.HorizontalScrollView, android.view.View
                    public boolean onTouchEvent(MotionEvent motionEvent) {
                        checkDragg(motionEvent);
                        return super.onTouchEvent(motionEvent);
                    }

                    private void checkDragg(MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0) {
                            this.isDragging = true;
                        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                            this.isDragging = false;
                        }
                    }

                    @Override // android.widget.HorizontalScrollView, android.view.View
                    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
                        if (this.isDragging) {
                            super.onOverScrolled(i, i2, z, z2);
                        }
                    }
                };
                horizontalScrollView.addView(this.searchContainer, LayoutHelper.createScroll(-2, -1, 0));
                horizontalScrollView.setHorizontalScrollBarEnabled(false);
                horizontalScrollView.setClipChildren(this.searchItemPaddingStart != 0);
                this.wrappedSearchFrameLayout.addView(horizontalScrollView, LayoutHelper.createFrame(-1, -1, 0, 0, 0, 48, 0));
                this.parentMenu.addView(this.wrappedSearchFrameLayout, 0, LayoutHelper.createLinear(0, -1, 1.0f, this.searchItemPaddingStart, 0, 0, 0));
            } else {
                this.parentMenu.addView(this.searchContainer, 0, LayoutHelper.createLinear(0, -1, 1.0f, this.searchItemPaddingStart + 6, 0, this.searchRightMargin, 0));
            }
            this.searchContainer.setVisibility(8);
            TextView textView = new TextView(getContext());
            this.searchFieldCaption = textView;
            textView.setTextSize(1, 18.0f);
            TextView textView2 = this.searchFieldCaption;
            int i = Theme.key_actionBarDefaultSearch;
            textView2.setTextColor(getThemedColor(i));
            this.searchFieldCaption.setSingleLine(true);
            this.searchFieldCaption.setEllipsize(TextUtils.TruncateAt.END);
            this.searchFieldCaption.setVisibility(8);
            this.searchFieldCaption.setGravity(LocaleController.isRTL ? 5 : 3);
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(getContext()) { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.9
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
                public void onMeasure(int i2, int i3) {
                    super.onMeasure(i2, i3);
                    setMeasuredDimension(Math.max(View.MeasureSpec.getSize(i2), getMeasuredWidth()) + AndroidUtilities.m107dp(3), getMeasuredHeight());
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.Components.EditTextEffects, android.widget.TextView
                public void onSelectionChanged(int i2, int i3) {
                    super.onSelectionChanged(i2, i3);
                }

                @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
                public boolean onKeyDown(int i2, KeyEvent keyEvent) {
                    if (i2 == 67 && ActionBarMenuItem.this.searchField.length() == 0 && ((ActionBarMenuItem.this.searchFieldCaption.getVisibility() == 0 && ActionBarMenuItem.this.searchFieldCaption.length() > 0) || ActionBarMenuItem.this.hasRemovableFilters())) {
                        if (ActionBarMenuItem.this.hasRemovableFilters()) {
                            FiltersView.MediaFilterData mediaFilterData = (FiltersView.MediaFilterData) ActionBarMenuItem.this.currentSearchFilters.get(ActionBarMenuItem.this.currentSearchFilters.size() - 1);
                            ActionBarMenuItemSearchListener actionBarMenuItemSearchListener = ActionBarMenuItem.this.listener;
                            if (actionBarMenuItemSearchListener != null) {
                                actionBarMenuItemSearchListener.onSearchFilterCleared(mediaFilterData);
                            }
                            ActionBarMenuItem.this.removeSearchFilter(mediaFilterData);
                        } else {
                            ActionBarMenuItem.this.clearButton.callOnClick();
                        }
                        return true;
                    }
                    return super.onKeyDown(i2, keyEvent);
                }

                @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    boolean onTouchEvent = super.onTouchEvent(motionEvent);
                    if (motionEvent.getAction() == 1 && !AndroidUtilities.showKeyboard(this)) {
                        clearFocus();
                        requestFocus();
                    }
                    return onTouchEvent;
                }
            };
            this.searchField = editTextBoldCursor;
            editTextBoldCursor.setScrollContainer(false);
            this.searchField.setCursorWidth(1.5f);
            this.searchField.setCursorColor(getThemedColor(i));
            this.searchField.setTextSize(1, 18.0f);
            this.searchField.setHintTextColor(getThemedColor(Theme.key_actionBarDefaultSearchPlaceholder));
            this.searchField.setTextColor(getThemedColor(i));
            this.searchField.setSingleLine(true);
            this.searchField.setBackgroundResource(0);
            this.searchField.setPadding(0, 0, 0, 0);
            this.searchField.setInputType(this.searchField.getInputType() | 524288);
            if (Build.VERSION.SDK_INT < 23) {
                this.searchField.setCustomSelectionActionModeCallback(new ActionMode.Callback(this) { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.10
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
            }
            this.searchField.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda12
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView3, int i2, KeyEvent keyEvent) {
                    boolean lambda$checkCreateSearchField$12;
                    lambda$checkCreateSearchField$12 = ActionBarMenuItem.this.lambda$checkCreateSearchField$12(textView3, i2, keyEvent);
                    return lambda$checkCreateSearchField$12;
                }
            });
            this.searchField.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.11
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    if (ActionBarMenuItem.this.ignoreOnTextChange) {
                        ActionBarMenuItem.this.ignoreOnTextChange = false;
                        return;
                    }
                    ActionBarMenuItem actionBarMenuItem = ActionBarMenuItem.this;
                    ActionBarMenuItemSearchListener actionBarMenuItemSearchListener = actionBarMenuItem.listener;
                    if (actionBarMenuItemSearchListener != null) {
                        actionBarMenuItemSearchListener.onTextChanged(actionBarMenuItem.searchField);
                    }
                    ActionBarMenuItem.this.checkClearButton();
                    if (ActionBarMenuItem.this.currentSearchFilters.isEmpty() || TextUtils.isEmpty(ActionBarMenuItem.this.searchField.getText()) || ActionBarMenuItem.this.selectedFilterIndex < 0) {
                        return;
                    }
                    ActionBarMenuItem.this.selectedFilterIndex = -1;
                    ActionBarMenuItem.this.onFiltersChanged();
                }
            });
            this.searchField.setImeOptions(234881027);
            this.searchField.setTextIsSelectable(false);
            this.searchField.setHighlightColor(getThemedColor(Theme.key_chat_inTextSelectionHighlight));
            this.searchField.setHandlesColor(getThemedColor(Theme.key_chat_TextSelectionCursor));
            CharSequence charSequence = this.searchFieldHint;
            if (charSequence != null) {
                this.searchField.setHint(charSequence);
                setContentDescription(this.searchFieldHint);
            }
            CharSequence charSequence2 = this.searchFieldText;
            if (charSequence2 != null) {
                this.searchField.setText(charSequence2);
            }
            LinearLayout linearLayout = new LinearLayout(getContext());
            this.searchFilterLayout = linearLayout;
            linearLayout.setOrientation(0);
            this.searchFilterLayout.setVisibility(0);
            if (!LocaleController.isRTL) {
                this.searchContainer.addView(this.searchFieldCaption, LayoutHelper.createFrame(-2, 36.0f, 19, (float) BitmapDescriptorFactory.HUE_RED, 5.5f, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED));
                this.searchContainer.addView(this.searchField, LayoutHelper.createFrame(-1, 36, 16, 6, 0, this.wrapSearchInScrollView ? 0 : 48, 0));
                this.searchContainer.addView(this.searchFilterLayout, LayoutHelper.createFrame(-2, 32, 16, 0, 0, 48, 0));
            } else {
                this.searchContainer.addView(this.searchFilterLayout, LayoutHelper.createFrame(-2, 32, 16, 0, 0, 48, 0));
                this.searchContainer.addView(this.searchField, LayoutHelper.createFrame(-1, 36, 16, 0, 0, this.wrapSearchInScrollView ? 0 : 48, 0));
                this.searchContainer.addView(this.searchFieldCaption, LayoutHelper.createFrame(-2, 36.0f, 21, (float) BitmapDescriptorFactory.HUE_RED, 5.5f, 48.0f, (float) BitmapDescriptorFactory.HUE_RED));
            }
            this.searchFilterLayout.setClipChildren(false);
            ImageView imageView = new ImageView(getContext()) { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.12
                @Override // android.widget.ImageView, android.view.View
                protected void onDetachedFromWindow() {
                    super.onDetachedFromWindow();
                    clearAnimation();
                    if (getTag() == null) {
                        ActionBarMenuItem.this.clearButton.setVisibility(4);
                        ActionBarMenuItem.this.clearButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                        ActionBarMenuItem.this.clearButton.setRotation(45.0f);
                        ActionBarMenuItem.this.clearButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                        ActionBarMenuItem.this.clearButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                        return;
                    }
                    ActionBarMenuItem.this.clearButton.setAlpha(1.0f);
                    ActionBarMenuItem.this.clearButton.setRotation(BitmapDescriptorFactory.HUE_RED);
                    ActionBarMenuItem.this.clearButton.setScaleX(1.0f);
                    ActionBarMenuItem.this.clearButton.setScaleY(1.0f);
                }

                @Override // android.view.View
                public void draw(Canvas canvas) {
                    getBackground().draw(canvas);
                    super.draw(canvas);
                }
            };
            this.clearButton = imageView;
            CloseProgressDrawable2 closeProgressDrawable2 = new CloseProgressDrawable2() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.13
                @Override // org.telegram.p043ui.Components.CloseProgressDrawable2
                public int getCurrentColor() {
                    return ActionBarMenuItem.this.parentMenu.parentActionBar.itemsColor;
                }
            };
            this.progressDrawable = closeProgressDrawable2;
            imageView.setImageDrawable(closeProgressDrawable2);
            this.clearButton.setBackground(Theme.createSelectorDrawable(this.parentMenu.parentActionBar.itemsActionModeBackgroundColor, 1));
            this.clearButton.setScaleType(ImageView.ScaleType.CENTER);
            this.clearButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.clearButton.setRotation(45.0f);
            this.clearButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
            this.clearButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
            this.clearButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ActionBarMenuItem.this.lambda$checkCreateSearchField$13(view);
                }
            });
            this.clearButton.setContentDescription(LocaleController.getString("ClearButton", C3632R.string.ClearButton));
            if (this.wrapSearchInScrollView) {
                this.wrappedSearchFrameLayout.addView(this.clearButton, LayoutHelper.createFrame(48, -1, 21));
            } else {
                this.searchContainer.addView(this.clearButton, LayoutHelper.createFrame(48, -1, 21));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$checkCreateSearchField$12(TextView textView, int i, KeyEvent keyEvent) {
        if (keyEvent != null) {
            if ((keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 84) || (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 66)) {
                AndroidUtilities.hideKeyboard(this.searchField);
                ActionBarMenuItemSearchListener actionBarMenuItemSearchListener = this.listener;
                if (actionBarMenuItemSearchListener != null) {
                    actionBarMenuItemSearchListener.onSearchPressed(this.searchField);
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkCreateSearchField$13(View view) {
        if (this.searchField.length() != 0) {
            this.searchField.setText("");
        } else if (hasRemovableFilters()) {
            this.searchField.hideActionMode();
            for (int i = 0; i < this.currentSearchFilters.size(); i++) {
                if (this.listener != null && this.currentSearchFilters.get(i).removable) {
                    this.listener.onSearchFilterCleared(this.currentSearchFilters.get(i));
                }
            }
            clearSearchFilters();
        } else {
            TextView textView = this.searchFieldCaption;
            if (textView != null && textView.getVisibility() == 0) {
                this.searchFieldCaption.setVisibility(8);
                ActionBarMenuItemSearchListener actionBarMenuItemSearchListener = this.listener;
                if (actionBarMenuItemSearchListener != null) {
                    actionBarMenuItemSearchListener.onCaptionCleared();
                }
            }
        }
        this.searchField.requestFocus();
        AndroidUtilities.showKeyboard(this.searchField);
    }

    public View.OnClickListener getOnClickListener() {
        return this.onClickListener;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.onClickListener = onClickListener;
        super.setOnClickListener(onClickListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkClearButton() {
        ActionBarMenuItemSearchListener actionBarMenuItemSearchListener;
        TextView textView;
        if (this.clearButton != null) {
            if (!hasRemovableFilters() && TextUtils.isEmpty(this.searchField.getText()) && (((actionBarMenuItemSearchListener = this.listener) == null || !actionBarMenuItemSearchListener.forceShowClear()) && ((textView = this.searchFieldCaption) == null || textView.getVisibility() != 0))) {
                if (this.clearButton.getTag() != null) {
                    this.clearButton.setTag(null);
                    AnimatorSet animatorSet = this.clearButtonAnimator;
                    if (animatorSet != null) {
                        animatorSet.cancel();
                    }
                    if (this.animateClear) {
                        AnimatorSet duration = new AnimatorSet().setDuration(180L);
                        duration.setInterpolator(new DecelerateInterpolator());
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda0
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                ActionBarMenuItem.this.lambda$checkClearButton$14(valueAnimator);
                            }
                        });
                        duration.playTogether(ObjectAnimator.ofFloat(this.clearButton, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.clearButton, View.SCALE_X, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.clearButton, View.SCALE_Y, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.clearButton, View.ROTATION, 45.0f), ofFloat);
                        duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.14
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                ActionBarMenuItem.this.clearButton.setVisibility(4);
                                ActionBarMenuItem.this.clearButtonAnimator = null;
                            }
                        });
                        duration.start();
                        this.clearButtonAnimator = duration;
                        return;
                    }
                    this.clearButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.clearButton.setRotation(45.0f);
                    this.clearButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                    this.clearButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    this.clearButton.setVisibility(4);
                    this.animateClear = true;
                }
            } else if (this.clearButton.getTag() == null) {
                this.clearButton.setTag(1);
                AnimatorSet animatorSet2 = this.clearButtonAnimator;
                if (animatorSet2 != null) {
                    animatorSet2.cancel();
                }
                this.clearButton.setVisibility(0);
                if (this.animateClear) {
                    AnimatorSet duration2 = new AnimatorSet().setDuration(180L);
                    duration2.setInterpolator(new DecelerateInterpolator());
                    ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
                    ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ActionBarMenuItem.this.lambda$checkClearButton$15(valueAnimator);
                        }
                    });
                    duration2.playTogether(ObjectAnimator.ofFloat(this.clearButton, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.clearButton, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.clearButton, View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.clearButton, View.ROTATION, BitmapDescriptorFactory.HUE_RED), ofFloat2);
                    duration2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.15
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ActionBarMenuItem.this.clearButtonAnimator = null;
                        }
                    });
                    duration2.start();
                    this.clearButtonAnimator = duration2;
                    return;
                }
                this.clearButton.setAlpha(1.0f);
                this.clearButton.setRotation(BitmapDescriptorFactory.HUE_RED);
                this.clearButton.setScaleX(1.0f);
                this.clearButton.setScaleY(1.0f);
                View view = this.searchAdditionalButton;
                if (view != null) {
                    view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                }
                this.animateClear = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkClearButton$14(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.searchAdditionalButton;
        if (view != null) {
            view.setTranslationX(AndroidUtilities.m107dp(32) * floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkClearButton$15(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.searchAdditionalButton;
        if (view != null) {
            view.setTranslationX(AndroidUtilities.m107dp(32) * floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasRemovableFilters() {
        if (this.currentSearchFilters.isEmpty()) {
            return false;
        }
        for (int i = 0; i < this.currentSearchFilters.size(); i++) {
            if (this.currentSearchFilters.get(i).removable) {
                return true;
            }
        }
        return false;
    }

    public void setShowSearchProgress(boolean z) {
        CloseProgressDrawable2 closeProgressDrawable2 = this.progressDrawable;
        if (closeProgressDrawable2 == null) {
            return;
        }
        if (z) {
            closeProgressDrawable2.startAnimation();
        } else {
            closeProgressDrawable2.stopAnimation();
        }
    }

    public void setSearchFieldCaption(CharSequence charSequence) {
        if (this.searchFieldCaption == null) {
            return;
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.searchFieldCaption.setVisibility(8);
            return;
        }
        this.searchFieldCaption.setVisibility(0);
        this.searchFieldCaption.setText(charSequence);
    }

    public boolean isSearchField() {
        return this.isSearchField;
    }

    public void clearSearchText() {
        this.searchFieldText = null;
        EditTextBoldCursor editTextBoldCursor = this.searchField;
        if (editTextBoldCursor == null) {
            return;
        }
        editTextBoldCursor.setText("");
    }

    public ActionBarMenuItem setActionBarMenuItemSearchListener(ActionBarMenuItemSearchListener actionBarMenuItemSearchListener) {
        this.listener = actionBarMenuItemSearchListener;
        return this;
    }

    public ActionBarMenuItem setAllowCloseAnimation(boolean z) {
        this.allowCloseAnimation = z;
        return this;
    }

    public void setPopupAnimationEnabled(boolean z) {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.setAnimationEnabled(z);
        }
        this.animationEnabled = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            updateOrShowPopup(false, true);
        }
        ActionBarMenuItemSearchListener actionBarMenuItemSearchListener = this.listener;
        if (actionBarMenuItemSearchListener != null) {
            actionBarMenuItemSearchListener.onLayout(i, i2, i3, i4);
        }
    }

    public void setAdditionalYOffset(int i) {
        this.additionalYOffset = i;
    }

    public void setAdditionalXOffset(int i) {
        this.additionalXOffset = i;
    }

    public void forceUpdatePopupPosition() {
        ActionBarPopupWindow actionBarPopupWindow = this.popupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        this.popupLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x - AndroidUtilities.m107dp(40), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.y, Integer.MIN_VALUE));
        updateOrShowPopup(true, true);
    }

    private void updateOrShowPopup(boolean z, boolean z2) {
        int i;
        int i2;
        ActionBarMenu actionBarMenu = this.parentMenu;
        if (actionBarMenu != null) {
            i = (-actionBarMenu.parentActionBar.getMeasuredHeight()) + this.parentMenu.getTop();
            i2 = this.parentMenu.getPaddingTop();
        } else {
            float scaleY = getScaleY();
            i = -((int) ((getMeasuredHeight() * scaleY) - ((this.subMenuOpenSide != 2 ? getTranslationY() : BitmapDescriptorFactory.HUE_RED) / scaleY)));
            i2 = this.additionalYOffset;
        }
        int i3 = i + i2 + this.yOffset;
        if (z) {
            this.popupLayout.scrollToTop();
        }
        View view = this.showSubMenuFrom;
        if (view == null) {
            view = this;
        }
        ActionBarMenu actionBarMenu2 = this.parentMenu;
        if (actionBarMenu2 != null) {
            C3704ActionBar c3704ActionBar = actionBarMenu2.parentActionBar;
            if (this.subMenuOpenSide == 0) {
                if (z) {
                    this.popupWindow.showAsDropDown(c3704ActionBar, (((view.getLeft() + this.parentMenu.getLeft()) + view.getMeasuredWidth()) - this.popupWindow.getContentView().getMeasuredWidth()) + ((int) getTranslationX()), i3);
                }
                if (z2) {
                    this.popupWindow.update(c3704ActionBar, (((view.getLeft() + this.parentMenu.getLeft()) + view.getMeasuredWidth()) - this.popupWindow.getContentView().getMeasuredWidth()) + ((int) getTranslationX()), i3, -1, -1);
                    return;
                }
                return;
            }
            if (z) {
                if (this.forceSmoothKeyboard) {
                    this.popupWindow.showAtLocation(c3704ActionBar, 51, (getLeft() - AndroidUtilities.m107dp(8)) + ((int) getTranslationX()), i3);
                } else {
                    this.popupWindow.showAsDropDown(c3704ActionBar, (getLeft() - AndroidUtilities.m107dp(8)) + ((int) getTranslationX()), i3);
                }
            }
            if (z2) {
                this.popupWindow.update(c3704ActionBar, (getLeft() - AndroidUtilities.m107dp(8)) + ((int) getTranslationX()), i3, -1, -1);
                return;
            }
            return;
        }
        int i4 = this.subMenuOpenSide;
        if (i4 == 0) {
            if (getParent() != null) {
                View view2 = (View) getParent();
                if (z) {
                    this.popupWindow.showAsDropDown(view2, ((getLeft() + getMeasuredWidth()) - this.popupWindow.getContentView().getMeasuredWidth()) + this.additionalXOffset, i3);
                }
                if (z2) {
                    this.popupWindow.update(view2, ((getLeft() + getMeasuredWidth()) - this.popupWindow.getContentView().getMeasuredWidth()) + this.additionalXOffset, i3, -1, -1);
                }
            }
        } else if (i4 == 1) {
            if (z) {
                this.popupWindow.showAsDropDown(this, (-AndroidUtilities.m107dp(8)) + this.additionalXOffset, i3);
            }
            if (z2) {
                this.popupWindow.update(this, (-AndroidUtilities.m107dp(8)) + this.additionalXOffset, i3, -1, -1);
            }
        } else {
            if (z) {
                this.popupWindow.showAsDropDown(this, (getMeasuredWidth() - this.popupWindow.getContentView().getMeasuredWidth()) + this.additionalXOffset, i3);
            }
            if (z2) {
                this.popupWindow.update(this, (getMeasuredWidth() - this.popupWindow.getContentView().getMeasuredWidth()) + this.additionalXOffset, i3, -1, -1);
            }
        }
    }

    public void hideSubItem(int i) {
        View findViewWithTag;
        Item findLazyItem = findLazyItem(i);
        if (findLazyItem != null) {
            findLazyItem.setVisibility(8);
        }
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        if (actionBarPopupWindowLayout == null || (findViewWithTag = actionBarPopupWindowLayout.findViewWithTag(Integer.valueOf(i))) == null || findViewWithTag.getVisibility() == 8) {
            return;
        }
        findViewWithTag.setVisibility(8);
    }

    public boolean hasSubItem(int i) {
        if (findLazyItem(i) != null) {
            return true;
        }
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        return (actionBarPopupWindowLayout == null || actionBarPopupWindowLayout.findViewWithTag(Integer.valueOf(i)) == null) ? false : true;
    }

    public void checkHideMenuItem() {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= this.popupLayout.getItemsCount()) {
                z = false;
                break;
            } else if (this.popupLayout.getItemAt(i).getVisibility() == 0) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        int i2 = z ? 0 : 8;
        if (i2 != getVisibility()) {
            setVisibility(i2);
        }
    }

    public boolean isSubItemVisible(int i) {
        View findViewWithTag;
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        return (actionBarPopupWindowLayout == null || (findViewWithTag = actionBarPopupWindowLayout.findViewWithTag(Integer.valueOf(i))) == null || findViewWithTag.getVisibility() != 0) ? false : true;
    }

    public void showSubItem(int i) {
        showSubItem(i, false);
    }

    public void showSubItem(int i, boolean z) {
        View findViewWithTag;
        Item findLazyItem = findLazyItem(i);
        if (findLazyItem != null) {
            findLazyItem.setVisibility(0);
        }
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.popupLayout;
        if (actionBarPopupWindowLayout == null || (findViewWithTag = actionBarPopupWindowLayout.findViewWithTag(Integer.valueOf(i))) == null || findViewWithTag.getVisibility() == 0) {
            return;
        }
        findViewWithTag.setAlpha(BitmapDescriptorFactory.HUE_RED);
        findViewWithTag.animate().alpha(1.0f).setInterpolator(CubicBezierInterpolator.DEFAULT).setDuration(150L).start();
        findViewWithTag.setVisibility(0);
    }

    public int getVisibleSubItemsCount() {
        int i = 0;
        for (int i2 = 0; i2 < this.popupLayout.getItemsCount(); i2++) {
            View itemAt = this.popupLayout.getItemAt(i2);
            if (itemAt != null && itemAt.getVisibility() == 0) {
                i++;
            }
        }
        return i;
    }

    public void requestFocusOnSearchView() {
        if (this.searchContainer.getWidth() == 0 || this.searchField.isFocused()) {
            return;
        }
        this.searchField.requestFocus();
        AndroidUtilities.showKeyboard(this.searchField);
    }

    public void clearFocusOnSearchView() {
        this.searchField.clearFocus();
        AndroidUtilities.hideKeyboard(this.searchField);
    }

    public FrameLayout getSearchContainer() {
        return this.searchContainer;
    }

    public ImageView getSearchClearButton() {
        return this.clearButton;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.iconView != null) {
            accessibilityNodeInfo.setClassName("android.widget.ImageButton");
        } else if (this.textView != null) {
            accessibilityNodeInfo.setClassName("android.widget.Button");
            if (TextUtils.isEmpty(accessibilityNodeInfo.getText())) {
                accessibilityNodeInfo.setText(this.textView.getText());
            }
        }
    }

    public void updateColor() {
        if (this.searchFilterLayout != null) {
            for (int i = 0; i < this.searchFilterLayout.getChildCount(); i++) {
                if (this.searchFilterLayout.getChildAt(i) instanceof SearchFilterView) {
                    ((SearchFilterView) this.searchFilterLayout.getChildAt(i)).updateColors();
                }
            }
        }
        if (this.popupLayout != null) {
            for (int i2 = 0; i2 < this.popupLayout.getItemsCount(); i2++) {
                if (this.popupLayout.getItemAt(i2) instanceof ActionBarMenuSubItem) {
                    ((ActionBarMenuSubItem) this.popupLayout.getItemAt(i2)).setSelectorColor(getThemedColor(Theme.key_dialogButtonSelector));
                }
            }
        }
        EditTextBoldCursor editTextBoldCursor = this.searchField;
        if (editTextBoldCursor != null) {
            int i3 = Theme.key_actionBarDefaultSearch;
            editTextBoldCursor.setCursorColor(getThemedColor(i3));
            this.searchField.setHintTextColor(getThemedColor(Theme.key_actionBarDefaultSearchPlaceholder));
            this.searchField.setTextColor(getThemedColor(i3));
            this.searchField.setHighlightColor(getThemedColor(Theme.key_chat_inTextSelectionHighlight));
            this.searchField.setHandlesColor(getThemedColor(Theme.key_chat_TextSelectionCursor));
        }
    }

    public void collapseSearchFilters() {
        this.selectedFilterIndex = -1;
        onFiltersChanged();
    }

    public void setTransitionOffset(float f) {
        this.transitionOffset = f;
        setTranslationX(BitmapDescriptorFactory.HUE_RED);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ActionBar.ActionBarMenuItem$ReactionFilterView */
    /* loaded from: classes5.dex */
    public static class ReactionFilterView extends SearchFilterView {
        private boolean attached;
        private ReactionsLayoutInBubble.ReactionButton reactionButton;

        public ReactionFilterView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
            removeAllViews();
            setBackground(null);
            setWillNotDraw(false);
        }

        @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.SearchFilterView
        public void setData(FiltersView.MediaFilterData mediaFilterData) {
            TLRPC$TL_reactionCount tLRPC$TL_reactionCount = new TLRPC$TL_reactionCount();
            tLRPC$TL_reactionCount.count = 1;
            tLRPC$TL_reactionCount.reaction = mediaFilterData.reaction.toTLReaction();
            ReactionsLayoutInBubble.ReactionButton reactionButton = new ReactionsLayoutInBubble.ReactionButton(null, UserConfig.selectedAccount, this, tLRPC$TL_reactionCount, false, this.resourcesProvider) { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.ReactionFilterView.1
                @Override // org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble.ReactionButton
                protected int getCacheType() {
                    return 9;
                }

                @Override // org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble.ReactionButton
                protected void updateColors(float f) {
                    this.lastDrawnBackgroundColor = ColorUtils.blendARGB(this.fromBackgroundColor, Theme.getColor(Theme.key_chat_inReactionButtonBackground, ReactionFilterView.this.resourcesProvider), f);
                }
            };
            this.reactionButton = reactionButton;
            reactionButton.width = AndroidUtilities.m108dp(44.33f);
            this.reactionButton.height = AndroidUtilities.m107dp(28);
            ReactionsLayoutInBubble.ReactionButton reactionButton2 = this.reactionButton;
            reactionButton2.choosen = true;
            if (this.attached) {
                reactionButton2.attach();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(AndroidUtilities.m107dp(49), AndroidUtilities.m107dp(32));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            ReactionsLayoutInBubble.ReactionButton reactionButton = this.reactionButton;
            if (reactionButton != null) {
                reactionButton.draw(canvas, ((getWidth() - AndroidUtilities.m107dp(4)) - this.reactionButton.width) / 2.0f, (getHeight() - this.reactionButton.height) / 2.0f, 1.0f, 1.0f, false);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.attached) {
                return;
            }
            ReactionsLayoutInBubble.ReactionButton reactionButton = this.reactionButton;
            if (reactionButton != null) {
                reactionButton.attach();
            }
            this.attached = true;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.attached) {
                ReactionsLayoutInBubble.ReactionButton reactionButton = this.reactionButton;
                if (reactionButton != null) {
                    reactionButton.detach();
                }
                this.attached = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ActionBar.ActionBarMenuItem$SearchFilterView */
    /* loaded from: classes5.dex */
    public static class SearchFilterView extends FrameLayout {
        BackupImageView avatarImageView;
        ImageView closeIconView;
        FiltersView.MediaFilterData data;
        Runnable removeSelectionRunnable;
        protected final Theme.ResourcesProvider resourcesProvider;
        ValueAnimator selectAnimator;
        private boolean selectedForDelete;
        private float selectedProgress;
        ShapeDrawable shapeDrawable;
        Drawable thumbDrawable;
        TextView titleView;

        public SearchFilterView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.removeSelectionRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.SearchFilterView.1
                @Override // java.lang.Runnable
                public void run() {
                    if (SearchFilterView.this.selectedForDelete) {
                        SearchFilterView.this.setSelectedForDelete(false);
                    }
                }
            };
            this.resourcesProvider = resourcesProvider;
            BackupImageView backupImageView = new BackupImageView(context);
            this.avatarImageView = backupImageView;
            addView(backupImageView, LayoutHelper.createFrame(32, 32));
            ImageView imageView = new ImageView(context);
            this.closeIconView = imageView;
            imageView.setImageResource(C3632R.C3634drawable.ic_close_white);
            addView(this.closeIconView, LayoutHelper.createFrame(24, 24, 16, 8, 0, 0, 0));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setTextSize(1, 14.0f);
            addView(this.titleView, LayoutHelper.createFrame(-2, -2, 16, 38, 0, 16, 0));
            ShapeDrawable shapeDrawable = (ShapeDrawable) Theme.createRoundRectDrawable(AndroidUtilities.m107dp(28), -12292204);
            this.shapeDrawable = shapeDrawable;
            setBackground(shapeDrawable);
            updateColors();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateColors() {
            int themedColor = getThemedColor(Theme.key_groupcreate_spanBackground);
            int i = Theme.key_avatar_backgroundBlue;
            int themedColor2 = getThemedColor(i);
            int themedColor3 = getThemedColor(Theme.key_windowBackgroundWhiteBlackText);
            int i2 = Theme.key_avatar_actionBarIconBlue;
            int themedColor4 = getThemedColor(i2);
            this.shapeDrawable.getPaint().setColor(ColorUtils.blendARGB(themedColor, themedColor2, this.selectedProgress));
            this.titleView.setTextColor(ColorUtils.blendARGB(themedColor3, themedColor4, this.selectedProgress));
            this.closeIconView.setColorFilter(themedColor4);
            this.closeIconView.setAlpha(this.selectedProgress);
            this.closeIconView.setScaleX(this.selectedProgress * 0.82f);
            this.closeIconView.setScaleY(this.selectedProgress * 0.82f);
            Drawable drawable = this.thumbDrawable;
            if (drawable != null) {
                Theme.setCombinedDrawableColor(drawable, getThemedColor(i), false);
                Theme.setCombinedDrawableColor(this.thumbDrawable, getThemedColor(i2), true);
            }
            this.avatarImageView.setAlpha(1.0f - this.selectedProgress);
            FiltersView.MediaFilterData mediaFilterData = this.data;
            if (mediaFilterData != null && mediaFilterData.filterType == 7) {
                setData(mediaFilterData);
            }
            invalidate();
        }

        public void setData(FiltersView.MediaFilterData mediaFilterData) {
            this.data = mediaFilterData;
            this.titleView.setText(mediaFilterData.getTitle());
            CombinedDrawable createCircleDrawableWithIcon = Theme.createCircleDrawableWithIcon(AndroidUtilities.m107dp(32), mediaFilterData.iconResFilled);
            this.thumbDrawable = createCircleDrawableWithIcon;
            Theme.setCombinedDrawableColor(createCircleDrawableWithIcon, getThemedColor(Theme.key_avatar_backgroundBlue), false);
            Drawable drawable = this.thumbDrawable;
            int i = Theme.key_avatar_actionBarIconBlue;
            Theme.setCombinedDrawableColor(drawable, getThemedColor(i), true);
            int i2 = mediaFilterData.filterType;
            if (i2 != 4) {
                if (i2 == 7) {
                    CombinedDrawable createCircleDrawableWithIcon2 = Theme.createCircleDrawableWithIcon(AndroidUtilities.m107dp(32), C3632R.C3634drawable.chats_archive);
                    createCircleDrawableWithIcon2.setIconSize(AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16));
                    Theme.setCombinedDrawableColor(createCircleDrawableWithIcon2, getThemedColor(Theme.key_avatar_backgroundArchived), false);
                    Theme.setCombinedDrawableColor(createCircleDrawableWithIcon2, getThemedColor(i), true);
                    this.avatarImageView.setImageDrawable(createCircleDrawableWithIcon2);
                    return;
                }
                this.avatarImageView.setImageDrawable(this.thumbDrawable);
                return;
            }
            TLObject tLObject = mediaFilterData.chat;
            if (tLObject instanceof TLRPC$User) {
                TLRPC$User tLRPC$User = (TLRPC$User) tLObject;
                if (UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser().f1751id == tLRPC$User.f1751id) {
                    CombinedDrawable createCircleDrawableWithIcon3 = Theme.createCircleDrawableWithIcon(AndroidUtilities.m107dp(32), C3632R.C3634drawable.chats_saved);
                    createCircleDrawableWithIcon3.setIconSize(AndroidUtilities.m107dp(16), AndroidUtilities.m107dp(16));
                    Theme.setCombinedDrawableColor(createCircleDrawableWithIcon3, getThemedColor(Theme.key_avatar_backgroundSaved), false);
                    Theme.setCombinedDrawableColor(createCircleDrawableWithIcon3, getThemedColor(i), true);
                    this.avatarImageView.setImageDrawable(createCircleDrawableWithIcon3);
                    return;
                }
                this.avatarImageView.getImageReceiver().setRoundRadius(AndroidUtilities.m107dp(16));
                this.avatarImageView.getImageReceiver().setForUserOrChat(tLRPC$User, this.thumbDrawable);
            } else if (tLObject instanceof TLRPC$Chat) {
                this.avatarImageView.getImageReceiver().setRoundRadius(AndroidUtilities.m107dp(16));
                this.avatarImageView.getImageReceiver().setForUserOrChat((TLRPC$Chat) tLObject, this.thumbDrawable);
            }
        }

        public void setExpanded(boolean z) {
            if (z) {
                this.titleView.setVisibility(0);
                return;
            }
            this.titleView.setVisibility(8);
            setSelectedForDelete(false);
        }

        public void setSelectedForDelete(final boolean z) {
            if (this.selectedForDelete == z) {
                return;
            }
            AndroidUtilities.cancelRunOnUIThread(this.removeSelectionRunnable);
            this.selectedForDelete = z;
            ValueAnimator valueAnimator = this.selectAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.selectAnimator.cancel();
            }
            float[] fArr = new float[2];
            fArr[0] = this.selectedProgress;
            fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.selectAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$SearchFilterView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ActionBarMenuItem.SearchFilterView.this.lambda$setSelectedForDelete$0(valueAnimator2);
                }
            });
            this.selectAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem.SearchFilterView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SearchFilterView.this.selectedProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                    SearchFilterView.this.updateColors();
                }
            });
            this.selectAnimator.setDuration(150L).start();
            if (this.selectedForDelete) {
                AndroidUtilities.runOnUIThread(this.removeSelectionRunnable, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setSelectedForDelete$0(ValueAnimator valueAnimator) {
            this.selectedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            updateColors();
        }

        public FiltersView.MediaFilterData getFilter() {
            return this.data;
        }

        protected int getThemedColor(int i) {
            return Theme.getColor(i, this.resourcesProvider);
        }
    }

    public ActionBarPopupWindow.GapView addColoredGap() {
        return addColoredGap(-1);
    }

    public ActionBarPopupWindow.GapView addColoredGap(int i) {
        createPopupLayout();
        ActionBarPopupWindow.GapView gapView = new ActionBarPopupWindow.GapView(getContext(), this.resourcesProvider, Theme.key_actionBarDefaultSubmenuSeparator);
        if (i != -1) {
            gapView.setTag(Integer.valueOf(i));
        }
        gapView.setTag(C3632R.C3635id.fit_width_tag, 1);
        this.popupLayout.addView((View) gapView, LayoutHelper.createLinear(-1, 8));
        return gapView;
    }

    /* renamed from: org.telegram.ui.ActionBar.ActionBarMenuItem$Item */
    /* loaded from: classes5.dex */
    public static class Item {
        public boolean dismiss;
        public int icon;
        private Integer iconColor;
        public Drawable iconDrawable;

        /* renamed from: id */
        public int f1783id;
        public boolean needCheck;
        private View.OnClickListener overrideClickListener;
        public CharSequence text;
        private Integer textColor;
        private View view;
        public View viewToSwipeBack;
        public int viewType;
        private int visibility = 0;
        private int rightIconVisibility = 0;

        static /* synthetic */ Item access$2900() {
            return asColoredGap();
        }

        private Item(int i) {
            this.viewType = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Item asSubItem(int i, int i2, Drawable drawable, CharSequence charSequence, boolean z, boolean z2) {
            Item item = new Item(0);
            item.f1783id = i;
            item.icon = i2;
            item.iconDrawable = drawable;
            item.text = charSequence;
            item.dismiss = z;
            item.needCheck = z2;
            return item;
        }

        private static Item asColoredGap() {
            return new Item(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Item asSwipeBackItem(int i, Drawable drawable, String str, View view) {
            Item item = new Item(2);
            item.icon = i;
            item.iconDrawable = drawable;
            item.text = str;
            item.viewToSwipeBack = view;
            return item;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public View add(final ActionBarMenuItem actionBarMenuItem) {
            actionBarMenuItem.createPopupLayout();
            if (this.view != null) {
                actionBarMenuItem.popupLayout.addView(this.view);
            } else {
                int i = this.viewType;
                if (i == 0) {
                    ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(actionBarMenuItem.getContext(), this.needCheck, false, false, actionBarMenuItem.resourcesProvider);
                    actionBarMenuSubItem.setTextAndIcon(this.text, this.icon, this.iconDrawable);
                    actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m107dp(196));
                    actionBarMenuSubItem.setTag(Integer.valueOf(this.f1783id));
                    actionBarMenuItem.popupLayout.addView(actionBarMenuSubItem);
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) actionBarMenuSubItem.getLayoutParams();
                    if (LocaleController.isRTL) {
                        layoutParams.gravity = 5;
                    }
                    layoutParams.width = -1;
                    layoutParams.height = AndroidUtilities.m107dp(48);
                    actionBarMenuSubItem.setLayoutParams(layoutParams);
                    actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$Item$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ActionBarMenuItem.Item.this.lambda$add$0(actionBarMenuItem, view);
                        }
                    });
                    Integer num = this.textColor;
                    if (num != null && this.iconColor != null) {
                        actionBarMenuSubItem.setColors(num.intValue(), this.iconColor.intValue());
                    }
                    this.view = actionBarMenuSubItem;
                } else if (i == 1) {
                    ActionBarPopupWindow.GapView gapView = new ActionBarPopupWindow.GapView(actionBarMenuItem.getContext(), actionBarMenuItem.resourcesProvider, Theme.key_actionBarDefaultSubmenuSeparator);
                    gapView.setTag(C3632R.C3635id.fit_width_tag, 1);
                    actionBarMenuItem.popupLayout.addView((View) gapView, LayoutHelper.createLinear(-1, 8));
                    this.view = gapView;
                } else if (i == 2) {
                    final ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(actionBarMenuItem.getContext(), false, false, false, actionBarMenuItem.resourcesProvider);
                    actionBarMenuSubItem2.setTextAndIcon(this.text, this.icon, this.iconDrawable);
                    actionBarMenuSubItem2.setMinimumWidth(AndroidUtilities.m107dp(196));
                    actionBarMenuSubItem2.setRightIcon(C3632R.C3634drawable.msg_arrowright);
                    actionBarMenuSubItem2.getRightIcon().setVisibility(this.rightIconVisibility);
                    actionBarMenuItem.popupLayout.addView(actionBarMenuSubItem2);
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) actionBarMenuSubItem2.getLayoutParams();
                    if (LocaleController.isRTL) {
                        layoutParams2.gravity = 5;
                    }
                    layoutParams2.width = -1;
                    layoutParams2.height = AndroidUtilities.m107dp(48);
                    actionBarMenuSubItem2.setLayoutParams(layoutParams2);
                    final int addViewToSwipeBack = actionBarMenuItem.popupLayout.addViewToSwipeBack(this.viewToSwipeBack);
                    actionBarMenuSubItem2.openSwipeBackLayout = new Runnable() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$Item$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            ActionBarMenuItem.Item.lambda$add$1(ActionBarMenuItem.this, addViewToSwipeBack);
                        }
                    };
                    actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.ActionBarMenuItem$Item$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ActionBarMenuSubItem.this.openSwipeBack();
                        }
                    });
                    actionBarMenuItem.popupLayout.swipeBackGravityRight = true;
                    Integer num2 = this.textColor;
                    if (num2 != null && this.iconColor != null) {
                        actionBarMenuSubItem2.setColors(num2.intValue(), this.iconColor.intValue());
                    }
                    this.view = actionBarMenuSubItem2;
                }
            }
            View view = this.view;
            if (view != null) {
                view.setVisibility(this.visibility);
                View.OnClickListener onClickListener = this.overrideClickListener;
                if (onClickListener != null) {
                    this.view.setOnClickListener(onClickListener);
                }
            }
            return this.view;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$add$0(ActionBarMenuItem actionBarMenuItem, View view) {
            if (actionBarMenuItem.popupWindow != null && actionBarMenuItem.popupWindow.isShowing() && this.dismiss) {
                if (actionBarMenuItem.processedPopupClick) {
                    return;
                }
                actionBarMenuItem.processedPopupClick = true;
                actionBarMenuItem.popupWindow.dismiss(actionBarMenuItem.allowCloseAnimation);
            }
            if (actionBarMenuItem.parentMenu != null) {
                actionBarMenuItem.parentMenu.onItemClick(((Integer) view.getTag()).intValue());
            } else if (actionBarMenuItem.delegate != null) {
                actionBarMenuItem.delegate.onItemClick(((Integer) view.getTag()).intValue());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$add$1(ActionBarMenuItem actionBarMenuItem, int i) {
            if (actionBarMenuItem.popupLayout.getSwipeBack() != null) {
                actionBarMenuItem.popupLayout.getSwipeBack().openForeground(i);
            }
        }

        public void setVisibility(int i) {
            this.visibility = i;
            View view = this.view;
            if (view != null) {
                view.setVisibility(i);
            }
        }

        public void setOnClickListener(View.OnClickListener onClickListener) {
            this.overrideClickListener = onClickListener;
            View view = this.view;
            if (view != null) {
                view.setOnClickListener(onClickListener);
            }
        }

        public void openSwipeBack() {
            View view = this.view;
            if (view instanceof ActionBarMenuSubItem) {
                ((ActionBarMenuSubItem) view).openSwipeBack();
            }
        }

        public void setText(CharSequence charSequence) {
            this.text = charSequence;
            View view = this.view;
            if (view instanceof ActionBarMenuSubItem) {
                ((ActionBarMenuSubItem) view).setText(charSequence);
            }
        }

        public void setIcon(int i) {
            if (i != this.icon) {
                this.icon = i;
                View view = this.view;
                if (view instanceof ActionBarMenuSubItem) {
                    ((ActionBarMenuSubItem) view).setIcon(i);
                }
            }
        }

        public void setRightIconVisibility(int i) {
            if (this.rightIconVisibility != i) {
                this.rightIconVisibility = i;
                View view = this.view;
                if (view instanceof ActionBarMenuSubItem) {
                    ((ActionBarMenuSubItem) view).getRightIcon().setVisibility(this.rightIconVisibility);
                }
            }
        }

        public void setColors(int i, int i2) {
            Integer num = this.textColor;
            if (num == null || this.iconColor == null || num.intValue() != i || this.iconColor.intValue() != i2) {
                this.textColor = Integer.valueOf(i);
                this.iconColor = Integer.valueOf(i2);
                View view = this.view;
                if (view instanceof ActionBarMenuSubItem) {
                    ((ActionBarMenuSubItem) view).setColors(i, i2);
                }
            }
        }
    }

    public Item lazilyAddSwipeBackItem(int i, Drawable drawable, String str, View view) {
        return putLazyItem(Item.asSwipeBackItem(i, drawable, str, view));
    }

    public Item lazilyAddSubItem(int i, int i2, CharSequence charSequence) {
        return lazilyAddSubItem(i, i2, null, charSequence, true, false);
    }

    public Item lazilyAddSubItem(int i, int i2, Drawable drawable, CharSequence charSequence, boolean z, boolean z2) {
        return putLazyItem(Item.asSubItem(i, i2, drawable, charSequence, z, z2));
    }

    public Item lazilyAddColoredGap() {
        return putLazyItem(Item.access$2900());
    }

    private Item putLazyItem(Item item) {
        if (item == null) {
            return item;
        }
        if (this.lazyList == null) {
            this.lazyList = new ArrayList<>();
        }
        this.lazyList.add(item);
        if (this.lazyMap == null) {
            this.lazyMap = new HashMap<>();
        }
        this.lazyMap.put(Integer.valueOf(item.f1783id), item);
        return item;
    }

    private Item findLazyItem(int i) {
        HashMap<Integer, Item> hashMap = this.lazyMap;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(Integer.valueOf(i));
    }

    private void layoutLazyItems() {
        if (this.lazyList == null) {
            return;
        }
        for (int i = 0; i < this.lazyList.size(); i++) {
            this.lazyList.get(i).add(this);
        }
        this.lazyList.clear();
    }

    public static ActionBarMenuSubItem addItem(ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, int i, CharSequence charSequence, boolean z, Theme.ResourcesProvider resourcesProvider) {
        return addItem(false, false, actionBarPopupWindowLayout, i, charSequence, z, resourcesProvider);
    }

    public static ActionBarMenuSubItem addItem(boolean z, boolean z2, ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, int i, CharSequence charSequence, boolean z3, Theme.ResourcesProvider resourcesProvider) {
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(actionBarPopupWindowLayout.getContext(), z3, z, z2, resourcesProvider);
        actionBarMenuSubItem.setTextAndIcon(charSequence, i);
        actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m107dp(196));
        actionBarPopupWindowLayout.addView(actionBarMenuSubItem);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) actionBarMenuSubItem.getLayoutParams();
        if (LocaleController.isRTL) {
            layoutParams.gravity = 5;
        }
        layoutParams.width = -1;
        layoutParams.height = AndroidUtilities.m107dp(48);
        actionBarMenuSubItem.setLayoutParams(layoutParams);
        return actionBarMenuSubItem;
    }
}
