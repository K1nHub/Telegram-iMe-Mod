package org.telegram.p044ui.Components;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.Utilities;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.BottomSheet;
import org.telegram.p044ui.ActionBar.C3306ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.RecyclerListView;
/* renamed from: org.telegram.ui.Components.BottomSheetWithRecyclerListView */
/* loaded from: classes6.dex */
public abstract class BottomSheetWithRecyclerListView extends BottomSheet {
    protected C3306ActionBar actionBar;
    private BaseFragment baseFragment;
    protected boolean clipToActionBar;
    protected int contentHeight;
    public final boolean hasFixedSize;
    private final Drawable headerShadowDrawable;
    public NestedSizeNotifierLayout nestedSizeNotifierLayout;
    protected RecyclerListView recyclerListView;
    private float shadowAlpha;
    boolean showShadow;
    public float topPadding;
    boolean wasDrawn;

    @Override // org.telegram.p044ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    protected abstract RecyclerListView.SelectionAdapter createAdapter();

    protected abstract CharSequence getTitle();

    protected void onPreDraw(Canvas canvas, int i, float f) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPreMeasure(int i, int i2) {
    }

    public void onViewCreated(FrameLayout frameLayout) {
    }

    public BottomSheetWithRecyclerListView(BaseFragment baseFragment, boolean z, boolean z2) {
        this(baseFragment, z, z2, false, null);
    }

    public BottomSheetWithRecyclerListView(BaseFragment baseFragment, boolean z, final boolean z2, boolean z3, Theme.ResourcesProvider resourcesProvider) {
        super(baseFragment.getParentActivity(), z, resourcesProvider);
        final FrameLayout frameLayout;
        this.topPadding = 0.4f;
        this.showShadow = true;
        this.shadowAlpha = 1.0f;
        this.baseFragment = baseFragment;
        this.hasFixedSize = z2;
        final Activity parentActivity = baseFragment.getParentActivity();
        this.headerShadowDrawable = ContextCompat.getDrawable(parentActivity, C3242R.C3244drawable.header_shadow).mutate();
        if (z3) {
            NestedSizeNotifierLayout nestedSizeNotifierLayout = new NestedSizeNotifierLayout(parentActivity) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.1
                @Override // org.telegram.p044ui.Components.NestedSizeNotifierLayout, android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    BottomSheetWithRecyclerListView.this.contentHeight = View.MeasureSpec.getSize(i2);
                    BottomSheetWithRecyclerListView.this.onPreMeasure(i, i2);
                    super.onMeasure(i, i2);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p044ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
                public void dispatchDraw(Canvas canvas) {
                    BottomSheetWithRecyclerListView.this.preDrawInternal(canvas, this);
                    super.dispatchDraw(canvas);
                    BottomSheetWithRecyclerListView.this.postDrawInternal(canvas, this);
                }

                @Override // android.view.ViewGroup
                protected boolean drawChild(Canvas canvas, View view, long j) {
                    if (!z2) {
                        BottomSheetWithRecyclerListView bottomSheetWithRecyclerListView = BottomSheetWithRecyclerListView.this;
                        if (bottomSheetWithRecyclerListView.clipToActionBar && view == bottomSheetWithRecyclerListView.recyclerListView) {
                            canvas.save();
                            canvas.clipRect(0, BottomSheetWithRecyclerListView.this.actionBar.getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight());
                            super.drawChild(canvas, view, j);
                            canvas.restore();
                            return true;
                        }
                    }
                    return super.drawChild(canvas, view, j);
                }

                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0 && motionEvent.getY() < ((BottomSheet) BottomSheetWithRecyclerListView.this).shadowDrawable.getBounds().top) {
                        BottomSheetWithRecyclerListView.this.dismiss();
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }
            };
            this.nestedSizeNotifierLayout = nestedSizeNotifierLayout;
            frameLayout = nestedSizeNotifierLayout;
        } else {
            frameLayout = new FrameLayout(parentActivity) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.2
                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    BottomSheetWithRecyclerListView.this.contentHeight = View.MeasureSpec.getSize(i2);
                    BottomSheetWithRecyclerListView.this.onPreMeasure(i, i2);
                    super.onMeasure(i, i2);
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    BottomSheetWithRecyclerListView.this.preDrawInternal(canvas, this);
                    super.dispatchDraw(canvas);
                    BottomSheetWithRecyclerListView.this.postDrawInternal(canvas, this);
                }

                @Override // android.view.ViewGroup
                protected boolean drawChild(Canvas canvas, View view, long j) {
                    if (!z2) {
                        BottomSheetWithRecyclerListView bottomSheetWithRecyclerListView = BottomSheetWithRecyclerListView.this;
                        if (bottomSheetWithRecyclerListView.clipToActionBar && view == bottomSheetWithRecyclerListView.recyclerListView) {
                            canvas.save();
                            canvas.clipRect(0, BottomSheetWithRecyclerListView.this.actionBar.getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight());
                            super.drawChild(canvas, view, j);
                            canvas.restore();
                            return true;
                        }
                    }
                    return super.drawChild(canvas, view, j);
                }

                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0 && motionEvent.getY() < ((BottomSheet) BottomSheetWithRecyclerListView.this).shadowDrawable.getBounds().top) {
                        BottomSheetWithRecyclerListView.this.dismiss();
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }
            };
        }
        RecyclerListView recyclerListView = new RecyclerListView(parentActivity);
        this.recyclerListView = recyclerListView;
        recyclerListView.setLayoutManager(new LinearLayoutManager(parentActivity));
        NestedSizeNotifierLayout nestedSizeNotifierLayout2 = this.nestedSizeNotifierLayout;
        if (nestedSizeNotifierLayout2 != null) {
            nestedSizeNotifierLayout2.setBottomSheetContainerView(getContainer());
            this.nestedSizeNotifierLayout.setTargetListView(this.recyclerListView);
        }
        final RecyclerListView.SelectionAdapter createAdapter = createAdapter();
        if (z2) {
            this.recyclerListView.setHasFixedSize(true);
            this.recyclerListView.setAdapter(createAdapter);
            setCustomView(frameLayout);
            frameLayout.addView(this.recyclerListView, LayoutHelper.createFrame(-1, -2));
        } else {
            this.recyclerListView.setAdapter(new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.3
                @Override // org.telegram.p044ui.Components.RecyclerListView.SelectionAdapter
                public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                    return createAdapter.isEnabled(viewHolder);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                    if (i == -1000) {
                        return new RecyclerListView.Holder(new View(parentActivity) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.3.1
                            @Override // android.view.View
                            protected void onMeasure(int i2, int i3) {
                                int i4;
                                BottomSheetWithRecyclerListView bottomSheetWithRecyclerListView = BottomSheetWithRecyclerListView.this;
                                int i5 = bottomSheetWithRecyclerListView.contentHeight;
                                if (i5 == 0) {
                                    i4 = AndroidUtilities.m50dp(300);
                                } else {
                                    i4 = (int) (i5 * bottomSheetWithRecyclerListView.topPadding);
                                }
                                super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
                            }
                        });
                    }
                    return createAdapter.onCreateViewHolder(viewGroup, i);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                    if (i != 0) {
                        createAdapter.onBindViewHolder(viewHolder, i - 1);
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemViewType(int i) {
                    if (i == 0) {
                        return -1000;
                    }
                    return createAdapter.getItemViewType(i - 1);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemCount() {
                    return createAdapter.getItemCount() + 1;
                }
            });
            this.containerView = frameLayout;
            C3306ActionBar c3306ActionBar = new C3306ActionBar(parentActivity) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.4
                @Override // android.view.View
                public void setAlpha(float f) {
                    if (getAlpha() != f) {
                        super.setAlpha(f);
                        frameLayout.invalidate();
                    }
                }

                @Override // android.view.View
                public void setTag(Object obj) {
                    super.setTag(obj);
                    BottomSheetWithRecyclerListView.this.updateStatusBar();
                }
            };
            this.actionBar = c3306ActionBar;
            c3306ActionBar.setBackgroundColor(getThemedColor("dialogBackground"));
            this.actionBar.setTitleColor(getThemedColor("windowBackgroundWhiteBlackText"));
            this.actionBar.setItemsBackgroundColor(getThemedColor("actionBarActionModeDefaultSelector"), false);
            this.actionBar.setItemsColor(getThemedColor("actionBarActionModeDefaultIcon"), false);
            this.actionBar.setCastShadows(true);
            this.actionBar.setBackButtonImage(C3242R.C3244drawable.ic_ab_back);
            this.actionBar.setTitle(getTitle());
            this.actionBar.setActionBarMenuOnItemClick(new C3306ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.5
                @Override // org.telegram.p044ui.ActionBar.C3306ActionBar.ActionBarMenuOnItemClick
                public void onItemClick(int i) {
                    if (i == -1) {
                        BottomSheetWithRecyclerListView.this.dismiss();
                    }
                }
            });
            frameLayout.addView(this.recyclerListView);
            frameLayout.addView(this.actionBar, LayoutHelper.createFrame(-1, -2, 0, 6, 0, 6, 0));
            this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener(this) { // from class: org.telegram.ui.Components.BottomSheetWithRecyclerListView.6
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                    super.onScrolled(recyclerView, i, i2);
                    frameLayout.invalidate();
                }
            });
        }
        onViewCreated(frameLayout);
        updateStatusBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postDrawInternal(Canvas canvas, View view) {
        C3306ActionBar c3306ActionBar;
        boolean z = this.showShadow;
        if (z) {
            float f = this.shadowAlpha;
            if (f != 1.0f) {
                this.shadowAlpha = f + 0.10666667f;
                view.invalidate();
                this.shadowAlpha = Utilities.clamp(this.shadowAlpha, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                c3306ActionBar = this.actionBar;
                if (c3306ActionBar != null && c3306ActionBar.getVisibility() == 0 && this.actionBar.getAlpha() != BitmapDescriptorFactory.HUE_RED && this.shadowAlpha != BitmapDescriptorFactory.HUE_RED) {
                    this.headerShadowDrawable.setBounds(0, this.actionBar.getBottom(), view.getMeasuredWidth(), this.actionBar.getBottom() + this.headerShadowDrawable.getIntrinsicHeight());
                    this.headerShadowDrawable.setAlpha((int) (this.actionBar.getAlpha() * 255.0f * this.shadowAlpha));
                    this.headerShadowDrawable.draw(canvas);
                }
                this.wasDrawn = true;
            }
        }
        if (!z) {
            float f2 = this.shadowAlpha;
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                this.shadowAlpha = f2 - 0.10666667f;
                view.invalidate();
            }
        }
        this.shadowAlpha = Utilities.clamp(this.shadowAlpha, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        c3306ActionBar = this.actionBar;
        if (c3306ActionBar != null) {
            this.headerShadowDrawable.setBounds(0, this.actionBar.getBottom(), view.getMeasuredWidth(), this.actionBar.getBottom() + this.headerShadowDrawable.getIntrinsicHeight());
            this.headerShadowDrawable.setAlpha((int) (this.actionBar.getAlpha() * 255.0f * this.shadowAlpha));
            this.headerShadowDrawable.draw(canvas);
        }
        this.wasDrawn = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void preDrawInternal(Canvas canvas, View view) {
        if (this.hasFixedSize) {
            return;
        }
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.recyclerListView.findViewHolderForAdapterPosition(0);
        int i = -AndroidUtilities.m50dp(16);
        if (findViewHolderForAdapterPosition != null) {
            i = findViewHolderForAdapterPosition.itemView.getBottom() - AndroidUtilities.m50dp(16);
        }
        float m50dp = 1.0f - ((AndroidUtilities.m50dp(16) + i) / AndroidUtilities.m50dp(56));
        if (m50dp < BitmapDescriptorFactory.HUE_RED) {
            m50dp = 0.0f;
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.actionBar, m50dp != BitmapDescriptorFactory.HUE_RED, 1.0f, this.wasDrawn);
        this.shadowDrawable.setBounds(0, i, view.getMeasuredWidth(), view.getMeasuredHeight());
        this.shadowDrawable.draw(canvas);
        onPreDraw(canvas, i, m50dp);
    }

    private boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(Theme.getColor("dialogBackground")) > 0.699999988079071d;
    }

    public void notifyDataSetChanged() {
        this.recyclerListView.getAdapter().notifyDataSetChanged();
    }

    public BaseFragment getBaseFragment() {
        return this.baseFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatusBar() {
        C3306ActionBar c3306ActionBar = this.actionBar;
        if (c3306ActionBar != null && c3306ActionBar.getTag() != null) {
            AndroidUtilities.setLightStatusBar(getWindow(), isLightStatusBar());
        } else if (this.baseFragment != null) {
            AndroidUtilities.setLightStatusBar(getWindow(), this.baseFragment.isLightStatusBar());
        }
    }

    public void updateTitle() {
        C3306ActionBar c3306ActionBar = this.actionBar;
        if (c3306ActionBar != null) {
            c3306ActionBar.setTitle(getTitle());
        }
    }

    public void setShowShadow(boolean z) {
        this.showShadow = z;
        this.nestedSizeNotifierLayout.invalidate();
    }
}