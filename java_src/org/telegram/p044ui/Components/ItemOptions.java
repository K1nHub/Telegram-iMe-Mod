package org.telegram.p044ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.p044ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p044ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Cells.UserCell;
import org.telegram.p044ui.ProfileActivity;
/* renamed from: org.telegram.ui.Components.ItemOptions */
/* loaded from: classes6.dex */
public class ItemOptions {
    private ActionBarPopupWindow actionBarPopupWindow;
    private ViewGroup container;
    private Context context;
    private int dimAlpha;
    private BaseFragment fragment;
    private ArrayList<Integer> futurePlacements;
    private int gravity;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout layout;
    private int minWidthDp;
    private final float[] point;
    private View scrimView;
    private Drawable scrimViewBackground;
    private float translateX;
    private float translateY;

    public void updateColors() {
    }

    public ItemOptions addIf(boolean z, int i, CharSequence charSequence, Runnable runnable) {
        return addIf(z, i, charSequence, runnable, false);
    }

    public ItemOptions addIf(boolean z, int i, CharSequence charSequence, boolean z2, Runnable runnable) {
        return addIf(z, i, charSequence, z2, runnable, false);
    }

    public ItemOptions add(int i, CharSequence charSequence, Runnable runnable) {
        return add(i, charSequence, runnable, true, false);
    }

    public ItemOptions add(int i, CharSequence charSequence, boolean z, Runnable runnable) {
        return add(i, charSequence, z, runnable, true, false);
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
        return new ItemOptions(viewGroup, view);
    }

    private ItemOptions(BaseFragment baseFragment, View view) {
        this.gravity = 5;
        this.point = new float[2];
        this.dimAlpha = Theme.isCurrentThemeDark() ? 102 : 51;
        if (baseFragment.getContext() == null) {
            return;
        }
        this.fragment = baseFragment;
        this.context = baseFragment.getContext();
        this.scrimView = view;
        init();
    }

    private ItemOptions(ViewGroup viewGroup, View view) {
        this.gravity = 5;
        this.point = new float[2];
        this.dimAlpha = Theme.isCurrentThemeDark() ? 102 : 51;
        if (viewGroup.getContext() == null) {
            return;
        }
        this.container = viewGroup;
        this.context = viewGroup.getContext();
        this.scrimView = view;
        init();
    }

    private void init() {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this.context);
        this.layout = actionBarPopupWindowLayout;
        actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda3
            @Override // org.telegram.p044ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                ItemOptions.this.lambda$init$0(keyEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$0(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.actionBarPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.actionBarPopupWindow.dismiss();
        }
    }

    public ItemOptions addIf(boolean z, int i, CharSequence charSequence, Runnable runnable, boolean z2) {
        return add(i, charSequence, runnable, z, z2);
    }

    public ItemOptions addIf(boolean z, int i, CharSequence charSequence, boolean z2, Runnable runnable, boolean z3) {
        return add(i, charSequence, z2, runnable, z, z3);
    }

    public ItemOptions add(int i, CharSequence charSequence, Runnable runnable, boolean z, boolean z2) {
        return add(i, charSequence, false, runnable, z, z2);
    }

    public ItemOptions add(int i, CharSequence charSequence, boolean z, final Runnable runnable, boolean z2, boolean z3) {
        ArrayList<Integer> arrayList;
        int intValue = (!z3 || (arrayList = this.futurePlacements) == null || arrayList.isEmpty()) ? -1 : this.futurePlacements.remove(0).intValue();
        if (this.context != null && z2) {
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(this.context, false, false);
            actionBarMenuSubItem.setPadding(AndroidUtilities.m54dp(18), 0, AndroidUtilities.m54dp(26), 0);
            actionBarMenuSubItem.setTextAndIcon(charSequence, i);
            if (z) {
                int i2 = Theme.key_text_RedRegular;
                actionBarMenuSubItem.setColors(Theme.getColor(i2), Theme.getColor(i2));
                actionBarMenuSubItem.setSelectorColor(Theme.multAlpha(Theme.getColor(i2), 0.12f));
            }
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ItemOptions.this.lambda$add$1(runnable, view);
                }
            });
            int i3 = this.minWidthDp;
            if (i3 > 0) {
                actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m54dp(i3));
            }
            this.layout.addView((View) actionBarMenuSubItem, intValue, LayoutHelper.createLinear(-1, 48));
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

    public int getItemsCount() {
        return this.layout.getItemsCount();
    }

    public ItemOptions show() {
        final Bitmap bitmap;
        final Paint paint;
        int width;
        int height;
        float x;
        if (this.actionBarPopupWindow == null && this.layout.getItemsCount() > 0) {
            View itemAt = this.layout.getItemAt(0);
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.layout;
            View itemAt2 = actionBarPopupWindowLayout.getItemAt(actionBarPopupWindowLayout.getItemsCount() - 1);
            if (itemAt instanceof ActionBarMenuSubItem) {
                ((ActionBarMenuSubItem) itemAt).updateSelectorBackground(true, itemAt == itemAt2);
            }
            if (itemAt2 instanceof ActionBarMenuSubItem) {
                ((ActionBarMenuSubItem) itemAt2).updateSelectorBackground(itemAt2 == itemAt, true);
            }
            if (this.minWidthDp > 0) {
                for (int i = 0; i < this.layout.getItemsCount(); i++) {
                    this.layout.getItemAt(i).setMinimumWidth(AndroidUtilities.m54dp(this.minWidthDp));
                }
            }
            final ViewGroup viewGroup = this.container;
            if (viewGroup == null) {
                viewGroup = this.fragment.getParentLayout().getOverlayContainerView();
            }
            if (this.context != null && viewGroup != null) {
                float f = AndroidUtilities.displaySize.y / 2.0f;
                View view = this.scrimView;
                if (view != null) {
                    getPointOnScreen(view, viewGroup, this.point);
                    f = this.point[1];
                }
                if ((this.scrimView instanceof UserCell) && (this.fragment instanceof ProfileActivity)) {
                    Paint paint2 = new Paint(3);
                    Bitmap createBitmap = Bitmap.createBitmap(this.scrimView.getWidth(), this.scrimView.getHeight(), Bitmap.Config.ARGB_8888);
                    this.scrimView.draw(new Canvas(createBitmap));
                    bitmap = createBitmap;
                    paint = paint2;
                } else {
                    bitmap = null;
                    paint = null;
                }
                View view2 = this.scrimView;
                float f2 = BitmapDescriptorFactory.HUE_RED;
                final float y = (view2 == null || !(view2.getParent() instanceof View)) ? 0.0f : ((View) this.scrimView.getParent()).getY() + this.scrimView.getY();
                final int alphaComponent = ColorUtils.setAlphaComponent(0, this.dimAlpha);
                final View view3 = new View(this.context) { // from class: org.telegram.ui.Components.ItemOptions.1
                    @Override // android.view.View
                    protected void onDraw(Canvas canvas) {
                        super.onDraw(canvas);
                        canvas.drawColor(alphaComponent);
                        if (bitmap == null || !(ItemOptions.this.scrimView.getParent() instanceof View)) {
                            if (ItemOptions.this.scrimView == null || !(ItemOptions.this.scrimView.getParent() instanceof View)) {
                                return;
                            }
                            canvas.save();
                            if (y < 1.0f) {
                                canvas.clipRect(BitmapDescriptorFactory.HUE_RED, (ItemOptions.this.point[1] - y) + 1.0f, getMeasuredWidth(), getMeasuredHeight());
                            }
                            canvas.translate(ItemOptions.this.point[0], ItemOptions.this.point[1]);
                            if (ItemOptions.this.scrimViewBackground != null) {
                                int intrinsicWidth = ItemOptions.this.scrimViewBackground.getIntrinsicWidth();
                                int intrinsicHeight = ItemOptions.this.scrimViewBackground.getIntrinsicHeight();
                                if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                                    ItemOptions.this.scrimViewBackground.setBounds(0, 0, ItemOptions.this.scrimView.getWidth(), ItemOptions.this.scrimView.getHeight());
                                } else {
                                    int width2 = (ItemOptions.this.scrimView.getWidth() - intrinsicWidth) / 2;
                                    int height2 = (ItemOptions.this.scrimView.getHeight() - intrinsicHeight) / 2;
                                    ItemOptions.this.scrimViewBackground.setBounds(width2, height2, intrinsicWidth + width2, intrinsicHeight + height2);
                                }
                                ItemOptions.this.scrimViewBackground.draw(canvas);
                            }
                            ItemOptions.this.scrimView.draw(canvas);
                            canvas.restore();
                            return;
                        }
                        canvas.save();
                        if (y < 1.0f) {
                            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, (ItemOptions.this.point[1] - y) + 1.0f, getMeasuredWidth(), getMeasuredHeight());
                        }
                        canvas.translate(ItemOptions.this.point[0], ItemOptions.this.point[1]);
                        if (ItemOptions.this.scrimViewBackground != null) {
                            ItemOptions.this.scrimViewBackground.setBounds(0, 0, bitmap.getWidth(), bitmap.getHeight());
                            ItemOptions.this.scrimViewBackground.draw(canvas);
                        }
                        canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
                        canvas.restore();
                    }
                };
                final ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda1
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public final boolean onPreDraw() {
                        boolean invalidate;
                        invalidate = view3.invalidate();
                        return invalidate;
                    }
                };
                viewGroup.getViewTreeObserver().addOnPreDrawListener(onPreDrawListener);
                viewGroup.addView(view3, LayoutHelper.createFrame(-1, -1));
                view3.setAlpha(BitmapDescriptorFactory.HUE_RED);
                view3.animate().alpha(1.0f).setDuration(150L);
                this.layout.measure(View.MeasureSpec.makeMeasureSpec(viewGroup.getMeasuredWidth(), 0), View.MeasureSpec.makeMeasureSpec(viewGroup.getMeasuredHeight(), 0));
                ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(this.layout, -2, -2);
                this.actionBarPopupWindow = actionBarPopupWindow;
                actionBarPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.Components.ItemOptions.2
                    @Override // android.widget.PopupWindow.OnDismissListener
                    public void onDismiss() {
                        ItemOptions.this.actionBarPopupWindow = null;
                        view3.animate().cancel();
                        view3.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ItemOptions.2.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (view3.getParent() != null) {
                                    C47372 c47372 = C47372.this;
                                    viewGroup.removeView(view3);
                                }
                                viewGroup.getViewTreeObserver().removeOnPreDrawListener(onPreDrawListener);
                            }
                        });
                    }
                });
                this.actionBarPopupWindow.setOutsideTouchable(true);
                this.actionBarPopupWindow.setFocusable(true);
                this.actionBarPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
                this.actionBarPopupWindow.setAnimationStyle(C3290R.style.PopupContextAnimation);
                this.actionBarPopupWindow.setInputMethodMode(2);
                this.actionBarPopupWindow.setSoftInputMode(0);
                this.layout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda2
                    @Override // org.telegram.p044ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
                    public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                        ItemOptions.this.lambda$show$3(keyEvent);
                    }
                });
                if (AndroidUtilities.isTablet()) {
                    f += viewGroup.getPaddingTop();
                    f2 = BitmapDescriptorFactory.HUE_RED - viewGroup.getPaddingLeft();
                }
                if (this.scrimView != null) {
                    if (this.gravity == 5) {
                        x = (viewGroup.getMeasuredWidth() - this.layout.getMeasuredWidth()) + viewGroup.getX();
                    } else {
                        x = viewGroup.getX();
                        f2 = this.point[0];
                    }
                    width = (int) (x + f2);
                } else {
                    width = (viewGroup.getWidth() - this.layout.getMeasuredWidth()) / 2;
                }
                if (this.scrimView != null) {
                    if (this.layout.getMeasuredHeight() + f + AndroidUtilities.m54dp(16) > AndroidUtilities.displaySize.y) {
                        f = (f - this.scrimView.getMeasuredHeight()) - this.layout.getMeasuredHeight();
                    }
                    height = (int) (f + this.scrimView.getMeasuredHeight() + viewGroup.getY());
                } else {
                    height = (viewGroup.getHeight() - this.layout.getMeasuredHeight()) / 2;
                }
                this.actionBarPopupWindow.showAtLocation(viewGroup, 0, (int) (width + this.translateX), (int) (height + this.translateY));
            }
            return this;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$3(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && this.actionBarPopupWindow.isShowing()) {
            this.actionBarPopupWindow.dismiss(true);
        }
    }

    public boolean isShown() {
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        return actionBarPopupWindow != null && actionBarPopupWindow.isShowing();
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
}
