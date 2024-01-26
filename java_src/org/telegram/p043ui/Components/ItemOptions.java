package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.UserCell;
import org.telegram.p043ui.Components.BlurringShader;
import org.telegram.p043ui.ProfileActivity;
import org.telegram.p043ui.Stories.recorder.HintView2;
/* renamed from: org.telegram.ui.Components.ItemOptions */
/* loaded from: classes6.dex */
public class ItemOptions {
    private ActionBarPopupWindow actionBarPopupWindow;
    private ViewGroup container;
    private Context context;
    private int dimAlpha;
    private View dimView;
    private Runnable dismissListener;
    private boolean forceTop;
    private BaseFragment fragment;
    private ArrayList<Integer> futurePlacements;
    private int gravity;
    private boolean ignoreX;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout lastLayout;
    private ViewGroup layout;
    private int maxHeight;
    private int minWidthDp;
    private float offsetX;
    private float offsetY;
    private final float[] point;
    private ViewTreeObserver.OnPreDrawListener preDrawListener;
    private Theme.ResourcesProvider resourcesProvider;
    private View scrimView;
    private Drawable scrimViewBackground;
    private int shiftDp;
    private float translateX;
    private float translateY;
    private Rect viewAdditionalOffsets;

    public void updateColors() {
    }

    public ItemOptions addIf(boolean z, int i, CharSequence charSequence, boolean z2, Runnable runnable) {
        return addIf(z, i, charSequence, z2, runnable, false);
    }

    public ItemOptions addIf(boolean z, int i, CharSequence charSequence, Runnable runnable) {
        return addIf(z, i, charSequence, runnable, false);
    }

    public ItemOptions add(int i, CharSequence charSequence, Runnable runnable) {
        return add(i, charSequence, runnable, true, false);
    }

    public ItemOptions add(int i, CharSequence charSequence, boolean z, Runnable runnable) {
        return add(i, charSequence, z, runnable, true, false);
    }

    public ItemOptions add(int i, CharSequence charSequence, int i2, Runnable runnable) {
        return add(i, charSequence, i2, runnable, true, false);
    }

    public ItemOptions add(int i, CharSequence charSequence, int i2, int i3, Runnable runnable) {
        return add(i, charSequence, i2, i3, runnable, true, false);
    }

    public ItemOptions addFuturePlacement() {
        if (this.futurePlacements == null) {
            this.futurePlacements = new ArrayList<>();
        }
        this.futurePlacements.add(Integer.valueOf(getItemsCount()));
        return this;
    }

    public static ItemOptions makeOptions(BaseFragment baseFragment, View view) {
        return new ItemOptions(baseFragment, view);
    }

    public static ItemOptions makeOptions(ViewGroup viewGroup, View view) {
        return makeOptions(viewGroup, null, view);
    }

    public static ItemOptions makeOptions(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, View view) {
        return new ItemOptions(viewGroup, resourcesProvider, view);
    }

    private ItemOptions(BaseFragment baseFragment, View view) {
        this.gravity = 5;
        this.point = new float[2];
        this.viewAdditionalOffsets = new Rect();
        this.shiftDp = -4;
        if (baseFragment.getContext() == null) {
            return;
        }
        this.fragment = baseFragment;
        this.resourcesProvider = baseFragment.getResourceProvider();
        this.context = baseFragment.getContext();
        this.scrimView = view;
        this.dimAlpha = ((double) AndroidUtilities.computePerceivedBrightness(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider))) > 0.705d ? 102 : 51;
        init();
    }

    private ItemOptions(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, View view) {
        this.gravity = 5;
        this.point = new float[2];
        this.viewAdditionalOffsets = new Rect();
        this.shiftDp = -4;
        if (viewGroup.getContext() == null) {
            return;
        }
        this.container = viewGroup;
        this.resourcesProvider = resourcesProvider;
        this.context = viewGroup.getContext();
        this.scrimView = view;
        this.dimAlpha = ((double) AndroidUtilities.computePerceivedBrightness(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider))) > 0.705d ? 102 : 51;
        init();
    }

    private void init() {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this.context, this.resourcesProvider) { // from class: org.telegram.ui.Components.ItemOptions.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow.ActionBarPopupWindowLayout, android.widget.FrameLayout, android.view.View
            public void onMeasure(int i, int i2) {
                if (this == ItemOptions.this.layout && ItemOptions.this.maxHeight > 0) {
                    i2 = View.MeasureSpec.makeMeasureSpec(Math.min(ItemOptions.this.maxHeight, View.MeasureSpec.getSize(i2)), View.MeasureSpec.getMode(i2));
                }
                super.onMeasure(i, i2);
            }
        };
        this.lastLayout = actionBarPopupWindowLayout;
        actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda3
            @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                ItemOptions.this.lambda$init$0(keyEvent);
            }
        });
        this.layout = this.lastLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$0(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.actionBarPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.actionBarPopupWindow.dismiss();
        }
    }

    public ItemOptions ignoreX() {
        this.ignoreX = true;
        return this;
    }

    public ItemOptions addIf(boolean z, int i, CharSequence charSequence, boolean z2, Runnable runnable, boolean z3) {
        return add(i, charSequence, z2, runnable, z, z3);
    }

    public ItemOptions addIf(boolean z, int i, CharSequence charSequence, Runnable runnable, boolean z2) {
        return add(i, charSequence, Theme.key_actionBarDefaultSubmenuItemIcon, Theme.key_actionBarDefaultSubmenuItem, runnable, z, z2);
    }

    public ItemOptions add(CharSequence charSequence, Runnable runnable) {
        return add(0, charSequence, false, runnable);
    }

    public ItemOptions add(int i, CharSequence charSequence, Runnable runnable, boolean z, boolean z2) {
        return add(i, charSequence, false, runnable, z, z2);
    }

    public ItemOptions add(int i, CharSequence charSequence, boolean z, Runnable runnable, boolean z2, boolean z3) {
        return add(i, charSequence, z ? Theme.key_text_RedRegular : Theme.key_actionBarDefaultSubmenuItemIcon, z ? Theme.key_text_RedRegular : Theme.key_actionBarDefaultSubmenuItem, runnable, z2, z3);
    }

    public ItemOptions add(int i, CharSequence charSequence, int i2, Runnable runnable, boolean z, boolean z2) {
        return add(i, charSequence, i2, i2, runnable, z, z2);
    }

    public ItemOptions add(int i, CharSequence charSequence, int i2, int i3, final Runnable runnable, boolean z, boolean z2) {
        ArrayList<Integer> arrayList;
        int intValue = (!z2 || (arrayList = this.futurePlacements) == null || arrayList.isEmpty()) ? -1 : this.futurePlacements.remove(0).intValue();
        if (this.context != null && z) {
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(this.context, false, false, this.resourcesProvider);
            actionBarMenuSubItem.setPadding(AndroidUtilities.m107dp(18), 0, AndroidUtilities.m107dp((LocaleController.isRTL ? 0 : 8) + 18), 0);
            if (i != 0) {
                actionBarMenuSubItem.setTextAndIcon(charSequence, i);
            } else {
                actionBarMenuSubItem.setText(charSequence);
            }
            actionBarMenuSubItem.setColors(Theme.getColor(i3, this.resourcesProvider), Theme.getColor(i2, this.resourcesProvider));
            actionBarMenuSubItem.setSelectorColor(Theme.multAlpha(Theme.getColor(i3, this.resourcesProvider), 0.12f));
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ItemOptions.this.lambda$add$1(runnable, view);
                }
            });
            int i4 = this.minWidthDp;
            if (i4 > 0) {
                actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m107dp(i4));
                this.lastLayout.addView(actionBarMenuSubItem, LayoutHelper.createLinear(this.minWidthDp, -2), intValue);
            } else {
                this.lastLayout.addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2), intValue);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$add$1(Runnable runnable, View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public ItemOptions makeMultiline(boolean z) {
        if (this.context != null && this.lastLayout.getItemsCount() > 0) {
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.lastLayout;
            View itemAt = actionBarPopupWindowLayout.getItemAt(actionBarPopupWindowLayout.getItemsCount() - 1);
            if (itemAt instanceof ActionBarMenuSubItem) {
                ((ActionBarMenuSubItem) itemAt).setMultiline(z);
            }
        }
        return this;
    }

    public ItemOptions cutTextInFancyHalf() {
        if (this.context != null && this.lastLayout.getItemsCount() > 0) {
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.lastLayout;
            View itemAt = actionBarPopupWindowLayout.getItemAt(actionBarPopupWindowLayout.getItemsCount() - 1);
            if (itemAt instanceof ActionBarMenuSubItem) {
                TextView textView = ((ActionBarMenuSubItem) itemAt).getTextView();
                textView.setMaxWidth(HintView2.cutInFancyHalf(textView.getText(), textView.getPaint()) + textView.getPaddingLeft() + textView.getPaddingRight());
            }
        }
        return this;
    }

    public ItemOptions putPremiumLock(final Runnable runnable) {
        if (runnable != null && this.context != null && this.lastLayout.getItemsCount() > 0) {
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.lastLayout;
            View itemAt = actionBarPopupWindowLayout.getItemAt(actionBarPopupWindowLayout.getItemsCount() - 1);
            if (!(itemAt instanceof ActionBarMenuSubItem)) {
                return this;
            }
            ActionBarMenuSubItem actionBarMenuSubItem = (ActionBarMenuSubItem) itemAt;
            actionBarMenuSubItem.setRightIcon(C3632R.C3634drawable.msg_mini_lock3);
            actionBarMenuSubItem.getRightIcon().setAlpha(0.4f);
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ItemOptions.this.lambda$putPremiumLock$2(runnable, view);
                }
            });
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putPremiumLock$2(Runnable runnable, View view) {
        if (runnable != null) {
            int i = -this.shiftDp;
            this.shiftDp = i;
            AndroidUtilities.shakeViewSpring(view, i);
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            runnable.run();
        }
    }

    public ItemOptions putCheck() {
        if (this.context != null && this.lastLayout.getItemsCount() > 0) {
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.lastLayout;
            View itemAt = actionBarPopupWindowLayout.getItemAt(actionBarPopupWindowLayout.getItemsCount() - 1);
            if (!(itemAt instanceof ActionBarMenuSubItem)) {
                return this;
            }
            ActionBarMenuSubItem actionBarMenuSubItem = (ActionBarMenuSubItem) itemAt;
            actionBarMenuSubItem.setRightIcon(C3632R.C3634drawable.msg_text_check);
            actionBarMenuSubItem.getRightIcon().setColorFilter(-1, PorterDuff.Mode.MULTIPLY);
            actionBarMenuSubItem.getRightIcon().setScaleX(0.85f);
            actionBarMenuSubItem.getRightIcon().setScaleY(0.85f);
        }
        return this;
    }

    public ItemOptions addGap() {
        ActionBarPopupWindow.GapView gapView = new ActionBarPopupWindow.GapView(this.context, this.resourcesProvider);
        gapView.setTag(C3632R.C3635id.fit_width_tag, 1);
        this.lastLayout.addView((View) gapView, LayoutHelper.createLinear(-1, 8));
        return this;
    }

    public ItemOptions addSpaceGap() {
        if (this.layout == this.lastLayout) {
            LinearLayout linearLayout = new LinearLayout(this.context);
            this.layout = linearLayout;
            linearLayout.setOrientation(1);
            this.layout.addView(this.lastLayout, LayoutHelper.createLinear(-1, -2));
        }
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this.context, this.resourcesProvider);
        this.lastLayout = actionBarPopupWindowLayout;
        actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                ItemOptions.this.lambda$addSpaceGap$3(keyEvent);
            }
        });
        this.layout.addView(this.lastLayout, LayoutHelper.createLinear(-1, -2, 0, -8, 0, 0));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addSpaceGap$3(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.actionBarPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.actionBarPopupWindow.dismiss();
        }
    }

    public ItemOptions addView(View view) {
        if (view == null) {
            return this;
        }
        view.setTag(C3632R.C3635id.fit_width_tag, 1);
        this.lastLayout.addView(view, LayoutHelper.createLinear(-1, -2));
        return this;
    }

    public ItemOptions addText(CharSequence charSequence, int i) {
        TextView textView = new TextView(this.context);
        textView.setTextSize(1, i);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider));
        textView.setPadding(AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(8));
        textView.setText(charSequence);
        textView.setTag(C3632R.C3635id.fit_width_tag, 1);
        textView.setMaxWidth(AndroidUtilities.m107dp(200));
        this.lastLayout.addView((View) textView, LayoutHelper.createLinear(-1, -2));
        return this;
    }

    public ItemOptions setScrimViewBackground(Drawable drawable) {
        this.scrimViewBackground = drawable;
        return this;
    }

    public ItemOptions setGravity(int i) {
        this.gravity = i;
        return this;
    }

    public ItemOptions translate(float f, float f2) {
        this.translateX += f;
        this.translateY += f2;
        return this;
    }

    public ItemOptions setMinWidth(int i) {
        this.minWidthDp = i;
        return this;
    }

    public ItemOptions setDimAlpha(int i) {
        this.dimAlpha = i;
        return this;
    }

    public ItemOptions forceTop(boolean z) {
        this.forceTop = z;
        return this;
    }

    public ItemOptions setMaxHeight(int i) {
        this.maxHeight = i;
        return this;
    }

    public ItemOptions setBlurBackground(BlurringShader.BlurManager blurManager, float f, float f2) {
        Drawable mutate = this.context.getResources().getDrawable(C3632R.C3634drawable.popup_fixed_alert2).mutate();
        ViewGroup viewGroup = this.layout;
        if (viewGroup instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
            viewGroup.setBackgroundDrawable(new BlurringShader.StoryBlurDrawer(blurManager, viewGroup, 5).makeDrawable(this.offsetX + f + this.layout.getX(), this.offsetY + f2 + this.layout.getY(), mutate, AndroidUtilities.m107dp(6)));
        } else {
            for (int i = 0; i < this.layout.getChildCount(); i++) {
                View childAt = this.layout.getChildAt(i);
                if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                    childAt.setBackgroundDrawable(new BlurringShader.StoryBlurDrawer(blurManager, childAt, 5).makeDrawable(this.offsetX + f + this.layout.getX() + childAt.getX(), this.offsetY + f2 + this.layout.getY() + childAt.getY(), mutate, AndroidUtilities.m107dp(6)));
                }
            }
        }
        return this;
    }

    public int getItemsCount() {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.lastLayout;
        if (actionBarPopupWindowLayout == this.layout) {
            return actionBarPopupWindowLayout.getItemsCount();
        }
        int i = 0;
        int i2 = 0;
        while (i < this.layout.getChildCount() - 1) {
            View childAt = i == this.layout.getChildCount() + (-1) ? this.lastLayout : this.layout.getChildAt(i);
            if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                i2 += ((ActionBarPopupWindow.ActionBarPopupWindowLayout) childAt).getItemsCount();
            }
            i++;
        }
        return i2;
    }

    public ItemOptions show() {
        View view;
        int width;
        int height;
        if (this.actionBarPopupWindow == null && getItemsCount() > 0) {
            int i = 0;
            while (i < this.layout.getChildCount()) {
                View childAt = i == this.layout.getChildCount() - 1 ? this.lastLayout : this.layout.getChildAt(i);
                if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                    ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = (ActionBarPopupWindow.ActionBarPopupWindowLayout) childAt;
                    if (actionBarPopupWindowLayout.getItemsCount() > 0) {
                        View itemAt = actionBarPopupWindowLayout.getItemAt(0);
                        View itemAt2 = actionBarPopupWindowLayout.getItemAt(actionBarPopupWindowLayout.getItemsCount() - 1);
                        if (itemAt instanceof ActionBarMenuSubItem) {
                            ((ActionBarMenuSubItem) itemAt).updateSelectorBackground(true, itemAt == itemAt2);
                        }
                        if (itemAt2 instanceof ActionBarMenuSubItem) {
                            ((ActionBarMenuSubItem) itemAt2).updateSelectorBackground(itemAt2 == itemAt, true);
                        }
                    }
                }
                i++;
            }
            if (this.minWidthDp > 0) {
                int i2 = 0;
                while (i2 < this.layout.getChildCount() - 1) {
                    View childAt2 = i2 == this.layout.getChildCount() - 1 ? this.lastLayout : this.layout.getChildAt(i2);
                    if (childAt2 instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout2 = (ActionBarPopupWindow.ActionBarPopupWindowLayout) childAt2;
                        for (int i3 = 0; i3 < actionBarPopupWindowLayout2.getItemsCount(); i3++) {
                            actionBarPopupWindowLayout2.getItemAt(i3).setMinimumWidth(AndroidUtilities.m107dp(this.minWidthDp));
                        }
                    }
                    i2++;
                }
            }
            final ViewGroup viewGroup = this.container;
            if (viewGroup == null) {
                viewGroup = this.fragment.getParentLayout().getOverlayContainerView();
            }
            if (this.context != null && viewGroup != null) {
                float f = AndroidUtilities.displaySize.y / 2.0f;
                View view2 = this.scrimView;
                if (view2 != null) {
                    getPointOnScreen(view2, viewGroup, this.point);
                    f = this.point[1];
                }
                if (this.ignoreX) {
                    this.point[0] = 0.0f;
                }
                if (this.dimAlpha > 0) {
                    final DimView dimView = new DimView(this.context);
                    this.dimView = dimView;
                    this.preDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda2
                        @Override // android.view.ViewTreeObserver.OnPreDrawListener
                        public final boolean onPreDraw() {
                            boolean lambda$show$4;
                            lambda$show$4 = ItemOptions.lambda$show$4(dimView);
                            return lambda$show$4;
                        }
                    };
                    viewGroup.getViewTreeObserver().addOnPreDrawListener(this.preDrawListener);
                    viewGroup.addView(this.dimView, LayoutHelper.createFrame(-1, -1));
                    this.dimView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.dimView.animate().alpha(1.0f).setDuration(150L);
                }
                this.layout.measure(View.MeasureSpec.makeMeasureSpec(viewGroup.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(viewGroup.getMeasuredHeight(), Integer.MIN_VALUE));
                final ViewGroup viewGroup2 = viewGroup;
                ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(this.layout, -2, -2) { // from class: org.telegram.ui.Components.ItemOptions.2
                    @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                    public void dismiss() {
                        super.dismiss();
                        ItemOptions.this.dismissDim(viewGroup2);
                        if (ItemOptions.this.dismissListener != null) {
                            ItemOptions.this.dismissListener.run();
                            ItemOptions.this.dismissListener = null;
                        }
                    }
                };
                this.actionBarPopupWindow = actionBarPopupWindow;
                actionBarPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.Components.ItemOptions.3
                    @Override // android.widget.PopupWindow.OnDismissListener
                    public void onDismiss() {
                        ItemOptions.this.actionBarPopupWindow = null;
                        ItemOptions.this.dismissDim(viewGroup);
                        if (ItemOptions.this.dismissListener != null) {
                            ItemOptions.this.dismissListener.run();
                            ItemOptions.this.dismissListener = null;
                        }
                    }
                });
                this.actionBarPopupWindow.setOutsideTouchable(true);
                this.actionBarPopupWindow.setFocusable(true);
                this.actionBarPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
                this.actionBarPopupWindow.setAnimationStyle(C3632R.style.PopupContextAnimation);
                this.actionBarPopupWindow.setInputMethodMode(2);
                this.actionBarPopupWindow.setSoftInputMode(0);
                if (AndroidUtilities.isTablet()) {
                    f += viewGroup.getPaddingTop();
                    viewGroup.getPaddingLeft();
                }
                if (this.scrimView != null) {
                    if (this.gravity == 5) {
                        width = (int) (((this.point[0] + view.getMeasuredWidth()) - this.layout.getMeasuredWidth()) + viewGroup.getX());
                    } else {
                        width = (int) (viewGroup.getX() + this.point[0]);
                    }
                } else {
                    width = (viewGroup.getWidth() - this.layout.getMeasuredWidth()) / 2;
                }
                if (this.scrimView != null) {
                    if (this.forceTop || this.layout.getMeasuredHeight() + f + AndroidUtilities.m107dp(16) > AndroidUtilities.displaySize.y) {
                        f = (f - this.scrimView.getMeasuredHeight()) - this.layout.getMeasuredHeight();
                    }
                    height = (int) (f + this.scrimView.getMeasuredHeight() + viewGroup.getY());
                } else {
                    height = (viewGroup.getHeight() - this.layout.getMeasuredHeight()) / 2;
                }
                BaseFragment baseFragment = this.fragment;
                if (baseFragment != null && baseFragment.getFragmentView() != null) {
                    this.fragment.getFragmentView().getRootView().dispatchTouchEvent(AndroidUtilities.emptyMotionEvent());
                } else if (this.container != null) {
                    viewGroup.dispatchTouchEvent(AndroidUtilities.emptyMotionEvent());
                }
                ActionBarPopupWindow actionBarPopupWindow2 = this.actionBarPopupWindow;
                float f2 = width + this.translateX;
                this.offsetX = f2;
                float f3 = height + this.translateY;
                this.offsetY = f3;
                actionBarPopupWindow2.showAtLocation(viewGroup, 0, (int) f2, (int) f3);
            }
            return this;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$show$4(View view) {
        view.invalidate();
        return true;
    }

    public ItemOptions setBackgroundColor(int i) {
        int i2 = 0;
        while (i2 < this.layout.getChildCount()) {
            View childAt = i2 == this.layout.getChildCount() + (-1) ? this.lastLayout : this.layout.getChildAt(i2);
            if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                childAt.setBackgroundColor(i);
            }
            i2++;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissDim(final ViewGroup viewGroup) {
        final View view = this.dimView;
        if (view == null) {
            return;
        }
        this.dimView = null;
        view.animate().cancel();
        view.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ItemOptions.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AndroidUtilities.removeFromParent(view);
                viewGroup.getViewTreeObserver().removeOnPreDrawListener(ItemOptions.this.preDrawListener);
            }
        });
    }

    public boolean isShown() {
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        return actionBarPopupWindow != null && actionBarPopupWindow.isShowing();
    }

    public ItemOptions setOnDismiss(Runnable runnable) {
        this.dismissListener = runnable;
        return this;
    }

    public void dismiss() {
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
        }
    }

    public static void getPointOnScreen(View view, ViewGroup viewGroup, float[] fArr) {
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = 0.0f;
        while (view != viewGroup) {
            f += view.getY();
            f2 += view.getX();
            if (view instanceof ScrollView) {
                f2 -= view.getScrollX();
                f -= view.getScrollY();
            }
            if (!(view.getParent() instanceof View)) {
                break;
            }
            view = (View) view.getParent();
            if (!(view instanceof ViewGroup)) {
                return;
            }
        }
        fArr[0] = f2 - viewGroup.getPaddingLeft();
        fArr[1] = f - viewGroup.getPaddingTop();
    }

    public ItemOptions setViewAdditionalOffsets(int i, int i2, int i3, int i4) {
        this.viewAdditionalOffsets.set(i, i2, i3, i4);
        return this;
    }

    /* renamed from: org.telegram.ui.Components.ItemOptions$DimView */
    /* loaded from: classes6.dex */
    public class DimView extends View {
        private final Bitmap cachedBitmap;
        private final Paint cachedBitmapPaint;
        private final float clipTop;
        private final int dim;

        public DimView(Context context) {
            super(context);
            if (ItemOptions.this.scrimView != null && (ItemOptions.this.scrimView.getParent() instanceof View)) {
                this.clipTop = ((View) ItemOptions.this.scrimView.getParent()).getY() + ItemOptions.this.scrimView.getY();
            } else {
                this.clipTop = BitmapDescriptorFactory.HUE_RED;
            }
            this.dim = ColorUtils.setAlphaComponent(0, ItemOptions.this.dimAlpha);
            if ((ItemOptions.this.scrimView instanceof UserCell) && (ItemOptions.this.fragment instanceof ProfileActivity)) {
                this.cachedBitmapPaint = new Paint(3);
                Bitmap createBitmap = Bitmap.createBitmap(ItemOptions.this.scrimView.getWidth() + ItemOptions.this.viewAdditionalOffsets.width(), ItemOptions.this.scrimView.getHeight() + ItemOptions.this.viewAdditionalOffsets.height(), Bitmap.Config.ARGB_8888);
                this.cachedBitmap = createBitmap;
                Canvas canvas = new Canvas(createBitmap);
                canvas.translate(ItemOptions.this.viewAdditionalOffsets.left, ItemOptions.this.viewAdditionalOffsets.top);
                ItemOptions.this.scrimView.draw(canvas);
                return;
            }
            this.cachedBitmapPaint = null;
            this.cachedBitmap = null;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.drawColor(this.dim);
            if (this.cachedBitmap == null || !(ItemOptions.this.scrimView.getParent() instanceof View)) {
                if (ItemOptions.this.scrimView == null || !(ItemOptions.this.scrimView.getParent() instanceof View)) {
                    return;
                }
                canvas.save();
                if (this.clipTop < 1.0f) {
                    canvas.clipRect(-ItemOptions.this.viewAdditionalOffsets.left, (((-ItemOptions.this.viewAdditionalOffsets.top) + ItemOptions.this.point[1]) - this.clipTop) + 1.0f, getMeasuredWidth() + ItemOptions.this.viewAdditionalOffsets.right, getMeasuredHeight() + ItemOptions.this.viewAdditionalOffsets.bottom);
                }
                canvas.translate(ItemOptions.this.point[0], ItemOptions.this.point[1]);
                if (ItemOptions.this.scrimViewBackground != null) {
                    ItemOptions.this.scrimViewBackground.setBounds(-ItemOptions.this.viewAdditionalOffsets.left, -ItemOptions.this.viewAdditionalOffsets.top, ItemOptions.this.scrimView.getWidth() + ItemOptions.this.viewAdditionalOffsets.right, ItemOptions.this.scrimView.getHeight() + ItemOptions.this.viewAdditionalOffsets.bottom);
                    ItemOptions.this.scrimViewBackground.draw(canvas);
                }
                ItemOptions.this.scrimView.draw(canvas);
                canvas.restore();
                return;
            }
            canvas.save();
            if (this.clipTop < 1.0f) {
                canvas.clipRect(-ItemOptions.this.viewAdditionalOffsets.left, (((-ItemOptions.this.viewAdditionalOffsets.top) + ItemOptions.this.point[1]) - this.clipTop) + 1.0f, getMeasuredWidth() + ItemOptions.this.viewAdditionalOffsets.right, getMeasuredHeight() + ItemOptions.this.viewAdditionalOffsets.bottom);
            }
            canvas.translate(ItemOptions.this.point[0], ItemOptions.this.point[1]);
            if (ItemOptions.this.scrimViewBackground != null) {
                ItemOptions.this.scrimViewBackground.setBounds(-ItemOptions.this.viewAdditionalOffsets.left, -ItemOptions.this.viewAdditionalOffsets.top, ItemOptions.this.scrimView.getWidth() + ItemOptions.this.viewAdditionalOffsets.right, ItemOptions.this.scrimView.getHeight() + ItemOptions.this.viewAdditionalOffsets.bottom);
                ItemOptions.this.scrimViewBackground.draw(canvas);
            }
            canvas.drawBitmap(this.cachedBitmap, -ItemOptions.this.viewAdditionalOffsets.left, -ItemOptions.this.viewAdditionalOffsets.top, this.cachedBitmapPaint);
            canvas.restore();
        }
    }
}
