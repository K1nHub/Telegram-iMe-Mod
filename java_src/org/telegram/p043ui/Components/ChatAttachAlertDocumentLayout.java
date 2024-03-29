package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.MimeTypeMap;
import android.widget.EditText;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Locale;
import moxy.MvpDelegate;
import org.koin.core.Koin;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.ringtone.RingtoneDataStore;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Adapters.FiltersView;
import org.telegram.p043ui.Cells.GraySectionCell;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.SharedDocumentCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.ChatAttachAlert;
import org.telegram.p043ui.Components.ChatAttachAlertDocumentLayout;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.FilteredSearchView;
import org.telegram.p043ui.PhotoPickerActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputPeerEmpty;
import org.telegram.tgnet.TLRPC$TL_messages_search;
import org.telegram.tgnet.TLRPC$TL_messages_searchGlobal;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$messages_Messages;
/* renamed from: org.telegram.ui.Components.ChatAttachAlertDocumentLayout */
/* loaded from: classes6.dex */
public class ChatAttachAlertDocumentLayout extends ChatAttachAlert.AttachAlertLayout {
    private float additionalTranslationY;
    private boolean allowMusic;
    private LinearLayoutManager backgroundLayoutManager;
    private ListAdapter backgroundListAdapter;
    private RecyclerListView backgroundListView;
    private boolean canSelectOnlyImageFiles;
    private int currentAnimationType;
    private File currentDir;
    private DocumentSelectActivityDelegate delegate;
    private StickerEmptyView emptyView;
    private FiltersView filtersView;
    private AnimatorSet filtersViewAnimator;
    private boolean hasFiles;
    private boolean ignoreLayout;
    public boolean isSoundPicker;
    private LinearLayoutManager layoutManager;
    private ListAdapter listAdapter;
    ValueAnimator listAnimation;
    private RecyclerListView listView;
    private FlickerLoadingView loadingView;
    private int maxSelectedFiles;
    private BroadcastReceiver receiver;
    private boolean receiverRegistered;
    private boolean scrolling;
    private SearchAdapter searchAdapter;
    private ActionBarMenuItem searchItem;
    private boolean searching;
    private HashMap<String, ListItem> selectedFiles;
    private ArrayList<String> selectedFilesOrder;
    private HashMap<FilteredSearchView.MessageHashId, MessageObject> selectedMessages;
    private boolean sendPressed;
    private boolean sortByName;
    private ActionBarMenuItem sortItem;

    /* renamed from: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate */
    /* loaded from: classes6.dex */
    public interface DocumentSelectActivityDelegate {

        /* renamed from: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate$-CC */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static void $default$didSelectPhotos(DocumentSelectActivityDelegate documentSelectActivityDelegate, ArrayList arrayList, boolean z, int i, String str, boolean z2) {
            }

            public static void $default$startMusicSelectActivity(DocumentSelectActivityDelegate documentSelectActivityDelegate) {
            }
        }

        void didSelectFiles(ArrayList<String> arrayList, String str, ArrayList<MessageObject> arrayList2, boolean z, int i, String str2, boolean z2, boolean z3);

        void didSelectPhotos(ArrayList<SendMessagesHelper.SendingMediaInfo> arrayList, boolean z, int i, String str, boolean z2);

        void startDocumentSelectActivity();

        void startMusicSelectActivity();
    }

    public static /* synthetic */ boolean lambda$new$0(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout, com.iMe.p030ui.base.mvp.view.MvpFrameLayout, org.koin.core.component.KoinComponent
    public /* bridge */ /* synthetic */ Koin getKoin() {
        Koin koin;
        koin = KoinJavaComponent.getKoin();
        return koin;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout, com.iMe.p030ui.base.mvp.view.MvpFrameLayout, com.iMe.p030ui.base.mvp.view.ICustomMvpView, moxy.MvpDelegateHolder
    public /* bridge */ /* synthetic */ MvpDelegate<T> getMvpDelegate() {
        MvpDelegate<T> mMvpDelegate;
        mMvpDelegate = getMMvpDelegate();
        return mMvpDelegate;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int needsActionBar() {
        return 1;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    void onSelectedItemsCountChanged(int i) {
        this.parentAlert.selectedMenuItem.setSubItemVisible(ChatAttachAlertPhotoLayout.getSendWithoutGroupingSubItemId(), i > 1 && this.parentAlert.editingMessageObject == null);
        this.parentAlert.selectedTextView.setText(LocaleController.formatPluralString("AccDescrSendFiles", Math.max(1, i), new Object[0]));
    }

    /* renamed from: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$ListItem */
    /* loaded from: classes6.dex */
    public static class ListItem {
        public String ext;
        public File file;
        public int icon;
        public String subtitle;
        public String thumb;
        public String title;

        private ListItem() {
            this.subtitle = "";
            this.ext = "";
        }

        /* synthetic */ ListItem(C47731 c47731) {
            this();
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$HistoryEntry */
    /* loaded from: classes6.dex */
    public static class HistoryEntry {
        File dir;
        String title;

        private HistoryEntry() {
        }

        /* synthetic */ HistoryEntry(C47731 c47731) {
            this();
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$1 */
    /* loaded from: classes6.dex */
    public class C47731 extends BroadcastReceiver {
        C47731() {
            ChatAttachAlertDocumentLayout.this = r1;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ChatAttachAlertDocumentLayout.C47731.this.lambda$onReceive$0();
                }
            };
            if ("android.intent.action.MEDIA_UNMOUNTED".equals(intent.getAction())) {
                ChatAttachAlertDocumentLayout.this.listView.postDelayed(runnable, 1000L);
            } else {
                runnable.run();
            }
        }

        public /* synthetic */ void lambda$onReceive$0() {
            try {
                if (ChatAttachAlertDocumentLayout.this.currentDir == null) {
                    ChatAttachAlertDocumentLayout.this.listRoots();
                } else {
                    ChatAttachAlertDocumentLayout chatAttachAlertDocumentLayout = ChatAttachAlertDocumentLayout.this;
                    chatAttachAlertDocumentLayout.listFiles(chatAttachAlertDocumentLayout.currentDir);
                }
                ChatAttachAlertDocumentLayout.this.updateSearchButton();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
    }

    public ChatAttachAlertDocumentLayout(ChatAttachAlert chatAttachAlert, Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(chatAttachAlert, context, resourcesProvider);
        this.receiverRegistered = false;
        this.selectedFiles = new HashMap<>();
        this.selectedFilesOrder = new ArrayList<>();
        this.selectedMessages = new HashMap<>();
        this.maxSelectedFiles = -1;
        this.receiver = new C47731();
        this.listAdapter = new ListAdapter(context);
        this.allowMusic = i == 1;
        this.isSoundPicker = i == 2;
        this.sortByName = SharedConfig.sortFilesByName;
        loadRecentFiles();
        this.searching = false;
        if (!this.receiverRegistered) {
            this.receiverRegistered = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
            intentFilter.addAction("android.intent.action.MEDIA_CHECKING");
            intentFilter.addAction("android.intent.action.MEDIA_EJECT");
            intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
            intentFilter.addAction("android.intent.action.MEDIA_NOFS");
            intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
            intentFilter.addAction("android.intent.action.MEDIA_SHARED");
            intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTABLE");
            intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
            intentFilter.addDataScheme("file");
            ApplicationLoader.applicationContext.registerReceiver(this.receiver, intentFilter);
        }
        ActionBarMenu createMenu = this.parentAlert.actionBar.createMenu();
        ActionBarMenuItem actionBarMenuItemSearchListener = createMenu.addItem(0, C3632R.C3634drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.2
            {
                ChatAttachAlertDocumentLayout.this = this;
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                ChatAttachAlertDocumentLayout.this.searching = true;
                ChatAttachAlertDocumentLayout.this.sortItem.setVisibility(8);
                ChatAttachAlertDocumentLayout chatAttachAlertDocumentLayout = ChatAttachAlertDocumentLayout.this;
                chatAttachAlertDocumentLayout.parentAlert.makeFocusable(chatAttachAlertDocumentLayout.searchItem.getSearchField(), true);
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                ChatAttachAlertDocumentLayout.this.searching = false;
                ChatAttachAlertDocumentLayout.this.sortItem.setVisibility(0);
                if (ChatAttachAlertDocumentLayout.this.listView.getAdapter() != ChatAttachAlertDocumentLayout.this.listAdapter) {
                    ChatAttachAlertDocumentLayout.this.listView.setAdapter(ChatAttachAlertDocumentLayout.this.listAdapter);
                }
                ChatAttachAlertDocumentLayout.this.listAdapter.notifyDataSetChanged();
                ChatAttachAlertDocumentLayout.this.searchAdapter.search(null, true);
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                ChatAttachAlertDocumentLayout.this.searchAdapter.search(editText.getText().toString(), false);
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchFilterCleared(FiltersView.MediaFilterData mediaFilterData) {
                ChatAttachAlertDocumentLayout.this.searchAdapter.removeSearchFilter(mediaFilterData);
                ChatAttachAlertDocumentLayout.this.searchAdapter.search(ChatAttachAlertDocumentLayout.this.searchItem.getSearchField().getText().toString(), false);
                ChatAttachAlertDocumentLayout.this.searchAdapter.updateFiltersView(true, null, null, true);
            }
        });
        this.searchItem = actionBarMenuItemSearchListener;
        int i2 = C3632R.string.Search;
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString("Search", i2));
        this.searchItem.setContentDescription(LocaleController.getString("Search", i2));
        EditTextBoldCursor searchField = this.searchItem.getSearchField();
        int i3 = Theme.key_dialogTextBlack;
        searchField.setTextColor(getThemedColor(i3));
        searchField.setCursorColor(getThemedColor(i3));
        searchField.setHintTextColor(getThemedColor(Theme.key_chat_messagePanelHint));
        ActionBarMenuItem addItem = createMenu.addItem(6, this.sortByName ? C3632R.C3634drawable.msg_contacts_time : C3632R.C3634drawable.msg_contacts_name);
        this.sortItem = addItem;
        addItem.setContentDescription(LocaleController.getString("AccDescrContactSorting", C3632R.string.AccDescrContactSorting));
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context, resourcesProvider);
        this.loadingView = flickerLoadingView;
        addView(flickerLoadingView);
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, this.loadingView, 1, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.3
            {
                ChatAttachAlertDocumentLayout.this = this;
            }

            @Override // android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f + ChatAttachAlertDocumentLayout.this.additionalTranslationY);
            }

            @Override // android.view.View
            public float getTranslationY() {
                return super.getTranslationY() - ChatAttachAlertDocumentLayout.this.additionalTranslationY;
            }
        };
        this.emptyView = stickerEmptyView;
        addView(stickerEmptyView, LayoutHelper.createFrame(-1, -1));
        this.emptyView.setVisibility(8);
        this.emptyView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean lambda$new$0;
                lambda$new$0 = ChatAttachAlertDocumentLayout.lambda$new$0(view, motionEvent);
                return lambda$new$0;
            }
        });
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.4
            Paint paint = new Paint();

            {
                ChatAttachAlertDocumentLayout.this = this;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                if (ChatAttachAlertDocumentLayout.this.currentAnimationType == 2 && getChildCount() > 0) {
                    float f = 2.14748365E9f;
                    for (int i4 = 0; i4 < getChildCount(); i4++) {
                        if (getChildAt(i4).getY() < f) {
                            f = getChildAt(i4).getY();
                        }
                    }
                    this.paint.setColor(Theme.getColor(Theme.key_dialogBackground));
                }
                super.dispatchDraw(canvas);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (ChatAttachAlertDocumentLayout.this.currentAnimationType != 0) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.backgroundListView = recyclerListView;
        recyclerListView.setSectionsType(2);
        this.backgroundListView.setVerticalScrollBarEnabled(false);
        RecyclerListView recyclerListView2 = this.backgroundListView;
        FillLastLinearLayoutManager fillLastLinearLayoutManager = new FillLastLinearLayoutManager(context, 1, false, AndroidUtilities.m107dp(56), this.backgroundListView);
        this.backgroundLayoutManager = fillLastLinearLayoutManager;
        recyclerListView2.setLayoutManager(fillLastLinearLayoutManager);
        this.backgroundListView.setClipToPadding(false);
        RecyclerListView recyclerListView3 = this.backgroundListView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.backgroundListAdapter = listAdapter;
        recyclerListView3.setAdapter(listAdapter);
        this.backgroundListView.setPadding(0, 0, 0, AndroidUtilities.m107dp(48));
        addView(this.backgroundListView, LayoutHelper.createFrame(-1, -1));
        this.backgroundListView.setVisibility(8);
        RecyclerListView recyclerListView4 = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.5
            Paint paint = new Paint();

            {
                ChatAttachAlertDocumentLayout.this = this;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                if (ChatAttachAlertDocumentLayout.this.currentAnimationType == 1 && getChildCount() > 0) {
                    float f = 2.14748365E9f;
                    for (int i4 = 0; i4 < getChildCount(); i4++) {
                        if (getChildAt(i4).getY() < f) {
                            f = getChildAt(i4).getY();
                        }
                    }
                    this.paint.setColor(Theme.getColor(Theme.key_dialogBackground));
                }
                super.dispatchDraw(canvas);
            }
        };
        this.listView = recyclerListView4;
        recyclerListView4.setSectionsType(2);
        this.listView.setVerticalScrollBarEnabled(false);
        RecyclerListView recyclerListView5 = this.listView;
        FillLastLinearLayoutManager fillLastLinearLayoutManager2 = new FillLastLinearLayoutManager(context, 1, false, AndroidUtilities.m107dp(56), this.listView) { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.6
            {
                ChatAttachAlertDocumentLayout.this = this;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i4) {
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.6.1
                    {
                        C47786.this = this;
                    }

                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    public int calculateDyToMakeVisible(View view, int i5) {
                        return super.calculateDyToMakeVisible(view, i5) - (ChatAttachAlertDocumentLayout.this.listView.getPaddingTop() - AndroidUtilities.m107dp(56));
                    }

                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    public int calculateTimeForDeceleration(int i5) {
                        return super.calculateTimeForDeceleration(i5) * 2;
                    }
                };
                linearSmoothScroller.setTargetPosition(i4);
                startSmoothScroll(linearSmoothScroller);
            }
        };
        this.layoutManager = fillLastLinearLayoutManager2;
        recyclerListView5.setLayoutManager(fillLastLinearLayoutManager2);
        this.listView.setClipToPadding(false);
        this.listView.setAdapter(this.listAdapter);
        this.listView.setPadding(0, 0, 0, AndroidUtilities.m107dp(48));
        addView(this.listView, LayoutHelper.createFrame(-1, -1));
        this.searchAdapter = new SearchAdapter(context);
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.7
            {
                ChatAttachAlertDocumentLayout.this = this;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                ChatAttachAlertDocumentLayout chatAttachAlertDocumentLayout = ChatAttachAlertDocumentLayout.this;
                chatAttachAlertDocumentLayout.parentAlert.updateLayout(chatAttachAlertDocumentLayout, true, i5);
                ChatAttachAlertDocumentLayout.this.updateEmptyViewPosition();
                if (ChatAttachAlertDocumentLayout.this.listView.getAdapter() == ChatAttachAlertDocumentLayout.this.searchAdapter) {
                    int findFirstVisibleItemPosition = ChatAttachAlertDocumentLayout.this.layoutManager.findFirstVisibleItemPosition();
                    int findLastVisibleItemPosition = ChatAttachAlertDocumentLayout.this.layoutManager.findLastVisibleItemPosition();
                    int abs = Math.abs(findLastVisibleItemPosition - findFirstVisibleItemPosition) + 1;
                    int itemCount = recyclerView.getAdapter().getItemCount();
                    if (abs <= 0 || findLastVisibleItemPosition < itemCount - 10) {
                        return;
                    }
                    ChatAttachAlertDocumentLayout.this.searchAdapter.loadMore();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i4) {
                RecyclerListView.Holder holder;
                if (i4 == 0) {
                    int m107dp = AndroidUtilities.m107dp(13);
                    int backgroundPaddingTop = ChatAttachAlertDocumentLayout.this.parentAlert.getBackgroundPaddingTop();
                    if (((ChatAttachAlertDocumentLayout.this.parentAlert.scrollOffsetY[0] - backgroundPaddingTop) - m107dp) + backgroundPaddingTop < C3704ActionBar.getCurrentActionBarHeight() && (holder = (RecyclerListView.Holder) ChatAttachAlertDocumentLayout.this.listView.findViewHolderForAdapterPosition(0)) != null && holder.itemView.getTop() > AndroidUtilities.m107dp(56)) {
                        ChatAttachAlertDocumentLayout.this.listView.smoothScrollBy(0, holder.itemView.getTop() - AndroidUtilities.m107dp(56));
                    }
                }
                if (i4 == 1 && ChatAttachAlertDocumentLayout.this.searching && ChatAttachAlertDocumentLayout.this.listView.getAdapter() == ChatAttachAlertDocumentLayout.this.searchAdapter) {
                    AndroidUtilities.hideKeyboard(ChatAttachAlertDocumentLayout.this.parentAlert.getCurrentFocus());
                }
                ChatAttachAlertDocumentLayout.this.scrolling = i4 != 0;
            }
        });
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i4) {
                ChatAttachAlertDocumentLayout.this.lambda$new$1(view, i4);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda6
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i4) {
                boolean lambda$new$2;
                lambda$new$2 = ChatAttachAlertDocumentLayout.this.lambda$new$2(view, i4);
                return lambda$new$2;
            }
        });
        FiltersView filtersView = new FiltersView(context, resourcesProvider);
        this.filtersView = filtersView;
        filtersView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda5
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i4) {
                ChatAttachAlertDocumentLayout.this.lambda$new$3(view, i4);
            }
        });
        this.filtersView.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
        addView(this.filtersView, LayoutHelper.createFrame(-1, -2, 48));
        this.filtersView.setTranslationY(-AndroidUtilities.m107dp(44));
        this.filtersView.setVisibility(4);
        listRoots();
        updateSearchButton();
        updateEmptyView();
    }

    public /* synthetic */ void lambda$new$1(View view, int i) {
        Object item;
        int i2;
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        ListAdapter listAdapter = this.listAdapter;
        if (adapter == listAdapter) {
            item = listAdapter.getItem(i);
        } else {
            item = this.searchAdapter.getItem(i);
        }
        if (item instanceof ListItem) {
            ListItem listItem = (ListItem) item;
            File file = listItem.file;
            boolean isExternalStorageManager = Build.VERSION.SDK_INT >= 30 ? Environment.isExternalStorageManager() : false;
            if (!BuildVars.NO_SCOPED_STORAGE && (((i2 = listItem.icon) == C3632R.C3634drawable.files_storage || i2 == C3632R.C3634drawable.files_internal) && !isExternalStorageManager)) {
                this.delegate.startDocumentSelectActivity();
                return;
            }
            if (file == null) {
                int i3 = listItem.icon;
                if (i3 == C3632R.C3634drawable.files_gallery) {
                    final HashMap hashMap = new HashMap();
                    final ArrayList arrayList = new ArrayList();
                    BaseFragment baseFragment = this.parentAlert.baseFragment;
                    ChatActivity chatActivity = baseFragment instanceof ChatActivity ? (ChatActivity) baseFragment : null;
                    PhotoPickerActivity photoPickerActivity = new PhotoPickerActivity(0, MediaController.allMediaAlbumEntry, hashMap, arrayList, 0, chatActivity != null, chatActivity, false);
                    photoPickerActivity.setDocumentsPicker(true);
                    photoPickerActivity.setDelegate(new PhotoPickerActivity.PhotoPickerActivityDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.8
                        @Override // org.telegram.p043ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                        public /* synthetic */ boolean canFinishFragment() {
                            return PhotoPickerActivity.PhotoPickerActivityDelegate.CC.$default$canFinishFragment(this);
                        }

                        @Override // org.telegram.p043ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                        public void onCaptionChanged(CharSequence charSequence) {
                        }

                        @Override // org.telegram.p043ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                        public void selectedPhotosChanged() {
                        }

                        {
                            ChatAttachAlertDocumentLayout.this = this;
                        }

                        @Override // org.telegram.p043ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                        public void actionButtonPressed(boolean z, boolean z2, int i4, String str, boolean z3) {
                            if (z) {
                                return;
                            }
                            ChatAttachAlertDocumentLayout.this.sendSelectedPhotos(hashMap, arrayList, z2, i4, str, z3);
                        }

                        @Override // org.telegram.p043ui.PhotoPickerActivity.PhotoPickerActivityDelegate
                        public void onOpenInPressed() {
                            ChatAttachAlertDocumentLayout.this.delegate.startDocumentSelectActivity();
                        }
                    });
                    photoPickerActivity.setMaxSelectedPhotos(this.maxSelectedFiles, false);
                    this.parentAlert.presentFragment(photoPickerActivity);
                    this.parentAlert.dismiss(true);
                    return;
                } else if (i3 == C3632R.C3634drawable.files_music) {
                    DocumentSelectActivityDelegate documentSelectActivityDelegate = this.delegate;
                    if (documentSelectActivityDelegate != null) {
                        documentSelectActivityDelegate.startMusicSelectActivity();
                        return;
                    }
                    return;
                } else {
                    int topForScroll = getTopForScroll();
                    prepareAnimation();
                    HistoryEntry historyEntry = (HistoryEntry) this.listAdapter.history.remove(this.listAdapter.history.size() - 1);
                    this.parentAlert.actionBar.setTitle(historyEntry.title);
                    File file2 = historyEntry.dir;
                    if (file2 != null) {
                        listFiles(file2);
                    } else {
                        listRoots();
                    }
                    updateSearchButton();
                    this.layoutManager.scrollToPositionWithOffset(0, topForScroll);
                    runAnimation(2);
                    return;
                }
            } else if (file.isDirectory()) {
                HistoryEntry historyEntry2 = new HistoryEntry(null);
                View childAt = this.listView.getChildAt(0);
                RecyclerView.ViewHolder findContainingViewHolder = this.listView.findContainingViewHolder(childAt);
                if (findContainingViewHolder != null) {
                    findContainingViewHolder.getAdapterPosition();
                    childAt.getTop();
                    historyEntry2.dir = this.currentDir;
                    historyEntry2.title = this.parentAlert.actionBar.getTitle();
                    prepareAnimation();
                    this.listAdapter.history.add(historyEntry2);
                    if (listFiles(file)) {
                        runAnimation(1);
                        this.parentAlert.actionBar.setTitle(listItem.title);
                        return;
                    }
                    this.listAdapter.history.remove(historyEntry2);
                    return;
                }
                return;
            } else {
                onItemClick(view, listItem);
                return;
            }
        }
        onItemClick(view, item);
    }

    public /* synthetic */ boolean lambda$new$2(View view, int i) {
        Object item;
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        ListAdapter listAdapter = this.listAdapter;
        if (adapter == listAdapter) {
            item = listAdapter.getItem(i);
        } else {
            item = this.searchAdapter.getItem(i);
        }
        return onItemClick(view, item);
    }

    public /* synthetic */ void lambda$new$3(View view, int i) {
        this.filtersView.cancelClickRunnables(true);
        this.searchAdapter.addSearchFilter(this.filtersView.getFilterAt(i));
    }

    private void runAnimation(final int i) {
        final float m107dp;
        ValueAnimator valueAnimator = this.listAnimation;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.currentAnimationType = i;
        int i2 = 0;
        while (true) {
            if (i2 >= getChildCount()) {
                i2 = 0;
                break;
            } else if (getChildAt(i2) == this.listView) {
                break;
            } else {
                i2++;
            }
        }
        if (i == 1) {
            m107dp = AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION);
            this.backgroundListView.setAlpha(1.0f);
            this.backgroundListView.setScaleX(1.0f);
            this.backgroundListView.setScaleY(1.0f);
            this.backgroundListView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            removeView(this.backgroundListView);
            addView(this.backgroundListView, i2);
            this.backgroundListView.setVisibility(0);
            this.listView.setTranslationX(m107dp);
            this.listView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.listAnimation = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED);
        } else {
            m107dp = AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION);
            this.listView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.listView.setScaleX(0.95f);
            this.listView.setScaleY(0.95f);
            this.backgroundListView.setScaleX(1.0f);
            this.backgroundListView.setScaleY(1.0f);
            this.backgroundListView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            this.backgroundListView.setAlpha(1.0f);
            removeView(this.backgroundListView);
            addView(this.backgroundListView, i2 + 1);
            this.backgroundListView.setVisibility(0);
            this.listAnimation = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        }
        this.listAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ChatAttachAlertDocumentLayout.this.lambda$runAnimation$4(i, m107dp, valueAnimator2);
            }
        });
        this.listAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.9
            {
                ChatAttachAlertDocumentLayout.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                ChatAttachAlertDocumentLayout.this.backgroundListView.setVisibility(8);
                ChatAttachAlertDocumentLayout.this.currentAnimationType = 0;
                ChatAttachAlertDocumentLayout.this.listView.setAlpha(1.0f);
                ChatAttachAlertDocumentLayout.this.listView.setScaleX(1.0f);
                ChatAttachAlertDocumentLayout.this.listView.setScaleY(1.0f);
                ChatAttachAlertDocumentLayout.this.listView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                ChatAttachAlertDocumentLayout.this.listView.invalidate();
            }
        });
        if (i == 1) {
            this.listAnimation.setDuration(220L);
        } else {
            this.listAnimation.setDuration(200L);
        }
        this.listAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.listAnimation.start();
    }

    public /* synthetic */ void lambda$runAnimation$4(int i, float f, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (i == 1) {
            this.listView.setTranslationX(f * floatValue);
            this.listView.setAlpha(1.0f - floatValue);
            this.listView.invalidate();
            this.backgroundListView.setAlpha(floatValue);
            float f2 = (floatValue * 0.05f) + 0.95f;
            this.backgroundListView.setScaleX(f2);
            this.backgroundListView.setScaleY(f2);
            return;
        }
        this.backgroundListView.setTranslationX(f * floatValue);
        this.backgroundListView.setAlpha(Math.max((float) BitmapDescriptorFactory.HUE_RED, 1.0f - floatValue));
        this.backgroundListView.invalidate();
        this.listView.setAlpha(floatValue);
        float f3 = (floatValue * 0.05f) + 0.95f;
        this.listView.setScaleX(f3);
        this.listView.setScaleY(f3);
        this.backgroundListView.invalidate();
    }

    private void prepareAnimation() {
        View findViewByPosition;
        this.backgroundListAdapter.history.clear();
        this.backgroundListAdapter.history.addAll(this.listAdapter.history);
        this.backgroundListAdapter.items.clear();
        this.backgroundListAdapter.items.addAll(this.listAdapter.items);
        this.backgroundListAdapter.recentItems.clear();
        this.backgroundListAdapter.recentItems.addAll(this.listAdapter.recentItems);
        this.backgroundListAdapter.notifyDataSetChanged();
        this.backgroundListView.setVisibility(0);
        this.backgroundListView.setPadding(this.listView.getPaddingLeft(), this.listView.getPaddingTop(), this.listView.getPaddingRight(), this.listView.getPaddingBottom());
        int findFirstVisibleItemPosition = this.layoutManager.findFirstVisibleItemPosition();
        if (findFirstVisibleItemPosition < 0 || (findViewByPosition = this.layoutManager.findViewByPosition(findFirstVisibleItemPosition)) == null) {
            return;
        }
        this.backgroundLayoutManager.scrollToPositionWithOffset(findFirstVisibleItemPosition, findViewByPosition.getTop() - this.backgroundListView.getPaddingTop());
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onDestroy() {
        try {
            if (this.receiverRegistered) {
                ApplicationLoader.applicationContext.unregisterReceiver(this.receiver);
            }
        } catch (Exception e) {
            FileLog.m102e(e);
        }
        this.parentAlert.actionBar.closeSearchField();
        ActionBarMenu createMenu = this.parentAlert.actionBar.createMenu();
        createMenu.removeView(this.sortItem);
        createMenu.removeView(this.searchItem);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onMenuItemClick(int i) {
        if (i == ChatAttachAlertPhotoLayout.getSendWithoutGroupingSubItemId()) {
            sendSelectedItems(true, 0, null, false, false);
        } else if (i == ChatAttachAlertPhotoLayout.getOpenInSubItemId()) {
            this.delegate.startDocumentSelectActivity();
            this.parentAlert.dismiss();
        } else if (i == 6) {
            SharedConfig.toggleSortFilesByName();
            this.sortByName = SharedConfig.sortFilesByName;
            sortRecentItems();
            sortFileItems();
            this.listAdapter.notifyDataSetChanged();
            this.sortItem.setIcon(this.sortByName ? C3632R.C3634drawable.msg_contacts_time : C3632R.C3634drawable.msg_contacts_name);
        }
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        if (this.listView.getChildCount() <= 0) {
            return Integer.MAX_VALUE;
        }
        int i = 0;
        View childAt = this.listView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
        int y = ((int) childAt.getY()) - AndroidUtilities.m107dp(8);
        if (y > 0 && holder != null && holder.getAdapterPosition() == 0) {
            i = y;
        }
        if (y < 0 || holder == null || holder.getAdapterPosition() != 0) {
            y = i;
        }
        return y + AndroidUtilities.m107dp(13);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return this.listView.getPaddingTop();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.m107dp(5);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x003c  */
    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPreMeasure(int r4, int r5) {
        /*
            r3 = this;
            org.telegram.ui.Components.ChatAttachAlert r4 = r3.parentAlert
            org.telegram.ui.ActionBar.ActionBar r4 = r4.actionBar
            boolean r4 = r4.isSearchFieldVisible()
            r0 = 1
            r1 = 0
            if (r4 != 0) goto L43
            org.telegram.ui.Components.ChatAttachAlert r4 = r3.parentAlert
            org.telegram.ui.Components.SizeNotifierFrameLayout r4 = r4.sizeNotifierFrameLayout
            int r4 = r4.measureKeyboardHeight()
            r2 = 20
            int r2 = org.telegram.messenger.AndroidUtilities.m107dp(r2)
            if (r4 <= r2) goto L1d
            goto L43
        L1d:
            boolean r4 = org.telegram.messenger.AndroidUtilities.isTablet()
            if (r4 != 0) goto L31
            android.graphics.Point r4 = org.telegram.messenger.AndroidUtilities.displaySize
            int r2 = r4.x
            int r4 = r4.y
            if (r2 <= r4) goto L31
            float r4 = (float) r5
            r5 = 1080033280(0x40600000, float:3.5)
            float r4 = r4 / r5
            int r4 = (int) r4
            goto L35
        L31:
            int r5 = r5 / 5
            int r4 = r5 * 2
        L35:
            int r5 = org.telegram.messenger.AndroidUtilities.m107dp(r0)
            int r4 = r4 - r5
            if (r4 >= 0) goto L3d
            r4 = r1
        L3d:
            org.telegram.ui.Components.ChatAttachAlert r5 = r3.parentAlert
            r5.setAllowNestedScroll(r0)
            goto L4e
        L43:
            r4 = 56
            int r4 = org.telegram.messenger.AndroidUtilities.m107dp(r4)
            org.telegram.ui.Components.ChatAttachAlert r5 = r3.parentAlert
            r5.setAllowNestedScroll(r1)
        L4e:
            org.telegram.ui.Components.RecyclerListView r5 = r3.listView
            int r5 = r5.getPaddingTop()
            if (r5 == r4) goto L65
            r3.ignoreLayout = r0
            org.telegram.ui.Components.RecyclerListView r5 = r3.listView
            r0 = 48
            int r0 = org.telegram.messenger.AndroidUtilities.m107dp(r0)
            r5.setPadding(r1, r4, r1, r0)
            r3.ignoreLayout = r1
        L65:
            org.telegram.ui.Adapters.FiltersView r4 = r3.filtersView
            android.view.ViewGroup$LayoutParams r4 = r4.getLayoutParams()
            android.widget.FrameLayout$LayoutParams r4 = (android.widget.FrameLayout.LayoutParams) r4
            int r5 = org.telegram.p043ui.ActionBar.C3704ActionBar.getCurrentActionBarHeight()
            r4.topMargin = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatAttachAlertDocumentLayout.onPreMeasure(int, int):void");
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getButtonsHideOffset() {
        return AndroidUtilities.m107dp(62);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void scrollToTop() {
        this.listView.smoothScrollToPosition(0);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getSelectedItemsCount() {
        return this.selectedFiles.size() + this.selectedMessages.size();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    void sendSelectedItems(boolean z, int i, String str, boolean z2, boolean z3) {
        if ((this.selectedFiles.size() == 0 && this.selectedMessages.size() == 0) || this.delegate == null || this.sendPressed) {
            return;
        }
        this.sendPressed = true;
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        for (FilteredSearchView.MessageHashId messageHashId : this.selectedMessages.keySet()) {
            arrayList.add(this.selectedMessages.get(messageHashId));
        }
        this.delegate.didSelectFiles(new ArrayList<>(this.selectedFilesOrder), this.parentAlert.commentTextView.getText().toString(), arrayList, z, i, str, z2, z3);
        this.parentAlert.dismiss(true);
    }

    private boolean onItemClick(View view, Object obj) {
        boolean z;
        boolean z2 = false;
        if (obj instanceof ListItem) {
            ListItem listItem = (ListItem) obj;
            File file = listItem.file;
            if (file == null || file.isDirectory()) {
                return false;
            }
            String absolutePath = listItem.file.getAbsolutePath();
            if (this.selectedFiles.containsKey(absolutePath)) {
                this.selectedFiles.remove(absolutePath);
                this.selectedFilesOrder.remove(absolutePath);
                z = false;
            } else if (!listItem.file.canRead()) {
                showErrorBox(LocaleController.getString("AccessError", C3632R.string.AccessError));
                return false;
            } else if (this.canSelectOnlyImageFiles && listItem.thumb == null) {
                showErrorBox(LocaleController.formatString("PassportUploadNotImage", C3632R.string.PassportUploadNotImage, new Object[0]));
                return false;
            } else if ((listItem.file.length() > FileLoader.DEFAULT_MAX_FILE_SIZE && !UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) || listItem.file.length() > 4194304000L) {
                ChatAttachAlert chatAttachAlert = this.parentAlert;
                LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(chatAttachAlert.baseFragment, chatAttachAlert.getContainer().getContext(), 6, UserConfig.selectedAccount, null);
                limitReachedBottomSheet.setVeryLargeFile(true);
                limitReachedBottomSheet.show();
                return false;
            } else {
                if (this.maxSelectedFiles >= 0) {
                    int size = this.selectedFiles.size();
                    int i = this.maxSelectedFiles;
                    if (size >= i) {
                        showErrorBox(LocaleController.formatString("PassportUploadMaxReached", C3632R.string.PassportUploadMaxReached, LocaleController.formatPluralString("Files", i, new Object[0])));
                        return false;
                    }
                }
                if ((this.isSoundPicker && !isRingtone(listItem.file)) || listItem.file.length() == 0) {
                    return false;
                }
                this.selectedFiles.put(absolutePath, listItem);
                this.selectedFilesOrder.add(absolutePath);
                z = true;
            }
            this.scrolling = false;
        } else if (!(obj instanceof MessageObject)) {
            return false;
        } else {
            MessageObject messageObject = (MessageObject) obj;
            FilteredSearchView.MessageHashId messageHashId = new FilteredSearchView.MessageHashId(messageObject.getId(), messageObject.getDialogId());
            if (this.selectedMessages.containsKey(messageHashId)) {
                this.selectedMessages.remove(messageHashId);
            } else if (this.selectedMessages.size() >= 100) {
                return false;
            } else {
                this.selectedMessages.put(messageHashId, messageObject);
                z2 = true;
            }
            z = z2;
        }
        if (view instanceof SharedDocumentCell) {
            ((SharedDocumentCell) view).setChecked(z, true);
        }
        this.parentAlert.updateCountButton(z ? 1 : 2);
        return true;
    }

    public boolean isRingtone(File file) {
        int i;
        String fileExtension = FileLoader.getFileExtension(file);
        String mimeTypeFromExtension = fileExtension != null ? MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtension) : null;
        if (file.length() == 0 || mimeTypeFromExtension == null || !RingtoneDataStore.ringtoneSupportedMimeType.contains(mimeTypeFromExtension)) {
            BulletinFactory.m66of(this.parentAlert.getContainer(), null).createErrorBulletinSubtitle(LocaleController.formatString("InvalidFormatError", C3632R.string.InvalidFormatError, new Object[0]), LocaleController.formatString("ErrorInvalidRingtone", C3632R.string.ErrorRingtoneInvalidFormat, new Object[0]), null).show();
            return false;
        } else if (file.length() > MessagesController.getInstance(UserConfig.selectedAccount).ringtoneSizeMax) {
            BulletinFactory.m66of(this.parentAlert.getContainer(), null).createErrorBulletinSubtitle(LocaleController.formatString("TooLargeError", C3632R.string.TooLargeError, new Object[0]), LocaleController.formatString("ErrorRingtoneSizeTooBig", C3632R.string.ErrorRingtoneSizeTooBig, Integer.valueOf(MessagesController.getInstance(UserConfig.selectedAccount).ringtoneSizeMax / 1024)), null).show();
            return false;
        } else {
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(ApplicationLoader.applicationContext, Uri.fromFile(file));
                i = Integer.parseInt(mediaMetadataRetriever.extractMetadata(9));
            } catch (Exception unused) {
                i = Integer.MAX_VALUE;
            }
            if (i > MessagesController.getInstance(UserConfig.selectedAccount).ringtoneDurationMax * 1000) {
                BulletinFactory.m66of(this.parentAlert.getContainer(), null).createErrorBulletinSubtitle(LocaleController.formatString("TooLongError", C3632R.string.TooLongError, new Object[0]), LocaleController.formatString("ErrorRingtoneDurationTooLong", C3632R.string.ErrorRingtoneDurationTooLong, Integer.valueOf(MessagesController.getInstance(UserConfig.selectedAccount).ringtoneDurationMax)), null).show();
                return false;
            }
            return true;
        }
    }

    public void setMaxSelectedFiles(int i) {
        this.maxSelectedFiles = i;
    }

    public void setCanSelectOnlyImageFiles(boolean z) {
        this.canSelectOnlyImageFiles = z;
    }

    public void sendSelectedPhotos(HashMap<Object, Object> hashMap, ArrayList<Object> arrayList, boolean z, int i, String str, boolean z2) {
        if (hashMap.isEmpty() || this.delegate == null || this.sendPressed) {
            return;
        }
        this.sendPressed = true;
        ArrayList<SendMessagesHelper.SendingMediaInfo> arrayList2 = new ArrayList<>();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Object obj = hashMap.get(arrayList.get(i2));
            SendMessagesHelper.SendingMediaInfo sendingMediaInfo = new SendMessagesHelper.SendingMediaInfo();
            arrayList2.add(sendingMediaInfo);
            if (obj instanceof MediaController.PhotoEntry) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                String str2 = photoEntry.imagePath;
                if (str2 != null) {
                    sendingMediaInfo.path = str2;
                } else {
                    sendingMediaInfo.path = photoEntry.path;
                }
                sendingMediaInfo.thumbPath = photoEntry.thumbPath;
                sendingMediaInfo.videoEditedInfo = photoEntry.editedInfo;
                sendingMediaInfo.isVideo = photoEntry.isVideo;
                CharSequence charSequence = photoEntry.caption;
                sendingMediaInfo.caption = charSequence != null ? charSequence.toString() : null;
                sendingMediaInfo.entities = photoEntry.entities;
                sendingMediaInfo.masks = photoEntry.stickers;
                sendingMediaInfo.ttl = photoEntry.ttl;
            }
        }
        this.delegate.didSelectPhotos(arrayList2, z, i, str, z2);
    }

    public void loadRecentFiles() {
        try {
            if (this.isSoundPicker) {
                try {
                    Cursor query = ApplicationLoader.applicationContext.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "_data", "duration", "_size", "mime_type"}, "is_music != 0", null, "date_added DESC");
                    while (query.moveToNext()) {
                        File file = new File(query.getString(1));
                        long j = query.getLong(2);
                        long j2 = query.getLong(3);
                        String string = query.getString(4);
                        if (j <= MessagesController.getInstance(UserConfig.selectedAccount).ringtoneDurationMax * 1000 && j2 <= MessagesController.getInstance(UserConfig.selectedAccount).ringtoneSizeMax && (TextUtils.isEmpty(string) || MimeTypes.AUDIO_MPEG.equals(string) || !"audio/mpeg4".equals(string))) {
                            ListItem listItem = new ListItem(null);
                            listItem.title = file.getName();
                            listItem.file = file;
                            String name = file.getName();
                            String[] split = name.split("\\.");
                            listItem.ext = split.length > 1 ? split[split.length - 1] : "?";
                            listItem.subtitle = AndroidUtilities.formatFileSize(file.length());
                            String lowerCase = name.toLowerCase();
                            if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".png") || lowerCase.endsWith(".gif") || lowerCase.endsWith(".jpeg")) {
                                listItem.thumb = file.getAbsolutePath();
                            }
                            this.listAdapter.recentItems.add(listItem);
                        }
                    }
                    query.close();
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
            } else {
                checkDirectory(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS));
                sortRecentItems();
            }
        } catch (Exception e2) {
            FileLog.m102e(e2);
        }
    }

    private void checkDirectory(File file) {
        File[] listFiles = file.listFiles();
        File checkDirectory = FileLoader.checkDirectory(6);
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory() && file2.getName().equals("Telegram")) {
                    checkDirectory(file2);
                } else if (!file2.equals(checkDirectory)) {
                    ListItem listItem = new ListItem(null);
                    listItem.title = file2.getName();
                    listItem.file = file2;
                    String name = file2.getName();
                    String[] split = name.split("\\.");
                    listItem.ext = split.length > 1 ? split[split.length - 1] : "?";
                    listItem.subtitle = AndroidUtilities.formatFileSize(file2.length());
                    String lowerCase = name.toLowerCase();
                    if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".png") || lowerCase.endsWith(".gif") || lowerCase.endsWith(".jpeg")) {
                        listItem.thumb = file2.getAbsolutePath();
                    }
                    this.listAdapter.recentItems.add(listItem);
                }
            }
        }
    }

    private void sortRecentItems() {
        Collections.sort(this.listAdapter.recentItems, new Comparator() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda3
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$sortRecentItems$5;
                lambda$sortRecentItems$5 = ChatAttachAlertDocumentLayout.this.lambda$sortRecentItems$5((ChatAttachAlertDocumentLayout.ListItem) obj, (ChatAttachAlertDocumentLayout.ListItem) obj2);
                return lambda$sortRecentItems$5;
            }
        });
    }

    public /* synthetic */ int lambda$sortRecentItems$5(ListItem listItem, ListItem listItem2) {
        if (this.sortByName) {
            return listItem.file.getName().compareToIgnoreCase(listItem2.file.getName());
        }
        int i = (listItem.file.lastModified() > listItem2.file.lastModified() ? 1 : (listItem.file.lastModified() == listItem2.file.lastModified() ? 0 : -1));
        if (i == 0) {
            return 0;
        }
        return i > 0 ? -1 : 1;
    }

    private void sortFileItems() {
        if (this.currentDir == null) {
            return;
        }
        Collections.sort(this.listAdapter.items, new Comparator() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$sortFileItems$6;
                lambda$sortFileItems$6 = ChatAttachAlertDocumentLayout.this.lambda$sortFileItems$6((ChatAttachAlertDocumentLayout.ListItem) obj, (ChatAttachAlertDocumentLayout.ListItem) obj2);
                return lambda$sortFileItems$6;
            }
        });
    }

    public /* synthetic */ int lambda$sortFileItems$6(ListItem listItem, ListItem listItem2) {
        File file = listItem.file;
        if (file == null) {
            return -1;
        }
        if (listItem2.file == null) {
            return 1;
        }
        boolean isDirectory = file.isDirectory();
        if (isDirectory != listItem2.file.isDirectory()) {
            return isDirectory ? -1 : 1;
        } else if (isDirectory || this.sortByName) {
            return listItem.file.getName().compareToIgnoreCase(listItem2.file.getName());
        } else {
            int i = (listItem.file.lastModified() > listItem2.file.lastModified() ? 1 : (listItem.file.lastModified() == listItem2.file.lastModified() ? 0 : -1));
            if (i == 0) {
                return 0;
            }
            return i > 0 ? -1 : 1;
        }
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        SearchAdapter searchAdapter = this.searchAdapter;
        if (searchAdapter != null) {
            searchAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        onSelectedItemsCountChanged(0);
        this.parentAlert.selectedMenuItem.showSubItem(ChatAttachAlertPhotoLayout.getOpenInSubItemId());
        this.parentAlert.actionBar.createMenu().setPadding(0, 0, AndroidUtilities.m107dp(44), 0);
        this.selectedFiles.clear();
        this.selectedMessages.clear();
        this.searchAdapter.currentSearchFilters.clear();
        this.selectedFilesOrder.clear();
        this.listAdapter.history.clear();
        listRoots();
        updateSearchButton();
        updateEmptyView();
        this.parentAlert.actionBar.setTitle(LocaleController.getString("SelectFile", C3632R.string.SelectFile));
        this.sortItem.setVisibility(0);
        this.layoutManager.scrollToPositionWithOffset(0, 0);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHide() {
        this.parentAlert.actionBar.createMenu().setPadding(0, 0, 0, 0);
        this.sortItem.setVisibility(8);
        this.searchItem.setVisibility(8);
    }

    public void updateEmptyViewPosition() {
        View childAt;
        if (this.emptyView.getVisibility() == 0 && (childAt = this.listView.getChildAt(0)) != null) {
            float translationY = this.emptyView.getTranslationY();
            this.additionalTranslationY = ((this.emptyView.getMeasuredHeight() - getMeasuredHeight()) + childAt.getTop()) / 2;
            this.emptyView.setTranslationY(translationY);
        }
    }

    public void updateEmptyView() {
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        SearchAdapter searchAdapter = this.searchAdapter;
        boolean z = true;
        if (adapter != searchAdapter ? this.listAdapter.getItemCount() != 1 : !searchAdapter.searchResult.isEmpty() || !this.searchAdapter.sections.isEmpty()) {
            z = false;
        }
        this.emptyView.setVisibility(z ? 0 : 8);
        updateEmptyViewPosition();
    }

    public void updateSearchButton() {
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem == null || actionBarMenuItem.isSearchFieldVisible()) {
            return;
        }
        this.searchItem.setVisibility((this.hasFiles || this.listAdapter.history.isEmpty()) ? 0 : 8);
    }

    private int getTopForScroll() {
        View childAt = this.listView.getChildAt(0);
        RecyclerView.ViewHolder findContainingViewHolder = this.listView.findContainingViewHolder(childAt);
        int i = -this.listView.getPaddingTop();
        return (findContainingViewHolder == null || findContainingViewHolder.getAdapterPosition() != 0) ? i : i + childAt.getTop();
    }

    private boolean canClosePicker() {
        if (this.listAdapter.history.size() > 0) {
            prepareAnimation();
            HistoryEntry historyEntry = (HistoryEntry) this.listAdapter.history.remove(this.listAdapter.history.size() - 1);
            this.parentAlert.actionBar.setTitle(historyEntry.title);
            int topForScroll = getTopForScroll();
            File file = historyEntry.dir;
            if (file != null) {
                listFiles(file);
            } else {
                listRoots();
            }
            updateSearchButton();
            this.layoutManager.scrollToPositionWithOffset(0, topForScroll);
            runAnimation(2);
            return false;
        }
        return true;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public boolean onBackPressed() {
        if (canClosePicker()) {
            return super.onBackPressed();
        }
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateEmptyViewPosition();
    }

    public void setDelegate(DocumentSelectActivityDelegate documentSelectActivityDelegate) {
        this.delegate = documentSelectActivityDelegate;
    }

    public boolean listFiles(File file) {
        this.hasFiles = false;
        if (!file.canRead()) {
            if ((file.getAbsolutePath().startsWith(Environment.getExternalStorageDirectory().toString()) || file.getAbsolutePath().startsWith("/sdcard") || file.getAbsolutePath().startsWith("/mnt/sdcard")) && !Environment.getExternalStorageState().equals("mounted") && !Environment.getExternalStorageState().equals("mounted_ro")) {
                this.currentDir = file;
                this.listAdapter.items.clear();
                Environment.getExternalStorageState();
                AndroidUtilities.clearDrawableAnimation(this.listView);
                this.scrolling = true;
                this.listAdapter.notifyDataSetChanged();
                return true;
            }
            showErrorBox(LocaleController.getString("AccessError", C3632R.string.AccessError));
            return false;
        }
        try {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                showErrorBox(LocaleController.getString("UnknownError", C3632R.string.UnknownError));
                return false;
            }
            this.currentDir = file;
            this.listAdapter.items.clear();
            File checkDirectory = FileLoader.checkDirectory(6);
            for (File file2 : listFiles) {
                if (file2.getName().indexOf(46) != 0 && !file2.equals(checkDirectory)) {
                    ListItem listItem = new ListItem(null);
                    listItem.title = file2.getName();
                    listItem.file = file2;
                    if (file2.isDirectory()) {
                        listItem.icon = C3632R.C3634drawable.files_folder;
                        listItem.subtitle = LocaleController.getString("Folder", C3632R.string.Folder);
                    } else {
                        this.hasFiles = true;
                        String name = file2.getName();
                        String[] split = name.split("\\.");
                        listItem.ext = split.length > 1 ? split[split.length - 1] : "?";
                        listItem.subtitle = AndroidUtilities.formatFileSize(file2.length());
                        String lowerCase = name.toLowerCase();
                        if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".png") || lowerCase.endsWith(".gif") || lowerCase.endsWith(".jpeg")) {
                            listItem.thumb = file2.getAbsolutePath();
                        }
                    }
                    this.listAdapter.items.add(listItem);
                }
            }
            ListItem listItem2 = new ListItem(null);
            listItem2.title = "..";
            if (this.listAdapter.history.size() > 0) {
                File file3 = ((HistoryEntry) this.listAdapter.history.get(this.listAdapter.history.size() - 1)).dir;
                if (file3 == null) {
                    listItem2.subtitle = LocaleController.getString("Folder", C3632R.string.Folder);
                } else {
                    listItem2.subtitle = file3.toString();
                }
            } else {
                listItem2.subtitle = LocaleController.getString("Folder", C3632R.string.Folder);
            }
            listItem2.icon = C3632R.C3634drawable.files_folder;
            listItem2.file = null;
            this.listAdapter.items.add(0, listItem2);
            sortFileItems();
            updateSearchButton();
            AndroidUtilities.clearDrawableAnimation(this.listView);
            this.scrolling = true;
            int topForScroll = getTopForScroll();
            this.listAdapter.notifyDataSetChanged();
            this.layoutManager.scrollToPositionWithOffset(0, topForScroll);
            return true;
        } catch (Exception e) {
            showErrorBox(e.getLocalizedMessage());
            return false;
        }
    }

    private void showErrorBox(String str) {
        new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString("AppName", C3632R.string.AppName)).setMessage(str).setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), null).show();
    }

    /* JADX WARN: Removed duplicated region for block: B:203:0x01a2 A[Catch: Exception -> 0x01c3, TRY_LEAVE, TryCatch #4 {Exception -> 0x01c3, blocks: (B:201:0x0191, B:203:0x01a2), top: B:234:0x0191 }] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x023f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void listRoots() {
        /*
            Method dump skipped, instructions count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatAttachAlertDocumentLayout.listRoots():void");
    }

    /* renamed from: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$ListAdapter */
    /* loaded from: classes6.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;
        private ArrayList<ListItem> items = new ArrayList<>();
        private ArrayList<HistoryEntry> history = new ArrayList<>();
        private ArrayList<ListItem> recentItems = new ArrayList<>();

        public ListAdapter(Context context) {
            ChatAttachAlertDocumentLayout.this = r1;
            this.mContext = context;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int size = this.items.size();
            if (this.history.isEmpty() && !this.recentItems.isEmpty()) {
                size += this.recentItems.size() + 2;
            }
            return size + 1;
        }

        public ListItem getItem(int i) {
            int size;
            int size2 = this.items.size();
            if (i < size2) {
                return this.items.get(i);
            }
            if (!this.history.isEmpty() || this.recentItems.isEmpty() || i == size2 || i == size2 + 1 || (size = i - (this.items.size() + 2)) >= this.recentItems.size()) {
                return null;
            }
            return this.recentItems.get(size);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == getItemCount() - 1) {
                return 3;
            }
            int size = this.items.size();
            if (i == size) {
                return 2;
            }
            return i == size + 1 ? 0 : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View headerCell;
            View sharedDocumentCell;
            if (i != 0) {
                if (i == 1) {
                    sharedDocumentCell = new SharedDocumentCell(this.mContext, 1, ChatAttachAlertDocumentLayout.this.resourcesProvider);
                } else if (i == 2) {
                    sharedDocumentCell = new ShadowSectionCell(this.mContext);
                    CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(ChatAttachAlertDocumentLayout.this.getThemedColor(Theme.key_windowBackgroundGray)), Theme.getThemedDrawableByKey(this.mContext, C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                    combinedDrawable.setFullsize(true);
                    sharedDocumentCell.setBackgroundDrawable(combinedDrawable);
                } else {
                    headerCell = new View(this.mContext);
                }
                headerCell = sharedDocumentCell;
            } else {
                headerCell = new HeaderCell(this.mContext, ChatAttachAlertDocumentLayout.this.resourcesProvider);
            }
            return new RecyclerListView.Holder(headerCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                if (ChatAttachAlertDocumentLayout.this.sortByName) {
                    headerCell.setText(LocaleController.getString("RecentFilesAZ", C3632R.string.RecentFilesAZ));
                } else {
                    headerCell.setText(LocaleController.getString("RecentFiles", C3632R.string.RecentFiles));
                }
            } else if (itemViewType != 1) {
            } else {
                ListItem item = getItem(i);
                SharedDocumentCell sharedDocumentCell = (SharedDocumentCell) viewHolder.itemView;
                int i2 = item.icon;
                if (i2 != 0) {
                    sharedDocumentCell.setTextAndValueAndTypeAndThumb(item.title, item.subtitle, null, null, i2, i != this.items.size() - 1);
                } else {
                    sharedDocumentCell.setTextAndValueAndTypeAndThumb(item.title, item.subtitle, item.ext.toUpperCase().substring(0, Math.min(item.ext.length(), 4)), item.thumb, 0, false);
                }
                if (item.file != null) {
                    sharedDocumentCell.setChecked(ChatAttachAlertDocumentLayout.this.selectedFiles.containsKey(item.file.toString()), !ChatAttachAlertDocumentLayout.this.scrolling);
                } else {
                    sharedDocumentCell.setChecked(false, !ChatAttachAlertDocumentLayout.this.scrolling);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            ChatAttachAlertDocumentLayout.this.updateEmptyView();
        }
    }

    /* renamed from: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$SearchAdapter */
    /* loaded from: classes6.dex */
    public class SearchAdapter extends RecyclerListView.SectionsAdapter {
        private String currentDataQuery;
        private long currentSearchDialogId;
        private FiltersView.MediaFilterData currentSearchFilter;
        private long currentSearchMaxDate;
        private long currentSearchMinDate;
        private boolean endReached;
        private boolean isLoading;
        private String lastMessagesSearchString;
        private String lastSearchFilterQueryString;
        private Runnable localSearchRunnable;
        private Context mContext;
        private int nextSearchRate;
        private int requestIndex;
        private Runnable searchRunnable;
        private ArrayList<ListItem> searchResult = new ArrayList<>();
        private final FilteredSearchView.MessageHashId messageHashIdTmp = new FilteredSearchView.MessageHashId(0, 0);
        private ArrayList<Object> localTipChats = new ArrayList<>();
        private ArrayList<FiltersView.DateData> localTipDates = new ArrayList<>();
        public ArrayList<MessageObject> messages = new ArrayList<>();
        public SparseArray<MessageObject> messagesById = new SparseArray<>();
        public ArrayList<String> sections = new ArrayList<>();
        public HashMap<String, ArrayList<MessageObject>> sectionArrays = new HashMap<>();
        private ArrayList<FiltersView.MediaFilterData> currentSearchFilters = new ArrayList<>();
        private AnimationNotificationsLocker notificationsLocker = new AnimationNotificationsLocker();
        private Runnable clearCurrentResultsRunnable = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.SearchAdapter.1
            {
                SearchAdapter.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (SearchAdapter.this.isLoading) {
                    SearchAdapter.this.messages.clear();
                    SearchAdapter.this.sections.clear();
                    SearchAdapter.this.sectionArrays.clear();
                    SearchAdapter.this.notifyDataSetChanged();
                }
            }
        };

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            return null;
        }

        public SearchAdapter(Context context) {
            ChatAttachAlertDocumentLayout.this = r4;
            this.mContext = context;
        }

        public void search(final String str, boolean z) {
            long j;
            Runnable runnable = this.localSearchRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.localSearchRunnable = null;
            }
            if (TextUtils.isEmpty(str)) {
                if (!this.searchResult.isEmpty()) {
                    this.searchResult.clear();
                }
                if (ChatAttachAlertDocumentLayout.this.listView.getAdapter() != ChatAttachAlertDocumentLayout.this.listAdapter) {
                    ChatAttachAlertDocumentLayout.this.listView.setAdapter(ChatAttachAlertDocumentLayout.this.listAdapter);
                }
                notifyDataSetChanged();
            } else {
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatAttachAlertDocumentLayout.SearchAdapter.this.lambda$search$1(str);
                    }
                };
                this.localSearchRunnable = runnable2;
                AndroidUtilities.runOnUIThread(runnable2, 300L);
            }
            if (ChatAttachAlertDocumentLayout.this.canSelectOnlyImageFiles || !ChatAttachAlertDocumentLayout.this.listAdapter.history.isEmpty()) {
                return;
            }
            long j2 = 0;
            long j3 = 0;
            long j4 = 0;
            for (int i = 0; i < this.currentSearchFilters.size(); i++) {
                FiltersView.MediaFilterData mediaFilterData = this.currentSearchFilters.get(i);
                int i2 = mediaFilterData.filterType;
                if (i2 == 4) {
                    TLObject tLObject = mediaFilterData.chat;
                    if (tLObject instanceof TLRPC$User) {
                        j = ((TLRPC$User) tLObject).f1751id;
                    } else if (tLObject instanceof TLRPC$Chat) {
                        j = -((TLRPC$Chat) tLObject).f1602id;
                    }
                    j4 = j;
                } else if (i2 == 6) {
                    FiltersView.DateData dateData = mediaFilterData.dateData;
                    j2 = dateData.minDate;
                    j3 = dateData.maxDate;
                }
            }
            searchGlobal(j4, j2, j3, FiltersView.filters[2], str, z);
        }

        public /* synthetic */ void lambda$search$1(final String str) {
            final ArrayList arrayList = new ArrayList(ChatAttachAlertDocumentLayout.this.listAdapter.items);
            if (ChatAttachAlertDocumentLayout.this.listAdapter.history.isEmpty()) {
                arrayList.addAll(0, ChatAttachAlertDocumentLayout.this.listAdapter.recentItems);
            }
            final boolean z = !this.currentSearchFilters.isEmpty();
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ChatAttachAlertDocumentLayout.SearchAdapter.this.lambda$search$0(str, z, arrayList);
                }
            });
        }

        public /* synthetic */ void lambda$search$0(String str, boolean z, ArrayList arrayList) {
            String lowerCase = str.trim().toLowerCase();
            if (lowerCase.length() == 0) {
                updateSearchResults(new ArrayList<>(), str);
                return;
            }
            String translitString = LocaleController.getInstance().getTranslitString(lowerCase);
            translitString = (lowerCase.equals(translitString) || translitString.length() == 0) ? null : null;
            int i = (translitString != null ? 1 : 0) + 1;
            String[] strArr = new String[i];
            strArr[0] = lowerCase;
            if (translitString != null) {
                strArr[1] = translitString;
            }
            ArrayList<ListItem> arrayList2 = new ArrayList<>();
            if (!z) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    ListItem listItem = (ListItem) arrayList.get(i2);
                    File file = listItem.file;
                    if (file != null && !file.isDirectory()) {
                        int i3 = 0;
                        while (true) {
                            if (i3 < i) {
                                String str2 = strArr[i3];
                                String str3 = listItem.title;
                                if (str3 != null ? str3.toLowerCase().contains(str2) : false) {
                                    arrayList2.add(listItem);
                                    break;
                                }
                                i3++;
                            }
                        }
                    }
                }
            }
            updateSearchResults(arrayList2, str);
        }

        public void loadMore() {
            FiltersView.MediaFilterData mediaFilterData;
            if (ChatAttachAlertDocumentLayout.this.searchAdapter.isLoading || ChatAttachAlertDocumentLayout.this.searchAdapter.endReached || (mediaFilterData = this.currentSearchFilter) == null) {
                return;
            }
            searchGlobal(this.currentSearchDialogId, this.currentSearchMinDate, this.currentSearchMaxDate, mediaFilterData, this.lastMessagesSearchString, false);
        }

        public void removeSearchFilter(FiltersView.MediaFilterData mediaFilterData) {
            this.currentSearchFilters.remove(mediaFilterData);
        }

        public void addSearchFilter(FiltersView.MediaFilterData mediaFilterData) {
            if (!this.currentSearchFilters.isEmpty()) {
                for (int i = 0; i < this.currentSearchFilters.size(); i++) {
                    if (mediaFilterData.isSameType(this.currentSearchFilters.get(i))) {
                        return;
                    }
                }
            }
            this.currentSearchFilters.add(mediaFilterData);
            ChatAttachAlertDocumentLayout.this.parentAlert.actionBar.setSearchFilter(mediaFilterData);
            ChatAttachAlertDocumentLayout.this.parentAlert.actionBar.setSearchFieldText("");
            updateFiltersView(true, null, null, true);
        }

        /* JADX WARN: Removed duplicated region for block: B:155:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:166:0x00bc  */
        /* JADX WARN: Removed duplicated region for block: B:169:0x00cb  */
        /* JADX WARN: Removed duplicated region for block: B:172:0x00d9  */
        /* JADX WARN: Removed duplicated region for block: B:190:0x0194  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void updateFiltersView(boolean r9, java.util.ArrayList<java.lang.Object> r10, java.util.ArrayList<org.telegram.p043ui.Adapters.FiltersView.DateData> r11, boolean r12) {
            /*
                Method dump skipped, instructions count: 502
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ChatAttachAlertDocumentLayout.SearchAdapter.updateFiltersView(boolean, java.util.ArrayList, java.util.ArrayList, boolean):void");
        }

        private void searchGlobal(final long j, final long j2, final long j3, FiltersView.MediaFilterData mediaFilterData, final String str, boolean z) {
            final String format = String.format(Locale.ENGLISH, "%d%d%d%d%s", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3), Integer.valueOf(mediaFilterData.filterType), str);
            String str2 = this.lastSearchFilterQueryString;
            boolean z2 = str2 != null && str2.equals(format);
            boolean z3 = !z2 && z;
            if (j == this.currentSearchDialogId && this.currentSearchMinDate == j2) {
                int i = (this.currentSearchMaxDate > j3 ? 1 : (this.currentSearchMaxDate == j3 ? 0 : -1));
            }
            this.currentSearchFilter = mediaFilterData;
            this.currentSearchDialogId = j;
            this.currentSearchMinDate = j2;
            this.currentSearchMaxDate = j3;
            Runnable runnable = this.searchRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            AndroidUtilities.cancelRunOnUIThread(this.clearCurrentResultsRunnable);
            if (z2 && z) {
                return;
            }
            if (z3) {
                this.messages.clear();
                this.sections.clear();
                this.sectionArrays.clear();
                this.isLoading = true;
                ChatAttachAlertDocumentLayout.this.emptyView.setVisibility(0);
                notifyDataSetChanged();
                this.requestIndex++;
                if (ChatAttachAlertDocumentLayout.this.listView.getPinnedHeader() != null) {
                    ChatAttachAlertDocumentLayout.this.listView.getPinnedHeader().setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
                this.localTipChats.clear();
                this.localTipDates.clear();
            }
            this.isLoading = true;
            notifyDataSetChanged();
            if (!z2) {
                this.clearCurrentResultsRunnable.run();
                ChatAttachAlertDocumentLayout.this.emptyView.showProgress(true, !z);
            }
            if (TextUtils.isEmpty(str)) {
                this.localTipDates.clear();
                this.localTipChats.clear();
                updateFiltersView(false, null, null, true);
                return;
            }
            final int i2 = 1 + this.requestIndex;
            this.requestIndex = i2;
            final AccountInstance accountInstance = AccountInstance.getInstance(UserConfig.selectedAccount);
            final boolean z4 = z2;
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ChatAttachAlertDocumentLayout.SearchAdapter.this.lambda$searchGlobal$4(j, str, accountInstance, j2, j3, z4, format, i2);
                }
            };
            this.searchRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, (!z2 || this.messages.isEmpty()) ? 350L : 0L);
            ChatAttachAlertDocumentLayout.this.loadingView.setViewType(3);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ void lambda$searchGlobal$4(final long j, final String str, final AccountInstance accountInstance, final long j2, long j3, final boolean z, String str2, final int i) {
            long j4;
            TLRPC$TL_messages_searchGlobal tLRPC$TL_messages_searchGlobal;
            final ArrayList<Object> arrayList = null;
            if (j != 0) {
                TLRPC$TL_messages_search tLRPC$TL_messages_search = new TLRPC$TL_messages_search();
                tLRPC$TL_messages_search.f1711q = str;
                tLRPC$TL_messages_search.limit = 20;
                tLRPC$TL_messages_search.filter = this.currentSearchFilter.filter;
                tLRPC$TL_messages_search.peer = accountInstance.getMessagesController().getInputPeer(j);
                if (j2 > 0) {
                    tLRPC$TL_messages_search.min_date = (int) (j2 / 1000);
                }
                if (j3 > 0) {
                    tLRPC$TL_messages_search.max_date = (int) (j3 / 1000);
                }
                if (z && str.equals(this.lastMessagesSearchString) && !this.messages.isEmpty()) {
                    ArrayList<MessageObject> arrayList2 = this.messages;
                    tLRPC$TL_messages_search.offset_id = arrayList2.get(arrayList2.size() - 1).getId();
                    tLRPC$TL_messages_searchGlobal = tLRPC$TL_messages_search;
                } else {
                    tLRPC$TL_messages_search.offset_id = 0;
                    tLRPC$TL_messages_searchGlobal = tLRPC$TL_messages_search;
                }
            } else {
                if (!TextUtils.isEmpty(str)) {
                    arrayList = new ArrayList<>();
                    accountInstance.getMessagesStorage().localSearch(0, str, arrayList, new ArrayList<>(), new ArrayList<>(), null, -1);
                }
                TLRPC$TL_messages_searchGlobal tLRPC$TL_messages_searchGlobal2 = new TLRPC$TL_messages_searchGlobal();
                tLRPC$TL_messages_searchGlobal2.limit = 20;
                tLRPC$TL_messages_searchGlobal2.f1712q = str;
                tLRPC$TL_messages_searchGlobal2.filter = this.currentSearchFilter.filter;
                if (j2 > 0) {
                    tLRPC$TL_messages_searchGlobal2.min_date = (int) (j2 / 1000);
                }
                if (j3 > 0) {
                    tLRPC$TL_messages_searchGlobal2.max_date = (int) (j3 / 1000);
                }
                if (z && str.equals(this.lastMessagesSearchString) && !this.messages.isEmpty()) {
                    ArrayList<MessageObject> arrayList3 = this.messages;
                    MessageObject messageObject = arrayList3.get(arrayList3.size() - 1);
                    tLRPC$TL_messages_searchGlobal2.offset_id = messageObject.getId();
                    tLRPC$TL_messages_searchGlobal2.offset_rate = this.nextSearchRate;
                    TLRPC$Peer tLRPC$Peer = messageObject.messageOwner.peer_id;
                    long j5 = tLRPC$Peer.channel_id;
                    if (j5 == 0) {
                        j5 = tLRPC$Peer.chat_id;
                        if (j5 == 0) {
                            j4 = tLRPC$Peer.user_id;
                            tLRPC$TL_messages_searchGlobal2.offset_peer = accountInstance.getMessagesController().getInputPeer(j4);
                            tLRPC$TL_messages_searchGlobal = tLRPC$TL_messages_searchGlobal2;
                        }
                    }
                    j4 = -j5;
                    tLRPC$TL_messages_searchGlobal2.offset_peer = accountInstance.getMessagesController().getInputPeer(j4);
                    tLRPC$TL_messages_searchGlobal = tLRPC$TL_messages_searchGlobal2;
                } else {
                    tLRPC$TL_messages_searchGlobal2.offset_rate = 0;
                    tLRPC$TL_messages_searchGlobal2.offset_id = 0;
                    tLRPC$TL_messages_searchGlobal2.offset_peer = new TLRPC$TL_inputPeerEmpty();
                    tLRPC$TL_messages_searchGlobal = tLRPC$TL_messages_searchGlobal2;
                }
            }
            TLRPC$TL_messages_searchGlobal tLRPC$TL_messages_searchGlobal3 = tLRPC$TL_messages_searchGlobal;
            this.lastMessagesSearchString = str;
            this.lastSearchFilterQueryString = str2;
            final ArrayList arrayList4 = new ArrayList();
            FiltersView.fillTipDates(this.lastMessagesSearchString, arrayList4);
            accountInstance.getConnectionsManager().sendRequest(tLRPC$TL_messages_searchGlobal3, new RequestDelegate() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ChatAttachAlertDocumentLayout.SearchAdapter.this.lambda$searchGlobal$3(accountInstance, str, i, z, j, j2, arrayList, arrayList4, tLObject, tLRPC$TL_error);
                }
            });
        }

        public /* synthetic */ void lambda$searchGlobal$3(final AccountInstance accountInstance, final String str, final int i, final boolean z, final long j, final long j2, final ArrayList arrayList, final ArrayList arrayList2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
            final ArrayList arrayList3 = new ArrayList();
            if (tLRPC$TL_error == null) {
                TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
                int size = tLRPC$messages_Messages.messages.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MessageObject messageObject = new MessageObject(accountInstance.getCurrentAccount(), tLRPC$messages_Messages.messages.get(i2), false, true);
                    messageObject.setQuery(str);
                    arrayList3.add(messageObject);
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ChatAttachAlertDocumentLayout.SearchAdapter.this.lambda$searchGlobal$2(i, tLRPC$TL_error, tLObject, accountInstance, z, str, arrayList3, j, j2, arrayList, arrayList2);
                }
            });
        }

        public /* synthetic */ void lambda$searchGlobal$2(int i, TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, AccountInstance accountInstance, boolean z, String str, ArrayList arrayList, long j, long j2, ArrayList arrayList2, ArrayList arrayList3) {
            boolean z2;
            if (i != this.requestIndex) {
                return;
            }
            this.isLoading = false;
            if (tLRPC$TL_error != null) {
                ChatAttachAlertDocumentLayout.this.emptyView.title.setText(LocaleController.getString("SearchEmptyViewTitle2", C3632R.string.SearchEmptyViewTitle2));
                ChatAttachAlertDocumentLayout.this.emptyView.subtitle.setVisibility(0);
                ChatAttachAlertDocumentLayout.this.emptyView.subtitle.setText(LocaleController.getString("SearchEmptyViewFilteredSubtitle2", C3632R.string.SearchEmptyViewFilteredSubtitle2));
                ChatAttachAlertDocumentLayout.this.emptyView.showProgress(false, true);
                return;
            }
            ChatAttachAlertDocumentLayout.this.emptyView.showProgress(false);
            TLRPC$messages_Messages tLRPC$messages_Messages = (TLRPC$messages_Messages) tLObject;
            this.nextSearchRate = tLRPC$messages_Messages.next_rate;
            accountInstance.getMessagesStorage().putUsersAndChats(tLRPC$messages_Messages.users, tLRPC$messages_Messages.chats, true, true);
            accountInstance.getMessagesController().putUsers(tLRPC$messages_Messages.users, false);
            accountInstance.getMessagesController().putChats(tLRPC$messages_Messages.chats, false);
            if (!z) {
                this.messages.clear();
                this.messagesById.clear();
                this.sections.clear();
                this.sectionArrays.clear();
            }
            int i2 = tLRPC$messages_Messages.count;
            this.currentDataQuery = str;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                MessageObject messageObject = (MessageObject) arrayList.get(i3);
                ArrayList<MessageObject> arrayList4 = this.sectionArrays.get(messageObject.monthKey);
                if (arrayList4 == null) {
                    arrayList4 = new ArrayList<>();
                    this.sectionArrays.put(messageObject.monthKey, arrayList4);
                    this.sections.add(messageObject.monthKey);
                }
                arrayList4.add(messageObject);
                this.messages.add(messageObject);
                this.messagesById.put(messageObject.getId(), messageObject);
            }
            if (this.messages.size() > i2) {
                i2 = this.messages.size();
            }
            this.endReached = this.messages.size() >= i2;
            if (this.messages.isEmpty()) {
                if (!TextUtils.isEmpty(this.currentDataQuery) || j != 0 || j2 != 0) {
                    ChatAttachAlertDocumentLayout.this.emptyView.title.setText(LocaleController.getString("SearchEmptyViewTitle2", C3632R.string.SearchEmptyViewTitle2));
                    ChatAttachAlertDocumentLayout.this.emptyView.subtitle.setVisibility(0);
                    ChatAttachAlertDocumentLayout.this.emptyView.subtitle.setText(LocaleController.getString("SearchEmptyViewFilteredSubtitle2", C3632R.string.SearchEmptyViewFilteredSubtitle2));
                } else {
                    ChatAttachAlertDocumentLayout.this.emptyView.title.setText(LocaleController.getString("SearchEmptyViewTitle", C3632R.string.SearchEmptyViewTitle));
                    ChatAttachAlertDocumentLayout.this.emptyView.subtitle.setVisibility(0);
                    ChatAttachAlertDocumentLayout.this.emptyView.subtitle.setText(LocaleController.getString("SearchEmptyViewFilteredSubtitleFiles", C3632R.string.SearchEmptyViewFilteredSubtitleFiles));
                }
            }
            if (!z) {
                this.localTipChats.clear();
                if (arrayList2 != null) {
                    this.localTipChats.addAll(arrayList2);
                }
                if (str.length() >= 3 && (LocaleController.getString("SavedMessages", C3632R.string.SavedMessages).toLowerCase().startsWith(str) || "saved messages".startsWith(str))) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= this.localTipChats.size()) {
                            z2 = false;
                            break;
                        } else if ((this.localTipChats.get(i4) instanceof TLRPC$User) && UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser().f1751id == ((TLRPC$User) this.localTipChats.get(i4)).f1751id) {
                            z2 = true;
                            break;
                        } else {
                            i4++;
                        }
                    }
                    if (!z2) {
                        this.localTipChats.add(0, UserConfig.getInstance(UserConfig.selectedAccount).getCurrentUser());
                    }
                }
                this.localTipDates.clear();
                this.localTipDates.addAll(arrayList3);
                updateFiltersView(TextUtils.isEmpty(this.currentDataQuery), this.localTipChats, this.localTipDates, true);
            }
            final View view = null;
            final int i5 = -1;
            for (int i6 = 0; i6 < size; i6++) {
                View childAt = ChatAttachAlertDocumentLayout.this.listView.getChildAt(i6);
                if (childAt instanceof FlickerLoadingView) {
                    i5 = ChatAttachAlertDocumentLayout.this.listView.getChildAdapterPosition(childAt);
                    view = childAt;
                }
            }
            if (view != null) {
                ChatAttachAlertDocumentLayout.this.listView.removeView(view);
            }
            if ((ChatAttachAlertDocumentLayout.this.loadingView.getVisibility() == 0 && ChatAttachAlertDocumentLayout.this.listView.getChildCount() <= 1) || view != null) {
                ChatAttachAlertDocumentLayout.this.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.SearchAdapter.3
                    {
                        SearchAdapter.this = this;
                    }

                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        ChatAttachAlertDocumentLayout.this.getViewTreeObserver().removeOnPreDrawListener(this);
                        int childCount = ChatAttachAlertDocumentLayout.this.listView.getChildCount();
                        AnimatorSet animatorSet = new AnimatorSet();
                        for (int i7 = 0; i7 < childCount; i7++) {
                            View childAt2 = ChatAttachAlertDocumentLayout.this.listView.getChildAt(i7);
                            if (view == null || ChatAttachAlertDocumentLayout.this.listView.getChildAdapterPosition(childAt2) >= i5) {
                                childAt2.setAlpha(BitmapDescriptorFactory.HUE_RED);
                                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(childAt2, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f);
                                ofFloat.setStartDelay((int) ((Math.min(ChatAttachAlertDocumentLayout.this.listView.getMeasuredHeight(), Math.max(0, childAt2.getTop())) / ChatAttachAlertDocumentLayout.this.listView.getMeasuredHeight()) * 100.0f));
                                ofFloat.setDuration(200L);
                                animatorSet.playTogether(ofFloat);
                            }
                        }
                        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.SearchAdapter.3.1
                            {
                                ViewTreeObserver$OnPreDrawListenerC47853.this = this;
                            }

                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                SearchAdapter.this.notificationsLocker.unlock();
                            }
                        });
                        SearchAdapter.this.notificationsLocker.lock();
                        animatorSet.start();
                        View view2 = view;
                        if (view2 != null && view2.getParent() == null) {
                            ChatAttachAlertDocumentLayout.this.listView.addView(view);
                            final RecyclerView.LayoutManager layoutManager = ChatAttachAlertDocumentLayout.this.listView.getLayoutManager();
                            if (layoutManager != null) {
                                layoutManager.ignoreView(view);
                                View view3 = view;
                                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view3, View.ALPHA, view3.getAlpha(), BitmapDescriptorFactory.HUE_RED);
                                ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.SearchAdapter.3.2
                                    {
                                        ViewTreeObserver$OnPreDrawListenerC47853.this = this;
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator) {
                                        view.setAlpha(1.0f);
                                        layoutManager.stopIgnoringView(view);
                                        ChatAttachAlertDocumentLayout.this.listView.removeView(view);
                                    }
                                });
                                ofFloat2.start();
                            }
                        }
                        return true;
                    }
                });
            }
            notifyDataSetChanged();
        }

        private void updateSearchResults(final ArrayList<ListItem> arrayList, String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    ChatAttachAlertDocumentLayout.SearchAdapter.this.lambda$updateSearchResults$5(arrayList);
                }
            });
        }

        public /* synthetic */ void lambda$updateSearchResults$5(ArrayList arrayList) {
            if (ChatAttachAlertDocumentLayout.this.searching && ChatAttachAlertDocumentLayout.this.listView.getAdapter() != ChatAttachAlertDocumentLayout.this.searchAdapter) {
                ChatAttachAlertDocumentLayout.this.listView.setAdapter(ChatAttachAlertDocumentLayout.this.searchAdapter);
            }
            this.searchResult = arrayList;
            notifyDataSetChanged();
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder, int i, int i2) {
            int itemViewType = viewHolder.getItemViewType();
            return itemViewType == 1 || itemViewType == 4;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public int getSectionCount() {
            if (this.sections.isEmpty()) {
                return 2;
            }
            return 2 + this.sections.size() + (!this.endReached ? 1 : 0);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public Object getItem(int i, int i2) {
            ArrayList<MessageObject> arrayList;
            if (i == 0) {
                if (i2 < this.searchResult.size()) {
                    return this.searchResult.get(i2);
                }
                return null;
            }
            int i3 = i - 1;
            if (i3 >= this.sections.size() || (arrayList = this.sectionArrays.get(this.sections.get(i3))) == null) {
                return null;
            }
            int i4 = i2 - ((i3 == 0 && this.searchResult.isEmpty()) ? 0 : 1);
            if (i4 < 0 || i4 >= arrayList.size()) {
                return null;
            }
            return arrayList.get(i4);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public int getCountForSection(int i) {
            if (i == 0) {
                return this.searchResult.size();
            }
            int i2 = i - 1;
            int i3 = 1;
            if (i2 < this.sections.size()) {
                ArrayList<MessageObject> arrayList = this.sectionArrays.get(this.sections.get(i2));
                if (arrayList != null) {
                    int size = arrayList.size();
                    if (i2 == 0 && this.searchResult.isEmpty()) {
                        i3 = 0;
                    }
                    return size + i3;
                }
                return 0;
            }
            return 1;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public View getSectionHeaderView(int i, View view) {
            String formatSectionDate;
            GraySectionCell graySectionCell = (GraySectionCell) view;
            if (graySectionCell == null) {
                graySectionCell = new GraySectionCell(this.mContext, ChatAttachAlertDocumentLayout.this.resourcesProvider);
                graySectionCell.setBackgroundColor(ChatAttachAlertDocumentLayout.this.getThemedColor(Theme.key_graySection) & (-218103809));
            }
            if (i == 0 || (i == 1 && this.searchResult.isEmpty())) {
                graySectionCell.setAlpha(BitmapDescriptorFactory.HUE_RED);
                return graySectionCell;
            }
            int i2 = i - 1;
            if (i2 < this.sections.size()) {
                graySectionCell.setAlpha(1.0f);
                ArrayList<MessageObject> arrayList = this.sectionArrays.get(this.sections.get(i2));
                if (arrayList != null) {
                    MessageObject messageObject = arrayList.get(0);
                    if (i2 == 0 && !this.searchResult.isEmpty()) {
                        formatSectionDate = LocaleController.getString("GlobalSearch", C3632R.string.GlobalSearch);
                    } else {
                        formatSectionDate = LocaleController.formatSectionDate(messageObject.messageOwner.date);
                    }
                    graySectionCell.setText(formatSectionDate);
                }
            }
            return view;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [org.telegram.ui.Cells.SharedDocumentCell] */
        /* JADX WARN: Type inference failed for: r4v8, types: [org.telegram.ui.Components.FlickerLoadingView] */
        /* JADX WARN: Type inference failed for: r4v9, types: [android.view.View] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            GraySectionCell graySectionCell;
            if (i == 0) {
                graySectionCell = new GraySectionCell(this.mContext, ChatAttachAlertDocumentLayout.this.resourcesProvider);
            } else {
                if (i != 1) {
                    if (i == 2) {
                        ?? flickerLoadingView = new FlickerLoadingView(this.mContext, ChatAttachAlertDocumentLayout.this.resourcesProvider);
                        flickerLoadingView.setViewType(3);
                        flickerLoadingView.setIsSingleCell(true);
                        graySectionCell = flickerLoadingView;
                    } else if (i != 4) {
                        graySectionCell = new View(this.mContext);
                    }
                }
                ?? sharedDocumentCell = new SharedDocumentCell(this.mContext, i == 1 ? 1 : 2, ChatAttachAlertDocumentLayout.this.resourcesProvider);
                sharedDocumentCell.setDrawDownloadIcon(false);
                graySectionCell = sharedDocumentCell;
            }
            graySectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(graySectionCell);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public void onBindViewHolder(int i, int i2, RecyclerView.ViewHolder viewHolder) {
            String formatSectionDate;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 2 || itemViewType == 3) {
                return;
            }
            boolean z = false;
            if (itemViewType == 0) {
                int i3 = i - 1;
                ArrayList<MessageObject> arrayList = this.sectionArrays.get(this.sections.get(i3));
                if (arrayList == null) {
                    return;
                }
                MessageObject messageObject = arrayList.get(0);
                if (i3 == 0 && !this.searchResult.isEmpty()) {
                    formatSectionDate = LocaleController.getString("GlobalSearch", C3632R.string.GlobalSearch);
                } else {
                    formatSectionDate = LocaleController.formatSectionDate(messageObject.messageOwner.date);
                }
                ((GraySectionCell) viewHolder.itemView).setText(formatSectionDate);
            } else if (itemViewType == 1 || itemViewType == 4) {
                final SharedDocumentCell sharedDocumentCell = (SharedDocumentCell) viewHolder.itemView;
                if (i == 0) {
                    ListItem listItem = (ListItem) getItem(i2);
                    SharedDocumentCell sharedDocumentCell2 = (SharedDocumentCell) viewHolder.itemView;
                    int i4 = listItem.icon;
                    if (i4 != 0) {
                        sharedDocumentCell2.setTextAndValueAndTypeAndThumb(listItem.title, listItem.subtitle, null, null, i4, false);
                    } else {
                        sharedDocumentCell2.setTextAndValueAndTypeAndThumb(listItem.title, listItem.subtitle, listItem.ext.toUpperCase().substring(0, Math.min(listItem.ext.length(), 4)), listItem.thumb, 0, false);
                    }
                    if (listItem.file != null) {
                        sharedDocumentCell2.setChecked(ChatAttachAlertDocumentLayout.this.selectedFiles.containsKey(listItem.file.toString()), !ChatAttachAlertDocumentLayout.this.scrolling);
                        return;
                    } else {
                        sharedDocumentCell2.setChecked(false, !ChatAttachAlertDocumentLayout.this.scrolling);
                        return;
                    }
                }
                int i5 = i - 1;
                if (i5 != 0 || !this.searchResult.isEmpty()) {
                    i2--;
                }
                ArrayList<MessageObject> arrayList2 = this.sectionArrays.get(this.sections.get(i5));
                if (arrayList2 == null) {
                    return;
                }
                final MessageObject messageObject2 = arrayList2.get(i2);
                final boolean z2 = sharedDocumentCell.getMessage() != null && sharedDocumentCell.getMessage().getId() == messageObject2.getId();
                if (i2 != arrayList2.size() - 1 || (i5 == this.sections.size() - 1 && this.isLoading)) {
                    z = true;
                }
                sharedDocumentCell.setDocument(messageObject2, z);
                sharedDocumentCell.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.ChatAttachAlertDocumentLayout.SearchAdapter.4
                    {
                        SearchAdapter.this = this;
                    }

                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        sharedDocumentCell.getViewTreeObserver().removeOnPreDrawListener(this);
                        if (ChatAttachAlertDocumentLayout.this.parentAlert.actionBar.isActionModeShowed()) {
                            SearchAdapter.this.messageHashIdTmp.set(messageObject2.getId(), messageObject2.getDialogId());
                            sharedDocumentCell.setChecked(ChatAttachAlertDocumentLayout.this.selectedMessages.containsKey(SearchAdapter.this.messageHashIdTmp), z2);
                            return true;
                        }
                        sharedDocumentCell.setChecked(false, z2);
                        return true;
                    }
                });
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter
        public int getItemViewType(int i, int i2) {
            if (i == 0) {
                return 1;
            }
            if (i == getSectionCount() - 1) {
                return 3;
            }
            int i3 = i - 1;
            if (i3 < this.sections.size()) {
                return (!(i3 == 0 && this.searchResult.isEmpty()) && i2 == 0) ? 0 : 4;
            }
            return 2;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SectionsAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            ChatAttachAlertDocumentLayout.this.updateEmptyView();
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            iArr[0] = 0;
            iArr[1] = 0;
        }
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.searchItem.getSearchField(), ThemeDescription.FLAG_CURSORCOLOR, null, null, null, null, Theme.key_dialogTextBlack));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_dialogScrollGlow));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"dateTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText3));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{SharedDocumentCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkbox));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{SharedDocumentCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkboxCheck));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"thumbImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_files_folderIcon));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_IMAGECOLOR | ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{SharedDocumentCell.class}, new String[]{"thumbImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_files_folderIconBackground));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"extTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_files_iconText));
        return arrayList;
    }
}
