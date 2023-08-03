package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.GraySectionCell;
import org.telegram.p043ui.Cells.GroupCallTextCell;
import org.telegram.p043ui.Cells.GroupCallUserCell;
import org.telegram.p043ui.Components.AnimationProperties;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.UsersAlertBase;
/* renamed from: org.telegram.ui.Components.UsersAlertBase */
/* loaded from: classes6.dex */
public class UsersAlertBase extends BottomSheet {
    private int backgroundColor;
    private float colorProgress;
    private boolean drawTitle;
    protected StickerEmptyView emptyView;
    protected FlickerLoadingView flickerLoadingView;
    protected FrameLayout frameLayout;
    protected boolean isEmptyViewVisible;
    protected int keyActionBarUnscrolled;
    protected int keyInviteMembersBackground;
    protected int keyLastSeenText;
    protected int keyLastSeenTextUnscrolled;
    protected int keyListSelector;
    protected int keyListViewBackground;
    protected int keyNameText;
    protected int keyScrollUp;
    protected int keySearchBackground;
    protected int keySearchIcon;
    protected int keySearchIconUnscrolled;
    protected int keySearchPlaceholder;
    protected int keySearchText;
    protected final FillLastLinearLayoutManager layoutManager;
    protected RecyclerListView listView;
    protected RecyclerView.Adapter listViewAdapter;
    protected boolean needSnapToTop;
    private RectF rect;
    protected int scrollOffsetY;
    protected RecyclerView.Adapter searchListViewAdapter;
    protected SearchField searchView;
    protected View shadow;
    protected AnimatorSet shadowAnimation;
    protected Drawable shadowDrawable;
    private TextView titleView;

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    protected void onSearchViewTouched(MotionEvent motionEvent, EditTextBoldCursor editTextBoldCursor) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void search(String str) {
    }

    protected void updateColorKeys() {
    }

    public UsersAlertBase(Context context, boolean z, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context, z, resourcesProvider);
        this.rect = new RectF();
        this.needSnapToTop = true;
        this.isEmptyViewVisible = true;
        this.keyScrollUp = Theme.key_sheet_scrollUp;
        this.keyListSelector = Theme.key_listSelector;
        this.keySearchBackground = Theme.key_dialogSearchBackground;
        int i2 = Theme.key_windowBackgroundWhite;
        this.keyInviteMembersBackground = i2;
        this.keyListViewBackground = i2;
        this.keyActionBarUnscrolled = i2;
        this.keyNameText = Theme.key_windowBackgroundWhiteBlackText;
        int i3 = Theme.key_windowBackgroundWhiteGrayText;
        this.keyLastSeenText = i3;
        this.keyLastSeenTextUnscrolled = i3;
        this.keySearchPlaceholder = Theme.key_dialogSearchHint;
        this.keySearchText = Theme.key_dialogSearchText;
        int i4 = Theme.key_dialogSearchIcon;
        this.keySearchIcon = i4;
        this.keySearchIconUnscrolled = i4;
        this.drawTitle = true;
        this.resourcesProvider = resourcesProvider;
        updateColorKeys();
        setDimBehindAlpha(75);
        this.currentAccount = i;
        this.shadowDrawable = context.getResources().getDrawable(C3419R.C3421drawable.sheet_shadow_round).mutate();
        ContainerView createContainerView = createContainerView(context);
        this.containerView = createContainerView;
        createContainerView.setWillNotDraw(false);
        this.containerView.setClipChildren(false);
        ViewGroup viewGroup = this.containerView;
        int i5 = this.backgroundPaddingLeft;
        viewGroup.setPadding(i5, 0, i5, 0);
        this.frameLayout = new FrameLayout(context);
        SearchField searchField = new SearchField(context);
        this.searchView = searchField;
        this.frameLayout.addView(searchField, LayoutHelper.createFrame(-1, -1, 51));
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        this.flickerLoadingView = flickerLoadingView;
        flickerLoadingView.setViewType(6);
        this.flickerLoadingView.showDate(false);
        this.flickerLoadingView.setUseHeaderOffset(true);
        this.flickerLoadingView.setColors(this.keyInviteMembersBackground, this.keySearchBackground, this.keyActionBarUnscrolled);
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, this.flickerLoadingView, 1);
        this.emptyView = stickerEmptyView;
        stickerEmptyView.addView(this.flickerLoadingView, 0, LayoutHelper.createFrame(-1, -1, 0, 0, 2, 0, 0));
        this.emptyView.title.setText(LocaleController.getString("NoResult", C3419R.string.NoResult));
        this.emptyView.subtitle.setText(LocaleController.getString("SearchEmptyViewFilteredSubtitle2", C3419R.string.SearchEmptyViewFilteredSubtitle2));
        this.emptyView.setVisibility(8);
        this.emptyView.setAnimateLayoutChange(true);
        this.emptyView.showProgress(true, false);
        this.emptyView.setColors(this.keyNameText, this.keyLastSeenText, this.keyInviteMembersBackground, this.keySearchBackground);
        this.containerView.addView(this.emptyView, LayoutHelper.createFrame(-1, -1, 51, 0, 62, 0, 0));
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.UsersAlertBase.1
            @Override // org.telegram.p043ui.Components.RecyclerListView, android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
                getLocationInWindow(new int[2]);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView
            public boolean emptyViewIsVisible() {
                return getAdapter() != null && UsersAlertBase.this.isEmptyViewVisible && getAdapter().getItemCount() <= 2;
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setOverScrollMode(2);
        this.listView.setTag(13);
        this.listView.setPadding(0, 0, 0, AndroidUtilities.m72dp(48));
        this.listView.setClipToPadding(false);
        this.listView.setHideIfEmpty(false);
        this.listView.setSelectorDrawableColor(Theme.getColor(this.keyListSelector, resourcesProvider));
        FillLastLinearLayoutManager fillLastLinearLayoutManager = new FillLastLinearLayoutManager(getContext(), 1, false, AndroidUtilities.m72dp(8), this.listView);
        this.layoutManager = fillLastLinearLayoutManager;
        fillLastLinearLayoutManager.setBind(false);
        this.listView.setLayoutManager(fillLastLinearLayoutManager);
        this.listView.setHorizontalScrollBarEnabled(false);
        this.listView.setVerticalScrollBarEnabled(false);
        this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51, 0, 0, 0, 0));
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.UsersAlertBase.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i6, int i7) {
                UsersAlertBase.this.updateLayout();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i6) {
                RecyclerListView.Holder holder;
                if (i6 == 0) {
                    UsersAlertBase usersAlertBase = UsersAlertBase.this;
                    if (!usersAlertBase.needSnapToTop || usersAlertBase.scrollOffsetY + ((BottomSheet) usersAlertBase).backgroundPaddingTop + AndroidUtilities.m72dp(13) >= AndroidUtilities.statusBarHeight * 2 || !UsersAlertBase.this.listView.canScrollVertically(1) || (holder = (RecyclerListView.Holder) UsersAlertBase.this.listView.findViewHolderForAdapterPosition(0)) == null || holder.itemView.getTop() <= 0) {
                        return;
                    }
                    UsersAlertBase.this.listView.smoothScrollBy(0, holder.itemView.getTop());
                }
            }
        });
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, AndroidUtilities.getShadowHeight(), 51);
        layoutParams.topMargin = AndroidUtilities.m72dp(58);
        View view = new View(context);
        this.shadow = view;
        view.setBackgroundColor(Theme.getColor(Theme.key_dialogShadowLine));
        this.shadow.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.shadow.setTag(1);
        this.containerView.addView(this.shadow, layoutParams);
        this.containerView.addView(this.frameLayout, LayoutHelper.createFrame(-1, 58, 51));
        setColorProgress(BitmapDescriptorFactory.HUE_RED);
        this.listView.setEmptyView(this.emptyView);
        this.listView.setAnimateEmptyView(true, 0);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        AndroidUtilities.statusBarHeight = AndroidUtilities.getStatusBarHeight(getContext());
    }

    protected ContainerView createContainerView(Context context) {
        return new ContainerView(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: org.telegram.ui.Components.UsersAlertBase$SearchField */
    /* loaded from: classes6.dex */
    public class SearchField extends FrameLayout {
        private final ImageView clearSearchImageView;
        private final CloseProgressDrawable2 progressDrawable;
        private final View searchBackground;
        protected EditTextBoldCursor searchEditText;
        private final ImageView searchIconImageView;

        public SearchField(Context context) {
            super(context);
            View view = new View(context);
            this.searchBackground = view;
            view.setBackgroundDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m72dp(18), Theme.getColor(UsersAlertBase.this.keySearchBackground, ((BottomSheet) UsersAlertBase.this).resourcesProvider)));
            addView(view, LayoutHelper.createFrame(-1, 36, 51, 14, 11, 14, 0));
            ImageView imageView = new ImageView(context);
            this.searchIconImageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(C3419R.C3421drawable.smiles_inputsearch);
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(UsersAlertBase.this.keySearchPlaceholder, ((BottomSheet) UsersAlertBase.this).resourcesProvider), PorterDuff.Mode.MULTIPLY));
            addView(imageView, LayoutHelper.createFrame(36, 36, 51, 16, 11, 0, 0));
            ImageView imageView2 = new ImageView(context);
            this.clearSearchImageView = imageView2;
            imageView2.setScaleType(ImageView.ScaleType.CENTER);
            CloseProgressDrawable2 closeProgressDrawable2 = new CloseProgressDrawable2(UsersAlertBase.this) { // from class: org.telegram.ui.Components.UsersAlertBase.SearchField.1
                @Override // org.telegram.p043ui.Components.CloseProgressDrawable2
                protected int getCurrentColor() {
                    return Theme.getColor(UsersAlertBase.this.keySearchPlaceholder);
                }
            };
            this.progressDrawable = closeProgressDrawable2;
            imageView2.setImageDrawable(closeProgressDrawable2);
            closeProgressDrawable2.setSide(AndroidUtilities.m72dp(7));
            imageView2.setScaleX(0.1f);
            imageView2.setScaleY(0.1f);
            imageView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
            addView(imageView2, LayoutHelper.createFrame(36, 36, 53, 14, 11, 14, 0));
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.UsersAlertBase$SearchField$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    UsersAlertBase.SearchField.this.lambda$new$0(view2);
                }
            });
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context, UsersAlertBase.this) { // from class: org.telegram.ui.Components.UsersAlertBase.SearchField.2
                @Override // org.telegram.p043ui.Components.EditTextEffects, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.setLocation(obtain.getRawX(), obtain.getRawY() - UsersAlertBase.this.listView.getMeasuredHeight());
                    if (obtain.getAction() == 1) {
                        obtain.setAction(3);
                    }
                    UsersAlertBase.this.listView.dispatchTouchEvent(obtain);
                    obtain.recycle();
                    return super.dispatchTouchEvent(motionEvent);
                }
            };
            this.searchEditText = editTextBoldCursor;
            editTextBoldCursor.setTextSize(1, 16.0f);
            this.searchEditText.setHintTextColor(Theme.getColor(UsersAlertBase.this.keySearchPlaceholder));
            this.searchEditText.setTextColor(Theme.getColor(UsersAlertBase.this.keySearchText));
            this.searchEditText.setBackgroundDrawable(null);
            this.searchEditText.setPadding(0, 0, 0, 0);
            this.searchEditText.setMaxLines(1);
            this.searchEditText.setLines(1);
            this.searchEditText.setSingleLine(true);
            this.searchEditText.setImeOptions(268435459);
            this.searchEditText.setHint(LocaleController.getString("VoipGroupSearchMembers", C3419R.string.VoipGroupSearchMembers));
            this.searchEditText.setCursorColor(Theme.getColor(UsersAlertBase.this.keySearchText));
            this.searchEditText.setCursorSize(AndroidUtilities.m72dp(20));
            this.searchEditText.setCursorWidth(1.5f);
            addView(this.searchEditText, LayoutHelper.createFrame(-1, 40, 51, 54, 9, 46, 0));
            this.searchEditText.addTextChangedListener(new TextWatcher(UsersAlertBase.this) { // from class: org.telegram.ui.Components.UsersAlertBase.SearchField.3
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    RecyclerListView recyclerListView;
                    boolean z = SearchField.this.searchEditText.length() > 0;
                    float alpha = SearchField.this.clearSearchImageView.getAlpha();
                    float f = BitmapDescriptorFactory.HUE_RED;
                    if (z != (alpha != BitmapDescriptorFactory.HUE_RED)) {
                        ViewPropertyAnimator animate = SearchField.this.clearSearchImageView.animate();
                        if (z) {
                            f = 1.0f;
                        }
                        animate.alpha(f).setDuration(150L).scaleX(z ? 1.0f : 0.1f).scaleY(z ? 1.0f : 0.1f).start();
                    }
                    String obj = SearchField.this.searchEditText.getText().toString();
                    int itemCount = UsersAlertBase.this.listView.getAdapter() == null ? 0 : UsersAlertBase.this.listView.getAdapter().getItemCount();
                    UsersAlertBase.this.search(obj);
                    if (TextUtils.isEmpty(obj) && (recyclerListView = UsersAlertBase.this.listView) != null) {
                        RecyclerView.Adapter adapter = recyclerListView.getAdapter();
                        UsersAlertBase usersAlertBase = UsersAlertBase.this;
                        if (adapter != usersAlertBase.listViewAdapter) {
                            usersAlertBase.listView.setAnimateEmptyView(false, 0);
                            UsersAlertBase usersAlertBase2 = UsersAlertBase.this;
                            usersAlertBase2.listView.setAdapter(usersAlertBase2.listViewAdapter);
                            UsersAlertBase.this.listView.setAnimateEmptyView(true, 0);
                            if (itemCount == 0) {
                                UsersAlertBase.this.showItemsAnimated(0);
                            }
                        }
                    }
                    UsersAlertBase.this.flickerLoadingView.setVisibility(0);
                }
            });
            this.searchEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.UsersAlertBase$SearchField$$ExternalSyntheticLambda1
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                    boolean lambda$new$1;
                    lambda$new$1 = UsersAlertBase.SearchField.this.lambda$new$1(textView, i, keyEvent);
                    return lambda$new$1;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            this.searchEditText.setText("");
            AndroidUtilities.showKeyboard(this.searchEditText);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$new$1(TextView textView, int i, KeyEvent keyEvent) {
            if (keyEvent != null) {
                if ((keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 84) || (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 66)) {
                    AndroidUtilities.hideKeyboard(this.searchEditText);
                    return false;
                }
                return false;
            }
            return false;
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            UsersAlertBase.this.onSearchViewTouched(motionEvent, this.searchEditText);
            return super.onInterceptTouchEvent(motionEvent);
        }

        public void closeSearch() {
            this.clearSearchImageView.callOnClick();
            AndroidUtilities.hideKeyboard(this.searchEditText);
        }
    }

    static {
        new AnimationProperties.FloatProperty<UsersAlertBase>("colorProgress") { // from class: org.telegram.ui.Components.UsersAlertBase.3
            @Override // org.telegram.p043ui.Components.AnimationProperties.FloatProperty
            public void setValue(UsersAlertBase usersAlertBase, float f) {
                usersAlertBase.setColorProgress(f);
            }

            @Override // android.util.Property
            public Float get(UsersAlertBase usersAlertBase) {
                return Float.valueOf(usersAlertBase.getColorProgress());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getColorProgress() {
        return this.colorProgress;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setColorProgress(float f) {
        this.colorProgress = f;
        this.backgroundColor = AndroidUtilities.getOffsetColor(Theme.getColor(this.keyInviteMembersBackground, this.resourcesProvider), Theme.getColor(this.keyListViewBackground, this.resourcesProvider), f, 1.0f);
        this.shadowDrawable.setColorFilter(new PorterDuffColorFilter(this.backgroundColor, PorterDuff.Mode.MULTIPLY));
        this.frameLayout.setBackgroundColor(this.backgroundColor);
        fixNavigationBar(this.backgroundColor);
        int i = this.backgroundColor;
        this.navBarColor = i;
        this.listView.setGlowColor(i);
        int offsetColor = AndroidUtilities.getOffsetColor(Theme.getColor(this.keyLastSeenTextUnscrolled), Theme.getColor(this.keyLastSeenText), f, 1.0f);
        int offsetColor2 = AndroidUtilities.getOffsetColor(Theme.getColor(this.keySearchIconUnscrolled), Theme.getColor(this.keySearchIcon), f, 1.0f);
        int childCount = this.listView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.listView.getChildAt(i2);
            if (childAt instanceof GroupCallTextCell) {
                ((GroupCallTextCell) childAt).setColors(offsetColor, offsetColor);
            } else if (childAt instanceof GroupCallUserCell) {
                ((GroupCallUserCell) childAt).setGrayIconColor(this.shadow.getTag() != null ? this.keySearchIcon : this.keySearchIconUnscrolled, offsetColor2);
            }
        }
        this.containerView.invalidate();
        this.listView.invalidate();
        this.container.invalidate();
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        AndroidUtilities.hideKeyboard(this.searchView.searchEditText);
        super.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateLayout() {
        if (this.listView.getChildCount() <= 0) {
            return;
        }
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.listView.findViewHolderForAdapterPosition(0);
        int top = findViewHolderForAdapterPosition != null ? findViewHolderForAdapterPosition.itemView.getTop() - AndroidUtilities.m72dp(8) : 0;
        int i = (top <= 0 || findViewHolderForAdapterPosition == null || findViewHolderForAdapterPosition.getAdapterPosition() != 0) ? 0 : top;
        if (top >= 0 && findViewHolderForAdapterPosition != null && findViewHolderForAdapterPosition.getAdapterPosition() == 0) {
            runShadowAnimation(false);
        } else {
            runShadowAnimation(true);
            top = i;
        }
        if (this.scrollOffsetY != top) {
            this.scrollOffsetY = top;
            setTranslationY(top);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setTranslationY(int i) {
        this.listView.setTopGlowOffset(i);
        float f = i;
        this.frameLayout.setTranslationY(f);
        this.emptyView.setTranslationY(f);
        this.containerView.invalidate();
    }

    private void runShadowAnimation(final boolean z) {
        if ((!z || this.shadow.getTag() == null) && (z || this.shadow.getTag() != null)) {
            return;
        }
        this.shadow.setTag(z ? null : 1);
        if (z) {
            this.shadow.setVisibility(0);
        }
        AnimatorSet animatorSet = this.shadowAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.shadowAnimation = animatorSet2;
        Animator[] animatorArr = new Animator[1];
        View view = this.shadow;
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        animatorArr[0] = ObjectAnimator.ofFloat(view, property, fArr);
        animatorSet2.playTogether(animatorArr);
        this.shadowAnimation.setDuration(150L);
        this.shadowAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.UsersAlertBase.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimatorSet animatorSet3 = UsersAlertBase.this.shadowAnimation;
                if (animatorSet3 == null || !animatorSet3.equals(animator)) {
                    return;
                }
                if (!z) {
                    UsersAlertBase.this.shadow.setVisibility(4);
                }
                UsersAlertBase.this.shadowAnimation = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                AnimatorSet animatorSet3 = UsersAlertBase.this.shadowAnimation;
                if (animatorSet3 == null || !animatorSet3.equals(animator)) {
                    return;
                }
                UsersAlertBase.this.shadowAnimation = null;
            }
        });
        this.shadowAnimation.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showItemsAnimated(final int i) {
        if (isShowing()) {
            this.listView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.UsersAlertBase.5
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    UsersAlertBase.this.listView.getViewTreeObserver().removeOnPreDrawListener(this);
                    int childCount = UsersAlertBase.this.listView.getChildCount();
                    AnimatorSet animatorSet = new AnimatorSet();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View childAt = UsersAlertBase.this.listView.getChildAt(i2);
                        int childAdapterPosition = UsersAlertBase.this.listView.getChildAdapterPosition(childAt);
                        if (childAdapterPosition >= i) {
                            if (childAdapterPosition == 1 && UsersAlertBase.this.listView.getAdapter() == UsersAlertBase.this.searchListViewAdapter && (childAt instanceof GraySectionCell)) {
                                childAt = ((GraySectionCell) childAt).getTextView();
                            }
                            childAt.setAlpha(BitmapDescriptorFactory.HUE_RED);
                            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(childAt, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f);
                            ofFloat.setStartDelay((int) ((Math.min(UsersAlertBase.this.listView.getMeasuredHeight(), Math.max(0, childAt.getTop())) / UsersAlertBase.this.listView.getMeasuredHeight()) * 100.0f));
                            ofFloat.setDuration(200L);
                            animatorSet.playTogether(ofFloat);
                        }
                    }
                    animatorSet.start();
                    return true;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: org.telegram.ui.Components.UsersAlertBase$ContainerView */
    /* loaded from: classes6.dex */
    public class ContainerView extends FrameLayout {
        private boolean ignoreLayout;
        float snapToTopOffset;
        private Boolean statusBarOpen;
        ValueAnimator valueAnimator;

        public ContainerView(Context context) {
            super(context);
            this.ignoreLayout = false;
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            invalidate();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int measurePadding;
            int size = View.MeasureSpec.getSize(i2);
            if (Build.VERSION.SDK_INT >= 21) {
                this.ignoreLayout = true;
                setPadding(((BottomSheet) UsersAlertBase.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, ((BottomSheet) UsersAlertBase.this).backgroundPaddingLeft, 0);
                this.ignoreLayout = false;
            }
            int paddingTop = size - getPaddingTop();
            if (((BottomSheet) UsersAlertBase.this).keyboardVisible) {
                measurePadding = AndroidUtilities.m72dp(8);
                UsersAlertBase.this.setAllowNestedScroll(false);
                int i3 = UsersAlertBase.this.scrollOffsetY;
                if (i3 != 0) {
                    float f = i3;
                    this.snapToTopOffset = f;
                    setTranslationY(f);
                    ValueAnimator valueAnimator = this.valueAnimator;
                    if (valueAnimator != null) {
                        valueAnimator.removeAllListeners();
                        this.valueAnimator.cancel();
                    }
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(this.snapToTopOffset, BitmapDescriptorFactory.HUE_RED);
                    this.valueAnimator = ofFloat;
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.UsersAlertBase$ContainerView$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            UsersAlertBase.ContainerView.this.lambda$onMeasure$0(valueAnimator2);
                        }
                    });
                    this.valueAnimator.setDuration(250L);
                    this.valueAnimator.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                    this.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.UsersAlertBase.ContainerView.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            ContainerView containerView = ContainerView.this;
                            containerView.snapToTopOffset = BitmapDescriptorFactory.HUE_RED;
                            containerView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                            ContainerView.this.valueAnimator = null;
                        }
                    });
                    this.valueAnimator.start();
                } else if (this.valueAnimator != null) {
                    setTranslationY(this.snapToTopOffset);
                }
            } else {
                measurePadding = UsersAlertBase.this.measurePadding(paddingTop);
                UsersAlertBase.this.setAllowNestedScroll(true);
            }
            if (UsersAlertBase.this.listView.getPaddingTop() != measurePadding) {
                this.ignoreLayout = true;
                UsersAlertBase.this.listView.setPadding(0, measurePadding, 0, 0);
                this.ignoreLayout = false;
            }
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(size, 1073741824));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$0(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.snapToTopOffset = floatValue;
            setTranslationY(floatValue);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            UsersAlertBase.this.updateLayout();
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                float y = motionEvent.getY();
                UsersAlertBase usersAlertBase = UsersAlertBase.this;
                if (y < usersAlertBase.scrollOffsetY) {
                    usersAlertBase.dismiss();
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return !UsersAlertBase.this.isDismissed() && super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            int i;
            float f;
            canvas.save();
            UsersAlertBase usersAlertBase = UsersAlertBase.this;
            int m72dp = (usersAlertBase.scrollOffsetY - ((BottomSheet) usersAlertBase).backgroundPaddingTop) + AndroidUtilities.m72dp(6);
            UsersAlertBase usersAlertBase2 = UsersAlertBase.this;
            int m72dp2 = (usersAlertBase2.scrollOffsetY - ((BottomSheet) usersAlertBase2).backgroundPaddingTop) - AndroidUtilities.m72dp(13);
            int measuredHeight = getMeasuredHeight() + AndroidUtilities.m72dp(50) + ((BottomSheet) UsersAlertBase.this).backgroundPaddingTop;
            if (Build.VERSION.SDK_INT >= 21) {
                int i2 = AndroidUtilities.statusBarHeight;
                m72dp2 += i2;
                m72dp += i2;
                measuredHeight -= i2;
                float translationY = ((BottomSheet) UsersAlertBase.this).backgroundPaddingTop + m72dp2 + getTranslationY();
                int i3 = AndroidUtilities.statusBarHeight;
                if (translationY < i3 * 2) {
                    int min = (int) Math.min(i3, (((i3 * 2) - m72dp2) - ((BottomSheet) UsersAlertBase.this).backgroundPaddingTop) - getTranslationY());
                    m72dp2 -= min;
                    measuredHeight += min;
                    f = 1.0f - Math.min(1.0f, (min * 2) / AndroidUtilities.statusBarHeight);
                } else {
                    f = 1.0f;
                }
                float translationY2 = ((BottomSheet) UsersAlertBase.this).backgroundPaddingTop + m72dp2 + getTranslationY();
                int i4 = AndroidUtilities.statusBarHeight;
                i = translationY2 < ((float) i4) ? (int) Math.min(i4, ((i4 - m72dp2) - ((BottomSheet) UsersAlertBase.this).backgroundPaddingTop) - getTranslationY()) : 0;
            } else {
                i = 0;
                f = 1.0f;
            }
            UsersAlertBase.this.shadowDrawable.setBounds(0, m72dp2, getMeasuredWidth(), measuredHeight);
            UsersAlertBase.this.shadowDrawable.draw(canvas);
            if (!UsersAlertBase.this.drawTitle) {
                if (f != 1.0f) {
                    Theme.dialogs_onlineCirclePaint.setColor(UsersAlertBase.this.backgroundColor);
                    UsersAlertBase.this.rect.set(((BottomSheet) UsersAlertBase.this).backgroundPaddingLeft, ((BottomSheet) UsersAlertBase.this).backgroundPaddingTop + m72dp2, getMeasuredWidth() - ((BottomSheet) UsersAlertBase.this).backgroundPaddingLeft, ((BottomSheet) UsersAlertBase.this).backgroundPaddingTop + m72dp2 + AndroidUtilities.m72dp(24));
                    canvas.drawRoundRect(UsersAlertBase.this.rect, AndroidUtilities.m72dp(12) * f, AndroidUtilities.m72dp(12) * f, Theme.dialogs_onlineCirclePaint);
                }
                int m72dp3 = AndroidUtilities.m72dp(36);
                UsersAlertBase.this.rect.set((getMeasuredWidth() - m72dp3) / 2, m72dp, (getMeasuredWidth() + m72dp3) / 2, m72dp + AndroidUtilities.m72dp(4));
                Theme.dialogs_onlineCirclePaint.setColor(Theme.getColor(UsersAlertBase.this.keyScrollUp));
                canvas.drawRoundRect(UsersAlertBase.this.rect, AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(2), Theme.dialogs_onlineCirclePaint);
            }
            if (i > 0) {
                Theme.dialogs_onlineCirclePaint.setColor(UsersAlertBase.this.backgroundColor);
                canvas.drawRect(((BottomSheet) UsersAlertBase.this).backgroundPaddingLeft, (AndroidUtilities.statusBarHeight - i) - getTranslationY(), getMeasuredWidth() - ((BottomSheet) UsersAlertBase.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight - getTranslationY(), Theme.dialogs_onlineCirclePaint);
            }
            updateLightStatusBar(i > AndroidUtilities.statusBarHeight / 2);
            canvas.restore();
        }

        private void updateLightStatusBar(boolean z) {
            Boolean bool = this.statusBarOpen;
            if (bool == null || bool.booleanValue() != z) {
                boolean z2 = AndroidUtilities.computePerceivedBrightness(UsersAlertBase.this.getThemedColor(Theme.key_dialogBackground)) > 0.721f;
                boolean z3 = AndroidUtilities.computePerceivedBrightness(Theme.blendOver(UsersAlertBase.this.getThemedColor(Theme.key_actionBarDefault), AndroidUtilities.DARK_STATUS_BAR_OVERLAY)) > 0.721f;
                Boolean valueOf = Boolean.valueOf(z);
                this.statusBarOpen = valueOf;
                if (!valueOf.booleanValue()) {
                    z2 = z3;
                }
                AndroidUtilities.setLightStatusBar(UsersAlertBase.this.getWindow(), z2);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            canvas.save();
            canvas.clipRect(0, getPaddingTop(), getMeasuredWidth(), getMeasuredHeight());
            super.dispatchDraw(canvas);
            canvas.restore();
        }
    }

    protected int measurePadding(int i) {
        return (i - ((i / 5) * 3)) + AndroidUtilities.m72dp(8);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        if (this.titleView == null) {
            TextView textView = new TextView(getContext());
            this.titleView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider));
            this.titleView.setTextSize(1, 20.0f);
            this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.titleView.setLines(1);
            this.titleView.setMaxLines(1);
            this.titleView.setSingleLine(true);
            this.titleView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            this.titleView.setEllipsize(TextUtils.TruncateAt.END);
            this.frameLayout.addView(this.titleView, LayoutHelper.createFrame(-1, 36, 51, 16, 0, 0, 0));
            ((FrameLayout.LayoutParams) this.searchView.getLayoutParams()).topMargin = AndroidUtilities.m72dp(30);
            this.frameLayout.getLayoutParams().height = AndroidUtilities.m72dp(94);
        }
        this.titleView.setText(charSequence);
    }
}
