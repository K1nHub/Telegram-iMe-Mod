package org.telegram.p043ui.Delegates;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MemberRequestsController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.AvatarPreviewPagerIndicator;
import org.telegram.p043ui.Cells.MemberRequestCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.ProfileGalleryView;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.StickerEmptyView;
import org.telegram.p043ui.Components.TypefaceSpan;
import org.telegram.p043ui.Delegates.MemberRequestsDelegate;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.ProfileActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_chatInviteImporter;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_chatInviteImporters;
import org.telegram.tgnet.TLRPC$TL_messages_hideChatJoinRequest;
import org.telegram.tgnet.TLRPC$TL_updates;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Delegates.MemberRequestsDelegate */
/* loaded from: classes6.dex */
public class MemberRequestsDelegate implements MemberRequestCell.OnClickListener {
    private final long chatId;
    private final MemberRequestsController controller;
    private final int currentAccount;
    private StickerEmptyView emptyView;
    private final BaseFragment fragment;
    private TLRPC$TL_chatInviteImporter importer;
    public final boolean isChannel;
    private boolean isDataLoaded;
    private boolean isLoading;
    public boolean isNeedRestoreList;
    private boolean isSearchExpanded;
    private final FrameLayout layoutContainer;
    private FlickerLoadingView loadingView;
    private PreviewDialog previewDialog;
    private String query;
    private RecyclerListView recyclerView;
    private FrameLayout rootLayout;
    private StickerEmptyView searchEmptyView;
    private int searchRequestId;
    private Runnable searchRunnable;
    private final boolean showSearchMenu;
    private final List<TLRPC$TL_chatInviteImporter> currentImporters = new ArrayList();
    private final LongSparseArray<TLRPC$User> users = new LongSparseArray<>();
    private final ArrayList<TLRPC$TL_chatInviteImporter> allImporters = new ArrayList<>();
    private final Adapter adapter = new Adapter();
    private boolean hasMore = true;
    private boolean isFirstLoading = true;
    private boolean isShowLastItemDivider = true;
    private final Runnable loadMembersRunnable = new Runnable() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$$ExternalSyntheticLambda3
        @Override // java.lang.Runnable
        public final void run() {
            MemberRequestsDelegate.this.lambda$new$8();
        }
    };
    private final RecyclerView.OnScrollListener listScrollListener = new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate.2
        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (!MemberRequestsDelegate.this.hasMore || MemberRequestsDelegate.this.isLoading || linearLayoutManager == null) {
                return;
            }
            if (MemberRequestsDelegate.this.adapter.getItemCount() - linearLayoutManager.findLastVisibleItemPosition() < 10) {
                AndroidUtilities.cancelRunOnUIThread(MemberRequestsDelegate.this.loadMembersRunnable);
                AndroidUtilities.runOnUIThread(MemberRequestsDelegate.this.loadMembersRunnable);
            }
        }
    };

    public MemberRequestsDelegate(BaseFragment baseFragment, FrameLayout frameLayout, long j, boolean z) {
        this.fragment = baseFragment;
        this.layoutContainer = frameLayout;
        this.chatId = j;
        int currentAccount = baseFragment.getCurrentAccount();
        this.currentAccount = currentAccount;
        this.isChannel = ChatObject.isChannelAndNotMegaGroup(j, currentAccount);
        this.showSearchMenu = z;
        this.controller = MemberRequestsController.getInstance(currentAccount);
    }

    public FrameLayout getRootLayout() {
        if (this.rootLayout == null) {
            FrameLayout frameLayout = new FrameLayout(this.fragment.getParentActivity());
            this.rootLayout = frameLayout;
            frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.fragment.getResourceProvider()));
            FlickerLoadingView loadingView = getLoadingView();
            this.loadingView = loadingView;
            this.rootLayout.addView(loadingView, -1, -1);
            StickerEmptyView searchEmptyView = getSearchEmptyView();
            this.searchEmptyView = searchEmptyView;
            this.rootLayout.addView(searchEmptyView, -1, -1);
            StickerEmptyView emptyView = getEmptyView();
            this.emptyView = emptyView;
            this.rootLayout.addView(emptyView, LayoutHelper.createFrame(-1, -1));
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.fragment.getParentActivity());
            RecyclerListView recyclerListView = new RecyclerListView(this.fragment.getParentActivity());
            this.recyclerView = recyclerListView;
            recyclerListView.setAdapter(this.adapter);
            this.recyclerView.setLayoutManager(linearLayoutManager);
            this.recyclerView.setOnItemClickListener(new MemberRequestsDelegate$$ExternalSyntheticLambda10(this));
            this.recyclerView.setOnScrollListener(this.listScrollListener);
            this.recyclerView.setSelectorDrawableColor(Theme.getColor(Theme.key_listSelector, this.fragment.getResourceProvider()));
            this.rootLayout.addView(this.recyclerView, -1, -1);
            DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
            defaultItemAnimator.setDurations(350L);
            defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            defaultItemAnimator.setDelayAnimations(false);
            defaultItemAnimator.setSupportsChangeAnimations(false);
            this.recyclerView.setItemAnimator(defaultItemAnimator);
        }
        return this.rootLayout;
    }

    public void setShowLastItemDivider(boolean z) {
        this.isShowLastItemDivider = z;
    }

    public Adapter getAdapter() {
        return this.adapter;
    }

    public FlickerLoadingView getLoadingView() {
        if (this.loadingView == null) {
            FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.fragment.getParentActivity(), this.fragment.getResourceProvider());
            this.loadingView = flickerLoadingView;
            flickerLoadingView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            if (this.isShowLastItemDivider) {
                this.loadingView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.fragment.getResourceProvider()));
            }
            this.loadingView.setColors(Theme.key_windowBackgroundWhite, Theme.key_windowBackgroundGray, -1);
            this.loadingView.setViewType(15);
            this.loadingView.setMemberRequestButton(this.isChannel);
        }
        return this.loadingView;
    }

    public StickerEmptyView getEmptyView() {
        int i;
        String str;
        int i2;
        String str2;
        if (this.emptyView == null) {
            StickerEmptyView stickerEmptyView = new StickerEmptyView(this.fragment.getParentActivity(), null, 16, this.fragment.getResourceProvider());
            this.emptyView = stickerEmptyView;
            TextView textView = stickerEmptyView.title;
            if (this.isChannel) {
                i = C3632R.string.NoSubscribeRequests;
                str = "NoSubscribeRequests";
            } else {
                i = C3632R.string.NoMemberRequests;
                str = "NoMemberRequests";
            }
            textView.setText(LocaleController.getString(str, i));
            LinkSpanDrawable.LinksTextView linksTextView = this.emptyView.subtitle;
            if (this.isChannel) {
                i2 = C3632R.string.NoSubscribeRequestsDescription;
                str2 = "NoSubscribeRequestsDescription";
            } else {
                i2 = C3632R.string.NoMemberRequestsDescription;
                str2 = "NoMemberRequestsDescription";
            }
            linksTextView.setText(LocaleController.getString(str2, i2));
            this.emptyView.setAnimateLayoutChange(true);
            this.emptyView.setVisibility(8);
        }
        return this.emptyView;
    }

    public StickerEmptyView getSearchEmptyView() {
        if (this.searchEmptyView == null) {
            StickerEmptyView stickerEmptyView = new StickerEmptyView(this.fragment.getParentActivity(), null, 1, this.fragment.getResourceProvider());
            this.searchEmptyView = stickerEmptyView;
            if (this.isShowLastItemDivider) {
                stickerEmptyView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.fragment.getResourceProvider()));
            }
            this.searchEmptyView.title.setText(LocaleController.getString("NoResult", C3632R.string.NoResult));
            this.searchEmptyView.subtitle.setText(LocaleController.getString("SearchEmptyViewFilteredSubtitle2", C3632R.string.SearchEmptyViewFilteredSubtitle2));
            this.searchEmptyView.setAnimateLayoutChange(true);
            this.searchEmptyView.setVisibility(8);
        }
        return this.searchEmptyView;
    }

    public void setRecyclerView(RecyclerListView recyclerListView) {
        this.recyclerView = recyclerListView;
        recyclerListView.setOnItemClickListener(new MemberRequestsDelegate$$ExternalSyntheticLambda10(this));
        final RecyclerView.OnScrollListener onScrollListener = recyclerListView.getOnScrollListener();
        if (onScrollListener == null) {
            recyclerListView.setOnScrollListener(this.listScrollListener);
        } else {
            recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate.1
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                    super.onScrollStateChanged(recyclerView, i);
                    onScrollListener.onScrollStateChanged(recyclerView, i);
                    MemberRequestsDelegate.this.listScrollListener.onScrollStateChanged(recyclerView, i);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                    super.onScrolled(recyclerView, i, i2);
                    onScrollListener.onScrolled(recyclerView, i, i2);
                    MemberRequestsDelegate.this.listScrollListener.onScrolled(recyclerView, i, i2);
                }
            });
        }
    }

    public void onItemClick(View view, int i) {
        if (view instanceof MemberRequestCell) {
            if (this.isSearchExpanded) {
                AndroidUtilities.hideKeyboard(this.fragment.getParentActivity().getCurrentFocus());
            }
            final MemberRequestCell memberRequestCell = (MemberRequestCell) view;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    MemberRequestsDelegate.this.lambda$onItemClick$1(memberRequestCell);
                }
            }, this.isSearchExpanded ? 100L : 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemClick$1(MemberRequestCell memberRequestCell) {
        TLRPC$TL_chatInviteImporter importer = memberRequestCell.getImporter();
        this.importer = importer;
        TLRPC$User tLRPC$User = this.users.get(importer.user_id);
        if (tLRPC$User == null) {
            return;
        }
        this.fragment.getMessagesController().putUser(tLRPC$User, false);
        Point point = AndroidUtilities.displaySize;
        if (tLRPC$User.photo == null || (point.x > point.y)) {
            this.isNeedRestoreList = true;
            this.fragment.dismissCurrentDialog();
            Bundle bundle = new Bundle();
            ProfileActivity profileActivity = new ProfileActivity(bundle);
            bundle.putLong("user_id", tLRPC$User.f1751id);
            bundle.putBoolean("removeFragmentOnChatOpen", false);
            this.fragment.presentFragment(profileActivity);
        } else if (this.previewDialog == null) {
            PreviewDialog previewDialog = new PreviewDialog(this.fragment.getParentActivity(), (RecyclerListView) memberRequestCell.getParent(), this.fragment.getResourceProvider(), this.isChannel);
            this.previewDialog = previewDialog;
            previewDialog.setImporter(this.importer, memberRequestCell.getAvatarImageView());
            this.previewDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    MemberRequestsDelegate.this.lambda$onItemClick$0(dialogInterface);
                }
            });
            this.previewDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemClick$0(DialogInterface dialogInterface) {
        this.previewDialog = null;
    }

    public boolean onBackPressed() {
        PreviewDialog previewDialog = this.previewDialog;
        if (previewDialog != null) {
            previewDialog.dismiss();
            return false;
        }
        return true;
    }

    public void setSearchExpanded(boolean z) {
        this.isSearchExpanded = z;
    }

    public void setQuery(String str) {
        if (this.searchRunnable != null) {
            Utilities.searchQueue.cancelRunnable(this.searchRunnable);
            this.searchRunnable = null;
        }
        if (this.searchRequestId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.searchRequestId, false);
            this.searchRequestId = 0;
        }
        this.query = str;
        if (this.isDataLoaded && this.allImporters.isEmpty()) {
            setViewVisible(this.loadingView, false, false);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.adapter.setItems(this.allImporters);
            setViewVisible(this.recyclerView, true, true);
            setViewVisible(this.loadingView, false, false);
            StickerEmptyView stickerEmptyView = this.searchEmptyView;
            if (stickerEmptyView != null) {
                stickerEmptyView.setVisibility(4);
            }
            if (str == null && this.showSearchMenu) {
                this.fragment.getActionBar().createMenu().getItem(0).setVisibility(this.allImporters.isEmpty() ? 8 : 0);
            }
        } else {
            this.adapter.setItems(Collections.emptyList());
            setViewVisible(this.recyclerView, false, false);
            setViewVisible(this.loadingView, true, true);
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MemberRequestsDelegate.this.lambda$new$8();
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable, 300L);
        }
        if (str != null) {
            StickerEmptyView stickerEmptyView2 = this.emptyView;
            if (stickerEmptyView2 != null) {
                stickerEmptyView2.setVisibility(4);
            }
            StickerEmptyView stickerEmptyView3 = this.searchEmptyView;
            if (stickerEmptyView3 != null) {
                stickerEmptyView3.setVisibility(4);
            }
        }
    }

    /* renamed from: loadMembers */
    public void lambda$new$8() {
        TLRPC$TL_messages_chatInviteImporters cachedImporters;
        final boolean z = true;
        if (this.isFirstLoading && (cachedImporters = this.controller.getCachedImporters(this.chatId)) != null) {
            this.isDataLoaded = true;
            onImportersLoaded(cachedImporters, null, true, true);
            z = false;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                MemberRequestsDelegate.this.lambda$loadMembers$5(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMembers$5(boolean z) {
        TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter;
        final boolean isEmpty = TextUtils.isEmpty(this.query);
        final String str = this.query;
        this.isLoading = true;
        this.isFirstLoading = false;
        if (!isEmpty || this.currentImporters.isEmpty()) {
            tLRPC$TL_chatInviteImporter = null;
        } else {
            List<TLRPC$TL_chatInviteImporter> list = this.currentImporters;
            tLRPC$TL_chatInviteImporter = list.get(list.size() - 1);
        }
        final boolean z2 = tLRPC$TL_chatInviteImporter == null;
        final Runnable runnable = (isEmpty && z2 && z) ? new Runnable() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MemberRequestsDelegate.this.lambda$loadMembers$2();
            }
        } : null;
        if (isEmpty) {
            AndroidUtilities.runOnUIThread(runnable, 300L);
        }
        this.searchRequestId = this.controller.getImporters(this.chatId, str, tLRPC$TL_chatInviteImporter, this.users, new RequestDelegate() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MemberRequestsDelegate.this.lambda$loadMembers$4(isEmpty, runnable, str, z2, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMembers$2() {
        setViewVisible(this.loadingView, true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMembers$4(final boolean z, final Runnable runnable, final String str, final boolean z2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                MemberRequestsDelegate.this.lambda$loadMembers$3(z, runnable, str, tLRPC$TL_error, tLObject, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMembers$3(boolean z, Runnable runnable, String str, TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, boolean z2) {
        this.isLoading = false;
        this.isDataLoaded = true;
        if (z) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        setViewVisible(this.loadingView, false, false);
        if (TextUtils.equals(str, this.query) && tLRPC$TL_error == null) {
            this.isDataLoaded = true;
            onImportersLoaded((TLRPC$TL_messages_chatInviteImporters) tLObject, str, z2, false);
        }
    }

    private void onImportersLoaded(TLRPC$TL_messages_chatInviteImporters tLRPC$TL_messages_chatInviteImporters, String str, boolean z, boolean z2) {
        boolean z3 = false;
        boolean z4 = !this.currentImporters.isEmpty() && this.hasMore;
        for (int i = 0; i < tLRPC$TL_messages_chatInviteImporters.users.size(); i++) {
            TLRPC$User tLRPC$User = tLRPC$TL_messages_chatInviteImporters.users.get(i);
            this.users.put(tLRPC$User.f1751id, tLRPC$User);
        }
        if (z) {
            this.adapter.setItems(tLRPC$TL_messages_chatInviteImporters.importers);
        } else {
            Object[] objArr = (tLRPC$TL_messages_chatInviteImporters.importers.size() <= 0 || this.currentImporters.size() + tLRPC$TL_messages_chatInviteImporters.importers.size() >= tLRPC$TL_messages_chatInviteImporters.count) ? null : 1;
            if (objArr != null) {
                this.adapter.notifyItemRemoved((!this.isShowLastItemDivider ? 1 : 0) + this.currentImporters.size());
            }
            this.adapter.appendItems(tLRPC$TL_messages_chatInviteImporters.importers);
            if (objArr != null) {
                this.adapter.notifyItemInserted((!this.isShowLastItemDivider ? 1 : 0) + this.currentImporters.size());
            }
        }
        if (TextUtils.isEmpty(str)) {
            if (z) {
                this.allImporters.clear();
            }
            this.allImporters.addAll(tLRPC$TL_messages_chatInviteImporters.importers);
            if (this.showSearchMenu) {
                this.fragment.getActionBar().createMenu().getItem(0).setVisibility(this.allImporters.isEmpty() ? 8 : 0);
            }
        }
        onImportersChanged(str, z2, false);
        this.hasMore = this.currentImporters.size() < tLRPC$TL_messages_chatInviteImporters.count;
        if (!this.currentImporters.isEmpty() && this.hasMore) {
            z3 = true;
        }
        if (z4 != z3) {
            if (this.hasMore) {
                Adapter adapter = this.adapter;
                adapter.notifyItemInserted(adapter.getItemCount() - 1);
                return;
            }
            Adapter adapter2 = this.adapter;
            adapter2.notifyItemRemoved(adapter2.getItemCount());
        }
    }

    @Override // org.telegram.p043ui.Cells.MemberRequestCell.OnClickListener
    public void onAddClicked(TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter) {
        hideChatJoinRequest(tLRPC$TL_chatInviteImporter, true);
    }

    @Override // org.telegram.p043ui.Cells.MemberRequestCell.OnClickListener
    public void onDismissClicked(TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter) {
        hideChatJoinRequest(tLRPC$TL_chatInviteImporter, false);
    }

    public void setAdapterItemsEnabled(boolean z) {
        int extraFirstHolders;
        if (this.recyclerView == null || (extraFirstHolders = this.adapter.extraFirstHolders()) < 0 || extraFirstHolders >= this.recyclerView.getChildCount()) {
            return;
        }
        this.recyclerView.getChildAt(extraFirstHolders).setEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onImportersChanged(String str, boolean z, boolean z2) {
        boolean z3;
        if (TextUtils.isEmpty(str)) {
            z3 = !this.allImporters.isEmpty() || z;
            StickerEmptyView stickerEmptyView = this.emptyView;
            if (stickerEmptyView != null) {
                stickerEmptyView.setVisibility(z3 ? 4 : 0);
            }
            StickerEmptyView stickerEmptyView2 = this.searchEmptyView;
            if (stickerEmptyView2 != null) {
                stickerEmptyView2.setVisibility(4);
            }
        } else {
            z3 = !this.currentImporters.isEmpty() || z;
            StickerEmptyView stickerEmptyView3 = this.emptyView;
            if (stickerEmptyView3 != null) {
                stickerEmptyView3.setVisibility(4);
            }
            StickerEmptyView stickerEmptyView4 = this.searchEmptyView;
            if (stickerEmptyView4 != null) {
                stickerEmptyView4.setVisibility(z3 ? 4 : 0);
            }
        }
        setViewVisible(this.recyclerView, z3, true);
        if (this.allImporters.isEmpty()) {
            StickerEmptyView stickerEmptyView5 = this.emptyView;
            if (stickerEmptyView5 != null) {
                stickerEmptyView5.setVisibility(0);
            }
            StickerEmptyView stickerEmptyView6 = this.searchEmptyView;
            if (stickerEmptyView6 != null) {
                stickerEmptyView6.setVisibility(4);
            }
            setViewVisible(this.loadingView, false, false);
            if (this.isSearchExpanded && this.showSearchMenu) {
                this.fragment.getActionBar().createMenu().closeSearchField(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasAllImporters() {
        return !this.allImporters.isEmpty();
    }

    private void hideChatJoinRequest(final TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter, final boolean z) {
        final TLRPC$User tLRPC$User = this.users.get(tLRPC$TL_chatInviteImporter.user_id);
        if (tLRPC$User == null) {
            return;
        }
        final TLRPC$TL_messages_hideChatJoinRequest tLRPC$TL_messages_hideChatJoinRequest = new TLRPC$TL_messages_hideChatJoinRequest();
        tLRPC$TL_messages_hideChatJoinRequest.approved = z;
        tLRPC$TL_messages_hideChatJoinRequest.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(-this.chatId);
        tLRPC$TL_messages_hideChatJoinRequest.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(tLRPC$User);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_hideChatJoinRequest, new RequestDelegate() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$$ExternalSyntheticLambda8
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MemberRequestsDelegate.this.lambda$hideChatJoinRequest$7(tLRPC$TL_chatInviteImporter, z, tLRPC$User, tLRPC$TL_messages_hideChatJoinRequest, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideChatJoinRequest$7(final TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter, final boolean z, final TLRPC$User tLRPC$User, final TLRPC$TL_messages_hideChatJoinRequest tLRPC$TL_messages_hideChatJoinRequest, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            MessagesController.getInstance(this.currentAccount).processUpdates((TLRPC$TL_updates) tLObject, false);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                MemberRequestsDelegate.this.lambda$hideChatJoinRequest$6(tLRPC$TL_error, tLObject, tLRPC$TL_chatInviteImporter, z, tLRPC$User, tLRPC$TL_messages_hideChatJoinRequest);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideChatJoinRequest$6(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter, boolean z, TLRPC$User tLRPC$User, TLRPC$TL_messages_hideChatJoinRequest tLRPC$TL_messages_hideChatJoinRequest) {
        String formatString;
        BaseFragment baseFragment = this.fragment;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        if (tLRPC$TL_error == null) {
            TLRPC$TL_updates tLRPC$TL_updates = (TLRPC$TL_updates) tLObject;
            if (!tLRPC$TL_updates.chats.isEmpty()) {
                MessagesController.getInstance(this.currentAccount).loadFullChat(tLRPC$TL_updates.chats.get(0).f1602id, 0, true);
            }
            int i = 0;
            while (true) {
                if (i >= this.allImporters.size()) {
                    break;
                } else if (this.allImporters.get(i).user_id == tLRPC$TL_chatInviteImporter.user_id) {
                    this.allImporters.remove(i);
                    break;
                } else {
                    i++;
                }
            }
            this.adapter.removeItem(tLRPC$TL_chatInviteImporter);
            onImportersChanged(this.query, false, true);
            if (this.fragment.getParentActivity() == null) {
                return;
            }
            if (z) {
                Bulletin.MultiLineLayout multiLineLayout = new Bulletin.MultiLineLayout(this.fragment.getParentActivity(), this.fragment.getResourceProvider());
                multiLineLayout.imageView.setRoundRadius(AndroidUtilities.m107dp(15));
                multiLineLayout.imageView.setForUserOrChat(tLRPC$User, new AvatarDrawable(tLRPC$User));
                String firstName = UserObject.getFirstName(tLRPC$User);
                if (this.isChannel) {
                    formatString = LocaleController.formatString("HasBeenAddedToChannel", C3632R.string.HasBeenAddedToChannel, firstName);
                } else {
                    formatString = LocaleController.formatString("HasBeenAddedToGroup", C3632R.string.HasBeenAddedToGroup, firstName);
                }
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(formatString);
                int indexOf = formatString.indexOf(firstName);
                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), indexOf, firstName.length() + indexOf, 18);
                multiLineLayout.textView.setText(spannableStringBuilder);
                if (this.allImporters.isEmpty()) {
                    Bulletin.make(this.fragment, multiLineLayout, 2750).show();
                } else {
                    Bulletin.make(this.layoutContainer, multiLineLayout, 2750).show();
                }
            }
            ActionBarMenu createMenu = this.fragment.getActionBar().createMenu();
            if (TextUtils.isEmpty(this.query) && this.showSearchMenu) {
                createMenu.getItem(0).setVisibility(this.allImporters.isEmpty() ? 8 : 0);
                return;
            }
            return;
        }
        AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, this.fragment, tLRPC$TL_messages_hideChatJoinRequest, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hidePreview() {
        this.previewDialog.dismiss();
        this.importer = null;
    }

    private void setViewVisible(View view, boolean z, boolean z2) {
        if (view == null) {
            return;
        }
        boolean z3 = view.getVisibility() == 0;
        float f = z ? 1.0f : 0.0f;
        if (z == z3 && f == view.getAlpha()) {
            return;
        }
        if (z2) {
            if (z) {
                view.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
            view.setVisibility(0);
            view.animate().alpha(f).setDuration(150L).start();
            return;
        }
        view.setVisibility(z ? 0 : 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Delegates.MemberRequestsDelegate$Adapter */
    /* loaded from: classes6.dex */
    public class Adapter extends RecyclerListView.SelectionAdapter {
        private Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup viewGroup, int i) {
            MemberRequestCell memberRequestCell;
            if (i == 1) {
                View view = new View(viewGroup.getContext());
                view.setBackground(Theme.getThemedDrawableByKey(viewGroup.getContext(), C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                memberRequestCell = view;
            } else if (i == 2) {
                memberRequestCell = new View(this, viewGroup.getContext()) { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate.Adapter.1
                    @Override // android.view.View
                    protected void onMeasure(int i2, int i3) {
                        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(52), 1073741824));
                    }
                };
            } else if (i == 3) {
                memberRequestCell = new View(viewGroup.getContext());
            } else if (i != 4) {
                Context context = viewGroup.getContext();
                MemberRequestsDelegate memberRequestsDelegate = MemberRequestsDelegate.this;
                MemberRequestCell memberRequestCell2 = new MemberRequestCell(context, memberRequestsDelegate, memberRequestsDelegate.isChannel);
                memberRequestCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, MemberRequestsDelegate.this.fragment.getResourceProvider()));
                memberRequestCell = memberRequestCell2;
            } else {
                FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this, MemberRequestsDelegate.this.fragment.getParentActivity(), MemberRequestsDelegate.this.fragment.getResourceProvider()) { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate.Adapter.2
                    @Override // org.telegram.p043ui.Components.FlickerLoadingView, android.view.View
                    protected void onMeasure(int i2, int i3) {
                        setMeasuredDimension(View.MeasureSpec.getSize(i2), AndroidUtilities.m107dp(104));
                    }
                };
                if (MemberRequestsDelegate.this.isShowLastItemDivider) {
                    flickerLoadingView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, MemberRequestsDelegate.this.fragment.getResourceProvider()));
                }
                flickerLoadingView.setColors(Theme.key_windowBackgroundWhite, Theme.key_windowBackgroundGray, -1);
                flickerLoadingView.setViewType(15);
                flickerLoadingView.setMemberRequestButton(MemberRequestsDelegate.this.isChannel);
                flickerLoadingView.setIsSingleCell(true);
                flickerLoadingView.setItemsCount(1);
                memberRequestCell = flickerLoadingView;
            }
            return new RecyclerListView.Holder(memberRequestCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder.getItemViewType() == 0) {
                MemberRequestCell memberRequestCell = (MemberRequestCell) viewHolder.itemView;
                int extraFirstHolders = i - extraFirstHolders();
                LongSparseArray<TLRPC$User> longSparseArray = MemberRequestsDelegate.this.users;
                TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter = (TLRPC$TL_chatInviteImporter) MemberRequestsDelegate.this.currentImporters.get(extraFirstHolders);
                boolean z = true;
                if (extraFirstHolders == MemberRequestsDelegate.this.currentImporters.size() - 1 && !MemberRequestsDelegate.this.hasMore) {
                    z = false;
                }
                memberRequestCell.setData(longSparseArray, tLRPC$TL_chatInviteImporter, z);
            } else if (viewHolder.getItemViewType() == 2) {
                viewHolder.itemView.requestLayout();
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return extraFirstHolders() + MemberRequestsDelegate.this.currentImporters.size() + extraLastHolders();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i != 0 || MemberRequestsDelegate.this.isShowLastItemDivider) {
                return (i != getItemCount() + (-1) || extraLastHolders() <= 0) ? 0 : 4;
            }
            return 2;
        }

        public void setItems(List<TLRPC$TL_chatInviteImporter> list) {
            boolean isEmpty = MemberRequestsDelegate.this.currentImporters.isEmpty();
            int i = 0;
            while (i < list.size()) {
                long j = list.get(i).user_id;
                int i2 = i + 1;
                while (true) {
                    if (i2 >= list.size()) {
                        break;
                    } else if (list.get(i2).user_id == j) {
                        list.remove(i);
                        i--;
                        break;
                    } else {
                        i2++;
                    }
                }
                i++;
            }
            MemberRequestsDelegate.this.currentImporters.clear();
            MemberRequestsDelegate.this.currentImporters.addAll(list);
            if (isEmpty) {
                notifyItemRangeInserted(!MemberRequestsDelegate.this.isShowLastItemDivider ? 1 : 0, MemberRequestsDelegate.this.currentImporters.size());
            } else {
                notifyDataSetChanged();
            }
        }

        public void appendItems(List<TLRPC$TL_chatInviteImporter> list) {
            int i = 0;
            while (i < list.size()) {
                long j = list.get(i).user_id;
                int i2 = 0;
                while (true) {
                    if (i2 >= MemberRequestsDelegate.this.currentImporters.size()) {
                        break;
                    } else if (((TLRPC$TL_chatInviteImporter) MemberRequestsDelegate.this.currentImporters.get(i2)).user_id == j) {
                        list.remove(i);
                        i--;
                        break;
                    } else {
                        i2++;
                    }
                }
                i++;
            }
            MemberRequestsDelegate.this.currentImporters.addAll(list);
            notifyItemRangeInserted(((!MemberRequestsDelegate.this.isShowLastItemDivider ? 1 : 0) + MemberRequestsDelegate.this.currentImporters.size()) - list.size(), list.size());
        }

        public void removeItem(TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter) {
            int i = 0;
            while (true) {
                if (i >= MemberRequestsDelegate.this.currentImporters.size()) {
                    i = -1;
                    break;
                } else if (((TLRPC$TL_chatInviteImporter) MemberRequestsDelegate.this.currentImporters.get(i)).user_id == tLRPC$TL_chatInviteImporter.user_id) {
                    break;
                } else {
                    i++;
                }
            }
            if (i >= 0) {
                MemberRequestsDelegate.this.currentImporters.remove(i);
                notifyItemRemoved(i + extraFirstHolders());
                if (MemberRequestsDelegate.this.currentImporters.isEmpty()) {
                    notifyItemRemoved(1);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int extraFirstHolders() {
            return !MemberRequestsDelegate.this.isShowLastItemDivider ? 1 : 0;
        }

        private int extraLastHolders() {
            return (MemberRequestsDelegate.this.currentImporters.isEmpty() || !MemberRequestsDelegate.this.hasMore) ? 0 : 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Delegates.MemberRequestsDelegate$PreviewDialog */
    /* loaded from: classes6.dex */
    public class PreviewDialog extends Dialog {
        private float animationProgress;
        private ValueAnimator animator;
        private BitmapDrawable backgroundDrawable;
        private final TextView bioText;
        private final ViewGroup contentView;
        private BackupImageView imageView;
        private TLRPC$TL_chatInviteImporter importer;
        private final TextView nameText;
        private final AvatarPreviewPagerIndicator pagerIndicator;
        private final Drawable pagerShadowDrawable;
        private final ActionBarPopupWindow.ActionBarPopupWindowLayout popupLayout;
        private final int shadowPaddingLeft;
        private final int shadowPaddingTop;
        private final ProfileGalleryView viewPager;

        public PreviewDialog(Context context, RecyclerListView recyclerListView, Theme.ResourcesProvider resourcesProvider, boolean z) {
            super(context, C3632R.style.TransparentDialog2);
            int i;
            String str;
            Drawable mutate = getContext().getResources().getDrawable(C3632R.C3634drawable.popup_fixed_alert2).mutate();
            this.pagerShadowDrawable = mutate;
            TextView textView = new TextView(getContext());
            this.nameText = textView;
            TextView textView2 = new TextView(getContext());
            this.bioText = textView2;
            ViewGroup viewGroup = new ViewGroup(getContext()) { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate.PreviewDialog.3
                private final GestureDetector gestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate.PreviewDialog.3.1
                    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                    public boolean onDown(MotionEvent motionEvent) {
                        return true;
                    }

                    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                    public boolean onSingleTapUp(MotionEvent motionEvent) {
                        if (!(PreviewDialog.this.pagerShadowDrawable.getBounds().contains((int) motionEvent.getX(), (int) motionEvent.getY()) || (((float) PreviewDialog.this.popupLayout.getLeft()) < motionEvent.getX() && motionEvent.getX() < ((float) PreviewDialog.this.popupLayout.getRight()) && ((float) PreviewDialog.this.popupLayout.getTop()) < motionEvent.getY() && motionEvent.getY() < ((float) PreviewDialog.this.popupLayout.getBottom())))) {
                            PreviewDialog.this.dismiss();
                        }
                        return super.onSingleTapUp(motionEvent);
                    }
                });
                private final Path clipPath = new Path();
                private final RectF rectF = new RectF();
                private boolean firstSizeChange = true;

                @Override // android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    return this.gestureDetector.onTouchEvent(motionEvent);
                }

                @Override // android.view.View
                protected void onMeasure(int i2, int i3) {
                    setWillNotDraw(false);
                    super.onMeasure(i2, i3);
                    int min = Math.min(Math.min(getMeasuredWidth(), getMeasuredHeight()), (int) (getMeasuredHeight() * 0.66d)) - (AndroidUtilities.m107dp(12) * 2);
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(min, Integer.MIN_VALUE);
                    PreviewDialog.this.viewPager.measure(makeMeasureSpec, makeMeasureSpec);
                    PreviewDialog.this.pagerIndicator.measure(makeMeasureSpec, makeMeasureSpec);
                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min - (AndroidUtilities.m107dp(16) * 2), 1073741824);
                    PreviewDialog.this.nameText.measure(makeMeasureSpec2, View.MeasureSpec.makeMeasureSpec(0, 0));
                    PreviewDialog.this.bioText.measure(makeMeasureSpec2, View.MeasureSpec.makeMeasureSpec(0, 0));
                    PreviewDialog.this.popupLayout.measure(View.MeasureSpec.makeMeasureSpec(PreviewDialog.this.viewPager.getMeasuredWidth() + (PreviewDialog.this.shadowPaddingLeft * 2), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
                    int height = (getHeight() - PreviewDialog.this.getContentHeight()) / 2;
                    int width = (getWidth() - PreviewDialog.this.viewPager.getMeasuredWidth()) / 2;
                    PreviewDialog.this.viewPager.layout(width, height, PreviewDialog.this.viewPager.getMeasuredWidth() + width, PreviewDialog.this.viewPager.getMeasuredHeight() + height);
                    PreviewDialog.this.pagerIndicator.layout(PreviewDialog.this.viewPager.getLeft(), PreviewDialog.this.viewPager.getTop(), PreviewDialog.this.viewPager.getRight(), PreviewDialog.this.viewPager.getTop() + PreviewDialog.this.pagerIndicator.getMeasuredHeight());
                    int measuredHeight = height + PreviewDialog.this.viewPager.getMeasuredHeight() + AndroidUtilities.m107dp(12);
                    PreviewDialog.this.nameText.layout(PreviewDialog.this.viewPager.getLeft() + AndroidUtilities.m107dp(16), measuredHeight, PreviewDialog.this.viewPager.getRight() - AndroidUtilities.m107dp(16), PreviewDialog.this.nameText.getMeasuredHeight() + measuredHeight);
                    int measuredHeight2 = measuredHeight + PreviewDialog.this.nameText.getMeasuredHeight();
                    if (PreviewDialog.this.bioText.getVisibility() != 8) {
                        int m107dp = measuredHeight2 + AndroidUtilities.m107dp(4);
                        PreviewDialog.this.bioText.layout(PreviewDialog.this.nameText.getLeft(), m107dp, PreviewDialog.this.nameText.getRight(), PreviewDialog.this.bioText.getMeasuredHeight() + m107dp);
                        measuredHeight2 = m107dp + PreviewDialog.this.bioText.getMeasuredHeight();
                    }
                    int m107dp2 = measuredHeight2 + AndroidUtilities.m107dp(12);
                    PreviewDialog.this.pagerShadowDrawable.setBounds(PreviewDialog.this.viewPager.getLeft() - PreviewDialog.this.shadowPaddingLeft, PreviewDialog.this.viewPager.getTop() - PreviewDialog.this.shadowPaddingTop, PreviewDialog.this.viewPager.getRight() + PreviewDialog.this.shadowPaddingLeft, PreviewDialog.this.shadowPaddingTop + m107dp2);
                    PreviewDialog.this.popupLayout.layout((PreviewDialog.this.viewPager.getRight() - PreviewDialog.this.popupLayout.getMeasuredWidth()) + PreviewDialog.this.shadowPaddingLeft, m107dp2, PreviewDialog.this.viewPager.getRight() + PreviewDialog.this.shadowPaddingLeft, PreviewDialog.this.popupLayout.getMeasuredHeight() + m107dp2);
                    PreviewDialog.this.popupLayout.setVisibility(PreviewDialog.this.popupLayout.getBottom() < i5 ? 0 : 8);
                    int m107dp3 = AndroidUtilities.m107dp(6);
                    this.rectF.set(PreviewDialog.this.viewPager.getLeft(), PreviewDialog.this.viewPager.getTop(), PreviewDialog.this.viewPager.getRight(), PreviewDialog.this.viewPager.getTop() + (m107dp3 * 2));
                    this.clipPath.reset();
                    float f = m107dp3;
                    this.clipPath.addRoundRect(this.rectF, f, f, Path.Direction.CW);
                    this.rectF.set(i2, PreviewDialog.this.viewPager.getTop() + m107dp3, i4, i5);
                    this.clipPath.addRect(this.rectF, Path.Direction.CW);
                }

                @Override // android.view.View
                protected void onSizeChanged(int i2, int i3, int i4, int i5) {
                    super.onSizeChanged(i2, i3, i4, i5);
                    Point point = AndroidUtilities.displaySize;
                    if (point.x > point.y) {
                        PreviewDialog.super.dismiss();
                    }
                    if (i2 == i4 || i3 == i5) {
                        return;
                    }
                    if (!this.firstSizeChange) {
                        PreviewDialog.this.updateBackgroundBitmap();
                    }
                    this.firstSizeChange = false;
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    canvas.save();
                    canvas.clipPath(this.clipPath);
                    super.dispatchDraw(canvas);
                    canvas.restore();
                }

                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    PreviewDialog.this.pagerShadowDrawable.draw(canvas);
                    super.onDraw(canvas);
                }

                @Override // android.view.View
                protected boolean verifyDrawable(Drawable drawable) {
                    return drawable == PreviewDialog.this.pagerShadowDrawable || super.verifyDrawable(drawable);
                }
            };
            this.contentView = viewGroup;
            setCancelable(true);
            viewGroup.setVisibility(4);
            int color = Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, MemberRequestsDelegate.this.fragment.getResourceProvider());
            mutate.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
            mutate.setCallback(viewGroup);
            Rect rect = new Rect();
            mutate.getPadding(rect);
            this.shadowPaddingTop = rect.top;
            this.shadowPaddingLeft = rect.left;
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(context, resourcesProvider);
            this.popupLayout = actionBarPopupWindowLayout;
            actionBarPopupWindowLayout.setBackgroundColor(color);
            viewGroup.addView(actionBarPopupWindowLayout);
            AvatarPreviewPagerIndicator avatarPreviewPagerIndicator = new AvatarPreviewPagerIndicator(this, getContext(), MemberRequestsDelegate.this) { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate.PreviewDialog.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p043ui.AvatarPreviewPagerIndicator, android.view.View
                public void onDraw(Canvas canvas) {
                    if (this.profileGalleryView.getRealCount() > 1) {
                        super.onDraw(canvas);
                    }
                }
            };
            this.pagerIndicator = avatarPreviewPagerIndicator;
            ProfileGalleryView profileGalleryView = new ProfileGalleryView(context, MemberRequestsDelegate.this.fragment.getActionBar(), recyclerListView, avatarPreviewPagerIndicator);
            this.viewPager = profileGalleryView;
            profileGalleryView.setCreateThumbFromParent(true);
            viewGroup.addView(profileGalleryView);
            avatarPreviewPagerIndicator.setProfileGalleryView(profileGalleryView);
            viewGroup.addView(avatarPreviewPagerIndicator);
            textView.setMaxLines(1);
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, MemberRequestsDelegate.this.fragment.getResourceProvider()));
            textView.setTextSize(16.0f);
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            viewGroup.addView(textView);
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, MemberRequestsDelegate.this.fragment.getResourceProvider()));
            textView2.setTextSize(14.0f);
            viewGroup.addView(textView2);
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(context, true, false);
            int i2 = Theme.key_actionBarDefaultSubmenuItem;
            int color2 = Theme.getColor(i2, resourcesProvider);
            int i3 = Theme.key_actionBarDefaultSubmenuItemIcon;
            actionBarMenuSubItem.setColors(color2, Theme.getColor(i3, resourcesProvider));
            int i4 = Theme.key_dialogButtonSelector;
            actionBarMenuSubItem.setSelectorColor(Theme.getColor(i4, resourcesProvider));
            if (z) {
                i = C3632R.string.AddToChannel;
                str = "AddToChannel";
            } else {
                i = C3632R.string.AddToGroup;
                str = "AddToGroup";
            }
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(str, i), C3632R.C3634drawable.msg_requests);
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MemberRequestsDelegate.PreviewDialog.this.lambda$new$0(view);
                }
            });
            actionBarPopupWindowLayout.addView(actionBarMenuSubItem);
            ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(context, false, false);
            actionBarMenuSubItem2.setColors(Theme.getColor(i2, resourcesProvider), Theme.getColor(i3, resourcesProvider));
            actionBarMenuSubItem2.setSelectorColor(Theme.getColor(i4, resourcesProvider));
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("SendMessage", C3632R.string.SendMessage), C3632R.C3634drawable.msg_msgbubble3);
            actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MemberRequestsDelegate.PreviewDialog.this.lambda$new$1(view);
                }
            });
            actionBarPopupWindowLayout.addView(actionBarMenuSubItem2);
            ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(context, false, true);
            actionBarMenuSubItem3.setColors(Theme.getColor(Theme.key_text_RedBold, resourcesProvider), Theme.getColor(Theme.key_text_RedRegular, resourcesProvider));
            actionBarMenuSubItem3.setSelectorColor(Theme.getColor(i4, resourcesProvider));
            actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString("DismissRequest", C3632R.string.DismissRequest), C3632R.C3634drawable.msg_remove);
            actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MemberRequestsDelegate.PreviewDialog.this.lambda$new$2(view);
                }
            });
            actionBarPopupWindowLayout.addView(actionBarMenuSubItem3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter = this.importer;
            if (tLRPC$TL_chatInviteImporter != null) {
                MemberRequestsDelegate.this.onAddClicked(tLRPC$TL_chatInviteImporter);
            }
            MemberRequestsDelegate.this.hidePreview();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            if (this.importer != null) {
                MemberRequestsDelegate.this.isNeedRestoreList = true;
                super.dismiss();
                MemberRequestsDelegate.this.fragment.dismissCurrentDialog();
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", this.importer.user_id);
                MemberRequestsDelegate.this.fragment.presentFragment(new ChatActivity(bundle));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) {
            TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter = this.importer;
            if (tLRPC$TL_chatInviteImporter != null) {
                MemberRequestsDelegate.this.onDismissClicked(tLRPC$TL_chatInviteImporter);
            }
            MemberRequestsDelegate.this.hidePreview();
        }

        @Override // android.app.Dialog
        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            getWindow().setWindowAnimations(C3632R.style.DialogNoAnimation);
            setContentView(this.contentView, new ViewGroup.LayoutParams(-1, -1));
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = -1;
            attributes.height = -1;
            attributes.dimAmount = BitmapDescriptorFactory.HUE_RED;
            int i = attributes.flags & (-3);
            attributes.flags = i;
            attributes.gravity = 51;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 21) {
                attributes.flags = i | (-2147417856);
            }
            if (i2 >= 28) {
                attributes.layoutInDisplayCutoutMode = 1;
            }
            getWindow().setAttributes(attributes);
        }

        public void setImporter(TLRPC$TL_chatInviteImporter tLRPC$TL_chatInviteImporter, BackupImageView backupImageView) {
            this.importer = tLRPC$TL_chatInviteImporter;
            this.imageView = backupImageView;
            TLRPC$User user = MessagesController.getInstance(MemberRequestsDelegate.this.currentAccount).getUser(Long.valueOf(tLRPC$TL_chatInviteImporter.user_id));
            ImageLocation forUserOrChat = ImageLocation.getForUserOrChat(user, 0);
            ImageLocation forUserOrChat2 = ImageLocation.getForUserOrChat(user, 1);
            if (MessagesController.getInstance(MemberRequestsDelegate.this.currentAccount).getUserFull(tLRPC$TL_chatInviteImporter.user_id) == null) {
                MessagesController.getInstance(MemberRequestsDelegate.this.currentAccount).loadUserInfo(user, false, 0);
            }
            this.viewPager.setParentAvatarImage(backupImageView);
            this.viewPager.setData(tLRPC$TL_chatInviteImporter.user_id, true);
            this.viewPager.initIfEmpty(null, forUserOrChat, forUserOrChat2, true);
            this.nameText.setText(UserObject.getUserName((TLRPC$User) MemberRequestsDelegate.this.users.get(tLRPC$TL_chatInviteImporter.user_id)));
            this.bioText.setText(tLRPC$TL_chatInviteImporter.about);
            this.bioText.setVisibility(TextUtils.isEmpty(tLRPC$TL_chatInviteImporter.about) ? 8 : 0);
            this.contentView.requestLayout();
        }

        @Override // android.app.Dialog
        public void show() {
            super.show();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    MemberRequestsDelegate.PreviewDialog.this.lambda$show$3();
                }
            }, 80L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$show$3() {
            updateBackgroundBitmap();
            runAnimation(true);
        }

        @Override // android.app.Dialog, android.content.DialogInterface
        public void dismiss() {
            runAnimation(false);
        }

        private void runAnimation(final boolean z) {
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            int[] iArr = new int[2];
            this.imageView.getLocationOnScreen(iArr);
            final float width = (this.imageView.getWidth() * 1.0f) / getContentWidth();
            final float width2 = (this.imageView.getWidth() / 2.0f) / width;
            float f = 1.0f - width;
            final float left = iArr[0] - (this.viewPager.getLeft() + ((int) ((getContentWidth() * f) / 2.0f)));
            final float top = iArr[1] - (this.viewPager.getTop() + ((int) ((getContentHeight() * f) / 2.0f)));
            final int i = (-this.popupLayout.getTop()) / 2;
            float[] fArr = new float[2];
            fArr[0] = z ? 0.0f : 1.0f;
            fArr[1] = z ? 1.0f : 0.0f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.animator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate$PreviewDialog$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    MemberRequestsDelegate.PreviewDialog.this.lambda$runAnimation$4(width, left, top, width2, i, valueAnimator2);
                }
            });
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Delegates.MemberRequestsDelegate.PreviewDialog.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    PreviewDialog.this.contentView.setVisibility(0);
                    if (z) {
                        PreviewDialog.this.contentView.setScaleX(width);
                        PreviewDialog.this.contentView.setScaleY(width);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (z) {
                        return;
                    }
                    PreviewDialog.super.dismiss();
                }
            });
            this.animator.setDuration(220L);
            this.animator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.animator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$runAnimation$4(float f, float f2, float f3, float f4, int i, ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.animationProgress = floatValue;
            float f5 = f + ((1.0f - f) * floatValue);
            this.contentView.setScaleX(f5);
            this.contentView.setScaleY(f5);
            this.contentView.setTranslationX(f2 * (1.0f - this.animationProgress));
            this.contentView.setTranslationY(f3 * (1.0f - this.animationProgress));
            int i2 = (int) (f4 * (1.0f - this.animationProgress));
            this.viewPager.setRoundRadius(i2, i2);
            float clamp = MathUtils.clamp((this.animationProgress * 2.0f) - 1.0f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.pagerShadowDrawable.setAlpha((int) (clamp * 255.0f));
            this.nameText.setAlpha(clamp);
            this.bioText.setAlpha(clamp);
            this.popupLayout.setTranslationY(i * (1.0f - this.animationProgress));
            this.popupLayout.setAlpha(clamp);
            BitmapDrawable bitmapDrawable = this.backgroundDrawable;
            if (bitmapDrawable != null) {
                bitmapDrawable.setAlpha((int) (this.animationProgress * 255.0f));
            }
            this.pagerIndicator.setAlpha(clamp);
        }

        private Bitmap getBlurredBitmap() {
            int measuredWidth = (int) (this.contentView.getMeasuredWidth() / 6.0f);
            int measuredHeight = (int) (this.contentView.getMeasuredHeight() / 6.0f);
            Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            canvas.scale(0.16666667f, 0.16666667f);
            canvas.save();
            if (MemberRequestsDelegate.this.fragment.getParentActivity() instanceof LaunchActivity) {
                ((LaunchActivity) MemberRequestsDelegate.this.fragment.getParentActivity()).getActionBarLayout().getView().draw(canvas);
            }
            canvas.drawColor(ColorUtils.setAlphaComponent(-16777216, 76));
            Dialog visibleDialog = MemberRequestsDelegate.this.fragment.getVisibleDialog();
            if (visibleDialog != null) {
                visibleDialog.getWindow().getDecorView().draw(canvas);
            }
            Utilities.stackBlurBitmap(createBitmap, Math.max(7, Math.max(measuredWidth, measuredHeight) / 180));
            return createBitmap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateBackgroundBitmap() {
            BitmapDrawable bitmapDrawable = this.backgroundDrawable;
            int alpha = (bitmapDrawable == null || Build.VERSION.SDK_INT < 19) ? 255 : bitmapDrawable.getAlpha();
            BitmapDrawable bitmapDrawable2 = new BitmapDrawable(getContext().getResources(), getBlurredBitmap());
            this.backgroundDrawable = bitmapDrawable2;
            bitmapDrawable2.setAlpha(alpha);
            getWindow().setBackgroundDrawable(this.backgroundDrawable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getContentHeight() {
            int measuredHeight = this.viewPager.getMeasuredHeight() + AndroidUtilities.m107dp(12) + this.nameText.getMeasuredHeight();
            if (this.bioText.getVisibility() != 8) {
                measuredHeight += AndroidUtilities.m107dp(4) + this.bioText.getMeasuredHeight();
            }
            return measuredHeight + AndroidUtilities.m107dp(12) + this.popupLayout.getMeasuredHeight();
        }

        private int getContentWidth() {
            return this.viewPager.getMeasuredWidth();
        }
    }
}
