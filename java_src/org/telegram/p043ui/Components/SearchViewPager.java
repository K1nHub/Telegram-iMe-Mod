package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p023ui.dialog.ForwardCloudBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BackDrawable;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.MenuDrawable;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Adapters.DialogsSearchAdapter;
import org.telegram.p043ui.Adapters.FiltersView;
import org.telegram.p043ui.Cells.ContextLinkCell;
import org.telegram.p043ui.Cells.DialogCell;
import org.telegram.p043ui.Cells.HashtagSearchCell;
import org.telegram.p043ui.Cells.ProfileSearchCell;
import org.telegram.p043ui.Cells.SharedAudioCell;
import org.telegram.p043ui.Cells.SharedDocumentCell;
import org.telegram.p043ui.Cells.SharedLinkCell;
import org.telegram.p043ui.Cells.SharedPhotoVideoCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p043ui.Components.ViewPagerFixed;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.p043ui.FilteredSearchView;
import org.telegram.p043ui.TopicsFragment;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.SearchViewPager */
/* loaded from: classes6.dex */
public class SearchViewPager extends ViewPagerFixed implements FilteredSearchView.UiCallback {
    private ActionBarMenu actionMode;
    private boolean attached;
    ChatPreviewDelegate chatPreviewDelegate;
    int currentAccount;
    private ArrayList<FiltersView.MediaFilterData> currentSearchFilters;
    private ActionBarMenuItem deleteItem;
    public DialogsSearchAdapter dialogsSearchAdapter;
    private SearchDownloadsContainer downloadsContainer;
    public StickerEmptyView emptyView;
    private FilteredSearchView.Delegate filteredSearchViewDelegate;
    private final int folderId;
    private ActionBarMenuItem forwardItem;
    private ActionBarMenuItem forwardToCloudItem;
    SizeNotifierFrameLayout fragmentView;
    private ActionBarMenuItem gotoItem;
    private boolean isActionModeShowed;
    private DefaultItemAnimator itemAnimator;
    private RecyclerItemsEnterAnimator itemsEnterAnimator;
    private int keyboardSize;
    private boolean lastSearchScrolledToTop;
    String lastSearchString;
    private FilteredSearchView noMediaFiltersSearchView;
    BaseFragment parent;
    public FrameLayout searchContainer;
    private LinearLayoutManager searchLayoutManager;
    public RecyclerListView searchListView;
    private HashMap<FilteredSearchView.MessageHashId, MessageObject> selectedFiles;
    private NumberTextView selectedMessagesCountTextView;
    private boolean showOnlyDialogsAdapter;
    private ActionBarMenuItem speedItem;
    protected final ViewPagerAdapter viewPagerAdapter;

    /* renamed from: org.telegram.ui.Components.SearchViewPager$ChatPreviewDelegate */
    /* loaded from: classes6.dex */
    public interface ChatPreviewDelegate {
        void finish();

        void move(float f);

        void startChatPreview(RecyclerListView recyclerListView, DialogCell dialogCell);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$showActionMode$1(View view, MotionEvent motionEvent) {
        return true;
    }

    protected boolean includeDownloads() {
        return true;
    }

    private void forwardCloud() {
        ForwardCloudBottomSheet.Delegate delegate = new ForwardCloudBottomSheet.Delegate() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.p023ui.dialog.ForwardCloudBottomSheet.Delegate
            public final void didSelectCloudDialog(long j) {
                SearchViewPager.this.lambda$forwardCloud$0(j);
            }

            @Override // com.iMe.fork.p023ui.dialog.ForwardCloudBottomSheet.Delegate
            public /* synthetic */ void onAlbumCreatorOpened() {
                ForwardCloudBottomSheet.Delegate.CC.$default$onAlbumCreatorOpened(this);
            }
        };
        if (SharedConfig.isCloudAlbumsEnabled) {
            this.parent.showDialog(new ForwardCloudBottomSheet(this.parent, delegate));
        } else {
            delegate.didSelectCloudDialog(AccountInstance.getInstance(this.currentAccount).getUserConfig().getClientUserId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$forwardCloud$0(long j) {
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        for (FilteredSearchView.MessageHashId messageHashId : this.selectedFiles.keySet()) {
            arrayList.add(this.selectedFiles.get(messageHashId));
        }
        AccountInstance.getInstance(this.currentAccount).getSendMessagesHelper().sendMessage(arrayList, j, true, false, true, 0, null, null, true);
        showActionMode(false);
    }

    public SearchViewPager(Context context, final DialogsActivity dialogsActivity, int i, int i2, int i3, ChatPreviewDelegate chatPreviewDelegate) {
        super(context);
        this.selectedFiles = new HashMap<>();
        this.currentSearchFilters = new ArrayList<>();
        this.currentAccount = UserConfig.selectedAccount;
        this.currentAccount = dialogsActivity.getCurrentAccount();
        this.folderId = i3;
        this.parent = dialogsActivity;
        this.chatPreviewDelegate = chatPreviewDelegate;
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        this.itemAnimator = defaultItemAnimator;
        defaultItemAnimator.setAddDuration(150L);
        this.itemAnimator.setMoveDuration(350L);
        this.itemAnimator.setChangeDuration(0L);
        this.itemAnimator.setRemoveDuration(0L);
        this.itemAnimator.setMoveInterpolator(new OvershootInterpolator(1.1f));
        this.itemAnimator.setTranslationInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.dialogsSearchAdapter = new DialogsSearchAdapter(context, dialogsActivity, i, i2, this.itemAnimator, dialogsActivity.getAllowGlobalSearch(), null, this.currentAccount) { // from class: org.telegram.ui.Components.SearchViewPager.1
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void notifyDataSetChanged() {
                RecyclerListView recyclerListView;
                int currentItemCount = getCurrentItemCount();
                super.notifyDataSetChanged();
                if (!SearchViewPager.this.lastSearchScrolledToTop && (recyclerListView = SearchViewPager.this.searchListView) != null) {
                    recyclerListView.scrollToPosition(0);
                    SearchViewPager.this.lastSearchScrolledToTop = true;
                }
                if (getItemCount() != 0 || currentItemCount == 0 || isSearching()) {
                    return;
                }
                SearchViewPager.this.emptyView.showProgress(false, false);
            }
        };
        if (i2 == 15) {
            ArrayList<TLRPC$Dialog> dialogsArray = dialogsActivity.getDialogsArray(this.currentAccount, i2, i3, true);
            ArrayList<Long> arrayList = new ArrayList<>();
            for (int i4 = 0; i4 < dialogsArray.size(); i4++) {
                arrayList.add(Long.valueOf(dialogsArray.get(i4).f1608id));
            }
            this.dialogsSearchAdapter.setFilterDialogIds(arrayList);
        }
        this.fragmentView = (SizeNotifierFrameLayout) dialogsActivity.getFragmentView();
        BlurredRecyclerView blurredRecyclerView = new BlurredRecyclerView(context) { // from class: org.telegram.ui.Components.SearchViewPager.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.BlurredRecyclerView, org.telegram.p043ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                SearchViewPager searchViewPager = SearchViewPager.this;
                if (searchViewPager.dialogsSearchAdapter != null && searchViewPager.itemAnimator != null && SearchViewPager.this.searchLayoutManager != null && SearchViewPager.this.dialogsSearchAdapter.showMoreAnimation) {
                    canvas.save();
                    invalidate();
                    int itemCount = SearchViewPager.this.dialogsSearchAdapter.getItemCount() - 1;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= getChildCount()) {
                            break;
                        }
                        View childAt = getChildAt(i5);
                        if (getChildAdapterPosition(childAt) == itemCount) {
                            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), childAt.getBottom() + childAt.getTranslationY());
                            break;
                        }
                        i5++;
                    }
                }
                super.dispatchDraw(canvas);
                SearchViewPager searchViewPager2 = SearchViewPager.this;
                if (searchViewPager2.dialogsSearchAdapter != null && searchViewPager2.itemAnimator != null && SearchViewPager.this.searchLayoutManager != null && SearchViewPager.this.dialogsSearchAdapter.showMoreAnimation) {
                    canvas.restore();
                }
                DialogsSearchAdapter dialogsSearchAdapter = SearchViewPager.this.dialogsSearchAdapter;
                if (dialogsSearchAdapter == null || dialogsSearchAdapter.showMoreHeader == null) {
                    return;
                }
                canvas.save();
                canvas.translate(SearchViewPager.this.dialogsSearchAdapter.showMoreHeader.getLeft(), SearchViewPager.this.dialogsSearchAdapter.showMoreHeader.getTop() + SearchViewPager.this.dialogsSearchAdapter.showMoreHeader.getTranslationY());
                SearchViewPager.this.dialogsSearchAdapter.showMoreHeader.draw(canvas);
                canvas.restore();
            }
        };
        this.searchListView = blurredRecyclerView;
        blurredRecyclerView.setItemAnimator(this.itemAnimator);
        this.searchListView.setPivotY(BitmapDescriptorFactory.HUE_RED);
        this.searchListView.setAdapter(this.dialogsSearchAdapter);
        this.searchListView.setVerticalScrollBarEnabled(true);
        this.searchListView.setInstantClick(true);
        this.searchListView.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        RecyclerListView recyclerListView = this.searchListView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        this.searchLayoutManager = linearLayoutManager;
        recyclerListView.setLayoutManager(linearLayoutManager);
        this.searchListView.setAnimateEmptyView(true, 0);
        this.searchListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchViewPager.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i5) {
                if (i5 == 1) {
                    AndroidUtilities.hideKeyboard(dialogsActivity.getParentActivity().getCurrentFocus());
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i5, int i6) {
                DialogsSearchAdapter.DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate;
                int i7;
                int findFirstVisibleItemPosition = SearchViewPager.this.searchLayoutManager.findFirstVisibleItemPosition();
                int findLastVisibleItemPosition = SearchViewPager.this.searchLayoutManager.findLastVisibleItemPosition();
                int abs = Math.abs(SearchViewPager.this.searchLayoutManager.findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1;
                int itemCount = recyclerView.getAdapter().getItemCount();
                if (abs > 0 && !SearchViewPager.this.dialogsSearchAdapter.isMessagesSearchEndReached() && (findLastVisibleItemPosition == itemCount - 1 || ((dialogsSearchAdapterDelegate = SearchViewPager.this.dialogsSearchAdapter.delegate) != null && dialogsSearchAdapterDelegate.getSearchForumDialogId() != 0 && (i7 = SearchViewPager.this.dialogsSearchAdapter.localMessagesLoadingRow) >= 0 && findFirstVisibleItemPosition <= i7 && findLastVisibleItemPosition >= i7))) {
                    SearchViewPager.this.dialogsSearchAdapter.loadMoreSearchMessages();
                }
                SearchViewPager.this.fragmentView.invalidateBlur();
            }
        });
        FilteredSearchView filteredSearchView = new FilteredSearchView(this.parent);
        this.noMediaFiltersSearchView = filteredSearchView;
        filteredSearchView.setUiCallback(this);
        this.noMediaFiltersSearchView.setVisibility(8);
        this.noMediaFiltersSearchView.setChatPreviewDelegate(chatPreviewDelegate);
        this.searchContainer = new FrameLayout(context);
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        flickerLoadingView.setViewType(1);
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, flickerLoadingView, 1) { // from class: org.telegram.ui.Components.SearchViewPager.4
            @Override // org.telegram.p043ui.Components.StickerEmptyView, android.view.View
            public void setVisibility(int i5) {
                if (SearchViewPager.this.noMediaFiltersSearchView.getTag() != null) {
                    super.setVisibility(8);
                } else {
                    super.setVisibility(i5);
                }
            }
        };
        this.emptyView = stickerEmptyView;
        stickerEmptyView.title.setText(LocaleController.getString("NoResult", C3632R.string.NoResult));
        this.emptyView.subtitle.setVisibility(8);
        this.emptyView.setVisibility(8);
        this.emptyView.addView(flickerLoadingView, 0);
        this.emptyView.showProgress(true, false);
        this.searchContainer.addView(this.emptyView);
        this.searchContainer.addView(this.searchListView);
        this.searchContainer.addView(this.noMediaFiltersSearchView);
        this.searchListView.setEmptyView(this.emptyView);
        this.searchListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchViewPager.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i5, int i6) {
                super.onScrolled(recyclerView, i5, i6);
                SearchViewPager.this.fragmentView.invalidateBlur();
            }
        });
        this.itemsEnterAnimator = new RecyclerItemsEnterAnimator(this.searchListView, true);
        ViewPagerAdapter viewPagerAdapter = new ViewPagerAdapter();
        this.viewPagerAdapter = viewPagerAdapter;
        setAdapter(viewPagerAdapter);
    }

    public ActionBarMenu getActionMode() {
        return this.actionMode;
    }

    public ActionBarMenuItem getSpeedItem() {
        return this.speedItem;
    }

    public void onTextChanged(String str) {
        View currentView = getCurrentView();
        boolean z = TextUtils.isEmpty(this.lastSearchString) ? true : !this.attached;
        this.lastSearchString = str;
        search(currentView, getCurrentPosition(), str, z);
    }

    public void updateTabs() {
        this.viewPagerAdapter.updateItems();
        fillTabs(false);
        ViewPagerFixed.TabsView tabsView = this.tabsView;
        if (tabsView != null) {
            tabsView.finishAddingTabs();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void search(View view, int i, String str, boolean z) {
        boolean z2;
        DialogsSearchAdapter.DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.dialogsSearchAdapter.delegate;
        long searchForumDialogId = dialogsSearchAdapterDelegate != null ? dialogsSearchAdapterDelegate.getSearchForumDialogId() : 0L;
        long j = i == 0 ? 0L : searchForumDialogId;
        int i2 = 0;
        long j2 = 0;
        long j3 = 0;
        for (int i3 = 0; i3 < this.currentSearchFilters.size(); i3++) {
            FiltersView.MediaFilterData mediaFilterData = this.currentSearchFilters.get(i3);
            int i4 = mediaFilterData.filterType;
            if (i4 == 4) {
                TLObject tLObject = mediaFilterData.chat;
                if (tLObject instanceof TLRPC$User) {
                    j = ((TLRPC$User) tLObject).f1751id;
                } else if (tLObject instanceof TLRPC$Chat) {
                    j = -((TLRPC$Chat) tLObject).f1602id;
                }
            } else if (i4 == 6) {
                FiltersView.DateData dateData = mediaFilterData.dateData;
                j2 = dateData.minDate;
                j3 = dateData.maxDate;
            } else if (i4 == 7) {
                i2 = 1;
            }
        }
        if (view == this.searchContainer) {
            if ((j == 0 && j2 == 0 && j3 == 0) || searchForumDialogId != 0) {
                this.lastSearchScrolledToTop = false;
                this.dialogsSearchAdapter.searchDialogs(str, i2);
                this.dialogsSearchAdapter.setFiltersDelegate(this.filteredSearchViewDelegate, false);
                this.noMediaFiltersSearchView.animate().setListener(null).cancel();
                this.noMediaFiltersSearchView.setDelegate(null, false);
                if (z) {
                    this.emptyView.showProgress(!this.dialogsSearchAdapter.isSearching(), false);
                    this.emptyView.showProgress(this.dialogsSearchAdapter.isSearching(), false);
                } else if (!this.dialogsSearchAdapter.hasRecentSearch()) {
                    this.emptyView.showProgress(this.dialogsSearchAdapter.isSearching(), true);
                }
                if (z) {
                    this.noMediaFiltersSearchView.setVisibility(8);
                } else if (this.noMediaFiltersSearchView.getVisibility() != 8) {
                    this.noMediaFiltersSearchView.animate().alpha(BitmapDescriptorFactory.HUE_RED).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SearchViewPager.6
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            SearchViewPager.this.noMediaFiltersSearchView.setVisibility(8);
                        }
                    }).setDuration(150L).start();
                }
                this.noMediaFiltersSearchView.setTag(null);
            } else {
                boolean z3 = true;
                this.noMediaFiltersSearchView.setTag(1);
                this.noMediaFiltersSearchView.setDelegate(this.filteredSearchViewDelegate, false);
                this.noMediaFiltersSearchView.animate().setListener(null).cancel();
                if (z) {
                    this.noMediaFiltersSearchView.setVisibility(0);
                    this.noMediaFiltersSearchView.setAlpha(1.0f);
                    z2 = z;
                } else {
                    if (this.noMediaFiltersSearchView.getVisibility() != 0) {
                        this.noMediaFiltersSearchView.setVisibility(0);
                        this.noMediaFiltersSearchView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    } else {
                        z3 = z;
                    }
                    this.noMediaFiltersSearchView.animate().alpha(1.0f).setDuration(150L).start();
                    z2 = z3;
                }
                this.noMediaFiltersSearchView.search(j, j2, j3, null, i2, str, z2);
                this.emptyView.setVisibility(8);
            }
            this.emptyView.setKeyboardHeight(this.keyboardSize, false);
            this.noMediaFiltersSearchView.setKeyboardHeight(this.keyboardSize, false);
            return;
        }
        if (view instanceof FilteredSearchView) {
            FilteredSearchView filteredSearchView = (FilteredSearchView) view;
            filteredSearchView.setUseFromUserAsAvatar(searchForumDialogId != 0);
            filteredSearchView.setKeyboardHeight(this.keyboardSize, false);
            filteredSearchView.search(j, j2, j3, FiltersView.filters[this.viewPagerAdapter.items.get(i).filterIndex], i2, str, z);
        } else if (view instanceof SearchDownloadsContainer) {
            SearchDownloadsContainer searchDownloadsContainer = (SearchDownloadsContainer) view;
            searchDownloadsContainer.setKeyboardHeight(this.keyboardSize, false);
            searchDownloadsContainer.search(str);
        }
    }

    public SearchDownloadsContainer getDownloadsContainer() {
        return this.downloadsContainer;
    }

    public void onResume() {
        DialogsSearchAdapter dialogsSearchAdapter = this.dialogsSearchAdapter;
        if (dialogsSearchAdapter != null) {
            dialogsSearchAdapter.notifyDataSetChanged();
        }
    }

    public void removeSearchFilter(FiltersView.MediaFilterData mediaFilterData) {
        this.currentSearchFilters.remove(mediaFilterData);
    }

    public ArrayList<FiltersView.MediaFilterData> getCurrentSearchFilters() {
        return this.currentSearchFilters;
    }

    public void clear() {
        this.currentSearchFilters.clear();
    }

    public void setFilteredSearchViewDelegate(FilteredSearchView.Delegate delegate) {
        this.filteredSearchViewDelegate = delegate;
    }

    private void showActionMode(boolean z) {
        DialogsSearchAdapter.DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate;
        if (this.isActionModeShowed == z) {
            return;
        }
        if (z && this.parent.getActionBar().isActionModeShowed()) {
            return;
        }
        if (z && !this.parent.getActionBar().actionModeIsExist("search_view_pager")) {
            ActionBarMenu createActionMode = this.parent.getActionBar().createActionMode(true, "search_view_pager");
            this.actionMode = createActionMode;
            NumberTextView numberTextView = new NumberTextView(createActionMode.getContext());
            this.selectedMessagesCountTextView = numberTextView;
            numberTextView.setTextSize(18);
            this.selectedMessagesCountTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            NumberTextView numberTextView2 = this.selectedMessagesCountTextView;
            int i = Theme.key_actionBarActionModeDefaultIcon;
            numberTextView2.setTextColor(Theme.getColor(i));
            this.actionMode.addView(this.selectedMessagesCountTextView, LayoutHelper.createLinear(0, -1, 1.0f, 72, 0, 0, 0));
            this.selectedMessagesCountTextView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda2
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean lambda$showActionMode$1;
                    lambda$showActionMode$1 = SearchViewPager.lambda$showActionMode$1(view, motionEvent);
                    return lambda$showActionMode$1;
                }
            });
            ActionBarMenuItem addItemWithWidth = this.actionMode.addItemWithWidth(203, C3632R.C3634drawable.avd_speed, AndroidUtilities.m107dp(54), LocaleController.getString("AccDescrPremiumSpeed", C3632R.string.AccDescrPremiumSpeed));
            this.speedItem = addItemWithWidth;
            addItemWithWidth.getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.SRC_IN));
            this.gotoItem = this.actionMode.addItemWithWidth(200, C3632R.C3634drawable.msg_message, AndroidUtilities.m107dp(54), LocaleController.getString("AccDescrGoToMessage", C3632R.string.AccDescrGoToMessage));
            this.forwardToCloudItem = this.actionMode.addItemWithWidth(IdFabric$Menu.MESSAGE_SAVE_CLOUD, C3632R.C3634drawable.fork_forward_cloud, AndroidUtilities.m107dp(54));
            this.forwardItem = this.actionMode.addItemWithWidth(201, C3632R.C3634drawable.msg_forward, AndroidUtilities.m107dp(54), LocaleController.getString("Forward", C3632R.string.Forward));
            this.deleteItem = this.actionMode.addItemWithWidth(202, C3632R.C3634drawable.msg_delete, AndroidUtilities.m107dp(54), LocaleController.getString("Delete", C3632R.string.Delete));
        }
        if (this.selectedMessagesCountTextView != null) {
            DialogsSearchAdapter dialogsSearchAdapter = this.dialogsSearchAdapter;
            ((ViewGroup.MarginLayoutParams) this.selectedMessagesCountTextView.getLayoutParams()).leftMargin = AndroidUtilities.m107dp((dialogsSearchAdapter != null && (dialogsSearchAdapterDelegate = dialogsSearchAdapter.delegate) != null && (dialogsSearchAdapterDelegate.getSearchForumDialogId() > 0L ? 1 : (dialogsSearchAdapterDelegate.getSearchForumDialogId() == 0L ? 0 : -1)) != 0 ? 56 : 0) + 72);
            NumberTextView numberTextView3 = this.selectedMessagesCountTextView;
            numberTextView3.setLayoutParams(numberTextView3.getLayoutParams());
        }
        if (this.parent.getActionBar().getBackButton().getDrawable() instanceof MenuDrawable) {
            BackDrawable backDrawable = new BackDrawable(false);
            this.parent.getActionBar().setBackButtonDrawable(backDrawable);
            backDrawable.setColorFilter(null);
        }
        this.isActionModeShowed = z;
        if (z) {
            AndroidUtilities.hideKeyboard(this.parent.getParentActivity().getCurrentFocus());
            this.parent.getActionBar().showActionMode();
            this.selectedMessagesCountTextView.setNumber(this.selectedFiles.size(), false);
            this.forwardToCloudItem.setVisibility(0);
            this.speedItem.setVisibility(isSpeedItemVisible() ? 0 : 8);
            this.gotoItem.setVisibility(0);
            this.forwardItem.setVisibility(0);
            this.deleteItem.setVisibility(0);
            return;
        }
        this.parent.getActionBar().hideActionMode();
        this.selectedFiles.clear();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof FilteredSearchView) {
                ((FilteredSearchView) getChildAt(i2)).update();
            }
            if (getChildAt(i2) instanceof SearchDownloadsContainer) {
                ((SearchDownloadsContainer) getChildAt(i2)).update(true);
            }
        }
        FilteredSearchView filteredSearchView = this.noMediaFiltersSearchView;
        if (filteredSearchView != null) {
            filteredSearchView.update();
        }
        int size = this.viewsByType.size();
        for (int i3 = 0; i3 < size; i3++) {
            View valueAt = this.viewsByType.valueAt(i3);
            if (valueAt instanceof FilteredSearchView) {
                ((FilteredSearchView) valueAt).update();
            }
        }
    }

    private boolean isSpeedItemVisible() {
        if (!UserConfig.getInstance(this.currentAccount).isPremium() && !MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked()) {
            for (MessageObject messageObject : this.selectedFiles.values()) {
                if (messageObject.getDocument() != null && messageObject.getDocument().size >= 157286400) {
                    return true;
                }
            }
        }
        return false;
    }

    public void onActionBarItemClick(int i) {
        if (i == IdFabric$Menu.MESSAGE_SAVE_CLOUD) {
            forwardCloud();
        } else if (i == 202) {
            BaseFragment baseFragment = this.parent;
            if (baseFragment == null || baseFragment.getParentActivity() == null) {
                return;
            }
            final ArrayList arrayList = new ArrayList(this.selectedFiles.values());
            AlertDialog.Builder builder = new AlertDialog.Builder(this.parent.getParentActivity());
            builder.setTitle(LocaleController.formatPluralString("RemoveDocumentsTitle", this.selectedFiles.size(), new Object[0]));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("RemoveDocumentsMessage", this.selectedFiles.size(), new Object[0]))).append((CharSequence) "\n\n").append((CharSequence) LocaleController.getString("RemoveDocumentsAlertMessage", C3632R.string.RemoveDocumentsAlertMessage));
            builder.setMessage(spannableStringBuilder);
            builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                }
            });
            builder.setPositiveButton(LocaleController.getString("Delete", C3632R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    SearchViewPager.this.lambda$onActionBarItemClick$3(arrayList, dialogInterface, i2);
                }
            });
            TextView textView = (TextView) builder.show().getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        } else if (i == 203) {
            if (isSpeedItemVisible()) {
                this.parent.showDialog(new PremiumFeatureBottomSheet(this.parent, 2, true));
            }
        } else if (i == 200) {
            if (this.selectedFiles.size() != 1) {
                return;
            }
            goToMessage(this.selectedFiles.values().iterator().next());
        } else if (i == 201) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("onlySelect", true);
            bundle.putInt("dialogsType", 3);
            DialogsActivity dialogsActivity = new DialogsActivity(bundle);
            dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda5
                @Override // org.telegram.p043ui.DialogsActivity.DialogsActivityDelegate
                public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList2, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
                    boolean lambda$onActionBarItemClick$4;
                    lambda$onActionBarItemClick$4 = SearchViewPager.this.lambda$onActionBarItemClick$4(dialogsActivity2, arrayList2, charSequence, z, topicsFragment, callbacks$Callback1);
                    return lambda$onActionBarItemClick$4;
                }
            });
            this.parent.presentFragment(dialogsActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActionBarItemClick$3(ArrayList arrayList, DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.parent.getDownloadController().deleteRecentFiles(arrayList);
        hideActionMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onActionBarItemClick$4(DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
        ArrayList<MessageObject> arrayList2 = new ArrayList<>();
        for (FilteredSearchView.MessageHashId messageHashId : this.selectedFiles.keySet()) {
            arrayList2.add(this.selectedFiles.get(messageHashId));
        }
        if (callbacks$Callback1 != null) {
            callbacks$Callback1.invoke(arrayList2);
            return true;
        }
        this.selectedFiles.clear();
        showActionMode(false);
        if (arrayList.size() > 1 || ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId == AccountInstance.getInstance(this.currentAccount).getUserConfig().getClientUserId() || charSequence != null || dialogsActivity.isInMultiSelect()) {
            dialogsActivity.filterSelectedForwardingMessages(arrayList2);
            for (int i = 0; i < arrayList.size(); i++) {
                long j = ((MessagesStorage.TopicKey) arrayList.get(i)).dialogId;
                if (charSequence != null) {
                    AccountInstance.getInstance(this.currentAccount).getSendMessagesHelper().sendMessage(SendMessagesHelper.SendMessageParams.m94of(charSequence.toString(), j, null, null, null, true, null, null, null, dialogsActivity.notify, dialogsActivity.scheduleDate, null, false, null));
                }
                AccountInstance.getInstance(this.currentAccount).getSendMessagesHelper().sendMessage(arrayList2, j, false, false, dialogsActivity.notify, dialogsActivity.scheduleDate, null, dialogsActivity.getForwardingParams(), true);
            }
            dialogsActivity.finishFragment();
        } else {
            long j2 = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
            Bundle bundle = new Bundle();
            bundle.putBoolean("scrollToTopOnResume", true);
            if (DialogObject.isEncryptedDialog(j2)) {
                bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j2));
            } else {
                if (DialogObject.isUserDialog(j2)) {
                    bundle.putLong("user_id", j2);
                } else {
                    bundle.putLong("chat_id", -j2);
                }
                if (!AccountInstance.getInstance(this.currentAccount).getMessagesController().checkCanOpenChat(bundle, dialogsActivity)) {
                    return true;
                }
            }
            ChatActivity chatActivity = new ChatActivity(bundle);
            dialogsActivity.presentFragment(chatActivity, true);
            chatActivity.showFieldPanelForForward(true, arrayList2);
        }
        return true;
    }

    @Override // org.telegram.p043ui.FilteredSearchView.UiCallback
    public void goToMessage(MessageObject messageObject) {
        Bundle bundle = new Bundle();
        long dialogId = messageObject.getDialogId();
        if (DialogObject.isEncryptedDialog(dialogId)) {
            bundle.putInt("enc_id", DialogObject.getEncryptedChatId(dialogId));
        } else if (DialogObject.isUserDialog(dialogId)) {
            bundle.putLong("user_id", dialogId);
        } else {
            TLRPC$Chat chat = AccountInstance.getInstance(this.currentAccount).getMessagesController().getChat(Long.valueOf(-dialogId));
            if (chat != null && chat.migrated_to != null) {
                bundle.putLong("migrated_to", dialogId);
                dialogId = -chat.migrated_to.channel_id;
            }
            bundle.putLong("chat_id", -dialogId);
        }
        bundle.putInt("message_id", messageObject.getId());
        this.parent.presentFragment(new ChatActivity(bundle));
        showActionMode(false);
    }

    public int getFolderId() {
        return this.folderId;
    }

    @Override // org.telegram.p043ui.FilteredSearchView.UiCallback
    public boolean actionModeShowing() {
        return this.isActionModeShowed;
    }

    public void hideActionMode() {
        showActionMode(false);
    }

    @Override // org.telegram.p043ui.FilteredSearchView.UiCallback
    public void toggleItemSelection(MessageObject messageObject, View view, int i) {
        boolean z;
        FilteredSearchView.MessageHashId messageHashId = new FilteredSearchView.MessageHashId(messageObject.getId(), messageObject.getDialogId());
        if (this.selectedFiles.containsKey(messageHashId)) {
            this.selectedFiles.remove(messageHashId);
        } else if (this.selectedFiles.size() >= 100) {
            return;
        } else {
            this.selectedFiles.put(messageHashId, messageObject);
        }
        if (this.selectedFiles.size() == 0) {
            showActionMode(false);
        } else {
            this.selectedMessagesCountTextView.setNumber(this.selectedFiles.size(), true);
            ActionBarMenuItem actionBarMenuItem = this.gotoItem;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.setVisibility(this.selectedFiles.size() == 1 ? 0 : 8);
            }
            if (this.speedItem != null) {
                boolean isSpeedItemVisible = isSpeedItemVisible();
                int i2 = isSpeedItemVisible ? 0 : 8;
                if (this.speedItem.getVisibility() != i2) {
                    this.speedItem.setVisibility(i2);
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 21) {
                        AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.speedItem.getIconView().getDrawable();
                        animatedVectorDrawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarActionModeDefaultIcon), PorterDuff.Mode.SRC_IN));
                        if (isSpeedItemVisible) {
                            animatedVectorDrawable.start();
                        } else if (i3 >= 23) {
                            animatedVectorDrawable.reset();
                        } else {
                            animatedVectorDrawable.setVisible(false, true);
                        }
                    }
                }
            }
            if (this.deleteItem != null) {
                Iterator<FilteredSearchView.MessageHashId> it = this.selectedFiles.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    if (!this.selectedFiles.get(it.next()).isDownloadingFile) {
                        z = false;
                        break;
                    }
                }
                this.deleteItem.setVisibility(z ? 0 : 8);
            }
        }
        if (view instanceof SharedDocumentCell) {
            ((SharedDocumentCell) view).setChecked(this.selectedFiles.containsKey(messageHashId), true);
        } else if (view instanceof SharedPhotoVideoCell) {
            ((SharedPhotoVideoCell) view).setChecked(i, this.selectedFiles.containsKey(messageHashId), true);
        } else if (view instanceof SharedLinkCell) {
            ((SharedLinkCell) view).setChecked(this.selectedFiles.containsKey(messageHashId), true);
        } else if (view instanceof SharedAudioCell) {
            ((SharedAudioCell) view).setChecked(this.selectedFiles.containsKey(messageHashId), true);
        } else if (view instanceof ContextLinkCell) {
            ((ContextLinkCell) view).setChecked(this.selectedFiles.containsKey(messageHashId), true);
        } else if (view instanceof DialogCell) {
            ((DialogCell) view).setChecked(this.selectedFiles.containsKey(messageHashId), true);
        }
    }

    @Override // org.telegram.p043ui.FilteredSearchView.UiCallback
    public boolean isSelected(FilteredSearchView.MessageHashId messageHashId) {
        return this.selectedFiles.containsKey(messageHashId);
    }

    @Override // org.telegram.p043ui.FilteredSearchView.UiCallback
    public void showActionMode() {
        showActionMode(true);
    }

    @Override // org.telegram.p043ui.Components.ViewPagerFixed
    protected void onItemSelected(View view, View view2, int i, int i2) {
        boolean z = true;
        if (i == 0) {
            if (this.noMediaFiltersSearchView.getVisibility() == 0) {
                this.noMediaFiltersSearchView.setDelegate(this.filteredSearchViewDelegate, false);
                this.dialogsSearchAdapter.setFiltersDelegate(null, false);
            } else {
                this.noMediaFiltersSearchView.setDelegate(null, false);
                this.dialogsSearchAdapter.setFiltersDelegate(this.filteredSearchViewDelegate, true);
            }
        } else if (view instanceof FilteredSearchView) {
            if (i2 != 0 || this.noMediaFiltersSearchView.getVisibility() == 0) {
                z = false;
            }
            ((FilteredSearchView) view).setDelegate(this.filteredSearchViewDelegate, z);
        }
        if (view2 instanceof FilteredSearchView) {
            ((FilteredSearchView) view2).setDelegate(null, false);
            return;
        }
        this.dialogsSearchAdapter.setFiltersDelegate(null, false);
        this.noMediaFiltersSearchView.setDelegate(null, false);
    }

    public void getThemeDescriptions(ArrayList<ThemeDescription> arrayList) {
        for (int i = 0; i < this.searchListView.getChildCount(); i++) {
            View childAt = this.searchListView.getChildAt(i);
            if ((childAt instanceof ProfileSearchCell) || (childAt instanceof DialogCell) || (childAt instanceof HashtagSearchCell)) {
                arrayList.add(new ThemeDescription(childAt, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundWhite));
            }
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof FilteredSearchView) {
                arrayList.addAll(((FilteredSearchView) getChildAt(i2)).getThemeDescriptions());
            }
        }
        int size = this.viewsByType.size();
        for (int i3 = 0; i3 < size; i3++) {
            View valueAt = this.viewsByType.valueAt(i3);
            if (valueAt instanceof FilteredSearchView) {
                arrayList.addAll(((FilteredSearchView) valueAt).getThemeDescriptions());
            }
        }
        FilteredSearchView filteredSearchView = this.noMediaFiltersSearchView;
        if (filteredSearchView != null) {
            arrayList.addAll(filteredSearchView.getThemeDescriptions());
        }
        arrayList.add(new ThemeDescription(this.emptyView.title, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.emptyView.subtitle, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteGrayText));
        arrayList.addAll(SimpleThemeDescription.createThemeDescriptions(new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                SearchViewPager.this.lambda$getThemeDescriptions$5();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_actionBarActionModeDefaultIcon));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$5() {
        NumberTextView numberTextView = this.selectedMessagesCountTextView;
        if (numberTextView != null) {
            numberTextView.setTextColor(Theme.getColor(Theme.key_actionBarActionModeDefaultIcon));
        }
    }

    public void updateColors() {
        for (int i = 0; i < getChildCount(); i++) {
            if (getChildAt(i) instanceof FilteredSearchView) {
                RecyclerListView recyclerListView = ((FilteredSearchView) getChildAt(i)).recyclerListView;
                int childCount = recyclerListView.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = recyclerListView.getChildAt(i2);
                    if (childAt instanceof DialogCell) {
                        ((DialogCell) childAt).update(0);
                    }
                }
            }
        }
        int size = this.viewsByType.size();
        for (int i3 = 0; i3 < size; i3++) {
            View valueAt = this.viewsByType.valueAt(i3);
            if (valueAt instanceof FilteredSearchView) {
                RecyclerListView recyclerListView2 = ((FilteredSearchView) valueAt).recyclerListView;
                int childCount2 = recyclerListView2.getChildCount();
                for (int i4 = 0; i4 < childCount2; i4++) {
                    View childAt2 = recyclerListView2.getChildAt(i4);
                    if (childAt2 instanceof DialogCell) {
                        ((DialogCell) childAt2).update(0);
                    }
                }
            }
        }
        FilteredSearchView filteredSearchView = this.noMediaFiltersSearchView;
        if (filteredSearchView != null) {
            RecyclerListView recyclerListView3 = filteredSearchView.recyclerListView;
            int childCount3 = recyclerListView3.getChildCount();
            for (int i5 = 0; i5 < childCount3; i5++) {
                View childAt3 = recyclerListView3.getChildAt(i5);
                if (childAt3 instanceof DialogCell) {
                    ((DialogCell) childAt3).update(0);
                }
            }
        }
    }

    public void reset() {
        setPosition(0);
        if (this.dialogsSearchAdapter.getItemCount() > 0) {
            this.searchLayoutManager.scrollToPositionWithOffset(0, 0);
        }
        this.viewsByType.clear();
    }

    @Override // org.telegram.p043ui.Components.ViewPagerFixed
    public void setPosition(int i) {
        if (i < 0) {
            return;
        }
        super.setPosition(i);
        this.viewsByType.clear();
        ViewPagerFixed.TabsView tabsView = this.tabsView;
        if (tabsView != null) {
            tabsView.selectTabWithId(i, 1.0f);
        }
        invalidate();
    }

    public void setKeyboardHeight(int i) {
        this.keyboardSize = i;
        boolean z = getVisibility() == 0 && getAlpha() > BitmapDescriptorFactory.HUE_RED;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof FilteredSearchView) {
                ((FilteredSearchView) getChildAt(i2)).setKeyboardHeight(i, z);
            } else if (getChildAt(i2) == this.searchContainer) {
                this.emptyView.setKeyboardHeight(i, z);
                this.noMediaFiltersSearchView.setKeyboardHeight(i, z);
            } else if (getChildAt(i2) instanceof SearchDownloadsContainer) {
                ((SearchDownloadsContainer) getChildAt(i2)).setKeyboardHeight(i, z);
            }
        }
    }

    public void showOnlyDialogsAdapter(boolean z) {
        this.showOnlyDialogsAdapter = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x007c, code lost:
        if (org.telegram.messenger.ChatObject.isChannel(r6, r10.currentAccount) != false) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void messagesDeleted(long r11, java.util.ArrayList<java.lang.Integer> r13) {
        /*
            r10 = this;
            android.util.SparseArray<android.view.View> r0 = r10.viewsByType
            int r0 = r0.size()
            r1 = 0
            r2 = r1
        L8:
            if (r2 >= r0) goto L1e
            android.util.SparseArray<android.view.View> r3 = r10.viewsByType
            java.lang.Object r3 = r3.valueAt(r2)
            android.view.View r3 = (android.view.View) r3
            boolean r4 = r3 instanceof org.telegram.p043ui.FilteredSearchView
            if (r4 == 0) goto L1b
            org.telegram.ui.FilteredSearchView r3 = (org.telegram.p043ui.FilteredSearchView) r3
            r3.messagesDeleted(r11, r13)
        L1b:
            int r2 = r2 + 1
            goto L8
        L1e:
            r0 = r1
        L1f:
            int r2 = r10.getChildCount()
            if (r0 >= r2) goto L39
            android.view.View r2 = r10.getChildAt(r0)
            boolean r2 = r2 instanceof org.telegram.p043ui.FilteredSearchView
            if (r2 == 0) goto L36
            android.view.View r2 = r10.getChildAt(r0)
            org.telegram.ui.FilteredSearchView r2 = (org.telegram.p043ui.FilteredSearchView) r2
            r2.messagesDeleted(r11, r13)
        L36:
            int r0 = r0 + 1
            goto L1f
        L39:
            org.telegram.ui.FilteredSearchView r0 = r10.noMediaFiltersSearchView
            r0.messagesDeleted(r11, r13)
            java.util.HashMap<org.telegram.ui.FilteredSearchView$MessageHashId, org.telegram.messenger.MessageObject> r0 = r10.selectedFiles
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto Ldd
            r0 = 0
            java.util.ArrayList r2 = new java.util.ArrayList
            java.util.HashMap<org.telegram.ui.FilteredSearchView$MessageHashId, org.telegram.messenger.MessageObject> r3 = r10.selectedFiles
            java.util.Set r3 = r3.keySet()
            r2.<init>(r3)
            r3 = r1
        L53:
            int r4 = r2.size()
            if (r3 >= r4) goto Laa
            java.lang.Object r4 = r2.get(r3)
            org.telegram.ui.FilteredSearchView$MessageHashId r4 = (org.telegram.p043ui.FilteredSearchView.MessageHashId) r4
            java.util.HashMap<org.telegram.ui.FilteredSearchView$MessageHashId, org.telegram.messenger.MessageObject> r5 = r10.selectedFiles
            java.lang.Object r5 = r5.get(r4)
            org.telegram.messenger.MessageObject r5 = (org.telegram.messenger.MessageObject) r5
            if (r5 == 0) goto La7
            long r6 = r5.getDialogId()
            r8 = 0
            int r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r8 >= 0) goto L7f
            long r6 = -r6
            int r6 = (int) r6
            long r7 = (long) r6
            int r9 = r10.currentAccount
            boolean r7 = org.telegram.messenger.ChatObject.isChannel(r7, r9)
            if (r7 == 0) goto L7f
            goto L80
        L7f:
            r6 = r1
        L80:
            long r6 = (long) r6
            int r6 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
            if (r6 != 0) goto La7
            r6 = r1
        L86:
            int r7 = r13.size()
            if (r6 >= r7) goto La7
            int r7 = r5.getId()
            java.lang.Object r8 = r13.get(r6)
            java.lang.Integer r8 = (java.lang.Integer) r8
            int r8 = r8.intValue()
            if (r7 != r8) goto La4
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r0.add(r4)
        La4:
            int r6 = r6 + 1
            goto L86
        La7:
            int r3 = r3 + 1
            goto L53
        Laa:
            if (r0 == 0) goto Ldd
            int r11 = r0.size()
            r12 = r1
        Lb1:
            if (r12 >= r11) goto Lbf
            java.util.HashMap<org.telegram.ui.FilteredSearchView$MessageHashId, org.telegram.messenger.MessageObject> r13 = r10.selectedFiles
            java.lang.Object r2 = r0.get(r12)
            r13.remove(r2)
            int r12 = r12 + 1
            goto Lb1
        Lbf:
            org.telegram.ui.Components.NumberTextView r11 = r10.selectedMessagesCountTextView
            java.util.HashMap<org.telegram.ui.FilteredSearchView$MessageHashId, org.telegram.messenger.MessageObject> r12 = r10.selectedFiles
            int r12 = r12.size()
            r13 = 1
            r11.setNumber(r12, r13)
            org.telegram.ui.ActionBar.ActionBarMenuItem r11 = r10.gotoItem
            if (r11 == 0) goto Ldd
            java.util.HashMap<org.telegram.ui.FilteredSearchView$MessageHashId, org.telegram.messenger.MessageObject> r12 = r10.selectedFiles
            int r12 = r12.size()
            if (r12 != r13) goto Ld8
            goto Lda
        Ld8:
            r1 = 8
        Lda:
            r11.setVisibility(r1)
        Ldd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.SearchViewPager.messagesDeleted(long, java.util.ArrayList):void");
    }

    public void runResultsEnterAnimation() {
        this.dialogsSearchAdapter.getItemCount();
    }

    public ViewPagerFixed.TabsView getTabsView() {
        return this.tabsView;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
    }

    @Override // org.telegram.p043ui.Components.ViewPagerFixed
    protected void invalidateBlur() {
        this.fragmentView.invalidateBlur();
    }

    public void cancelEnterAnimation() {
        this.itemsEnterAnimator.cancel();
        this.searchListView.invalidate();
    }

    public void showDownloads() {
        setPosition(2);
    }

    public int getPositionForType(int i) {
        for (int i2 = 0; i2 < this.viewPagerAdapter.items.size(); i2++) {
            if (this.viewPagerAdapter.items.get(i2).type == 2 && this.viewPagerAdapter.items.get(i2).filterIndex == i) {
                return i2;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SearchViewPager$ViewPagerAdapter */
    /* loaded from: classes6.dex */
    public class ViewPagerAdapter extends ViewPagerFixed.Adapter {
        ArrayList<Item> items = new ArrayList<>();

        public ViewPagerAdapter() {
            updateItems();
        }

        public void updateItems() {
            this.items.clear();
            this.items.add(new Item(0));
            if (SearchViewPager.this.showOnlyDialogsAdapter) {
                return;
            }
            Item item = new Item(2);
            item.filterIndex = 0;
            this.items.add(item);
            if (SearchViewPager.this.includeDownloads()) {
                this.items.add(new Item(1));
            }
            Item item2 = new Item(2);
            item2.filterIndex = 1;
            this.items.add(item2);
            Item item3 = new Item(2);
            item3.filterIndex = 2;
            this.items.add(item3);
            Item item4 = new Item(2);
            item4.filterIndex = 3;
            this.items.add(item4);
            Item item5 = new Item(2);
            item5.filterIndex = 4;
            this.items.add(item5);
        }

        @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
        public String getItemTitle(int i) {
            if (this.items.get(i).type == 0) {
                return LocaleController.getString("SearchAllChatsShort", C3632R.string.SearchAllChatsShort);
            }
            if (this.items.get(i).type == 1) {
                return LocaleController.getString("DownloadsTabs", C3632R.string.DownloadsTabs);
            }
            return FiltersView.filters[this.items.get(i).filterIndex].getTitle();
        }

        @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
        public int getItemCount() {
            return this.items.size();
        }

        @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
        public View createView(int i) {
            if (i == 1) {
                return SearchViewPager.this.searchContainer;
            }
            if (i == 2) {
                SearchViewPager searchViewPager = SearchViewPager.this;
                SearchViewPager searchViewPager2 = SearchViewPager.this;
                searchViewPager.downloadsContainer = new SearchDownloadsContainer(searchViewPager2.parent, searchViewPager2.currentAccount);
                SearchViewPager.this.downloadsContainer.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchViewPager.ViewPagerAdapter.1
                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                        super.onScrolled(recyclerView, i2, i3);
                        SearchViewPager.this.fragmentView.invalidateBlur();
                    }
                });
                SearchViewPager.this.downloadsContainer.setUiCallback(SearchViewPager.this);
                return SearchViewPager.this.downloadsContainer;
            }
            FilteredSearchView filteredSearchView = new FilteredSearchView(SearchViewPager.this.parent);
            filteredSearchView.setChatPreviewDelegate(SearchViewPager.this.chatPreviewDelegate);
            filteredSearchView.setUiCallback(SearchViewPager.this);
            filteredSearchView.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchViewPager.ViewPagerAdapter.2
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                    super.onScrolled(recyclerView, i2, i3);
                    SearchViewPager.this.fragmentView.invalidateBlur();
                }
            });
            return filteredSearchView;
        }

        @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
        public int getItemViewType(int i) {
            if (this.items.get(i).type == 0) {
                return 1;
            }
            if (this.items.get(i).type == 1) {
                return 2;
            }
            return this.items.get(i).type + i;
        }

        @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
        public void bindView(View view, int i, int i2) {
            SearchViewPager searchViewPager = SearchViewPager.this;
            searchViewPager.search(view, i, searchViewPager.lastSearchString, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Components.SearchViewPager$ViewPagerAdapter$Item */
        /* loaded from: classes6.dex */
        public class Item {
            int filterIndex;
            private final int type;

            private Item(ViewPagerAdapter viewPagerAdapter, int i) {
                this.type = i;
            }
        }
    }
}
