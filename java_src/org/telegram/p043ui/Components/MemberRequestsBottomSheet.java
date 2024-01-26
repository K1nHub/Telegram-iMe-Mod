package org.telegram.p043ui.Components;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Delegates.MemberRequestsDelegate;
import org.telegram.p043ui.LaunchActivity;
/* renamed from: org.telegram.ui.Components.MemberRequestsBottomSheet */
/* loaded from: classes6.dex */
public class MemberRequestsBottomSheet extends UsersAlertBase {
    private final FlickerLoadingView currentLoadingView;
    private final MemberRequestsDelegate delegate;
    private boolean enterEventSent;
    private final StickerEmptyView membersEmptyView;
    private final StickerEmptyView membersSearchEmptyView;
    private final int touchSlop;
    private float yOffset;

    public MemberRequestsBottomSheet(BaseFragment baseFragment, long j) {
        super(baseFragment.getParentActivity(), false, baseFragment.getCurrentAccount(), baseFragment.getResourceProvider());
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.needSnapToTop = false;
        this.isEmptyViewVisible = false;
        MemberRequestsDelegate memberRequestsDelegate = new MemberRequestsDelegate(baseFragment, this.container, j, false) { // from class: org.telegram.ui.Components.MemberRequestsBottomSheet.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Delegates.MemberRequestsDelegate
            public void onImportersChanged(String str, boolean z, boolean z2) {
                if (!hasAllImporters()) {
                    if (MemberRequestsBottomSheet.this.membersEmptyView.getVisibility() != 4) {
                        MemberRequestsBottomSheet.this.membersEmptyView.setVisibility(4);
                    }
                } else if (z2) {
                    MemberRequestsBottomSheet.this.searchView.searchEditText.setText("");
                } else {
                    super.onImportersChanged(str, z, z2);
                }
            }
        };
        this.delegate = memberRequestsDelegate;
        memberRequestsDelegate.setShowLastItemDivider(false);
        setDimBehindAlpha(75);
        this.searchView.searchEditText.setHint(LocaleController.getString("SearchMemberRequests", C3632R.string.SearchMemberRequests));
        MemberRequestsDelegate.Adapter adapter = memberRequestsDelegate.getAdapter();
        this.listViewAdapter = adapter;
        this.searchListViewAdapter = adapter;
        this.listView.setAdapter(adapter);
        memberRequestsDelegate.setRecyclerView(this.listView);
        int indexOfChild = ((ViewGroup) this.listView.getParent()).indexOfChild(this.listView);
        FlickerLoadingView loadingView = memberRequestsDelegate.getLoadingView();
        this.currentLoadingView = loadingView;
        this.containerView.addView(loadingView, indexOfChild, LayoutHelper.createFrame(-1, -1));
        StickerEmptyView emptyView = memberRequestsDelegate.getEmptyView();
        this.membersEmptyView = emptyView;
        this.containerView.addView(emptyView, indexOfChild, LayoutHelper.createFrame(-1, -1));
        StickerEmptyView searchEmptyView = memberRequestsDelegate.getSearchEmptyView();
        this.membersSearchEmptyView = searchEmptyView;
        this.containerView.addView(searchEmptyView, indexOfChild, LayoutHelper.createFrame(-1, -1));
        memberRequestsDelegate.lambda$new$8();
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        if (this.delegate.isNeedRestoreList && this.scrollOffsetY == 0) {
            this.scrollOffsetY = AndroidUtilities.m107dp(8);
        }
        super.show();
        this.delegate.isNeedRestoreList = false;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (this.delegate.onBackPressed()) {
            super.onBackPressed();
        }
    }

    public boolean isNeedRestoreDialog() {
        return this.delegate.isNeedRestoreList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.UsersAlertBase
    public void setTranslationY(int i) {
        super.setTranslationY(i);
        this.currentLoadingView.setTranslationY(this.frameLayout.getMeasuredHeight() + i);
        float f = i;
        this.membersEmptyView.setTranslationY(f);
        this.membersSearchEmptyView.setTranslationY(f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.UsersAlertBase
    public void updateLayout() {
        if (this.listView.getChildCount() <= 0) {
            int paddingTop = this.listView.getVisibility() == 0 ? this.listView.getPaddingTop() - AndroidUtilities.m107dp(8) : 0;
            if (this.scrollOffsetY != paddingTop) {
                this.scrollOffsetY = paddingTop;
                setTranslationY(paddingTop);
                return;
            }
            return;
        }
        super.updateLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p043ui.Components.UsersAlertBase
    public void search(String str) {
        super.search(str);
        this.delegate.setQuery(str);
    }

    @Override // org.telegram.p043ui.Components.UsersAlertBase
    protected void onSearchViewTouched(MotionEvent motionEvent, final EditTextBoldCursor editTextBoldCursor) {
        if (motionEvent.getAction() == 0) {
            this.yOffset = this.scrollOffsetY;
            this.delegate.setAdapterItemsEnabled(false);
        } else if (motionEvent.getAction() == 1 && Math.abs(this.scrollOffsetY - this.yOffset) < this.touchSlop && !this.enterEventSent) {
            Activity findActivity = AndroidUtilities.findActivity(getContext());
            BaseFragment baseFragment = null;
            if (findActivity instanceof LaunchActivity) {
                LaunchActivity launchActivity = (LaunchActivity) findActivity;
                baseFragment = launchActivity.getActionBarLayout().getFragmentStack().get(launchActivity.getActionBarLayout().getFragmentStack().size() - 1);
            }
            if (baseFragment instanceof ChatActivity) {
                boolean needEnterText = ((ChatActivity) baseFragment).needEnterText();
                this.enterEventSent = true;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MemberRequestsBottomSheet$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        MemberRequestsBottomSheet.this.lambda$onSearchViewTouched$1(editTextBoldCursor);
                    }
                }, needEnterText ? 200L : 0L);
            } else {
                this.enterEventSent = true;
                setFocusable(true);
                editTextBoldCursor.requestFocus();
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MemberRequestsBottomSheet$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidUtilities.showKeyboard(EditTextBoldCursor.this);
                    }
                });
            }
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.delegate.setAdapterItemsEnabled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSearchViewTouched$1(final EditTextBoldCursor editTextBoldCursor) {
        setFocusable(true);
        editTextBoldCursor.requestFocus();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.MemberRequestsBottomSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilities.showKeyboard(EditTextBoldCursor.this);
            }
        });
    }
}
