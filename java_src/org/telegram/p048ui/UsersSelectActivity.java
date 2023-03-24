package org.telegram.p048ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Property;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import android.widget.ScrollView;
import androidx.annotation.Keep;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Adapters.SearchAdapterHelper;
import org.telegram.p048ui.Cells.GraySectionCell;
import org.telegram.p048ui.Cells.GroupCreateUserCell;
import org.telegram.p048ui.Components.AnimatedAvatarContainer;
import org.telegram.p048ui.Components.AnimatedTextView;
import org.telegram.p048ui.Components.BulletinFactory;
import org.telegram.p048ui.Components.CombinedDrawable;
import org.telegram.p048ui.Components.EditTextBoldCursor;
import org.telegram.p048ui.Components.EmptyTextProgressView;
import org.telegram.p048ui.Components.GroupCreateSpan;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.UsersSelectActivity;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.UsersSelectActivity */
/* loaded from: classes5.dex */
public class UsersSelectActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate, View.OnClickListener {
    private GroupCreateAdapter adapter;
    private ArrayList<GroupCreateSpan> allSpans;
    AnimatedAvatarContainer animatedAvatarContainer;
    private int containerHeight;
    private GroupCreateSpan currentDeletingSpan;
    private FilterUsersActivityDelegate delegate;
    private EditTextBoldCursor editText;
    private EmptyTextProgressView emptyView;
    private int fieldY;
    private int filterFlags;
    private ImageView floatingButton;
    private boolean ignoreScrollEvent;
    private ArrayList<Long> initialIds;
    private boolean isInclude;
    private RecyclerListView listView;
    private ScrollView scrollView;
    private boolean searchWas;
    private boolean searching;
    private LongSparseArray<GroupCreateSpan> selectedContacts;
    private int selectedCount;
    private SpansContainer spansContainer;
    public boolean topicMode;
    public int topicModeFilterFolderId;
    private int ttlPeriod;
    private int type;

    /* renamed from: org.telegram.ui.UsersSelectActivity$FilterUsersActivityDelegate */
    /* loaded from: classes5.dex */
    public interface FilterUsersActivityDelegate {
        void didSelectChats(ArrayList<Long> arrayList, int i);
    }

    static /* synthetic */ int access$1972(UsersSelectActivity usersSelectActivity, int i) {
        int i2 = i & usersSelectActivity.filterFlags;
        usersSelectActivity.filterFlags = i2;
        return i2;
    }

    static /* synthetic */ int access$508(UsersSelectActivity usersSelectActivity) {
        int i = usersSelectActivity.selectedCount;
        usersSelectActivity.selectedCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$510(UsersSelectActivity usersSelectActivity) {
        int i = usersSelectActivity.selectedCount;
        usersSelectActivity.selectedCount = i - 1;
        return i;
    }

    public void setTtlPeriod(int i) {
        this.ttlPeriod = i;
    }

    /* renamed from: org.telegram.ui.UsersSelectActivity$ItemDecoration */
    /* loaded from: classes5.dex */
    private static class ItemDecoration extends RecyclerView.ItemDecoration {
        private boolean single;
        private int skipRows;

        private ItemDecoration() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
            int width = recyclerView.getWidth();
            int childCount = recyclerView.getChildCount() - (!this.single ? 1 : 0);
            int i = 0;
            while (i < childCount) {
                View childAt = recyclerView.getChildAt(i);
                View childAt2 = i < childCount + (-1) ? recyclerView.getChildAt(i + 1) : null;
                if (recyclerView.getChildAdapterPosition(childAt) >= this.skipRows && !(childAt instanceof GraySectionCell) && !(childAt2 instanceof GraySectionCell)) {
                    float bottom = childAt.getBottom();
                    canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(72), bottom, width - (LocaleController.isRTL ? AndroidUtilities.m50dp(72) : 0), bottom, Theme.dividerPaint);
                }
                i++;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            super.getItemOffsets(rect, view, recyclerView, state);
            rect.top = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.UsersSelectActivity$SpansContainer */
    /* loaded from: classes5.dex */
    public class SpansContainer extends ViewGroup {
        private View addingSpan;
        private boolean animationStarted;
        private ArrayList<Animator> animators;
        private AnimatorSet currentAnimation;
        private View removingSpan;

        public SpansContainer(Context context) {
            super(context);
            this.animators = new ArrayList<>();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            int min;
            int childCount = getChildCount();
            int size = View.MeasureSpec.getSize(i);
            int m50dp = size - AndroidUtilities.m50dp(26);
            int m50dp2 = AndroidUtilities.m50dp(10);
            int m50dp3 = AndroidUtilities.m50dp(10);
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt instanceof GroupCreateSpan) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(32), 1073741824));
                    if (childAt != this.removingSpan && childAt.getMeasuredWidth() + i3 > m50dp) {
                        m50dp2 += childAt.getMeasuredHeight() + AndroidUtilities.m50dp(8);
                        i3 = 0;
                    }
                    if (childAt.getMeasuredWidth() + i4 > m50dp) {
                        m50dp3 += childAt.getMeasuredHeight() + AndroidUtilities.m50dp(8);
                        i4 = 0;
                    }
                    int m50dp4 = AndroidUtilities.m50dp(13) + i3;
                    if (!this.animationStarted) {
                        View view = this.removingSpan;
                        if (childAt == view) {
                            childAt.setTranslationX(AndroidUtilities.m50dp(13) + i4);
                            childAt.setTranslationY(m50dp3);
                        } else if (view != null) {
                            float f = m50dp4;
                            if (childAt.getTranslationX() != f) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, View.TRANSLATION_X, f));
                            }
                            float f2 = m50dp2;
                            if (childAt.getTranslationY() != f2) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, View.TRANSLATION_Y, f2));
                            }
                        } else {
                            childAt.setTranslationX(m50dp4);
                            childAt.setTranslationY(m50dp2);
                        }
                    }
                    if (childAt != this.removingSpan) {
                        i3 += childAt.getMeasuredWidth() + AndroidUtilities.m50dp(9);
                    }
                    i4 += childAt.getMeasuredWidth() + AndroidUtilities.m50dp(9);
                }
            }
            if (AndroidUtilities.isTablet()) {
                min = AndroidUtilities.m50dp(372) / 3;
            } else {
                Point point = AndroidUtilities.displaySize;
                min = (Math.min(point.x, point.y) - AndroidUtilities.m50dp(158)) / 3;
            }
            if (m50dp - i3 < min) {
                m50dp2 += AndroidUtilities.m50dp(40);
                i3 = 0;
            }
            if (m50dp - i4 < min) {
                m50dp3 += AndroidUtilities.m50dp(40);
            }
            UsersSelectActivity.this.editText.measure(View.MeasureSpec.makeMeasureSpec(m50dp - i3, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(32), 1073741824));
            if (!this.animationStarted) {
                int m50dp5 = m50dp3 + AndroidUtilities.m50dp(42);
                int m50dp6 = i3 + AndroidUtilities.m50dp(16);
                UsersSelectActivity.this.fieldY = m50dp2;
                if (this.currentAnimation == null) {
                    UsersSelectActivity.this.containerHeight = m50dp5;
                    UsersSelectActivity.this.editText.setTranslationX(m50dp6);
                    UsersSelectActivity.this.editText.setTranslationY(UsersSelectActivity.this.fieldY);
                } else {
                    int m50dp7 = m50dp2 + AndroidUtilities.m50dp(42);
                    if (UsersSelectActivity.this.containerHeight != m50dp7) {
                        this.animators.add(ObjectAnimator.ofInt(UsersSelectActivity.this, "containerHeight", m50dp7));
                    }
                    float f3 = m50dp6;
                    if (UsersSelectActivity.this.editText.getTranslationX() != f3) {
                        this.animators.add(ObjectAnimator.ofFloat(UsersSelectActivity.this.editText, View.TRANSLATION_X, f3));
                    }
                    if (UsersSelectActivity.this.editText.getTranslationY() != UsersSelectActivity.this.fieldY) {
                        this.animators.add(ObjectAnimator.ofFloat(UsersSelectActivity.this.editText, View.TRANSLATION_Y, UsersSelectActivity.this.fieldY));
                    }
                    UsersSelectActivity.this.editText.setAllowDrawCursor(false);
                    this.currentAnimation.playTogether(this.animators);
                    this.currentAnimation.start();
                    this.animationStarted = true;
                }
            } else if (this.currentAnimation != null && !UsersSelectActivity.this.ignoreScrollEvent && this.removingSpan == null) {
                UsersSelectActivity.this.editText.bringPointIntoView(UsersSelectActivity.this.editText.getSelectionStart());
            }
            setMeasuredDimension(size, UsersSelectActivity.this.containerHeight);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
            }
        }

        public void addSpan(GroupCreateSpan groupCreateSpan, boolean z) {
            UsersSelectActivity.this.allSpans.add(groupCreateSpan);
            long uid = groupCreateSpan.getUid();
            if (uid > -2147483641) {
                UsersSelectActivity.access$508(UsersSelectActivity.this);
            }
            UsersSelectActivity.this.selectedContacts.put(uid, groupCreateSpan);
            UsersSelectActivity.this.editText.setHintVisible(false, TextUtils.isEmpty(UsersSelectActivity.this.editText.getText()));
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null && animatorSet.isRunning()) {
                this.currentAnimation.setupEndValues();
                this.currentAnimation.cancel();
            }
            this.animationStarted = false;
            if (z) {
                AnimatorSet animatorSet2 = new AnimatorSet();
                this.currentAnimation = animatorSet2;
                animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.UsersSelectActivity.SpansContainer.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SpansContainer.this.addingSpan = null;
                        SpansContainer.this.currentAnimation = null;
                        SpansContainer.this.animationStarted = false;
                        UsersSelectActivity.this.editText.setAllowDrawCursor(true);
                    }
                });
                this.currentAnimation.setDuration(150L);
                this.addingSpan = groupCreateSpan;
                this.animators.clear();
                this.animators.add(ObjectAnimator.ofFloat(this.addingSpan, View.SCALE_X, 0.01f, 1.0f));
                this.animators.add(ObjectAnimator.ofFloat(this.addingSpan, View.SCALE_Y, 0.01f, 1.0f));
                this.animators.add(ObjectAnimator.ofFloat(this.addingSpan, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
            }
            addView(groupCreateSpan);
        }

        public void removeSpan(final GroupCreateSpan groupCreateSpan) {
            UsersSelectActivity.this.ignoreScrollEvent = true;
            long uid = groupCreateSpan.getUid();
            if (uid > -2147483641) {
                UsersSelectActivity.access$510(UsersSelectActivity.this);
            }
            UsersSelectActivity.this.selectedContacts.remove(uid);
            UsersSelectActivity.this.allSpans.remove(groupCreateSpan);
            groupCreateSpan.setOnClickListener(null);
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.setupEndValues();
                this.currentAnimation.cancel();
            }
            this.animationStarted = false;
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.currentAnimation = animatorSet2;
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.UsersSelectActivity.SpansContainer.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SpansContainer.this.removeView(groupCreateSpan);
                    SpansContainer.this.removingSpan = null;
                    SpansContainer.this.currentAnimation = null;
                    SpansContainer.this.animationStarted = false;
                    UsersSelectActivity.this.editText.setAllowDrawCursor(true);
                    if (UsersSelectActivity.this.allSpans.isEmpty()) {
                        UsersSelectActivity.this.editText.setHintVisible(true, true);
                    }
                }
            });
            this.currentAnimation.setDuration(150L);
            this.removingSpan = groupCreateSpan;
            this.animators.clear();
            this.animators.add(ObjectAnimator.ofFloat(this.removingSpan, View.SCALE_X, 1.0f, 0.01f));
            this.animators.add(ObjectAnimator.ofFloat(this.removingSpan, View.SCALE_Y, 1.0f, 0.01f));
            this.animators.add(ObjectAnimator.ofFloat(this.removingSpan, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
            requestLayout();
        }
    }

    public UsersSelectActivity(boolean z, ArrayList<Long> arrayList, int i) {
        this.selectedContacts = new LongSparseArray<>();
        this.allSpans = new ArrayList<>();
        this.isInclude = z;
        this.filterFlags = i;
        this.initialIds = arrayList;
        this.type = 0;
    }

    public UsersSelectActivity(int i) {
        this.selectedContacts = new LongSparseArray<>();
        this.allSpans = new ArrayList<>();
        this.type = i;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.contactsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateInterfaces);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.chatDidCreated);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.contactsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateInterfaces);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.chatDidCreated);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        GroupCreateSpan groupCreateSpan = (GroupCreateSpan) view;
        if (groupCreateSpan.isDeleting()) {
            this.currentDeletingSpan = null;
            this.spansContainer.removeSpan(groupCreateSpan);
            if (groupCreateSpan.getUid() == -2147483648L) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_CONTACTS;
            } else if (groupCreateSpan.getUid() == -2147483647L) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS;
            } else if (groupCreateSpan.getUid() == -2147483646) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_GROUPS;
            } else if (groupCreateSpan.getUid() == -2147483645) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_CHANNELS;
            } else if (groupCreateSpan.getUid() == -2147483644) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_BOTS;
            } else if (groupCreateSpan.getUid() == -2147483643) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED;
            } else if (groupCreateSpan.getUid() == -2147483642) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ;
            } else if (groupCreateSpan.getUid() == -2147483641) {
                this.filterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED;
            }
            updateHint();
            checkVisibleRows();
            return;
        }
        GroupCreateSpan groupCreateSpan2 = this.currentDeletingSpan;
        if (groupCreateSpan2 != null) {
            groupCreateSpan2.cancelDeleteAnimation();
        }
        this.currentDeletingSpan = groupCreateSpan;
        groupCreateSpan.startDeleteAnimation();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        Object chat;
        int i;
        String str;
        this.searching = false;
        this.searchWas = false;
        this.allSpans.clear();
        this.selectedContacts.clear();
        this.currentDeletingSpan = null;
        if (this.type == 1) {
            AnimatedAvatarContainer animatedAvatarContainer = new AnimatedAvatarContainer(getContext());
            this.animatedAvatarContainer = animatedAvatarContainer;
            C3366ActionBar c3366ActionBar = this.actionBar;
            boolean z = LocaleController.isRTL;
            c3366ActionBar.addView(animatedAvatarContainer, LayoutHelper.createFrame(-1, -1, 0, z ? 0 : 64, 0, z ? 64 : 0, 0));
            this.actionBar.setAllowOverlayTitle(false);
        }
        this.actionBar.setBackButtonImage(C3301R.C3303drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        if (this.topicMode) {
            this.actionBar.setTitle(LocaleController.getString("SelectChats", C3301R.string.SelectChats));
        } else {
            int i2 = this.type;
            if (i2 == 0) {
                if (this.isInclude) {
                    this.actionBar.setTitle(LocaleController.getString("FilterAlwaysShow", C3301R.string.FilterAlwaysShow));
                } else {
                    this.actionBar.setTitle(LocaleController.getString("FilterNeverShow", C3301R.string.FilterNeverShow));
                }
            } else if (i2 == 1) {
                updateHint();
            }
        }
        this.actionBar.setActionBarMenuOnItemClick(new C3366ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.UsersSelectActivity.1
            @Override // org.telegram.p048ui.ActionBar.C3366ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i3) {
                if (i3 == -1) {
                    UsersSelectActivity.this.finishFragment();
                } else if (i3 == 1) {
                    UsersSelectActivity.this.onDonePressed(true);
                }
            }
        });
        ViewGroup viewGroup = new ViewGroup(context) { // from class: org.telegram.ui.UsersSelectActivity.2
            @Override // android.view.View
            protected void onMeasure(int i3, int i4) {
                int m50dp;
                int size = View.MeasureSpec.getSize(i3);
                int size2 = View.MeasureSpec.getSize(i4);
                setMeasuredDimension(size, size2);
                if (AndroidUtilities.isTablet() || size2 > size) {
                    m50dp = AndroidUtilities.m50dp(144);
                } else {
                    m50dp = AndroidUtilities.m50dp(56);
                }
                UsersSelectActivity.this.scrollView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(m50dp, Integer.MIN_VALUE));
                UsersSelectActivity.this.listView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2 - UsersSelectActivity.this.scrollView.getMeasuredHeight(), 1073741824));
                UsersSelectActivity.this.emptyView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2 - UsersSelectActivity.this.scrollView.getMeasuredHeight(), 1073741824));
                if (UsersSelectActivity.this.floatingButton != null) {
                    int m50dp2 = AndroidUtilities.m50dp(Build.VERSION.SDK_INT < 21 ? 60 : 56);
                    UsersSelectActivity.this.floatingButton.measure(View.MeasureSpec.makeMeasureSpec(m50dp2, 1073741824), View.MeasureSpec.makeMeasureSpec(m50dp2, 1073741824));
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z2, int i3, int i4, int i5, int i6) {
                UsersSelectActivity.this.scrollView.layout(0, 0, UsersSelectActivity.this.scrollView.getMeasuredWidth(), UsersSelectActivity.this.scrollView.getMeasuredHeight());
                UsersSelectActivity.this.listView.layout(0, UsersSelectActivity.this.scrollView.getMeasuredHeight(), UsersSelectActivity.this.listView.getMeasuredWidth(), UsersSelectActivity.this.scrollView.getMeasuredHeight() + UsersSelectActivity.this.listView.getMeasuredHeight());
                UsersSelectActivity.this.emptyView.layout(0, UsersSelectActivity.this.scrollView.getMeasuredHeight(), UsersSelectActivity.this.emptyView.getMeasuredWidth(), UsersSelectActivity.this.scrollView.getMeasuredHeight() + UsersSelectActivity.this.emptyView.getMeasuredHeight());
                if (UsersSelectActivity.this.floatingButton != null) {
                    int m50dp = LocaleController.isRTL ? AndroidUtilities.m50dp(14) : ((i5 - i3) - AndroidUtilities.m50dp(14)) - UsersSelectActivity.this.floatingButton.getMeasuredWidth();
                    int m50dp2 = ((i6 - i4) - AndroidUtilities.m50dp(14)) - UsersSelectActivity.this.floatingButton.getMeasuredHeight();
                    UsersSelectActivity.this.floatingButton.layout(m50dp, m50dp2, UsersSelectActivity.this.floatingButton.getMeasuredWidth() + m50dp, UsersSelectActivity.this.floatingButton.getMeasuredHeight() + m50dp2);
                }
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                boolean drawChild = super.drawChild(canvas, view, j);
                if (view == UsersSelectActivity.this.listView || view == UsersSelectActivity.this.emptyView) {
                    ((BaseFragment) UsersSelectActivity.this).parentLayout.drawHeaderShadow(canvas, UsersSelectActivity.this.scrollView.getMeasuredHeight());
                }
                return drawChild;
            }
        };
        this.fragmentView = viewGroup;
        ViewGroup viewGroup2 = viewGroup;
        ScrollView scrollView = new ScrollView(context) { // from class: org.telegram.ui.UsersSelectActivity.3
            @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
            public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
                if (UsersSelectActivity.this.ignoreScrollEvent) {
                    UsersSelectActivity.this.ignoreScrollEvent = false;
                    return false;
                }
                rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
                rect.top += UsersSelectActivity.this.fieldY + AndroidUtilities.m50dp(20);
                rect.bottom += UsersSelectActivity.this.fieldY + AndroidUtilities.m50dp(50);
                return super.requestChildRectangleOnScreen(view, rect, z2);
            }
        };
        this.scrollView = scrollView;
        scrollView.setVerticalScrollBarEnabled(false);
        AndroidUtilities.setScrollViewEdgeEffectColor(this.scrollView, Theme.getColor("windowBackgroundWhite"));
        viewGroup2.addView(this.scrollView);
        SpansContainer spansContainer = new SpansContainer(context);
        this.spansContainer = spansContainer;
        this.scrollView.addView(spansContainer, LayoutHelper.createFrame(-1, -2));
        this.spansContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.UsersSelectActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UsersSelectActivity.this.lambda$createView$0(view);
            }
        });
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.UsersSelectActivity.4
            @Override // org.telegram.p048ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (UsersSelectActivity.this.currentDeletingSpan != null) {
                    UsersSelectActivity.this.currentDeletingSpan.cancelDeleteAnimation();
                    UsersSelectActivity.this.currentDeletingSpan = null;
                }
                if (motionEvent.getAction() == 0 && !AndroidUtilities.showKeyboard(this)) {
                    clearFocus();
                    requestFocus();
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.editText = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 16.0f);
        this.editText.setHintColor(Theme.getColor("groupcreate_hintText"));
        this.editText.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        this.editText.setCursorColor(Theme.getColor("groupcreate_cursor"));
        this.editText.setCursorWidth(1.5f);
        this.editText.setInputType(655536);
        this.editText.setSingleLine(true);
        this.editText.setBackgroundDrawable(null);
        this.editText.setVerticalScrollBarEnabled(false);
        this.editText.setHorizontalScrollBarEnabled(false);
        this.editText.setTextIsSelectable(false);
        this.editText.setPadding(0, 0, 0, 0);
        this.editText.setImeOptions(268435462);
        this.editText.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.spansContainer.addView(this.editText);
        this.editText.setHintText(LocaleController.getString("SearchForPeopleAndGroups", C3301R.string.SearchForPeopleAndGroups));
        this.editText.setCustomSelectionActionModeCallback(new ActionMode.Callback(this) { // from class: org.telegram.ui.UsersSelectActivity.5
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
        this.editText.setOnKeyListener(new View.OnKeyListener() { // from class: org.telegram.ui.UsersSelectActivity.6
            private boolean wasEmpty;

            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i3, KeyEvent keyEvent) {
                if (i3 == 67) {
                    if (keyEvent.getAction() == 0) {
                        this.wasEmpty = UsersSelectActivity.this.editText.length() == 0;
                    } else if (keyEvent.getAction() == 1 && this.wasEmpty && !UsersSelectActivity.this.allSpans.isEmpty()) {
                        GroupCreateSpan groupCreateSpan = (GroupCreateSpan) UsersSelectActivity.this.allSpans.get(UsersSelectActivity.this.allSpans.size() - 1);
                        UsersSelectActivity.this.spansContainer.removeSpan(groupCreateSpan);
                        if (groupCreateSpan.getUid() == -2147483648L) {
                            UsersSelectActivity.access$1972(UsersSelectActivity.this, ~MessagesController.DIALOG_FILTER_FLAG_CONTACTS);
                        } else if (groupCreateSpan.getUid() == -2147483647L) {
                            UsersSelectActivity.access$1972(UsersSelectActivity.this, ~MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS);
                        } else if (groupCreateSpan.getUid() == -2147483646) {
                            UsersSelectActivity.access$1972(UsersSelectActivity.this, ~MessagesController.DIALOG_FILTER_FLAG_GROUPS);
                        } else if (groupCreateSpan.getUid() == -2147483645) {
                            UsersSelectActivity.access$1972(UsersSelectActivity.this, ~MessagesController.DIALOG_FILTER_FLAG_CHANNELS);
                        } else if (groupCreateSpan.getUid() == -2147483644) {
                            UsersSelectActivity.access$1972(UsersSelectActivity.this, ~MessagesController.DIALOG_FILTER_FLAG_BOTS);
                        } else if (groupCreateSpan.getUid() == -2147483643) {
                            UsersSelectActivity.access$1972(UsersSelectActivity.this, ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED);
                        } else if (groupCreateSpan.getUid() == -2147483642) {
                            UsersSelectActivity.access$1972(UsersSelectActivity.this, ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ);
                        } else if (groupCreateSpan.getUid() == -2147483641) {
                            UsersSelectActivity.access$1972(UsersSelectActivity.this, ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED);
                        }
                        UsersSelectActivity.this.updateHint();
                        UsersSelectActivity.this.checkVisibleRows();
                        return true;
                    }
                }
                return false;
            }
        });
        this.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.UsersSelectActivity.7
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (UsersSelectActivity.this.editText.length() == 0) {
                    UsersSelectActivity.this.closeSearch();
                    return;
                }
                if (!UsersSelectActivity.this.adapter.searching) {
                    UsersSelectActivity.this.searching = true;
                    UsersSelectActivity.this.searchWas = true;
                    UsersSelectActivity.this.adapter.setSearching(true);
                    UsersSelectActivity.this.listView.setFastScrollVisible(false);
                    UsersSelectActivity.this.listView.setVerticalScrollBarEnabled(true);
                    UsersSelectActivity.this.emptyView.setText(LocaleController.getString("NoResult", C3301R.string.NoResult));
                    UsersSelectActivity.this.emptyView.showProgress();
                }
                UsersSelectActivity.this.adapter.searchDialogs(UsersSelectActivity.this.editText.getText().toString());
            }
        });
        this.emptyView = new EmptyTextProgressView(context);
        if (ContactsController.getInstance(this.currentAccount).isLoadingContacts()) {
            this.emptyView.showProgress();
        } else {
            this.emptyView.showTextView();
        }
        this.emptyView.setShowAtCenter(true);
        this.emptyView.setText(LocaleController.getString("NoContacts", C3301R.string.NoContacts));
        viewGroup2.addView(this.emptyView);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setFastScrollEnabled(0);
        this.listView.setEmptyView(this.emptyView);
        RecyclerListView recyclerListView2 = this.listView;
        GroupCreateAdapter groupCreateAdapter = new GroupCreateAdapter(context);
        this.adapter = groupCreateAdapter;
        recyclerListView2.setAdapter(groupCreateAdapter);
        this.listView.setLayoutManager(linearLayoutManager);
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        this.listView.addItemDecoration(new ItemDecoration());
        viewGroup2.addView(this.listView);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.UsersSelectActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                UsersSelectActivity.this.lambda$createView$1(context, view, i3);
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.UsersSelectActivity.8
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
                if (i3 == 1) {
                    AndroidUtilities.hideKeyboard(UsersSelectActivity.this.editText);
                }
            }
        });
        ImageView imageView = new ImageView(context);
        this.floatingButton = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m50dp(56), Theme.getColor("chats_actionBackground"), Theme.getColor("chats_actionPressedBackground"));
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 21) {
            Drawable mutate = context.getResources().getDrawable(C3301R.C3303drawable.floating_shadow).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, createSimpleSelectorCircleDrawable, 0, 0);
            combinedDrawable.setIconSize(AndroidUtilities.m50dp(56), AndroidUtilities.m50dp(56));
            createSimpleSelectorCircleDrawable = combinedDrawable;
        }
        this.floatingButton.setBackgroundDrawable(createSimpleSelectorCircleDrawable);
        this.floatingButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_actionIcon"), PorterDuff.Mode.MULTIPLY));
        this.floatingButton.setImageResource(C3301R.C3303drawable.floating_check);
        if (i3 >= 21) {
            StateListAnimator stateListAnimator = new StateListAnimator();
            ImageView imageView2 = this.floatingButton;
            Property property = View.TRANSLATION_Z;
            stateListAnimator.addState(new int[]{16842919}, ObjectAnimator.ofFloat(imageView2, property, AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(4)).setDuration(200L));
            stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(this.floatingButton, property, AndroidUtilities.m50dp(4), AndroidUtilities.m50dp(2)).setDuration(200L));
            this.floatingButton.setStateListAnimator(stateListAnimator);
            this.floatingButton.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.UsersSelectActivity.9
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setOval(0, 0, AndroidUtilities.m50dp(56), AndroidUtilities.m50dp(56));
                }
            });
        }
        viewGroup2.addView(this.floatingButton);
        this.floatingButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.UsersSelectActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UsersSelectActivity.this.lambda$createView$2(view);
            }
        });
        this.floatingButton.setContentDescription(LocaleController.getString("Next", C3301R.string.Next));
        int i4 = this.isInclude ? 5 : 3;
        for (int i5 = 1; i5 <= i4; i5++) {
            if (this.isInclude) {
                if (i5 == 1) {
                    i = MessagesController.DIALOG_FILTER_FLAG_CONTACTS;
                    str = "contacts";
                } else if (i5 == 2) {
                    i = MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS;
                    str = "non_contacts";
                } else if (i5 == 3) {
                    i = MessagesController.DIALOG_FILTER_FLAG_GROUPS;
                    str = "groups";
                } else if (i5 == 4) {
                    i = MessagesController.DIALOG_FILTER_FLAG_CHANNELS;
                    str = "channels";
                } else {
                    i = MessagesController.DIALOG_FILTER_FLAG_BOTS;
                    str = "bots";
                }
            } else if (i5 == 1) {
                i = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED;
                str = "muted";
            } else if (i5 == 2) {
                i = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ;
                str = "read";
            } else {
                i = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED;
                str = "archived";
            }
            if ((i & this.filterFlags) != 0) {
                GroupCreateSpan groupCreateSpan = new GroupCreateSpan(this.editText.getContext(), str);
                this.spansContainer.addSpan(groupCreateSpan, false);
                groupCreateSpan.setOnClickListener(this);
            }
        }
        ArrayList<Long> arrayList = this.initialIds;
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = this.initialIds.size();
            for (int i6 = 0; i6 < size; i6++) {
                Long l = this.initialIds.get(i6);
                if (l.longValue() > 0) {
                    chat = getMessagesController().getUser(l);
                } else {
                    chat = getMessagesController().getChat(Long.valueOf(-l.longValue()));
                }
                if (chat != null) {
                    GroupCreateSpan groupCreateSpan2 = new GroupCreateSpan(this.editText.getContext(), chat);
                    this.spansContainer.addSpan(groupCreateSpan2, false);
                    groupCreateSpan2.setOnClickListener(this);
                }
            }
        }
        updateHint();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        this.editText.clearFocus();
        this.editText.requestFocus();
        AndroidUtilities.showKeyboard(this.editText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(Context context, View view, int i) {
        long j;
        int i2;
        if (view instanceof GroupCreateUserCell) {
            GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) view;
            Object object = groupCreateUserCell.getObject();
            boolean z = object instanceof String;
            if (z) {
                if (this.isInclude) {
                    if (i == 1) {
                        i2 = MessagesController.DIALOG_FILTER_FLAG_CONTACTS;
                        j = -2147483648L;
                    } else if (i == 2) {
                        i2 = MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS;
                        j = -2147483647L;
                    } else if (i == 3) {
                        i2 = MessagesController.DIALOG_FILTER_FLAG_GROUPS;
                        j = -2147483646;
                    } else if (i == 4) {
                        i2 = MessagesController.DIALOG_FILTER_FLAG_CHANNELS;
                        j = -2147483645;
                    } else {
                        i2 = MessagesController.DIALOG_FILTER_FLAG_BOTS;
                        j = -2147483644;
                    }
                } else if (i == 1) {
                    i2 = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED;
                    j = -2147483643;
                } else if (i == 2) {
                    i2 = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ;
                    j = -2147483642;
                } else {
                    i2 = MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED;
                    j = -2147483641;
                }
                if (groupCreateUserCell.isChecked()) {
                    this.filterFlags = (~i2) & this.filterFlags;
                } else {
                    this.filterFlags = i2 | this.filterFlags;
                }
            } else if (object instanceof TLRPC$User) {
                j = ((TLRPC$User) object).f1640id;
            } else if (!(object instanceof TLRPC$Chat)) {
                return;
            } else {
                TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) object;
                j = -tLRPC$Chat.f1500id;
                if (this.type == 1 && !ChatObject.canUserDoAdminAction(tLRPC$Chat, 13)) {
                    BulletinFactory.m27of(this).createErrorBulletin(LocaleController.getString("NeedAdminRightForSetAutoDeleteTimer", C3301R.string.NeedAdminRightForSetAutoDeleteTimer)).show();
                    return;
                }
            }
            boolean z2 = this.selectedContacts.indexOfKey(j) >= 0;
            if (z2) {
                this.spansContainer.removeSpan(this.selectedContacts.get(j));
            } else if (!this.topicMode && ((!z && !getUserConfig().isPremium() && this.selectedCount >= MessagesController.getInstance(this.currentAccount).dialogFiltersChatsLimitDefault) || this.selectedCount >= MessagesController.getInstance(this.currentAccount).dialogFiltersChatsLimitPremium)) {
                LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(this, context, 4, this.currentAccount);
                limitReachedBottomSheet.setCurrentValue(this.selectedCount);
                showDialog(limitReachedBottomSheet);
                return;
            } else {
                if (object instanceof TLRPC$User) {
                    MessagesController.getInstance(this.currentAccount).putUser((TLRPC$User) object, !this.searching);
                } else if (object instanceof TLRPC$Chat) {
                    MessagesController.getInstance(this.currentAccount).putChat((TLRPC$Chat) object, !this.searching);
                }
                GroupCreateSpan groupCreateSpan = new GroupCreateSpan(this.editText.getContext(), object);
                this.spansContainer.addSpan(groupCreateSpan, true);
                groupCreateSpan.setOnClickListener(this);
            }
            updateHint();
            if (this.searching || this.searchWas) {
                AndroidUtilities.showKeyboard(this.editText);
            } else {
                groupCreateUserCell.setChecked(!z2, true);
            }
            if (this.editText.length() > 0) {
                this.editText.setText((CharSequence) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view) {
        onDonePressed(true);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        EditTextBoldCursor editTextBoldCursor = this.editText;
        if (editTextBoldCursor != null) {
            editTextBoldCursor.requestFocus();
        }
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.contactsDidLoad) {
            EmptyTextProgressView emptyTextProgressView = this.emptyView;
            if (emptyTextProgressView != null) {
                emptyTextProgressView.showTextView();
            }
            GroupCreateAdapter groupCreateAdapter = this.adapter;
            if (groupCreateAdapter != null) {
                groupCreateAdapter.notifyDataSetChanged();
            }
        } else if (i == NotificationCenter.updateInterfaces) {
            if (this.listView != null) {
                int intValue = ((Integer) objArr[0]).intValue();
                int childCount = this.listView.getChildCount();
                if ((MessagesController.UPDATE_MASK_AVATAR & intValue) == 0 && (MessagesController.UPDATE_MASK_NAME & intValue) == 0 && (MessagesController.UPDATE_MASK_STATUS & intValue) == 0) {
                    return;
                }
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = this.listView.getChildAt(i3);
                    if (childAt instanceof GroupCreateUserCell) {
                        ((GroupCreateUserCell) childAt).update(intValue);
                    }
                }
            }
        } else if (i == NotificationCenter.chatDidCreated) {
            removeSelfFromStack();
        }
    }

    @Keep
    public void setContainerHeight(int i) {
        this.containerHeight = i;
        SpansContainer spansContainer = this.spansContainer;
        if (spansContainer != null) {
            spansContainer.requestLayout();
        }
    }

    @Keep
    public int getContainerHeight() {
        return this.containerHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkVisibleRows() {
        long j;
        int childCount = this.listView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.listView.getChildAt(i);
            if (childAt instanceof GroupCreateUserCell) {
                GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) childAt;
                Object object = groupCreateUserCell.getObject();
                if (object instanceof String) {
                    String str = (String) object;
                    char c = 65535;
                    switch (str.hashCode()) {
                        case -1716307998:
                            if (str.equals("archived")) {
                                c = 7;
                                break;
                            }
                            break;
                        case -1237460524:
                            if (str.equals("groups")) {
                                c = 2;
                                break;
                            }
                            break;
                        case -1197490811:
                            if (str.equals("non_contacts")) {
                                c = 1;
                                break;
                            }
                            break;
                        case -567451565:
                            if (str.equals("contacts")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 3029900:
                            if (str.equals("bots")) {
                                c = 4;
                                break;
                            }
                            break;
                        case 3496342:
                            if (str.equals("read")) {
                                c = 6;
                                break;
                            }
                            break;
                        case 104264043:
                            if (str.equals("muted")) {
                                c = 5;
                                break;
                            }
                            break;
                        case 1432626128:
                            if (str.equals("channels")) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            j = -2147483648L;
                            break;
                        case 1:
                            j = -2147483647L;
                            break;
                        case 2:
                            j = -2147483646;
                            break;
                        case 3:
                            j = -2147483645;
                            break;
                        case 4:
                            j = -2147483644;
                            break;
                        case 5:
                            j = -2147483643;
                            break;
                        case 6:
                            j = -2147483642;
                            break;
                        default:
                            j = -2147483641;
                            break;
                    }
                } else if (object instanceof TLRPC$User) {
                    j = ((TLRPC$User) object).f1640id;
                } else {
                    j = object instanceof TLRPC$Chat ? -((TLRPC$Chat) object).f1500id : 0L;
                }
                if (j != 0) {
                    groupCreateUserCell.setChecked(this.selectedContacts.indexOfKey(j) >= 0, true);
                    groupCreateUserCell.setCheckBoxEnabled(true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onDonePressed(boolean z) {
        ArrayList<Long> arrayList = new ArrayList<>();
        for (int i = 0; i < this.selectedContacts.size(); i++) {
            if (this.selectedContacts.keyAt(i) > -2147483641) {
                arrayList.add(Long.valueOf(this.selectedContacts.keyAt(i)));
            }
        }
        FilterUsersActivityDelegate filterUsersActivityDelegate = this.delegate;
        if (filterUsersActivityDelegate != null) {
            filterUsersActivityDelegate.didSelectChats(arrayList, this.filterFlags);
        }
        finishFragment();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeSearch() {
        this.searching = false;
        this.searchWas = false;
        this.adapter.setSearching(false);
        this.adapter.searchDialogs(null);
        this.listView.setFastScrollVisible(true);
        this.listView.setVerticalScrollBarEnabled(false);
        this.emptyView.setText(LocaleController.getString("NoContacts", C3301R.string.NoContacts));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHint() {
        if (this.topicMode) {
            return;
        }
        int i = this.type;
        if (i == 0) {
            int i2 = getUserConfig().isPremium() ? getMessagesController().dialogFiltersChatsLimitPremium : getMessagesController().dialogFiltersChatsLimitDefault;
            int i3 = this.selectedCount;
            if (i3 == 0) {
                this.actionBar.setSubtitle(LocaleController.formatString("MembersCountZero", C3301R.string.MembersCountZero, LocaleController.formatPluralString("Chats", i2, new Object[0])));
            } else {
                this.actionBar.setSubtitle(String.format(LocaleController.getPluralString("MembersCountSelected", i3), Integer.valueOf(this.selectedCount), Integer.valueOf(i2)));
            }
        } else if (i == 1) {
            this.actionBar.setTitle("");
            this.actionBar.setSubtitle("");
            if (this.selectedCount == 0) {
                this.animatedAvatarContainer.getTitle().setText(LocaleController.getString("SelectChats", C3301R.string.SelectChats), true);
                if (this.ttlPeriod > 0) {
                    this.animatedAvatarContainer.getSubtitleTextView().setText(LocaleController.getString("SelectChatsForAutoDelete", C3301R.string.SelectChatsForAutoDelete), true);
                    return;
                } else {
                    this.animatedAvatarContainer.getSubtitleTextView().setText(LocaleController.getString("SelectChatsForDisableAutoDelete", C3301R.string.SelectChatsForDisableAutoDelete), true);
                    return;
                }
            }
            AnimatedTextView title = this.animatedAvatarContainer.getTitle();
            int i4 = this.selectedCount;
            title.setText(LocaleController.formatPluralString("Chats", i4, Integer.valueOf(i4)));
            if (this.ttlPeriod > 0) {
                this.animatedAvatarContainer.getSubtitleTextView().setText(LocaleController.getPluralString("SelectChatsForAutoDelete2", this.selectedCount));
            } else {
                this.animatedAvatarContainer.getSubtitleTextView().setText(LocaleController.getPluralString("SelectChatsForDisableAutoDelete2", this.selectedCount));
            }
        }
    }

    public void setDelegate(FilterUsersActivityDelegate filterUsersActivityDelegate) {
        this.delegate = filterUsersActivityDelegate;
    }

    /* renamed from: org.telegram.ui.UsersSelectActivity$GroupCreateAdapter */
    /* loaded from: classes5.dex */
    public class GroupCreateAdapter extends RecyclerListView.FastScrollAdapter {
        private Context context;
        private SearchAdapterHelper searchAdapterHelper;
        private Runnable searchRunnable;
        private boolean searching;
        private int usersStartRow;
        private ArrayList<Object> searchResult = new ArrayList<>();
        private ArrayList<CharSequence> searchResultNames = new ArrayList<>();
        private ArrayList<TLObject> contacts = new ArrayList<>();

        @Override // org.telegram.p048ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            return null;
        }

        public GroupCreateAdapter(Context context) {
            int i;
            if (UsersSelectActivity.this.type == 0) {
                i = UsersSelectActivity.this.isInclude ? 7 : 5;
            } else {
                i = 0;
            }
            this.usersStartRow = i;
            if (UsersSelectActivity.this.topicMode) {
                this.usersStartRow = 1;
            }
            this.context = context;
            ArrayList<TLRPC$Dialog> allDialogs = UsersSelectActivity.this.getMessagesController().getAllDialogs();
            int size = allDialogs.size();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                TLRPC$Dialog tLRPC$Dialog = allDialogs.get(i2);
                if ((!UsersSelectActivity.this.topicMode || tLRPC$Dialog.folder_id == UsersSelectActivity.this.topicModeFilterFolderId) && !DialogObject.isEncryptedDialog(tLRPC$Dialog.f1506id)) {
                    if (DialogObject.isUserDialog(tLRPC$Dialog.f1506id)) {
                        TLRPC$User user = UsersSelectActivity.this.getMessagesController().getUser(Long.valueOf(tLRPC$Dialog.f1506id));
                        if (user != null && ((!UsersSelectActivity.this.topicMode || (!UserObject.isUserSelf(user) && !UserObject.isReplyUser(user) && !MessagesController.isSupportUser(user))) && (UsersSelectActivity.this.type != 1 || !UserObject.isUserSelf(user)))) {
                            this.contacts.add(user);
                            if (UserObject.isUserSelf(user)) {
                                z = true;
                            }
                        }
                    } else {
                        TLRPC$Chat chat = UsersSelectActivity.this.getMessagesController().getChat(Long.valueOf(-tLRPC$Dialog.f1506id));
                        if (!UsersSelectActivity.this.getAlbumsController().isDialogAlbum(tLRPC$Dialog.f1506id) && chat != null) {
                            this.contacts.add(chat);
                        }
                    }
                }
            }
            if (!UsersSelectActivity.this.topicMode && !z && UsersSelectActivity.this.type != 1) {
                this.contacts.add(0, UsersSelectActivity.this.getMessagesController().getUser(Long.valueOf(UsersSelectActivity.this.getUserConfig().clientUserId)));
            }
            SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(false);
            this.searchAdapterHelper = searchAdapterHelper;
            searchAdapterHelper.topicMode = UsersSelectActivity.this.topicMode;
            searchAdapterHelper.topicModeFilterFolderId = UsersSelectActivity.this.topicModeFilterFolderId;
            searchAdapterHelper.setAllowGlobalResults(false);
            this.searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda4
                @Override // org.telegram.p048ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ boolean canApplySearchResults(int i3) {
                    return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$canApplySearchResults(this, i3);
                }

                @Override // org.telegram.p048ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ LongSparseArray getExcludeCallParticipants() {
                    return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeCallParticipants(this);
                }

                @Override // org.telegram.p048ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ LongSparseArray getExcludeUsers() {
                    return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeUsers(this);
                }

                @Override // org.telegram.p048ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public final void onDataSetChanged(int i3) {
                    UsersSelectActivity.GroupCreateAdapter.this.lambda$new$0(i3);
                }

                @Override // org.telegram.p048ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ void onSetHashtags(ArrayList arrayList, HashMap hashMap) {
                    SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$onSetHashtags(this, arrayList, hashMap);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i) {
            if (this.searchRunnable == null && !this.searchAdapterHelper.isSearchInProgress()) {
                UsersSelectActivity.this.emptyView.showTextView();
            }
            notifyDataSetChanged();
        }

        public void setSearching(boolean z) {
            if (this.searching == z) {
                return;
            }
            this.searching = z;
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int i;
            int size;
            if (!this.searching) {
                if (UsersSelectActivity.this.type == 0) {
                    i = UsersSelectActivity.this.isInclude ? 7 : 5;
                } else {
                    i = 0;
                }
                if (UsersSelectActivity.this.topicMode) {
                    i = 1;
                }
                size = this.contacts.size();
            } else {
                i = this.searchResult.size();
                size = this.searchAdapterHelper.getLocalServerSearch().size() + this.searchAdapterHelper.getGlobalSearch().size();
            }
            return i + size;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View groupCreateUserCell;
            if (i == 1) {
                groupCreateUserCell = new GroupCreateUserCell(this.context, 1, 0, true);
            } else {
                groupCreateUserCell = new GraySectionCell(this.context);
            }
            return new RecyclerListView.Holder(groupCreateUserCell);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0226  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x02ac  */
        /* JADX WARN: Removed duplicated region for block: B:130:0x02dc  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x02e2  */
        /* JADX WARN: Removed duplicated region for block: B:134:0x02f0  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x02f3  */
        /* JADX WARN: Removed duplicated region for block: B:138:0x0300  */
        /* JADX WARN: Removed duplicated region for block: B:151:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:87:0x01cb  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x01d1  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x01e5  */
        /* JADX WARN: Type inference failed for: r6v0 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v19 */
        /* JADX WARN: Type inference failed for: r6v20, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r6v21 */
        /* JADX WARN: Type inference failed for: r6v22 */
        /* JADX WARN: Type inference failed for: r6v23 */
        /* JADX WARN: Type inference failed for: r6v24 */
        /* JADX WARN: Type inference failed for: r6v25 */
        /* JADX WARN: Type inference failed for: r6v26 */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r18, int r19) {
            /*
                Method dump skipped, instructions count: 790
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.UsersSelectActivity.GroupCreateAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (this.searching) {
                return 1;
            }
            UsersSelectActivity usersSelectActivity = UsersSelectActivity.this;
            if (usersSelectActivity.topicMode) {
                return i == 0 ? 2 : 1;
            }
            if (usersSelectActivity.type == 0) {
                if (UsersSelectActivity.this.isInclude) {
                    if (i == 0 || i == 6) {
                        return 2;
                    }
                } else if (i == 0 || i == 4) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            iArr[0] = (int) (getItemCount() * f);
            iArr[1] = 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof GroupCreateUserCell) {
                ((GroupCreateUserCell) view).recycle();
            }
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1;
        }

        public void searchDialogs(final String str) {
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            if (str == null) {
                this.searchResult.clear();
                this.searchResultNames.clear();
                this.searchAdapterHelper.mergeResults(null);
                this.searchAdapterHelper.queryServerSearch(null, true, true, false, false, false, 0L, false, 0, 0);
                notifyDataSetChanged();
                return;
            }
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    UsersSelectActivity.GroupCreateAdapter.this.lambda$searchDialogs$3(str, r3);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$searchDialogs$3(final String str, final boolean z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    UsersSelectActivity.GroupCreateAdapter.this.lambda$searchDialogs$2(str, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$searchDialogs$2(final String str, boolean z) {
            this.searchAdapterHelper.queryServerSearch(str, true, z, true, UsersSelectActivity.this.type != 1, false, 0L, false, 0, 0);
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    UsersSelectActivity.GroupCreateAdapter.this.lambda$searchDialogs$1(str);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$searchDialogs$1(String str) {
            String str2;
            int i;
            String str3;
            char c;
            String lowerCase = str.trim().toLowerCase();
            if (lowerCase.length() == 0) {
                updateSearchResults(new ArrayList<>(), new ArrayList<>());
                return;
            }
            String translitString = LocaleController.getInstance().getTranslitString(lowerCase);
            String str4 = null;
            if (lowerCase.equals(translitString) || translitString.length() == 0) {
                translitString = null;
            }
            int i2 = 0;
            char c2 = 1;
            int i3 = (translitString != null ? 1 : 0) + 1;
            String[] strArr = new String[i3];
            strArr[0] = lowerCase;
            if (translitString != null) {
                strArr[1] = translitString;
            }
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList<CharSequence> arrayList2 = new ArrayList<>();
            int i4 = 0;
            while (i4 < this.contacts.size()) {
                TLObject tLObject = this.contacts.get(i4);
                String[] strArr2 = new String[3];
                boolean z = tLObject instanceof TLRPC$User;
                if (z) {
                    TLRPC$User tLRPC$User = (TLRPC$User) tLObject;
                    strArr2[i2] = ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name).toLowerCase();
                    str2 = UserObject.getPublicUsername(tLRPC$User);
                    if (UserObject.isReplyUser(tLRPC$User)) {
                        strArr2[2] = LocaleController.getString("RepliesTitle", C3301R.string.RepliesTitle).toLowerCase();
                    } else if (tLRPC$User.self) {
                        strArr2[2] = LocaleController.getString("SavedMessages", C3301R.string.SavedMessages).toLowerCase();
                    }
                } else {
                    TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) tLObject;
                    strArr2[i2] = tLRPC$Chat.title.toLowerCase();
                    str2 = tLRPC$Chat.username;
                }
                strArr2[c2] = LocaleController.getInstance().getTranslitString(strArr2[i2]);
                if (strArr2[i2].equals(strArr2[c2])) {
                    strArr2[c2] = str4;
                }
                int i5 = i2;
                int i6 = i5;
                while (true) {
                    if (i5 >= i3) {
                        i = i3;
                        str3 = str4;
                        c = c2;
                        break;
                    }
                    String str5 = strArr[i5];
                    int i7 = 0;
                    while (i7 < 3) {
                        String str6 = strArr2[i7];
                        if (str6 != null) {
                            if (str6.startsWith(str5)) {
                                i = i3;
                            } else {
                                StringBuilder sb = new StringBuilder();
                                i = i3;
                                sb.append(" ");
                                sb.append(str5);
                                if (str6.contains(sb.toString())) {
                                }
                            }
                            i6 = 1;
                            break;
                        }
                        i = i3;
                        i7++;
                        i3 = i;
                    }
                    i = i3;
                    if (i6 == 0 && str2 != null && str2.toLowerCase().startsWith(str5)) {
                        i6 = 2;
                    }
                    if (i6 != 0) {
                        c = 1;
                        if (i6 == 1) {
                            if (z) {
                                TLRPC$User tLRPC$User2 = (TLRPC$User) tLObject;
                                arrayList2.add(AndroidUtilities.generateSearchName(tLRPC$User2.first_name, tLRPC$User2.last_name, str5));
                            } else {
                                arrayList2.add(AndroidUtilities.generateSearchName(((TLRPC$Chat) tLObject).title, null, str5));
                            }
                            str3 = null;
                        } else {
                            str3 = null;
                            arrayList2.add(AndroidUtilities.generateSearchName("@" + str2, null, "@" + str5));
                        }
                        arrayList.add(tLObject);
                    } else {
                        i5++;
                        c2 = 1;
                        str4 = null;
                        i3 = i;
                    }
                }
                i4++;
                c2 = c;
                str4 = str3;
                i3 = i;
                i2 = 0;
            }
            updateSearchResults(arrayList, arrayList2);
        }

        private void updateSearchResults(final ArrayList<Object> arrayList, final ArrayList<CharSequence> arrayList2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    UsersSelectActivity.GroupCreateAdapter.this.lambda$updateSearchResults$4(arrayList, arrayList2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$4(ArrayList arrayList, ArrayList arrayList2) {
            if (this.searching) {
                this.searchRunnable = null;
                this.searchResult = arrayList;
                this.searchResultNames = arrayList2;
                this.searchAdapterHelper.mergeResults(arrayList);
                if (this.searching && !this.searchAdapterHelper.isSearchInProgress()) {
                    UsersSelectActivity.this.emptyView.showTextView();
                }
                notifyDataSetChanged();
            }
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.UsersSelectActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                UsersSelectActivity.this.lambda$getThemeDescriptions$3();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"));
        arrayList.add(new ThemeDescription(this.scrollView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, "fastScrollActive"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, "fastScrollInactive"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_FASTSCROLL, null, null, null, null, "fastScrollText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "emptyListPlaceholder"));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, "progressCircle"));
        arrayList.add(new ThemeDescription(this.editText, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.editText, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, "groupcreate_hintText"));
        arrayList.add(new ThemeDescription(this.editText, ThemeDescription.FLAG_CURSORCOLOR, null, null, null, null, "groupcreate_cursor"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{GraySectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "key_graySectionText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{GraySectionCell.class}, null, null, null, "graySection"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateUserCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "groupcreate_sectionText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateUserCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "checkbox"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateUserCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "checkboxDisabled"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{GroupCreateUserCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "checkboxCheck"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{GroupCreateUserCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{GroupCreateUserCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{GroupCreateUserCell.class}, null, Theme.avatarDrawables, null, "avatar_text"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundRed"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundOrange"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundViolet"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundGreen"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundCyan"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundBlue"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundPink"));
        arrayList.add(new ThemeDescription(this.spansContainer, 0, new Class[]{GroupCreateSpan.class}, null, null, null, "groupcreate_spanBackground"));
        arrayList.add(new ThemeDescription(this.spansContainer, 0, new Class[]{GroupCreateSpan.class}, null, null, null, "groupcreate_spanText"));
        arrayList.add(new ThemeDescription(this.spansContainer, 0, new Class[]{GroupCreateSpan.class}, null, null, null, "groupcreate_spanDelete"));
        arrayList.add(new ThemeDescription(this.spansContainer, 0, new Class[]{GroupCreateSpan.class}, null, null, null, "avatar_backgroundBlue"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$3() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof GroupCreateUserCell) {
                    ((GroupCreateUserCell) childAt).update(0);
                }
            }
        }
    }
}
