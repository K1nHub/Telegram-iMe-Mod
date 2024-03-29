package org.telegram.p043ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScrollerCustom;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BackDrawable;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.GraySectionCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.ColoredImageSpan;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.GroupCreateSpan;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p043ui.Components.RadioButton;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.StickerEmptyView;
import org.telegram.p043ui.Components.TypefaceSpan;
import org.telegram.p043ui.Components.ViewPagerFixed;
import org.telegram.p043ui.Stories.StoriesController;
import org.telegram.p043ui.Stories.recorder.StoryPrivacyBottomSheet;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$ChannelParticipant;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$ChatParticipant;
import org.telegram.tgnet.TLRPC$ChatParticipants;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$InputPrivacyRule;
import org.telegram.tgnet.TLRPC$InputUser;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$PrivacyRule;
import org.telegram.tgnet.TLRPC$TL_channels_channelParticipants;
import org.telegram.tgnet.TLRPC$TL_chatParticipant;
import org.telegram.tgnet.TLRPC$TL_chatParticipants;
import org.telegram.tgnet.TLRPC$TL_contact;
import org.telegram.tgnet.TLRPC$TL_editCloseFriends;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputPeerChannel;
import org.telegram.tgnet.TLRPC$TL_inputPeerChat;
import org.telegram.tgnet.TLRPC$TL_inputPeerSelf;
import org.telegram.tgnet.TLRPC$TL_inputPeerUser;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowAll;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowCloseFriends;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowContacts;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowUsers;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyValueDisallowUsers;
import org.telegram.tgnet.TLRPC$TL_inputUserEmpty;
import org.telegram.tgnet.TLRPC$TL_privacyValueAllowAll;
import org.telegram.tgnet.TLRPC$TL_privacyValueAllowCloseFriends;
import org.telegram.tgnet.TLRPC$TL_privacyValueAllowContacts;
import org.telegram.tgnet.TLRPC$TL_privacyValueAllowUsers;
import org.telegram.tgnet.TLRPC$TL_privacyValueDisallowUsers;
import org.telegram.tgnet.TLRPC$TL_username;
import org.telegram.tgnet.TLRPC$User;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet */
/* loaded from: classes6.dex */
public class StoryPrivacyBottomSheet extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    private int activePage;
    private boolean allowScreenshots;
    private boolean allowSmallChats;
    private boolean applyWhenDismiss;
    private final Paint backgroundPaint;
    private boolean canChangePeer;
    private final ArrayList<Long> excludedContacts;
    private final ArrayList<Long> excludedEveryone;
    private final HashMap<Long, ArrayList<Long>> excludedEveryoneByGroup;
    private int excludedEveryoneCount;
    private boolean isEdit;
    private boolean keepOnMyPage;
    private boolean loadedContacts;
    private final ArrayList<Long> messageUsers;
    private Utilities.Callback<StoryPrivacy> onDismiss;
    private DoneCallback onDone;
    private Utilities.Callback<ArrayList<Long>> onDone2;
    private Utilities.Callback<TLRPC$InputPeer> onSelectedPeer;
    private final ArrayList<Long> selectedContacts;
    private final HashMap<Long, ArrayList<Long>> selectedContactsByGroup;
    private int selectedContactsCount;
    public TLRPC$InputPeer selectedPeer;
    private int selectedType;
    private boolean sendAsMessageEnabled;
    private HashMap<Long, Integer> smallChatsParticipantsCount;
    private boolean startedFromSendAsMessage;
    private int storyPeriod;
    private ViewPagerFixed viewPager;
    private ArrayList<String> warnUsers;

    /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$DoneCallback */
    /* loaded from: classes6.dex */
    public interface DoneCallback {
        void done(StoryPrivacy storyPrivacy, boolean z, boolean z2, TLRPC$InputPeer tLRPC$InputPeer, Runnable runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashSet<Long> mergeUsers(ArrayList<Long> arrayList, HashMap<Long, ArrayList<Long>> hashMap) {
        HashSet<Long> hashSet = new HashSet<>();
        if (arrayList != null) {
            hashSet.addAll(arrayList);
        }
        if (hashMap != null) {
            for (ArrayList<Long> arrayList2 : hashMap.values()) {
                hashSet.addAll(arrayList2);
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page */
    /* loaded from: classes6.dex */
    public class Page extends FrameLayout implements View.OnClickListener, NotificationCenter.NotificationCenterDelegate {
        private Adapter adapter;
        private final ArrayList<TLObject> atTop;
        private final ButtonWithCounterView button;
        private final ButtonWithCounterView button2;
        private final ButtonContainer buttonContainer;
        private final LongSparseArray<Boolean> changelog;
        private boolean containsHeader;
        private final FrameLayout contentView;
        private HeaderCell headerView;
        private boolean isActionBar;
        private final ArrayList<ItemInner> items;
        private int keyboardHeight;
        private boolean keyboardMoving;
        private int lastSelectedType;
        private LinearLayoutManager layoutManager;
        private RecyclerListView listView;
        private final ArrayList<ItemInner> oldItems;
        public int pageType;
        private AlertDialog progressDialog;
        private String query;
        private boolean scrolling;
        private SearchUsersCell searchField;
        private ValueAnimator searchFieldAnimator;
        private boolean searchTranslationAnimating;
        private float searchTranslationAnimatingTo;
        private GraySectionCell sectionCell;
        private final ArrayList<Long> selectedUsers;
        private final HashMap<Long, ArrayList<Long>> selectedUsersByGroup;
        private final View underKeyboardView;
        private long waitingForChatId;
        private boolean wasKeyboardVisible;

        public Page(final Context context) {
            super(context);
            this.changelog = new LongSparseArray<>();
            this.selectedUsers = new ArrayList<>();
            this.selectedUsersByGroup = new HashMap<>();
            this.atTop = new ArrayList<>();
            this.oldItems = new ArrayList<>();
            this.items = new ArrayList<>();
            this.lastSelectedType = -1;
            this.sectionCell = new GraySectionCell(context, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider);
            SearchUsersCell searchUsersCell = new SearchUsersCell(context, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    StoryPrivacyBottomSheet.Page.this.lambda$new$0();
                }
            }, StoryPrivacyBottomSheet.this) { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.Page.1
                {
                    StoryPrivacyBottomSheet storyPrivacyBottomSheet = StoryPrivacyBottomSheet.this;
                }

                @Override // org.telegram.p043ui.Stories.recorder.StoryPrivacyBottomSheet.SearchUsersCell
                public void setContainerHeight(float f) {
                    super.setContainerHeight(f);
                    Page.this.sectionCell.setTranslationY(((getY() - (Page.this.contentView == null ? 0 : Page.this.contentView.getPaddingTop())) + Math.min(AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION), this.containerHeight)) - 1.0f);
                    if (Page.this.contentView != null) {
                        Page.this.contentView.invalidate();
                    }
                }

                @Override // android.view.View
                public void setTranslationY(float f) {
                    super.setTranslationY(f);
                    Page.this.sectionCell.setTranslationY(((getY() - (Page.this.contentView == null ? 0 : Page.this.contentView.getPaddingTop())) + Math.min(AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION), this.containerHeight)) - 1.0f);
                    if (Page.this.contentView != null) {
                        Page.this.contentView.invalidate();
                    }
                }
            };
            this.searchField = searchUsersCell;
            int i = Theme.key_dialogBackground;
            searchUsersCell.setBackgroundColor(StoryPrivacyBottomSheet.this.getThemedColor(i));
            this.searchField.setOnSearchTextChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda17
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    StoryPrivacyBottomSheet.Page.this.onSearch((String) obj);
                }
            });
            HeaderCell headerCell = new HeaderCell(context, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider);
            this.headerView = headerCell;
            headerCell.setOnCloseClickListener(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    StoryPrivacyBottomSheet.Page.this.lambda$new$1();
                }
            });
            FrameLayout frameLayout = new FrameLayout(context);
            this.contentView = frameLayout;
            frameLayout.setPadding(0, AndroidUtilities.statusBarHeight + AndroidUtilities.m107dp(56), 0, 0);
            frameLayout.setClipToPadding(true);
            addView(frameLayout, LayoutHelper.createFrame(-1, -1, 119));
            RecyclerListView recyclerListView = new RecyclerListView(context, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider);
            this.listView = recyclerListView;
            recyclerListView.setClipToPadding(false);
            this.listView.setTranslateSelector(true);
            RecyclerListView recyclerListView2 = this.listView;
            Adapter adapter = new Adapter(context, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider, this.searchField, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    StoryPrivacyBottomSheet.this.onBackPressed();
                }
            });
            this.adapter = adapter;
            recyclerListView2.setAdapter(adapter);
            this.adapter.listView = this.listView;
            RecyclerListView recyclerListView3 = this.listView;
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
            this.layoutManager = linearLayoutManager;
            recyclerListView3.setLayoutManager(linearLayoutManager);
            this.listView.setOnScrollListener(new RecyclerView.OnScrollListener(StoryPrivacyBottomSheet.this) { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.Page.2
                private boolean canScrollDown;

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                    boolean canScrollVertically = Page.this.listView.canScrollVertically(1);
                    if (canScrollVertically != this.canScrollDown) {
                        Page.this.buttonContainer.invalidate();
                        this.canScrollDown = canScrollVertically;
                    }
                    Page.this.contentView.invalidate();
                    ((BottomSheet) StoryPrivacyBottomSheet.this).containerView.invalidate();
                    Page page = Page.this;
                    if (page.pageType != 6 || page.listView.getChildCount() <= 0 || Page.this.listView.getChildAdapterPosition(Page.this.listView.getChildAt(0)) < MessagesController.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).getStoriesController().blocklist.size()) {
                        return;
                    }
                    MessagesController.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).getStoriesController().loadBlocklist(false);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
                    if (i2 == 1 && ((BottomSheet) StoryPrivacyBottomSheet.this).keyboardVisible && Page.this.searchField != null) {
                        StoryPrivacyBottomSheet.this.closeKeyboard();
                    }
                    Page.this.scrolling = i2 != 0;
                }
            });
            this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda22
                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ boolean hasDoubleTap(View view, int i2) {
                    return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i2);
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
                public /* synthetic */ void onDoubleTap(View view, int i2, float f, float f2) {
                    RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i2, f, f2);
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
                public final void onItemClick(View view, int i2, float f, float f2) {
                    StoryPrivacyBottomSheet.Page.this.lambda$new$7(context, view, i2, f, f2);
                }
            });
            frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1));
            DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator(StoryPrivacyBottomSheet.this) { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.Page.3
                @Override // androidx.recyclerview.widget.SimpleItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
                public boolean canReuseUpdatedViewHolder(RecyclerView.ViewHolder viewHolder) {
                    return true;
                }

                @Override // androidx.recyclerview.widget.DefaultItemAnimator
                protected void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                    ((BottomSheet) StoryPrivacyBottomSheet.this).containerView.invalidate();
                    Page.this.contentView.invalidate();
                    Page.this.listView.invalidate();
                }

                @Override // androidx.recyclerview.widget.DefaultItemAnimator
                protected void onChangeAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                    ((BottomSheet) StoryPrivacyBottomSheet.this).containerView.invalidate();
                    Page.this.contentView.invalidate();
                }

                @Override // androidx.recyclerview.widget.DefaultItemAnimator
                protected void onAddAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                    ((BottomSheet) StoryPrivacyBottomSheet.this).containerView.invalidate();
                    Page.this.contentView.invalidate();
                }

                @Override // androidx.recyclerview.widget.DefaultItemAnimator
                protected void onRemoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                    ((BottomSheet) StoryPrivacyBottomSheet.this).containerView.invalidate();
                    Page.this.contentView.invalidate();
                }
            };
            defaultItemAnimator.setDurations(350L);
            defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            defaultItemAnimator.setDelayAnimations(false);
            defaultItemAnimator.setSupportsChangeAnimations(false);
            this.listView.setItemAnimator(defaultItemAnimator);
            frameLayout.addView(this.searchField, LayoutHelper.createFrame(-1, -2, 55));
            frameLayout.addView(this.sectionCell, LayoutHelper.createFrame(-1, 32, 55));
            addView(this.headerView, LayoutHelper.createFrame(-1, -2, 55));
            ButtonContainer buttonContainer = new ButtonContainer(context);
            this.buttonContainer = buttonContainer;
            buttonContainer.setClickable(true);
            buttonContainer.setOrientation(1);
            buttonContainer.setPadding(AndroidUtilities.m107dp(10) + ((BottomSheet) StoryPrivacyBottomSheet.this).backgroundPaddingLeft, AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(10) + ((BottomSheet) StoryPrivacyBottomSheet.this).backgroundPaddingLeft, AndroidUtilities.m107dp(10));
            buttonContainer.setBackgroundColor(Theme.getColor(i, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider));
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider);
            this.button = buttonWithCounterView;
            buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StoryPrivacyBottomSheet.Page.this.onButton1Click(view);
                }
            });
            buttonContainer.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 87));
            ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, false, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider);
            this.button2 = buttonWithCounterView2;
            buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StoryPrivacyBottomSheet.Page.this.onButton2Click(view);
                }
            });
            buttonContainer.addView(buttonWithCounterView2, LayoutHelper.createLinear(-1, 48, 87, 0, 8, 0, 0));
            View view = new View(context);
            this.underKeyboardView = view;
            view.setBackgroundColor(Theme.getColor(i, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider));
            addView(view, LayoutHelper.createFrame(-1, 500, 87, 0, 0, 0, -500));
            addView(buttonContainer, LayoutHelper.createFrame(-1, -2, 87));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            this.adapter.notifyItemChanged(2);
            this.listView.forceLayout();
            updateTops();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1() {
            if (this.pageType == 0) {
                StoryPrivacyBottomSheet.this.dismiss();
            } else {
                StoryPrivacyBottomSheet.this.onBackPressed();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$7(Context context, View view, int i, float f, float f2) {
            TLRPC$ChatParticipants tLRPC$ChatParticipants;
            ArrayList<TLRPC$ChatParticipant> arrayList;
            if (i < 0 || i >= this.items.size()) {
                return;
            }
            ItemInner itemInner = this.items.get(i);
            int i2 = itemInner.viewType;
            if (i2 == 3) {
                if (itemInner.sendAs && StoryPrivacyBottomSheet.this.canChangePeer) {
                    new ChoosePeerSheet(context, ((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount, StoryPrivacyBottomSheet.this.selectedPeer, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda19
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            StoryPrivacyBottomSheet.Page.this.lambda$new$2((TLRPC$InputPeer) obj);
                        }
                    }, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider).show();
                    return;
                }
                int i3 = itemInner.type;
                if (i3 == 1) {
                    if (StoryPrivacyBottomSheet.this.selectedType == 1 || StoryPrivacyBottomSheet.this.getCloseFriends().isEmpty()) {
                        StoryPrivacyBottomSheet.this.activePage = 1;
                        StoryPrivacyBottomSheet.this.viewPager.scrollToPosition(1);
                    }
                    StoryPrivacyBottomSheet.this.selectedType = 1;
                    updateCheckboxes(true);
                } else if (i3 == 3) {
                    if (StoryPrivacyBottomSheet.this.selectedType == 3 || (StoryPrivacyBottomSheet.this.selectedContacts.isEmpty() && StoryPrivacyBottomSheet.this.selectedContactsByGroup.isEmpty())) {
                        StoryPrivacyBottomSheet.this.activePage = 3;
                        StoryPrivacyBottomSheet.this.viewPager.scrollToPosition(1);
                    }
                    StoryPrivacyBottomSheet.this.selectedType = 3;
                    updateCheckboxes(true);
                } else if (i3 == 2) {
                    if (StoryPrivacyBottomSheet.this.selectedType == 2) {
                        StoryPrivacyBottomSheet.this.activePage = 2;
                        StoryPrivacyBottomSheet.this.viewPager.scrollToPosition(1);
                    }
                    StoryPrivacyBottomSheet.this.selectedType = 2;
                    updateCheckboxes(true);
                } else if (i3 == 4) {
                    if (StoryPrivacyBottomSheet.this.selectedType == 4) {
                        StoryPrivacyBottomSheet.this.activePage = 4;
                        StoryPrivacyBottomSheet.this.viewPager.scrollToPosition(1);
                    }
                    StoryPrivacyBottomSheet.this.selectedType = 4;
                    updateCheckboxes(true);
                } else {
                    if (i3 > 0) {
                        this.selectedUsers.clear();
                        this.selectedUsersByGroup.clear();
                        StoryPrivacyBottomSheet.this.selectedType = itemInner.type;
                        this.searchField.spansContainer.removeAllSpans(true);
                    } else {
                        TLRPC$Chat tLRPC$Chat = itemInner.chat;
                        if (tLRPC$Chat != null) {
                            final long j = tLRPC$Chat.f1602id;
                            if (StoryPrivacyBottomSheet.this.getParticipantsCount(tLRPC$Chat) > 200) {
                                try {
                                    performHapticFeedback(3, 1);
                                } catch (Throwable unused) {
                                }
                                new AlertDialog.Builder(getContext(), ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider).setTitle(LocaleController.getString("GroupTooLarge", C3632R.string.GroupTooLarge)).setMessage(LocaleController.getString("GroupTooLargeMessage", C3632R.string.GroupTooLargeMessage)).setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), null).show();
                            } else if (!this.selectedUsersByGroup.containsKey(Long.valueOf(j))) {
                                final TLRPC$Chat chat = MessagesController.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).getChat(Long.valueOf(j));
                                TLRPC$ChatFull chatFull = MessagesController.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).getChatFull(j);
                                if (chatFull != null && (tLRPC$ChatParticipants = chatFull.participants) != null && (arrayList = tLRPC$ChatParticipants.participants) != null && !arrayList.isEmpty() && chatFull.participants.participants.size() >= chatFull.participants_count - 1) {
                                    selectChat(j, chatFull.participants);
                                } else {
                                    AlertDialog alertDialog = this.progressDialog;
                                    if (alertDialog != null) {
                                        alertDialog.dismiss();
                                        this.progressDialog = null;
                                    }
                                    this.waitingForChatId = j;
                                    AlertDialog alertDialog2 = new AlertDialog(getContext(), 3, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider);
                                    this.progressDialog = alertDialog2;
                                    alertDialog2.showDelayed(50L);
                                    final MessagesStorage messagesStorage = MessagesStorage.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount);
                                    messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda13
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            StoryPrivacyBottomSheet.Page.this.lambda$new$6(chat, messagesStorage, j);
                                        }
                                    });
                                }
                                if (!TextUtils.isEmpty(this.query)) {
                                    this.searchField.setText("");
                                    this.query = null;
                                    updateItems(false);
                                }
                            } else {
                                ArrayList<Long> arrayList2 = this.selectedUsersByGroup.get(Long.valueOf(j));
                                if (arrayList2 != null) {
                                    Iterator<Long> it = arrayList2.iterator();
                                    while (it.hasNext()) {
                                        this.changelog.put(it.next().longValue(), Boolean.FALSE);
                                    }
                                }
                                this.selectedUsersByGroup.remove(Long.valueOf(j));
                                updateSpans(true);
                            }
                        } else if (itemInner.user != null) {
                            if (this.pageType == 0) {
                                StoryPrivacyBottomSheet.this.selectedType = 0;
                            }
                            long j2 = itemInner.user.f1751id;
                            HashSet hashSet = new HashSet(this.selectedUsers);
                            if (this.selectedUsers.contains(Long.valueOf(j2))) {
                                Iterator<Map.Entry<Long, ArrayList<Long>>> it2 = this.selectedUsersByGroup.entrySet().iterator();
                                while (it2.hasNext()) {
                                    Map.Entry<Long, ArrayList<Long>> next = it2.next();
                                    if (next.getValue().contains(Long.valueOf(j2))) {
                                        it2.remove();
                                        hashSet.addAll(next.getValue());
                                    }
                                }
                                hashSet.remove(Long.valueOf(j2));
                                this.changelog.put(j2, Boolean.FALSE);
                            } else {
                                Iterator<Map.Entry<Long, ArrayList<Long>>> it3 = this.selectedUsersByGroup.entrySet().iterator();
                                while (it3.hasNext()) {
                                    Map.Entry<Long, ArrayList<Long>> next2 = it3.next();
                                    if (next2.getValue().contains(Long.valueOf(j2))) {
                                        it3.remove();
                                        hashSet.addAll(next2.getValue());
                                    }
                                }
                                hashSet.add(Long.valueOf(j2));
                                if (!TextUtils.isEmpty(this.query)) {
                                    this.searchField.setText("");
                                    this.query = null;
                                    updateItems(false);
                                }
                                this.changelog.put(j2, Boolean.TRUE);
                            }
                            this.selectedUsers.clear();
                            this.selectedUsers.addAll(hashSet);
                            updateSpans(true);
                        }
                    }
                    updateCheckboxes(true);
                    updateButton(true);
                    this.searchField.scrollToBottom();
                }
            } else if (i2 == 7 && (view instanceof TextCell)) {
                TextCell textCell = (TextCell) view;
                textCell.setChecked(!textCell.isChecked());
                itemInner.checked = textCell.isChecked();
                if (itemInner.resId == 0) {
                    StoryPrivacyBottomSheet.this.allowScreenshots = textCell.isChecked();
                    boolean z = StoryPrivacyBottomSheet.this.selectedType == 4;
                    if (StoryPrivacyBottomSheet.this.allowScreenshots) {
                        BulletinFactory.m66of(((BottomSheet) StoryPrivacyBottomSheet.this).container, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider).createSimpleBulletin(C3632R.raw.ic_save_to_gallery, LocaleController.getString(z ? C3632R.string.StoryEnabledScreenshotsShare : C3632R.string.StoryEnabledScreenshots), 4).setDuration(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS).show(true);
                        return;
                    } else {
                        BulletinFactory.m66of(((BottomSheet) StoryPrivacyBottomSheet.this).container, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider).createSimpleBulletin(C3632R.raw.passcode_lock_close, LocaleController.getString(z ? C3632R.string.StoryDisabledScreenshotsShare : C3632R.string.StoryDisabledScreenshots), 4).setDuration(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS).show(true);
                        return;
                    }
                }
                StoryPrivacyBottomSheet.this.keepOnMyPage = textCell.isChecked();
                StoryPrivacyBottomSheet storyPrivacyBottomSheet = StoryPrivacyBottomSheet.this;
                boolean z2 = storyPrivacyBottomSheet.selectedPeer instanceof TLRPC$TL_inputPeerChannel;
                if (storyPrivacyBottomSheet.keepOnMyPage) {
                    BulletinFactory.m66of(((BottomSheet) StoryPrivacyBottomSheet.this).container, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider).createSimpleBulletin(C3632R.raw.msg_story_keep, LocaleController.getString(z2 ? C3632R.string.StoryChannelEnableKeep : C3632R.string.StoryEnableKeep), 4).setDuration(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS).show(true);
                } else {
                    BulletinFactory.m66of(((BottomSheet) StoryPrivacyBottomSheet.this).container, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider).createSimpleBulletin(C3632R.raw.fire_on, LocaleController.getString(z2 ? C3632R.string.StoryChannelDisableKeep : C3632R.string.StoryDisableKeep), 4).setDuration(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS).show(true);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(TLRPC$InputPeer tLRPC$InputPeer) {
            StoryPrivacyBottomSheet storyPrivacyBottomSheet = StoryPrivacyBottomSheet.this;
            storyPrivacyBottomSheet.selectedPeer = tLRPC$InputPeer;
            if (storyPrivacyBottomSheet.onSelectedPeer != null) {
                StoryPrivacyBottomSheet.this.onSelectedPeer.run(StoryPrivacyBottomSheet.this.selectedPeer);
            }
            updateItems(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6(TLRPC$Chat tLRPC$Chat, MessagesStorage messagesStorage, final long j) {
            TLRPC$ChatParticipants tLRPC$ChatParticipants;
            ArrayList<TLRPC$ChatParticipant> arrayList;
            final boolean isChannel = ChatObject.isChannel(tLRPC$Chat);
            final TLRPC$ChatFull loadChatInfoInQueue = messagesStorage.loadChatInfoInQueue(j, isChannel, true, true, 0);
            if (loadChatInfoInQueue == null || (tLRPC$ChatParticipants = loadChatInfoInQueue.participants) == null || ((arrayList = tLRPC$ChatParticipants.participants) != null && arrayList.size() < loadChatInfoInQueue.participants_count - 1)) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryPrivacyBottomSheet.Page.this.lambda$new$4(isChannel, j);
                    }
                });
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryPrivacyBottomSheet.Page.this.lambda$new$5(j, loadChatInfoInQueue);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(boolean z, final long j) {
            if (z) {
                MessagesController.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).loadChannelParticipants(Long.valueOf(j), new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda20
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        StoryPrivacyBottomSheet.Page.this.lambda$new$3(j, (TLRPC$TL_channels_channelParticipants) obj);
                    }
                }, 200);
            } else {
                MessagesController.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).loadFullChat(j, 0, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(long j, TLRPC$TL_channels_channelParticipants tLRPC$TL_channels_channelParticipants) {
            int i;
            long j2;
            AlertDialog alertDialog = this.progressDialog;
            if (alertDialog != null) {
                alertDialog.dismissUnless(350L);
                this.progressDialog = null;
            }
            if (tLRPC$TL_channels_channelParticipants == null || tLRPC$TL_channels_channelParticipants.participants.isEmpty()) {
                return;
            }
            TLRPC$TL_chatParticipants tLRPC$TL_chatParticipants = new TLRPC$TL_chatParticipants();
            while (i < tLRPC$TL_channels_channelParticipants.participants.size()) {
                TLRPC$ChannelParticipant tLRPC$ChannelParticipant = tLRPC$TL_channels_channelParticipants.participants.get(i);
                TLRPC$TL_chatParticipant tLRPC$TL_chatParticipant = new TLRPC$TL_chatParticipant();
                TLRPC$Peer tLRPC$Peer = tLRPC$ChannelParticipant.peer;
                if (tLRPC$Peer != null) {
                    j2 = DialogObject.getPeerDialogId(tLRPC$Peer);
                    i = j2 < 0 ? i + 1 : 0;
                } else {
                    j2 = tLRPC$ChannelParticipant.user_id;
                }
                tLRPC$TL_chatParticipant.user_id = j2;
                tLRPC$TL_chatParticipants.participants.add(tLRPC$TL_chatParticipant);
            }
            selectChat(j, tLRPC$TL_chatParticipants);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(long j, TLRPC$ChatFull tLRPC$ChatFull) {
            selectChat(j, tLRPC$ChatFull.participants);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$ButtonContainer */
        /* loaded from: classes6.dex */
        public class ButtonContainer extends LinearLayout {
            final AnimatedFloat alpha;
            private ValueAnimator animator;
            final Paint dividerPaint;
            private ValueAnimator hideAnimator;
            private float translationY;
            private float translationY2;

            public ButtonContainer(Context context) {
                super(context);
                this.dividerPaint = new Paint(1);
                this.alpha = new AnimatedFloat(this);
            }

            public void hide(final boolean z, boolean z2) {
                ValueAnimator valueAnimator = this.hideAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                float f = BitmapDescriptorFactory.HUE_RED;
                if (z2) {
                    setVisibility(0);
                    float[] fArr = new float[2];
                    fArr[0] = this.translationY2;
                    if (z) {
                        f = getMeasuredHeight();
                    }
                    fArr[1] = f;
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
                    this.hideAnimator = ofFloat;
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$ButtonContainer$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            StoryPrivacyBottomSheet.Page.ButtonContainer.this.lambda$hide$0(valueAnimator2);
                        }
                    });
                    this.hideAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.Page.ButtonContainer.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (z) {
                                ButtonContainer.this.setVisibility(8);
                            }
                            ButtonContainer.this.hideAnimator = null;
                        }
                    });
                    this.hideAnimator.setDuration(320L);
                    this.hideAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                    this.hideAnimator.start();
                    return;
                }
                setVisibility(z ? 8 : 0);
                if (z) {
                    f = getMeasuredHeight();
                }
                this.translationY2 = f;
                super.setTranslationY(f + this.translationY);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$hide$0(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                this.translationY2 = floatValue;
                super.setTranslationY(floatValue + this.translationY);
            }

            public void translateY(float f, final float f2) {
                ValueAnimator valueAnimator = this.animator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.animator = null;
                }
                ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
                this.animator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$ButtonContainer$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        StoryPrivacyBottomSheet.Page.ButtonContainer.this.lambda$translateY$1(valueAnimator2);
                    }
                });
                this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.Page.ButtonContainer.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ButtonContainer.this.setTranslationY(f2);
                        ButtonContainer.this.animator = null;
                    }
                });
                this.animator.setDuration(250L);
                this.animator.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                this.animator.start();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$translateY$1(ValueAnimator valueAnimator) {
                setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }

            @Override // android.view.View
            public void setTranslationY(float f) {
                float f2 = this.translationY2;
                this.translationY = f;
                super.setTranslationY(f2 + f);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                this.dividerPaint.setColor(Theme.getColor(Theme.key_windowBackgroundGray, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider));
                this.dividerPaint.setAlpha((int) (this.alpha.set(Page.this.listView.canScrollVertically(1) ? 1.0f : BitmapDescriptorFactory.HUE_RED) * 255.0f));
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), 1.0f, this.dividerPaint);
            }
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            TLRPC$ChatFull tLRPC$ChatFull;
            AlertDialog alertDialog;
            if (i != NotificationCenter.chatInfoDidLoad || (tLRPC$ChatFull = (TLRPC$ChatFull) objArr[0]) == null || (alertDialog = this.progressDialog) == null || this.waitingForChatId != tLRPC$ChatFull.f1603id) {
                return;
            }
            alertDialog.dismissUnless(350L);
            this.progressDialog = null;
            this.waitingForChatId = -1L;
            selectChat(tLRPC$ChatFull.f1603id, tLRPC$ChatFull.participants);
        }

        private void selectChat(final long j, TLRPC$ChatParticipants tLRPC$ChatParticipants) {
            final ArrayList<Long> arrayList = new ArrayList<>();
            ArrayList arrayList2 = new ArrayList();
            int i = this.pageType;
            boolean z = i == 1 || i == 2;
            if (tLRPC$ChatParticipants != null && tLRPC$ChatParticipants.participants != null) {
                for (int i2 = 0; i2 < tLRPC$ChatParticipants.participants.size(); i2++) {
                    long j2 = tLRPC$ChatParticipants.participants.get(i2).user_id;
                    TLRPC$User user = MessagesController.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).getUser(Long.valueOf(j2));
                    if (user != null && !UserObject.isUserSelf(user) && !user.bot && user.f1751id != 777000 && j2 != 0) {
                        if (z && !user.contact) {
                            arrayList2.add(Long.valueOf(j2));
                        } else {
                            arrayList.add(Long.valueOf(j2));
                        }
                        this.selectedUsers.remove(Long.valueOf(j2));
                    }
                }
            }
            if (!arrayList2.isEmpty()) {
                if (arrayList.isEmpty()) {
                    new AlertDialog.Builder(getContext(), ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider).setMessage("All group members are not in your contact list.").setNegativeButton("Cancel", null).show();
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider);
                AlertDialog.Builder message = builder.setMessage(arrayList2.size() + " members are not in your contact list");
                message.setPositiveButton("Add " + arrayList.size() + " contacts", new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        StoryPrivacyBottomSheet.Page.this.lambda$selectChat$8(j, arrayList, dialogInterface, i3);
                    }
                }).setNegativeButton("Cancel", null).show();
                return;
            }
            this.selectedUsersByGroup.put(Long.valueOf(j), arrayList);
            Iterator<Long> it = arrayList.iterator();
            while (it.hasNext()) {
                this.changelog.put(it.next().longValue(), Boolean.TRUE);
            }
            updateSpans(true);
            updateButton(true);
            updateCheckboxes(true);
            this.searchField.scrollToBottom();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$selectChat$8(long j, ArrayList arrayList, DialogInterface dialogInterface, int i) {
            this.selectedUsersByGroup.put(Long.valueOf(j), arrayList);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.changelog.put(((Long) it.next()).longValue(), Boolean.TRUE);
            }
            updateSpans(true);
            updateButton(true);
            updateCheckboxes(true);
            dialogInterface.dismiss();
            this.searchField.scrollToBottom();
        }

        private void updateSpans(boolean z) {
            boolean z2;
            Object chat;
            HashSet mergeUsers = StoryPrivacyBottomSheet.this.mergeUsers(this.selectedUsers, this.selectedUsersByGroup);
            int i = this.pageType;
            if (i == 3) {
                StoryPrivacyBottomSheet.this.selectedContactsCount = mergeUsers.size();
            } else if (i == 4) {
                StoryPrivacyBottomSheet.this.excludedEveryoneCount = mergeUsers.size();
            }
            MessagesController messagesController = MessagesController.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount);
            ArrayList<GroupCreateSpan> arrayList = new ArrayList<>();
            ArrayList<GroupCreateSpan> arrayList2 = new ArrayList<>();
            for (int i2 = 0; i2 < this.searchField.allSpans.size(); i2++) {
                GroupCreateSpan groupCreateSpan = this.searchField.allSpans.get(i2);
                if (!mergeUsers.contains(Long.valueOf(groupCreateSpan.getUid()))) {
                    arrayList.add(groupCreateSpan);
                }
            }
            Iterator it = mergeUsers.iterator();
            while (it.hasNext()) {
                long longValue = ((Long) it.next()).longValue();
                int i3 = 0;
                while (true) {
                    if (i3 >= this.searchField.allSpans.size()) {
                        z2 = false;
                        break;
                    } else if (this.searchField.allSpans.get(i3).getUid() == longValue) {
                        z2 = true;
                        break;
                    } else {
                        i3++;
                    }
                }
                if (!z2) {
                    if (longValue >= 0) {
                        chat = messagesController.getUser(Long.valueOf(longValue));
                    } else {
                        chat = messagesController.getChat(Long.valueOf(longValue));
                    }
                    Object obj = chat;
                    if (obj != null) {
                        GroupCreateSpan groupCreateSpan2 = new GroupCreateSpan(getContext(), obj, null, true, ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider);
                        groupCreateSpan2.setOnClickListener(this);
                        arrayList2.add(groupCreateSpan2);
                    }
                }
            }
            if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                return;
            }
            this.searchField.spansContainer.updateSpans(arrayList, arrayList2, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onButton1Click(View view) {
            StoryPrivacy storyPrivacy;
            if (this.button.isLoading()) {
                return;
            }
            final MessagesController messagesController = MessagesController.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount);
            int i = this.pageType;
            if (i == 5) {
                if (StoryPrivacyBottomSheet.this.onDone2 != null) {
                    StoryPrivacyBottomSheet.this.onDone2.run(this.selectedUsers);
                }
                StoryPrivacyBottomSheet.this.dismiss();
            } else if (i == 1) {
                TLRPC$TL_editCloseFriends tLRPC$TL_editCloseFriends = new TLRPC$TL_editCloseFriends();
                tLRPC$TL_editCloseFriends.f1656id.addAll(this.selectedUsers);
                this.button.setLoading(true);
                ConnectionsManager.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).sendRequest(tLRPC$TL_editCloseFriends, new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda21
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        StoryPrivacyBottomSheet.Page.this.lambda$onButton1Click$10(messagesController, tLObject, tLRPC$TL_error);
                    }
                });
            } else if (i == 0) {
                if (!StoryPrivacyBottomSheet.this.applyWhenDismiss) {
                    if (StoryPrivacyBottomSheet.this.selectedType != 3) {
                        if (StoryPrivacyBottomSheet.this.selectedType != 2) {
                            if (StoryPrivacyBottomSheet.this.selectedType == 4) {
                                StoryPrivacyBottomSheet storyPrivacyBottomSheet = StoryPrivacyBottomSheet.this;
                                storyPrivacy = new StoryPrivacy(StoryPrivacyBottomSheet.this.selectedType, ((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount, new ArrayList(storyPrivacyBottomSheet.mergeUsers(storyPrivacyBottomSheet.excludedEveryone, StoryPrivacyBottomSheet.this.excludedEveryoneByGroup)));
                                storyPrivacy.selectedUserIds.clear();
                                storyPrivacy.selectedUserIds.addAll(StoryPrivacyBottomSheet.this.excludedEveryone);
                                storyPrivacy.selectedUserIdsByGroup.clear();
                                storyPrivacy.selectedUserIdsByGroup.putAll(StoryPrivacyBottomSheet.this.excludedEveryoneByGroup);
                            } else {
                                storyPrivacy = new StoryPrivacy(StoryPrivacyBottomSheet.this.selectedType, ((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount, (ArrayList<Long>) null);
                            }
                        } else {
                            storyPrivacy = new StoryPrivacy(StoryPrivacyBottomSheet.this.selectedType, ((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount, StoryPrivacyBottomSheet.this.excludedContacts);
                        }
                    } else {
                        StoryPrivacyBottomSheet storyPrivacyBottomSheet2 = StoryPrivacyBottomSheet.this;
                        storyPrivacy = new StoryPrivacy(StoryPrivacyBottomSheet.this.selectedType, ((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount, new ArrayList(storyPrivacyBottomSheet2.mergeUsers(storyPrivacyBottomSheet2.selectedContacts, StoryPrivacyBottomSheet.this.selectedContactsByGroup)));
                        storyPrivacy.selectedUserIds.clear();
                        storyPrivacy.selectedUserIds.addAll(StoryPrivacyBottomSheet.this.selectedContacts);
                        storyPrivacy.selectedUserIdsByGroup.clear();
                        storyPrivacy.selectedUserIdsByGroup.putAll(StoryPrivacyBottomSheet.this.selectedContactsByGroup);
                    }
                    StoryPrivacyBottomSheet storyPrivacyBottomSheet3 = StoryPrivacyBottomSheet.this;
                    storyPrivacyBottomSheet3.done(storyPrivacy, new StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15(storyPrivacyBottomSheet3));
                    return;
                }
                StoryPrivacyBottomSheet.this.dismiss();
            } else if (i == 2) {
                if (StoryPrivacyBottomSheet.this.isEdit) {
                    StoryPrivacyBottomSheet.this.closeKeyboard();
                    StoryPrivacyBottomSheet storyPrivacyBottomSheet4 = StoryPrivacyBottomSheet.this;
                    storyPrivacyBottomSheet4.done(new StoryPrivacy(2, ((BottomSheet) storyPrivacyBottomSheet4).currentAccount, this.selectedUsers), new StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15(StoryPrivacyBottomSheet.this));
                    return;
                }
                StoryPrivacyBottomSheet.this.closeKeyboard();
                StoryPrivacyBottomSheet.this.viewPager.scrollToPosition(0);
            } else if (i != 3) {
                if (i == 6) {
                    HashSet<Long> mergeUsers = StoryPrivacyBottomSheet.this.mergeUsers(this.selectedUsers, this.selectedUsersByGroup);
                    this.button.setLoading(true);
                    MessagesController.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).getStoriesController().updateBlockedUsers(mergeUsers, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            StoryPrivacyBottomSheet.Page.this.lambda$onButton1Click$12();
                        }
                    });
                    return;
                }
                StoryPrivacyBottomSheet.this.selectedType = i;
                StoryPrivacyBottomSheet.this.closeKeyboard();
                StoryPrivacyBottomSheet.this.viewPager.scrollToPosition(0);
            } else if (StoryPrivacyBottomSheet.this.isEdit) {
                HashSet mergeUsers2 = StoryPrivacyBottomSheet.this.mergeUsers(this.selectedUsers, this.selectedUsersByGroup);
                if (mergeUsers2.isEmpty()) {
                    return;
                }
                StoryPrivacyBottomSheet.this.closeKeyboard();
                StoryPrivacy storyPrivacy2 = new StoryPrivacy(3, ((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount, new ArrayList(mergeUsers2));
                storyPrivacy2.selectedUserIds.clear();
                storyPrivacy2.selectedUserIds.addAll(this.selectedUsers);
                storyPrivacy2.selectedUserIdsByGroup.clear();
                storyPrivacy2.selectedUserIdsByGroup.putAll(this.selectedUsersByGroup);
                StoryPrivacyBottomSheet.this.done(storyPrivacy2, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryPrivacyBottomSheet.Page.this.lambda$onButton1Click$11();
                    }
                });
            } else if (StoryPrivacyBottomSheet.this.mergeUsers(this.selectedUsers, this.selectedUsersByGroup).isEmpty()) {
            } else {
                StoryPrivacyBottomSheet.this.selectedType = 3;
                StoryPrivacyBottomSheet.this.closeKeyboard();
                StoryPrivacyBottomSheet.this.viewPager.scrollToPosition(0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onButton1Click$10(final MessagesController messagesController, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    StoryPrivacyBottomSheet.Page.this.lambda$onButton1Click$9(tLObject, messagesController);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onButton1Click$9(TLObject tLObject, MessagesController messagesController) {
            boolean contains;
            this.button.setLoading(false);
            if (tLObject != null) {
                ArrayList contacts = StoryPrivacyBottomSheet.this.getContacts();
                for (int i = 0; i < contacts.size(); i++) {
                    TLRPC$User tLRPC$User = (TLRPC$User) contacts.get(i);
                    if (tLRPC$User != null && (contains = this.selectedUsers.contains(Long.valueOf(tLRPC$User.f1751id))) != tLRPC$User.close_friend) {
                        tLRPC$User.close_friend = contains;
                        tLRPC$User.flags2 = contains ? tLRPC$User.flags2 | 4 : tLRPC$User.flags2 & (-5);
                        messagesController.putUser(tLRPC$User, false);
                    }
                }
            }
            StoryPrivacyBottomSheet.this.closeKeyboard();
            if (StoryPrivacyBottomSheet.this.isEdit) {
                StoryPrivacyBottomSheet storyPrivacyBottomSheet = StoryPrivacyBottomSheet.this;
                storyPrivacyBottomSheet.done(new StoryPrivacy(1, ((BottomSheet) storyPrivacyBottomSheet).currentAccount, (ArrayList<Long>) null), new StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15(StoryPrivacyBottomSheet.this));
                return;
            }
            StoryPrivacyBottomSheet.this.closeKeyboard();
            StoryPrivacyBottomSheet.this.viewPager.scrollToPosition(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onButton1Click$11() {
            Bulletin.removeDelegate(((BottomSheet) StoryPrivacyBottomSheet.this).container);
            StoryPrivacyBottomSheet.super.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onButton1Click$12() {
            this.button.setLoading(false);
            StoryPrivacyBottomSheet.this.closeKeyboard();
            StoryPrivacyBottomSheet.this.viewPager.scrollToPosition(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onButton2Click(View view) {
            if (StoryPrivacyBottomSheet.this.startedFromSendAsMessage) {
                StoryPrivacyBottomSheet.this.activePage = 5;
                StoryPrivacyBottomSheet.this.viewPager.scrollToPosition(1);
                return;
            }
            StoryPrivacyBottomSheet whenSelectedShare = new StoryPrivacyBottomSheet(5, getContext(), ((BottomSheet) StoryPrivacyBottomSheet.this).resourcesProvider).whenSelectedShare(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda18
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    StoryPrivacyBottomSheet.Page.this.lambda$onButton2Click$13((ArrayList) obj);
                }
            });
            whenSelectedShare.storyPeriod = StoryPrivacyBottomSheet.this.storyPeriod;
            whenSelectedShare.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onButton2Click$13(ArrayList arrayList) {
            StoryPrivacyBottomSheet storyPrivacyBottomSheet = StoryPrivacyBottomSheet.this;
            storyPrivacyBottomSheet.done(new StoryPrivacy(5, ((BottomSheet) storyPrivacyBottomSheet).currentAccount, arrayList), new StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda15(StoryPrivacyBottomSheet.this));
        }

        public float top() {
            float paddingTop;
            float y;
            float f = this.layoutManager.getReverseLayout() ? AndroidUtilities.displaySize.y : BitmapDescriptorFactory.HUE_RED;
            for (int i = 0; i < this.listView.getChildCount(); i++) {
                View childAt = this.listView.getChildAt(i);
                if (this.layoutManager.getReverseLayout()) {
                    float paddingTop2 = this.contentView.getPaddingTop() + childAt.getY();
                    float alpha = childAt.getAlpha();
                    if (paddingTop2 < f) {
                        f = AndroidUtilities.lerp(f, paddingTop2, alpha);
                    }
                } else {
                    if ((childAt.getTag() instanceof Integer) && ((Integer) childAt.getTag()).intValue() == 33) {
                        paddingTop = this.contentView.getPaddingTop() + childAt.getBottom();
                        y = childAt.getTranslationY();
                    } else if ((childAt.getTag() instanceof Integer) && ((Integer) childAt.getTag()).intValue() == 35) {
                        paddingTop = this.contentView.getPaddingTop();
                        y = childAt.getY();
                    }
                    return paddingTop + y;
                }
            }
            return f;
        }

        public void bind(int i) {
            this.pageType = i;
            this.changelog.clear();
            this.selectedUsers.clear();
            this.selectedUsersByGroup.clear();
            if (i == 4) {
                this.selectedUsers.addAll(StoryPrivacyBottomSheet.this.excludedEveryone);
                this.selectedUsersByGroup.putAll(StoryPrivacyBottomSheet.this.excludedEveryoneByGroup);
            } else if (i == 5) {
                this.selectedUsers.addAll(StoryPrivacyBottomSheet.this.messageUsers);
            } else if (i == 1) {
                ArrayList closeFriends = StoryPrivacyBottomSheet.this.getCloseFriends();
                for (int i2 = 0; i2 < closeFriends.size(); i2++) {
                    this.selectedUsers.add(Long.valueOf(((TLRPC$User) closeFriends.get(i2)).f1751id));
                }
            } else if (i == 2) {
                this.selectedUsers.addAll(StoryPrivacyBottomSheet.this.excludedContacts);
            } else if (i == 3) {
                this.selectedUsers.addAll(StoryPrivacyBottomSheet.this.selectedContacts);
                this.selectedUsersByGroup.putAll(StoryPrivacyBottomSheet.this.selectedContactsByGroup);
            } else if (i == 6) {
                applyBlocklist(false);
            }
            LinearLayoutManager linearLayoutManager = this.layoutManager;
            Adapter adapter = this.adapter;
            boolean z = i == 0;
            adapter.reversedLayout = z;
            linearLayoutManager.setReverseLayout(z);
            updateSpans(false);
            this.searchField.setText("");
            this.searchField.setVisibility(i == 0 ? 8 : 0);
            this.searchField.scrollToBottom();
            this.query = null;
            updateItems(false);
            updateButton(false);
            updateCheckboxes(false);
            scrollToTop();
            this.listView.requestLayout();
            this.lastSelectedType = -1;
        }

        public void applyBlocklist(boolean z) {
            if (this.pageType != 6) {
                return;
            }
            this.selectedUsers.clear();
            this.selectedUsers.addAll(MessagesController.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).getStoriesController().blocklist);
            for (int i = 0; i < this.changelog.size(); i++) {
                long keyAt = this.changelog.keyAt(i);
                if (this.changelog.valueAt(i).booleanValue()) {
                    if (!this.selectedUsers.contains(Long.valueOf(keyAt))) {
                        this.selectedUsers.add(Long.valueOf(keyAt));
                    }
                } else {
                    this.selectedUsers.remove(Long.valueOf(keyAt));
                }
            }
            if (z) {
                updateItems(true);
                updateButton(true);
                updateCheckboxes(true);
            }
        }

        public void updateItems(boolean z) {
            updateItems(z, true);
        }

        /* JADX WARN: Removed duplicated region for block: B:129:0x061a  */
        /* JADX WARN: Removed duplicated region for block: B:248:0x082e  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0151  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0153  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x015d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void updateItems(boolean r17, boolean r18) {
            /*
                Method dump skipped, instructions count: 2136
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.StoryPrivacyBottomSheet.Page.updateItems(boolean, boolean):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateItems$14() {
            StoryPrivacyBottomSheet.this.activePage = 6;
            StoryPrivacyBottomSheet.this.viewPager.scrollToPosition(1);
        }

        private boolean match(TLObject tLObject, String str) {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            if (tLObject instanceof TLRPC$User) {
                TLRPC$User tLRPC$User = (TLRPC$User) tLObject;
                String lowerCase = AndroidUtilities.translitSafe(UserObject.getUserName(tLRPC$User)).toLowerCase();
                if (!lowerCase.startsWith(str)) {
                    if (!lowerCase.contains(" " + str)) {
                        String lowerCase2 = AndroidUtilities.translitSafe(UserObject.getPublicUsername(tLRPC$User)).toLowerCase();
                        if (!lowerCase2.startsWith(str)) {
                            if (!lowerCase2.contains(" " + str)) {
                                ArrayList<TLRPC$TL_username> arrayList = tLRPC$User.usernames;
                                if (arrayList != null) {
                                    for (int i = 0; i < arrayList.size(); i++) {
                                        TLRPC$TL_username tLRPC$TL_username = arrayList.get(i);
                                        if (tLRPC$TL_username.active && AndroidUtilities.translitSafe(tLRPC$TL_username.username).toLowerCase().startsWith(str)) {
                                            return true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return true;
            } else if (tLObject instanceof TLRPC$Chat) {
                TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) tLObject;
                String lowerCase3 = AndroidUtilities.translitSafe(tLRPC$Chat.title).toLowerCase();
                if (!lowerCase3.startsWith(str)) {
                    if (!lowerCase3.contains(" " + str)) {
                        String lowerCase4 = AndroidUtilities.translitSafe(ChatObject.getPublicUsername(tLRPC$Chat)).toLowerCase();
                        if (!lowerCase4.startsWith(str)) {
                            if (!lowerCase4.contains(" " + str)) {
                                ArrayList<TLRPC$TL_username> arrayList2 = tLRPC$Chat.usernames;
                                if (arrayList2 != null) {
                                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                                        TLRPC$TL_username tLRPC$TL_username2 = arrayList2.get(i2);
                                        if (tLRPC$TL_username2.active && AndroidUtilities.translitSafe(tLRPC$TL_username2.username).toLowerCase().startsWith(str)) {
                                            return true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return true;
            }
            return false;
        }

        public void onSearch(String str) {
            if (str != null && str.isEmpty()) {
                str = null;
            }
            this.query = str;
            updateItems(false);
        }

        public void updateTops() {
            updateSearchFieldTop();
            updateHeaderTop();
        }

        private float getSearchFieldTop() {
            float f = -Math.max(0, Math.min(AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION), this.searchField.resultContainerHeight) - AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION));
            for (int i = 0; i < this.listView.getChildCount(); i++) {
                View childAt = this.listView.getChildAt(i);
                if ((childAt.getTag() instanceof Integer) && ((Integer) childAt.getTag()).intValue() == 34) {
                    return Math.max(f, childAt.getY());
                }
            }
            return f;
        }

        private void updateSearchFieldTop() {
            float searchFieldTop = getSearchFieldTop();
            if (this.scrolling || this.keyboardMoving || getTranslationX() != BitmapDescriptorFactory.HUE_RED) {
                this.searchTranslationAnimating = false;
                ValueAnimator valueAnimator = this.searchFieldAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.searchFieldAnimator = null;
                }
                this.searchField.setTranslationY(searchFieldTop);
            } else if (!this.searchTranslationAnimating || Math.abs(this.searchTranslationAnimatingTo - searchFieldTop) > 1.0f) {
                this.searchTranslationAnimating = true;
                ValueAnimator valueAnimator2 = this.searchFieldAnimator;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                    this.searchFieldAnimator = null;
                }
                this.searchTranslationAnimatingTo = searchFieldTop;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(this.searchField.getTranslationY(), searchFieldTop);
                this.searchFieldAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        StoryPrivacyBottomSheet.Page.this.lambda$updateSearchFieldTop$15(valueAnimator3);
                    }
                });
                this.searchFieldAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.Page.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        Page.this.searchTranslationAnimating = false;
                    }
                });
                this.searchFieldAnimator.setInterpolator(new LinearInterpolator());
                this.searchFieldAnimator.setDuration(180L);
                this.searchFieldAnimator.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchFieldTop$15(ValueAnimator valueAnimator) {
            this.searchField.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }

        private void updateHeaderTop() {
            if (!this.containsHeader) {
                this.headerView.setVisibility(8);
                return;
            }
            boolean z = false;
            this.headerView.setVisibility(0);
            float f = -this.headerView.getHeight();
            int i = 0;
            while (true) {
                if (i >= this.listView.getChildCount()) {
                    z = true;
                    break;
                }
                View childAt = this.listView.getChildAt(i);
                if ((childAt.getTag() instanceof Integer) && ((Integer) childAt.getTag()).intValue() == 35) {
                    f = this.contentView.getPaddingTop() + childAt.getY();
                    break;
                }
                i++;
            }
            if (this.isActionBar != z) {
                this.isActionBar = z;
                this.headerView.backDrawable.setRotation((z || this.pageType != 0) ? BitmapDescriptorFactory.HUE_RED : 1.0f, true);
            }
            this.headerView.setTranslationY(Math.max(AndroidUtilities.statusBarHeight, f));
        }

        public void updateButton(boolean z) {
            int i = this.pageType;
            if (i == 0) {
                this.button.setShowZero(false);
                this.button.setEnabled(true);
                this.button.setCount(0, z);
                if (StoryPrivacyBottomSheet.this.isEdit) {
                    this.button.setText(LocaleController.getString("StoryPrivacyButtonSave"), z);
                } else {
                    this.button.setText(LocaleController.getString("StoryPrivacyButtonPost", C3632R.string.StoryPrivacyButtonPost), z);
                }
                this.button2.setVisibility(StoryPrivacyBottomSheet.this.sendAsMessageEnabled ? 0 : 8);
            } else if (i == 1) {
                this.button.setShowZero(false);
                this.button.setEnabled(true);
                this.button.setText(LocaleController.getString("StoryPrivacyButtonSaveCloseFriends", C3632R.string.StoryPrivacyButtonSaveCloseFriends), z);
                this.button.setCount(this.selectedUsers.size(), z);
                this.button2.setVisibility(8);
            } else if (i == 3) {
                StoryPrivacyBottomSheet storyPrivacyBottomSheet = StoryPrivacyBottomSheet.this;
                int i2 = storyPrivacyBottomSheet.selectedContactsCount = storyPrivacyBottomSheet.mergeUsers(this.selectedUsers, this.selectedUsersByGroup).size();
                this.button.setText(LocaleController.getString("StoryPrivacyButtonSave"), z);
                this.button.setShowZero(false);
                this.buttonContainer.hide(i2 <= 0, z);
                this.button.setCount(i2, z);
                this.button.setEnabled(i2 > 0);
                this.button2.setVisibility(8);
            } else if (i == 2) {
                this.button.setShowZero(false);
                this.button.setEnabled(true);
                if (this.selectedUsers.isEmpty()) {
                    this.button.setText(LocaleController.getString("StoryPrivacyButtonSave"), z);
                    this.button.setCount(0, z);
                } else {
                    this.button.setText(LocaleController.getString("StoryPrivacyButtonExcludeContacts", C3632R.string.StoryPrivacyButtonExcludeContacts), z);
                    this.button.setCount(this.selectedUsers.size(), z);
                }
                this.button2.setVisibility(8);
            } else if (i == 5) {
                this.button.setShowZero(true);
                this.button.setEnabled(!this.selectedUsers.isEmpty());
                this.button.setCount(this.selectedUsers.size(), z);
                this.button2.setVisibility(8);
            } else if (i != 6) {
                if (i == 4) {
                    StoryPrivacyBottomSheet storyPrivacyBottomSheet2 = StoryPrivacyBottomSheet.this;
                    int i3 = storyPrivacyBottomSheet2.excludedEveryoneCount = storyPrivacyBottomSheet2.mergeUsers(storyPrivacyBottomSheet2.excludedEveryone, StoryPrivacyBottomSheet.this.excludedEveryoneByGroup).size();
                    this.button.setText(LocaleController.getString("StoryPrivacyButtonSave"), z);
                    this.button.setShowZero(false);
                    this.buttonContainer.hide(false, z);
                    this.button.setCount(i3, z);
                    this.button.setEnabled(true);
                    this.button2.setVisibility(8);
                }
            } else {
                this.button.setShowZero(false);
                this.button.setEnabled(true);
                this.button.setText(LocaleController.getString("StoryPrivacyButtonSaveCloseFriends", C3632R.string.StoryPrivacyButtonSaveCloseFriends), z);
                StoriesController storiesController = MessagesController.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).getStoriesController();
                if (storiesController.blocklistFull) {
                    this.button.setCount(this.selectedUsers.size(), z);
                } else {
                    storiesController.getBlocklistCount();
                    for (int i4 = 0; i4 < this.changelog.size(); i4++) {
                        long keyAt = this.changelog.keyAt(i4);
                        this.changelog.valueAt(i4).booleanValue();
                        storiesController.blocklist.contains(Long.valueOf(keyAt));
                    }
                }
                this.button2.setVisibility(8);
            }
        }

        private void updateSectionCell(boolean z) {
            if (this.sectionCell == null) {
                return;
            }
            if (StoryPrivacyBottomSheet.this.mergeUsers(this.selectedUsers, this.selectedUsersByGroup).size() > 0) {
                this.sectionCell.setRightText(LocaleController.getString(C3632R.string.UsersDeselectAll), true, new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        StoryPrivacyBottomSheet.Page.this.lambda$updateSectionCell$16(view);
                    }
                });
            } else if (z) {
                this.sectionCell.setRightText(null);
            } else {
                this.sectionCell.setRightText((String) null, (View.OnClickListener) null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSectionCell$16(View view) {
            Iterator<Long> it = this.selectedUsers.iterator();
            while (it.hasNext()) {
                this.changelog.put(it.next().longValue(), Boolean.FALSE);
            }
            for (ArrayList<Long> arrayList : this.selectedUsersByGroup.values()) {
                Iterator<Long> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    this.changelog.put(it2.next().longValue(), Boolean.FALSE);
                }
            }
            this.selectedUsers.clear();
            this.selectedUsersByGroup.clear();
            StoryPrivacyBottomSheet.this.messageUsers.clear();
            this.searchField.spansContainer.removeAllSpans(true);
            updateCheckboxes(true);
            updateButton(true);
        }

        public void updateCheckboxes(boolean z) {
            int childAdapterPosition;
            int i = this.pageType;
            if (i == 4) {
                StoryPrivacyBottomSheet.this.excludedEveryone.clear();
                StoryPrivacyBottomSheet.this.excludedEveryoneByGroup.clear();
                StoryPrivacyBottomSheet.this.excludedEveryone.addAll(this.selectedUsers);
                StoryPrivacyBottomSheet.this.excludedEveryoneByGroup.putAll(this.selectedUsersByGroup);
            } else if (i == 2) {
                StoryPrivacyBottomSheet.this.excludedContacts.clear();
                StoryPrivacyBottomSheet.this.excludedContacts.addAll(this.selectedUsers);
            } else if (i == 3) {
                StoryPrivacyBottomSheet.this.selectedContacts.clear();
                StoryPrivacyBottomSheet.this.selectedContactsByGroup.clear();
                StoryPrivacyBottomSheet.this.selectedContacts.addAll(this.selectedUsers);
                StoryPrivacyBottomSheet.this.selectedContactsByGroup.putAll(this.selectedUsersByGroup);
            } else if (i == 0) {
                StoryPrivacyBottomSheet.this.messageUsers.clear();
                StoryPrivacyBottomSheet.this.messageUsers.addAll(this.selectedUsers);
            }
            if (this.pageType == 3 && (StoryPrivacyBottomSheet.this.selectedType != 3 || (this.selectedUsers.isEmpty() && this.selectedUsersByGroup.isEmpty()))) {
                if (!this.selectedUsers.isEmpty() || !this.selectedUsersByGroup.isEmpty()) {
                    this.lastSelectedType = StoryPrivacyBottomSheet.this.selectedType;
                    StoryPrivacyBottomSheet.this.selectedType = 3;
                } else {
                    int i2 = this.lastSelectedType;
                    if (i2 != -1) {
                        StoryPrivacyBottomSheet.this.selectedType = i2;
                    }
                }
            }
            HashSet mergeUsers = StoryPrivacyBottomSheet.this.mergeUsers(this.selectedUsers, this.selectedUsersByGroup);
            int i3 = 0;
            while (true) {
                if (i3 >= this.items.size()) {
                    break;
                }
                ItemInner itemInner = this.items.get(i3);
                if (itemInner != null) {
                    if (itemInner.type > 0) {
                        itemInner.checked = StoryPrivacyBottomSheet.this.selectedType == itemInner.type;
                        itemInner.halfChecked = false;
                    } else {
                        TLRPC$User tLRPC$User = itemInner.user;
                        if (tLRPC$User != null) {
                            boolean contains = this.selectedUsers.contains(Long.valueOf(tLRPC$User.f1751id));
                            itemInner.checked = contains;
                            itemInner.halfChecked = (contains || !mergeUsers.contains(Long.valueOf(itemInner.user.f1751id))) ? false : false;
                        } else {
                            TLRPC$Chat tLRPC$Chat = itemInner.chat;
                            if (tLRPC$Chat != null) {
                                itemInner.checked = this.selectedUsersByGroup.containsKey(Long.valueOf(tLRPC$Chat.f1602id));
                                itemInner.halfChecked = false;
                            }
                        }
                    }
                }
                i3++;
            }
            for (int i4 = 0; i4 < this.listView.getChildCount(); i4++) {
                View childAt = this.listView.getChildAt(i4);
                boolean z2 = childAt instanceof UserCell;
                if (z2 && (childAdapterPosition = this.listView.getChildAdapterPosition(childAt)) >= 0 && childAdapterPosition < this.items.size() && z2) {
                    ItemInner itemInner2 = this.items.get(childAdapterPosition);
                    UserCell userCell = (UserCell) childAt;
                    userCell.setChecked(itemInner2.checked || itemInner2.halfChecked, z);
                    TLRPC$Chat tLRPC$Chat2 = itemInner2.chat;
                    if (tLRPC$Chat2 != null) {
                        userCell.setCheckboxAlpha(StoryPrivacyBottomSheet.this.getParticipantsCount(tLRPC$Chat2) > 200 ? 0.3f : 1.0f, z);
                    } else {
                        if (itemInner2.halfChecked && !itemInner2.checked) {
                            r6 = 0.5f;
                        }
                        userCell.setCheckboxAlpha(r6, z);
                    }
                }
            }
            updateSectionCell(z);
        }

        public void scrollToTopSmoothly() {
            LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(getContext(), 2, 0.7f);
            linearSmoothScrollerCustom.setTargetPosition(1);
            linearSmoothScrollerCustom.setOffset(-AndroidUtilities.m107dp(56));
            this.layoutManager.startSmoothScroll(linearSmoothScrollerCustom);
        }

        public void scrollToTop() {
            if (this.pageType != 0) {
                this.listView.scrollToPosition(0);
            }
        }

        public int getTypeOn(MotionEvent motionEvent) {
            View findChildViewUnder;
            int childAdapterPosition;
            if (this.pageType == 0 && motionEvent != null && (findChildViewUnder = this.listView.findChildViewUnder(motionEvent.getX(), motionEvent.getY() - this.contentView.getPaddingTop())) != null && (childAdapterPosition = this.listView.getChildAdapterPosition(findChildViewUnder)) >= 0 && childAdapterPosition < this.items.size()) {
                ItemInner itemInner = this.items.get(childAdapterPosition);
                if (itemInner.viewType == 3 && !itemInner.sendAs) {
                    boolean z = LocaleController.isRTL;
                    float x = motionEvent.getX();
                    if (!z ? x > AndroidUtilities.m107dp(100) : x < getWidth() - AndroidUtilities.m107dp(100)) {
                        return itemInner.type;
                    }
                }
            }
            return -1;
        }

        public boolean atTop() {
            return !this.listView.canScrollVertically(-1);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            if (((BottomSheet) StoryPrivacyBottomSheet.this).keyboardHeight > 0) {
                this.keyboardHeight = ((BottomSheet) StoryPrivacyBottomSheet.this).keyboardHeight;
            }
            super.onMeasure(i, i2);
            this.contentView.setPadding(0, AndroidUtilities.statusBarHeight + (this.pageType == 0 ? 0 : AndroidUtilities.m107dp(56)), 0, 0);
            if (this.wasKeyboardVisible != ((BottomSheet) StoryPrivacyBottomSheet.this).keyboardVisible) {
                float searchFieldTop = getSearchFieldTop();
                if (((BottomSheet) StoryPrivacyBottomSheet.this).keyboardVisible && searchFieldTop + Math.min(AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION), this.searchField.resultContainerHeight) > this.listView.getPaddingTop()) {
                    scrollToTopSmoothly();
                }
                int i3 = this.pageType;
                float f = BitmapDescriptorFactory.HUE_RED;
                if (i3 == 0) {
                    this.buttonContainer.setTranslationY(((BottomSheet) StoryPrivacyBottomSheet.this).keyboardVisible ? this.keyboardHeight : 0.0f);
                    View view = this.underKeyboardView;
                    if (((BottomSheet) StoryPrivacyBottomSheet.this).keyboardVisible) {
                        f = this.keyboardHeight;
                    }
                    view.setTranslationY(f);
                } else {
                    this.buttonContainer.translateY(((BottomSheet) StoryPrivacyBottomSheet.this).keyboardVisible ? this.keyboardHeight : -this.keyboardHeight, BitmapDescriptorFactory.HUE_RED);
                    this.underKeyboardView.setTranslationY(((BottomSheet) StoryPrivacyBottomSheet.this).keyboardVisible ? this.keyboardHeight : -this.keyboardHeight);
                    this.keyboardMoving = true;
                    this.underKeyboardView.animate().translationY(BitmapDescriptorFactory.HUE_RED).setDuration(250L).setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            StoryPrivacyBottomSheet.Page.this.lambda$onMeasure$17();
                        }
                    }).start();
                }
                this.wasKeyboardVisible = ((BottomSheet) StoryPrivacyBottomSheet.this).keyboardVisible;
            }
            this.listView.setPadding(0, 0, 0, this.buttonContainer.getMeasuredHeight());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$17() {
            this.keyboardMoving = false;
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.searchField.allSpans.contains(view)) {
                GroupCreateSpan groupCreateSpan = (GroupCreateSpan) view;
                if (groupCreateSpan.isDeleting()) {
                    this.searchField.currentDeletingSpan = null;
                    this.searchField.spansContainer.removeSpan(groupCreateSpan);
                    long uid = groupCreateSpan.getUid();
                    Iterator<Map.Entry<Long, ArrayList<Long>>> it = this.selectedUsersByGroup.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry<Long, ArrayList<Long>> next = it.next();
                        if (next.getValue().contains(Long.valueOf(uid))) {
                            it.remove();
                            this.selectedUsers.addAll(next.getValue());
                            this.selectedUsers.remove(Long.valueOf(uid));
                        }
                    }
                    this.selectedUsers.remove(Long.valueOf(uid));
                    updateCheckboxes(true);
                    updateButton(true);
                    return;
                }
                if (this.searchField.currentDeletingSpan != null) {
                    this.searchField.currentDeletingSpan.cancelDeleteAnimation();
                    this.searchField.currentDeletingSpan = null;
                }
                this.searchField.currentDeletingSpan = groupCreateSpan;
                groupCreateSpan.startDeleteAnimation();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            NotificationCenter.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).addObserver(this, NotificationCenter.chatInfoDidLoad);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getInstance(((BottomSheet) StoryPrivacyBottomSheet.this).currentAccount).removeObserver(this, NotificationCenter.chatInfoDidLoad);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$Page$Adapter */
        /* loaded from: classes6.dex */
        public class Adapter extends AdapterWithDiffUtils {
            private Context context;
            private RecyclerListView listView;
            private Runnable onBack;
            private Theme.ResourcesProvider resourcesProvider;
            public boolean reversedLayout;
            private SearchUsersCell searchField;

            public Adapter(Context context, Theme.ResourcesProvider resourcesProvider, SearchUsersCell searchUsersCell, Runnable runnable) {
                this.context = context;
                this.resourcesProvider = resourcesProvider;
                this.searchField = searchUsersCell;
                this.onBack = runnable;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return (viewHolder.getItemViewType() == 3 && StoryPrivacyBottomSheet.this.canChangePeer) || viewHolder.getItemViewType() == 7;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View view;
                if (i == -1) {
                    view = new View(this.context);
                } else if (i == 0) {
                    view = new View(this.context);
                    view.setTag(35);
                } else if (i == 1) {
                    view = new View(this.context);
                    view.setTag(34);
                } else if (i == 3) {
                    view = new UserCell(this.context, this.resourcesProvider);
                } else if (i == 4) {
                    view = new HeaderCell2(this.context, this.resourcesProvider);
                } else if (i == 8) {
                    view = new org.telegram.p043ui.Cells.HeaderCell(this.context, this.resourcesProvider);
                    view.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
                } else if (i == 5) {
                    StickerEmptyView stickerEmptyView = new StickerEmptyView(this.context, null, 1, this.resourcesProvider);
                    stickerEmptyView.title.setText(LocaleController.getString("NoResult", C3632R.string.NoResult));
                    stickerEmptyView.subtitle.setText(LocaleController.getString("SearchEmptyViewFilteredSubtitle2", C3632R.string.SearchEmptyViewFilteredSubtitle2));
                    stickerEmptyView.linearLayout.setTranslationY(AndroidUtilities.m107dp(24));
                    view = stickerEmptyView;
                } else if (i == 6) {
                    view = new TextInfoPrivacyCell(this.context, this.resourcesProvider);
                    view.setBackgroundColor(-15921907);
                } else if (i == 7) {
                    view = new TextCell(this.context, 23, true, true, this.resourcesProvider);
                } else {
                    view = new View(this, this.context) { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.Page.Adapter.1
                        @Override // android.view.View
                        protected void onMeasure(int i2, int i3) {
                            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(32), 1073741824));
                        }
                    };
                }
                return new RecyclerListView.Holder(view);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                int i2;
                ArrayList arrayList;
                ItemInner itemInner;
                int i3;
                if (Page.this.items == null || i < 0 || i >= Page.this.items.size()) {
                    return;
                }
                ItemInner itemInner2 = (ItemInner) Page.this.items.get(i);
                int itemViewType = viewHolder.getItemViewType();
                boolean z = true;
                if (this.reversedLayout) {
                    if (i > 0) {
                        arrayList = Page.this.items;
                        i2 = i - 1;
                        itemInner = (ItemInner) arrayList.get(i2);
                    }
                    itemInner = null;
                } else {
                    i2 = i + 1;
                    if (i2 < Page.this.items.size()) {
                        arrayList = Page.this.items;
                        itemInner = (ItemInner) arrayList.get(i2);
                    }
                    itemInner = null;
                }
                boolean z2 = itemInner != null && itemInner.viewType == itemViewType;
                if (itemViewType == 3) {
                    UserCell userCell = (UserCell) viewHolder.itemView;
                    boolean z3 = itemInner2.sendAs;
                    userCell.setIsSendAs(z3, !z3);
                    int i4 = itemInner2.type;
                    float f = 1.0f;
                    if (i4 > 0) {
                        userCell.setType(i4, itemInner2.typeCount, itemInner2.user);
                        userCell.setCheckboxAlpha(1.0f, false);
                    } else {
                        TLRPC$User tLRPC$User = itemInner2.user;
                        if (tLRPC$User != null) {
                            userCell.setUser(tLRPC$User);
                            if (itemInner2.halfChecked && !itemInner2.checked) {
                                f = 0.5f;
                            }
                            userCell.setCheckboxAlpha(f, false);
                        } else {
                            TLRPC$Chat tLRPC$Chat = itemInner2.chat;
                            if (tLRPC$Chat != null) {
                                userCell.setChat(tLRPC$Chat, StoryPrivacyBottomSheet.this.getParticipantsCount(tLRPC$Chat));
                            }
                        }
                    }
                    if (!itemInner2.checked && !itemInner2.halfChecked) {
                        z = false;
                    }
                    userCell.setChecked(z, false);
                    userCell.setDivider(z2);
                    userCell.setRedCheckbox(itemInner2.red);
                    userCell.drawArrow = StoryPrivacyBottomSheet.this.canChangePeer;
                } else if (itemViewType == 2) {
                } else {
                    if (itemViewType == 0) {
                        viewHolder.itemView.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m107dp(56)));
                    } else if (itemViewType == -1) {
                        if (itemInner2.subtractHeight > 0) {
                            RecyclerListView recyclerListView = this.listView;
                            i3 = ((recyclerListView == null || recyclerListView.getMeasuredHeight() <= 0) ? AndroidUtilities.displaySize.y : this.listView.getMeasuredHeight() + Page.this.keyboardHeight) - itemInner2.subtractHeight;
                            viewHolder.itemView.setTag(33);
                        } else {
                            i3 = itemInner2.padHeight;
                            if (i3 >= 0) {
                                viewHolder.itemView.setTag(null);
                            } else {
                                i3 = (int) (AndroidUtilities.displaySize.y * 0.3f);
                                viewHolder.itemView.setTag(33);
                            }
                        }
                        viewHolder.itemView.setLayoutParams(new RecyclerView.LayoutParams(-1, i3));
                    } else if (itemViewType == 1) {
                        viewHolder.itemView.setLayoutParams(new RecyclerView.LayoutParams(-1, Math.min(AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION), this.searchField.resultContainerHeight)));
                    } else if (itemViewType == 4) {
                        ((HeaderCell2) viewHolder.itemView).setText(itemInner2.text, itemInner2.text2);
                    } else if (itemViewType == 5) {
                        try {
                            ((StickerEmptyView) viewHolder.itemView).stickerView.getImageReceiver().startAnimation();
                        } catch (Exception unused) {
                        }
                    } else if (itemViewType != 6) {
                        if (itemViewType == 7) {
                            ((TextCell) viewHolder.itemView).setTextAndCheck(itemInner2.text, itemInner2.resId == 0 ? StoryPrivacyBottomSheet.this.allowScreenshots : StoryPrivacyBottomSheet.this.keepOnMyPage, z2);
                        } else if (itemViewType == 8) {
                            ((org.telegram.p043ui.Cells.HeaderCell) viewHolder.itemView).setText(itemInner2.text);
                        }
                    } else {
                        TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                        if (itemInner2.text == null) {
                            textInfoPrivacyCell.setFixedSize(12);
                            textInfoPrivacyCell.setText(null);
                            return;
                        }
                        textInfoPrivacyCell.setFixedSize(0);
                        textInfoPrivacyCell.setText(itemInner2.text);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                if (Page.this.items == null || i < 0 || i >= Page.this.items.size()) {
                    return -1;
                }
                return ((ItemInner) Page.this.items.get(i)).viewType;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                if (Page.this.items == null) {
                    return 0;
                }
                return Page.this.items.size();
            }
        }
    }

    public StoryPrivacyBottomSheet(final Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context, true, resourcesProvider);
        this.excludedEveryone = new ArrayList<>();
        this.excludedEveryoneByGroup = new HashMap<>();
        this.excludedEveryoneCount = 0;
        this.excludedContacts = new ArrayList<>();
        this.selectedContacts = new ArrayList<>();
        this.selectedContactsByGroup = new HashMap<>();
        this.selectedContactsCount = 0;
        this.allowScreenshots = true;
        this.keepOnMyPage = false;
        this.canChangePeer = true;
        this.messageUsers = new ArrayList<>();
        this.activePage = 1;
        this.selectedType = 4;
        this.sendAsMessageEnabled = false;
        this.smallChatsParticipantsCount = new HashMap<>();
        this.storyPeriod = 86400;
        this.backgroundPaint = new Paint(1);
        this.applyWhenDismiss = false;
        this.allowSmallChats = true;
        this.isEdit = false;
        this.storyPeriod = i;
        pullSaved();
        init(context);
        this.viewPager.setAdapter(new ViewPagerFixed.Adapter() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.1
            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public int getItemCount() {
                return 2;
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public View createView(int i2) {
                return new Page(context);
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public int getItemViewType(int i2) {
                if (i2 == 0) {
                    return 0;
                }
                return StoryPrivacyBottomSheet.this.activePage;
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public void bindView(View view, int i2, int i3) {
                ((Page) view).bind(i3);
            }
        });
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                StoryPrivacyBottomSheet.this.lambda$new$1(messagesStorage);
            }
        });
        MessagesController.getInstance(this.currentAccount).getStoriesController().loadBlocklist(false);
        MessagesController.getInstance(this.currentAccount).getStoriesController().loadSendAs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(MessagesStorage messagesStorage) {
        final HashMap<Long, Integer> smallGroupsParticipantsCount = messagesStorage.getSmallGroupsParticipantsCount();
        if (smallGroupsParticipantsCount == null || smallGroupsParticipantsCount.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                StoryPrivacyBottomSheet.this.lambda$new$0(smallGroupsParticipantsCount);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(HashMap hashMap) {
        if (this.smallChatsParticipantsCount == null) {
            this.smallChatsParticipantsCount = new HashMap<>();
        }
        this.smallChatsParticipantsCount.putAll(hashMap);
    }

    private void init(Context context) {
        Bulletin.addDelegate(this.container, new Bulletin.Delegate(this) { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.2
            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean clipWithGradient(int i) {
                return Bulletin.Delegate.CC.$default$clipWithGradient(this, i);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ int getBottomOffset(int i) {
                return Bulletin.Delegate.CC.$default$getBottomOffset(this, i);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onBottomOffsetChange(float f) {
                Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public /* synthetic */ void onShow(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onShow(this, bulletin);
            }

            @Override // org.telegram.p043ui.Components.Bulletin.Delegate
            public int getTopOffset(int i) {
                return AndroidUtilities.statusBarHeight;
            }
        });
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.contactsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesBlocklistUpdate);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesSendAsUpdate);
        Paint paint = this.backgroundPaint;
        int i = Theme.key_dialogBackground;
        paint.setColor(Theme.getColor(i, this.resourcesProvider));
        fixNavigationBar(Theme.getColor(i, this.resourcesProvider));
        this.containerView = new ContainerView(context);
        ViewPagerFixed viewPagerFixed = new ViewPagerFixed(context) { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.3
            @Override // org.telegram.p043ui.Components.ViewPagerFixed
            protected void onTabAnimationUpdate(boolean z) {
                ((BottomSheet) StoryPrivacyBottomSheet.this).containerView.invalidate();
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed
            protected boolean canScroll(MotionEvent motionEvent) {
                View currentView = StoryPrivacyBottomSheet.this.viewPager.getCurrentView();
                if (currentView instanceof Page) {
                    if (getCurrentPosition() > 0) {
                        StoryPrivacyBottomSheet.this.closeKeyboard();
                        return true;
                    }
                    Page page = (Page) currentView;
                    int typeOn = page.getTypeOn(motionEvent);
                    if (typeOn != -1) {
                        StoryPrivacyBottomSheet.this.activePage = typeOn;
                        if (typeOn == 3) {
                            if (!StoryPrivacyBottomSheet.this.selectedContacts.isEmpty() && !StoryPrivacyBottomSheet.this.selectedContactsByGroup.isEmpty()) {
                                StoryPrivacyBottomSheet.this.selectedType = typeOn;
                            }
                        } else if (typeOn == 4) {
                            if (!StoryPrivacyBottomSheet.this.excludedEveryone.isEmpty() && !StoryPrivacyBottomSheet.this.excludedEveryoneByGroup.isEmpty()) {
                                StoryPrivacyBottomSheet.this.selectedType = typeOn;
                            }
                        } else {
                            StoryPrivacyBottomSheet.this.selectedType = typeOn;
                        }
                        page.updateCheckboxes(true);
                        page.updateButton(true);
                    }
                    if (typeOn != -1) {
                        StoryPrivacyBottomSheet.this.closeKeyboard();
                    }
                    return typeOn != -1;
                }
                return true;
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed
            protected void onItemSelected(View view, View view2, int i2, int i3) {
                if (((BottomSheet) StoryPrivacyBottomSheet.this).keyboardVisible) {
                    StoryPrivacyBottomSheet.this.closeKeyboard();
                }
            }
        };
        this.viewPager = viewPagerFixed;
        int i2 = this.backgroundPaddingLeft;
        viewPagerFixed.setPadding(i2, 0, i2, 0);
        this.containerView.addView(this.viewPager, LayoutHelper.createFrame(-1, -1, 119));
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void dismissInternal() {
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.contactsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesBlocklistUpdate);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesSendAsUpdate);
        super.dismissInternal();
    }

    private StoryPrivacyBottomSheet(final int i, final Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, true, resourcesProvider);
        this.excludedEveryone = new ArrayList<>();
        this.excludedEveryoneByGroup = new HashMap<>();
        this.excludedEveryoneCount = 0;
        this.excludedContacts = new ArrayList<>();
        this.selectedContacts = new ArrayList<>();
        this.selectedContactsByGroup = new HashMap<>();
        this.selectedContactsCount = 0;
        this.allowScreenshots = true;
        this.keepOnMyPage = false;
        this.canChangePeer = true;
        this.messageUsers = new ArrayList<>();
        this.activePage = 1;
        this.selectedType = 4;
        this.sendAsMessageEnabled = false;
        this.smallChatsParticipantsCount = new HashMap<>();
        this.storyPeriod = 86400;
        this.backgroundPaint = new Paint(1);
        this.applyWhenDismiss = false;
        this.allowSmallChats = true;
        this.isEdit = false;
        init(context);
        this.viewPager.setAdapter(new ViewPagerFixed.Adapter() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.4
            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public int getItemCount() {
                return 1;
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public View createView(int i2) {
                return new Page(context);
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public int getItemViewType(int i2) {
                return i;
            }

            @Override // org.telegram.p043ui.Components.ViewPagerFixed.Adapter
            public void bindView(View view, int i2, int i3) {
                ((Page) view).bind(i3);
            }
        });
    }

    public void closeKeyboard() {
        View[] viewPages;
        for (View view : this.viewPager.getViewPages()) {
            if (view instanceof Page) {
                Page page = (Page) view;
                if (page.searchField != null) {
                    AndroidUtilities.hideKeyboard(page.searchField.editText);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void done(StoryPrivacy storyPrivacy, Runnable runnable) {
        done(storyPrivacy, runnable, false);
    }

    private void done(final StoryPrivacy storyPrivacy, final Runnable runnable, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (this.warnUsers != null && storyPrivacy != null) {
            MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            for (int i = 0; i < this.warnUsers.size(); i++) {
                String str = this.warnUsers.get(i);
                TLObject userOrChat = messagesController.getUserOrChat(str);
                if (userOrChat instanceof TLRPC$User) {
                    TLRPC$User tLRPC$User = (TLRPC$User) userOrChat;
                    TLRPC$User user = messagesController.getUser(Long.valueOf(tLRPC$User.f1751id));
                    if (user != null) {
                        tLRPC$User = user;
                    }
                    if (!tLRPC$User.bot && !storyPrivacy.containsUser(tLRPC$User)) {
                        arrayList.add(str);
                    }
                }
            }
        }
        if (!arrayList.isEmpty() && !z) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i2 = 0; i2 < Math.min(2, arrayList.size()); i2++) {
                if (i2 > 0) {
                    spannableStringBuilder.append((CharSequence) ", ");
                }
                SpannableString spannableString = new SpannableString("@" + ((String) arrayList.get(i2)));
                spannableString.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, spannableString.length(), 33);
                spannableStringBuilder.append((CharSequence) spannableString);
            }
            new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C3632R.string.StoryRestrictions)).setMessage(AndroidUtilities.replaceCharSequence("%s", LocaleController.getString(C3632R.string.StoryRestrictionsInfo), spannableStringBuilder)).setPositiveButton(LocaleController.getString(C3632R.string.Proceed), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    StoryPrivacyBottomSheet.this.lambda$done$2(storyPrivacy, runnable, dialogInterface, i3);
                }
            }).setNegativeButton(LocaleController.getString(C3632R.string.Cancel), null).show();
            return;
        }
        View[] viewPages = this.viewPager.getViewPages();
        final ButtonWithCounterView buttonWithCounterView = viewPages[0] instanceof Page ? ((Page) viewPages[0]).button : null;
        if (runnable != null && buttonWithCounterView != null) {
            buttonWithCounterView.setLoading(true);
        }
        DoneCallback doneCallback = this.onDone;
        if (doneCallback != null) {
            doneCallback.done(storyPrivacy, this.allowScreenshots, this.keepOnMyPage, this.selectedPeer, runnable != null ? new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    StoryPrivacyBottomSheet.lambda$done$3(ButtonWithCounterView.this, runnable);
                }
            } : null);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$done$2(StoryPrivacy storyPrivacy, Runnable runnable, DialogInterface dialogInterface, int i) {
        done(storyPrivacy, runnable, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$done$3(ButtonWithCounterView buttonWithCounterView, Runnable runnable) {
        if (buttonWithCounterView != null) {
            buttonWithCounterView.setLoading(false);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        StoryPrivacy storyPrivacy;
        if (this.onDismiss != null) {
            int i = this.selectedType;
            if (i == 3) {
                storyPrivacy = new StoryPrivacy(this.selectedType, this.currentAccount, new ArrayList(mergeUsers(this.selectedContacts, this.selectedContactsByGroup)));
                storyPrivacy.selectedUserIds.clear();
                storyPrivacy.selectedUserIds.addAll(this.selectedContacts);
                storyPrivacy.selectedUserIdsByGroup.clear();
                storyPrivacy.selectedUserIdsByGroup.putAll(this.selectedContactsByGroup);
            } else if (i == 4) {
                storyPrivacy = new StoryPrivacy(this.selectedType, this.currentAccount, new ArrayList(mergeUsers(this.excludedEveryone, this.excludedEveryoneByGroup)));
                storyPrivacy.selectedUserIds.clear();
                storyPrivacy.selectedUserIds.addAll(this.excludedEveryone);
                storyPrivacy.selectedUserIdsByGroup.clear();
                storyPrivacy.selectedUserIdsByGroup.putAll(this.excludedEveryoneByGroup);
            } else if (i == 2) {
                storyPrivacy = new StoryPrivacy(i, this.currentAccount, this.excludedContacts);
            } else {
                storyPrivacy = new StoryPrivacy(i, this.currentAccount, (ArrayList<Long>) null);
            }
            this.onDismiss.run(storyPrivacy);
            this.onDismiss = null;
        }
        Bulletin.removeDelegate(this.container);
        save();
        super.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$ContainerView */
    /* loaded from: classes6.dex */
    public class ContainerView extends FrameLayout {
        private final AnimatedFloat isActionBar;
        private final Path path;
        private float top;

        public ContainerView(Context context) {
            super(context);
            this.isActionBar = new AnimatedFloat(this, 250L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.path = new Path();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            View[] viewPages = StoryPrivacyBottomSheet.this.viewPager.getViewPages();
            float f = BitmapDescriptorFactory.HUE_RED;
            this.top = BitmapDescriptorFactory.HUE_RED;
            for (int i = 0; i < viewPages.length; i++) {
                if (viewPages[i] != null) {
                    Page page = (Page) viewPages[i];
                    this.top += page.top() * Utilities.clamp(1.0f - Math.abs(page.getTranslationX() / page.getMeasuredWidth()), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                    if (((BottomSheet) StoryPrivacyBottomSheet.this).keyboardVisible) {
                        int i2 = page.pageType;
                    }
                    if (page.getVisibility() == 0) {
                        page.updateTops();
                    }
                }
            }
            AnimatedFloat animatedFloat = this.isActionBar;
            if (this.top <= AndroidUtilities.statusBarHeight) {
                f = 1.0f;
            }
            float f2 = animatedFloat.set(f);
            this.top = Math.max(AndroidUtilities.statusBarHeight, this.top) - (AndroidUtilities.statusBarHeight * f2);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(((BottomSheet) StoryPrivacyBottomSheet.this).backgroundPaddingLeft, this.top, getWidth() - ((BottomSheet) StoryPrivacyBottomSheet.this).backgroundPaddingLeft, getHeight() + AndroidUtilities.m107dp(8));
            float lerp = AndroidUtilities.lerp(AndroidUtilities.m107dp(14), 0, f2);
            canvas.drawRoundRect(rectF, lerp, lerp, StoryPrivacyBottomSheet.this.backgroundPaint);
            canvas.save();
            this.path.rewind();
            this.path.addRoundRect(rectF, lerp, lerp, Path.Direction.CW);
            canvas.clipPath(this.path);
            super.dispatchDraw(canvas);
            canvas.restore();
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && motionEvent.getY() < this.top) {
                StoryPrivacyBottomSheet.this.dismiss();
                return true;
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824));
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (this.viewPager.getCurrentPosition() > 0) {
            closeKeyboard();
            ViewPagerFixed viewPagerFixed = this.viewPager;
            viewPagerFixed.scrollToPosition(viewPagerFixed.getCurrentPosition() - 1);
            return;
        }
        super.onBackPressed();
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        View currentView = this.viewPager.getCurrentView();
        if (currentView instanceof Page) {
            return ((Page) currentView).atTop();
        }
        return true;
    }

    public StoryPrivacyBottomSheet whenDismiss(Utilities.Callback<StoryPrivacy> callback) {
        this.onDismiss = callback;
        return this;
    }

    public StoryPrivacyBottomSheet whenSelectedRules(DoneCallback doneCallback, boolean z) {
        this.onDone = doneCallback;
        this.applyWhenDismiss = z;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StoryPrivacyBottomSheet whenSelectedShare(Utilities.Callback<ArrayList<Long>> callback) {
        this.onDone2 = callback;
        return this;
    }

    public StoryPrivacyBottomSheet whenSelectedPeer(Utilities.Callback<TLRPC$InputPeer> callback) {
        this.onSelectedPeer = callback;
        return this;
    }

    public StoryPrivacyBottomSheet enableSharing(boolean z) {
        View[] viewPages;
        this.sendAsMessageEnabled = z;
        ViewPagerFixed viewPagerFixed = this.viewPager;
        if (viewPagerFixed != null) {
            for (View view : viewPagerFixed.getViewPages()) {
                if (view instanceof Page) {
                    ((Page) view).updateButton(false);
                }
            }
        }
        return this;
    }

    public StoryPrivacyBottomSheet isEdit(boolean z) {
        View[] viewPages;
        this.isEdit = z;
        ViewPagerFixed viewPagerFixed = this.viewPager;
        if (viewPagerFixed != null) {
            for (View view : viewPagerFixed.getViewPages()) {
                if (view instanceof Page) {
                    Page page = (Page) view;
                    page.updateItems(false);
                    page.updateButton(false);
                }
            }
        }
        return this;
    }

    public StoryPrivacyBottomSheet setWarnUsers(ArrayList<String> arrayList) {
        this.warnUsers = arrayList;
        return this;
    }

    public StoryPrivacyBottomSheet setPeer(TLRPC$InputPeer tLRPC$InputPeer) {
        this.selectedPeer = tLRPC$InputPeer;
        View[] viewPages = this.viewPager.getViewPages();
        if (viewPages[0] instanceof Page) {
            ((Page) viewPages[0]).bind(((Page) viewPages[0]).pageType);
        }
        if (viewPages[1] instanceof Page) {
            ((Page) viewPages[1]).bind(((Page) viewPages[1]).pageType);
        }
        return this;
    }

    public StoryPrivacyBottomSheet setValue(StoryPrivacy storyPrivacy) {
        if (storyPrivacy == null) {
            return this;
        }
        int i = storyPrivacy.type;
        this.selectedType = i;
        if (i == 2) {
            this.excludedContacts.clear();
            this.excludedContacts.addAll(storyPrivacy.selectedUserIds);
        } else if (i == 3) {
            this.selectedContacts.clear();
            this.selectedContacts.addAll(storyPrivacy.selectedUserIds);
            this.selectedContactsByGroup.clear();
            this.selectedContactsByGroup.putAll(storyPrivacy.selectedUserIdsByGroup);
            this.selectedContactsCount = mergeUsers(this.selectedContacts, this.selectedContactsByGroup).size();
        } else if (i == 4) {
            this.excludedEveryone.clear();
            this.excludedEveryone.addAll(storyPrivacy.selectedUserIds);
            this.excludedEveryoneByGroup.clear();
            this.excludedEveryoneByGroup.putAll(storyPrivacy.selectedUserIdsByGroup);
            this.excludedEveryoneCount = mergeUsers(this.excludedEveryone, this.excludedEveryoneByGroup).size();
        }
        if (storyPrivacy.isShare()) {
            this.startedFromSendAsMessage = true;
            this.activePage = 5;
            this.messageUsers.clear();
            this.messageUsers.addAll(storyPrivacy.sendToUsers);
            this.viewPager.setPosition(1);
        }
        View[] viewPages = this.viewPager.getViewPages();
        if (viewPages[0] instanceof Page) {
            ((Page) viewPages[0]).bind(((Page) viewPages[0]).pageType);
        }
        if (viewPages[1] instanceof Page) {
            ((Page) viewPages[1]).bind(((Page) viewPages[1]).pageType);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$ItemInner */
    /* loaded from: classes6.dex */
    public static class ItemInner extends AdapterWithDiffUtils.Item {
        public TLRPC$Chat chat;
        public boolean checked;
        public boolean halfChecked;
        public int padHeight;
        public boolean red;
        public int resId;
        public boolean sendAs;
        public int subtractHeight;
        public CharSequence text;
        public CharSequence text2;
        public int type;
        public int typeCount;
        public TLRPC$User user;

        private ItemInner(int i, boolean z) {
            super(i, z);
            this.padHeight = -1;
        }

        public static ItemInner asPad() {
            return asPad(-1);
        }

        public static ItemInner asPad(int i) {
            ItemInner itemInner = new ItemInner(-1, false);
            itemInner.subtractHeight = i;
            return itemInner;
        }

        public static ItemInner asHeader() {
            return new ItemInner(0, false);
        }

        public static ItemInner asHeader2(CharSequence charSequence, CharSequence charSequence2) {
            ItemInner itemInner = new ItemInner(4, false);
            itemInner.text = charSequence;
            itemInner.text2 = charSequence2;
            return itemInner;
        }

        public static ItemInner asHeaderCell(CharSequence charSequence) {
            ItemInner itemInner = new ItemInner(8, false);
            itemInner.text = charSequence;
            return itemInner;
        }

        public static ItemInner asSearchField() {
            return new ItemInner(1, false);
        }

        public static ItemInner asSection() {
            return new ItemInner(2, false);
        }

        public static ItemInner asUser(TLRPC$User tLRPC$User, boolean z, boolean z2) {
            ItemInner itemInner = new ItemInner(3, true);
            itemInner.user = tLRPC$User;
            itemInner.checked = z;
            itemInner.halfChecked = z2;
            return itemInner;
        }

        public static ItemInner asChat(TLRPC$Chat tLRPC$Chat, boolean z) {
            ItemInner itemInner = new ItemInner(3, true);
            itemInner.chat = tLRPC$Chat;
            itemInner.checked = z;
            return itemInner;
        }

        public static ItemInner asType(int i, boolean z, int i2) {
            ItemInner itemInner = new ItemInner(3, false);
            itemInner.type = i;
            itemInner.checked = z;
            itemInner.typeCount = i2;
            return itemInner;
        }

        public static ItemInner asShadow(CharSequence charSequence) {
            ItemInner itemInner = new ItemInner(6, false);
            itemInner.text = charSequence;
            return itemInner;
        }

        public static ItemInner asCheck(CharSequence charSequence, int i, boolean z) {
            ItemInner itemInner = new ItemInner(7, false);
            itemInner.resId = i;
            itemInner.text = charSequence;
            itemInner.checked = z;
            return itemInner;
        }

        public static ItemInner asNoUsers() {
            return new ItemInner(5, false);
        }

        public static ItemInner asPadding(int i) {
            ItemInner itemInner = new ItemInner(-1, false);
            itemInner.padHeight = i;
            return itemInner;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ItemInner.class != obj.getClass()) {
                return false;
            }
            ItemInner itemInner = (ItemInner) obj;
            int i = this.viewType;
            if (i != itemInner.viewType) {
                return false;
            }
            if (i != -1 || (this.subtractHeight == itemInner.subtractHeight && this.padHeight == itemInner.padHeight)) {
                if (i != 3 || (this.user == itemInner.user && this.chat == itemInner.chat && this.type == itemInner.type && this.typeCount == itemInner.typeCount && this.checked == itemInner.checked && this.red == itemInner.red && this.sendAs == itemInner.sendAs)) {
                    if (i != 0 || this.resId == itemInner.resId) {
                        if (i != 2 || TextUtils.equals(this.text, itemInner.text)) {
                            if (this.viewType != 8 || TextUtils.equals(this.text, itemInner.text)) {
                                if (this.viewType != 4 || (TextUtils.equals(this.text, itemInner.text) && TextUtils.equals(this.text2, itemInner.text2))) {
                                    if (this.viewType != 6 || (TextUtils.equals(this.text, itemInner.text) && this.resId == itemInner.resId)) {
                                        return this.viewType != 7 || (this.resId == itemInner.resId && TextUtils.equals(this.text, itemInner.text) && this.checked == itemInner.checked);
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public ItemInner red(boolean z) {
            this.red = z;
            return this;
        }

        public ItemInner asSendAs() {
            this.sendAs = true;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<TLObject> getContacts() {
        TLRPC$User user;
        ArrayList<TLObject> arrayList = new ArrayList<>();
        ArrayList<TLRPC$TL_contact> arrayList2 = ContactsController.getInstance(this.currentAccount).contacts;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            ContactsController.getInstance(this.currentAccount).loadContacts(false, 0L);
        }
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        if (arrayList2 != null) {
            for (int i = 0; i < arrayList2.size(); i++) {
                TLRPC$TL_contact tLRPC$TL_contact = arrayList2.get(i);
                if (tLRPC$TL_contact != null && (user = messagesController.getUser(Long.valueOf(tLRPC$TL_contact.user_id))) != null && !UserObject.isUserSelf(user) && !user.bot && user.f1751id != 777000) {
                    arrayList.add(user);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<TLObject> getCloseFriends() {
        TLRPC$User tLRPC$User;
        ArrayList<TLObject> contacts = getContacts();
        int i = 0;
        while (i < contacts.size()) {
            TLObject tLObject = contacts.get(i);
            if ((tLObject instanceof TLRPC$User) && ((tLRPC$User = (TLRPC$User) tLObject) == null || !tLRPC$User.close_friend)) {
                contacts.remove(i);
                i--;
            }
            i++;
        }
        return contacts;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<TLObject> getUsers(boolean z, boolean z2) {
        TLRPC$User user;
        TLRPC$Chat chat;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        HashMap hashMap = new HashMap();
        ArrayList<TLObject> arrayList = new ArrayList<>();
        ArrayList<TLRPC$Dialog> allDialogs = messagesController.getAllDialogs();
        ConcurrentHashMap<Long, TLRPC$TL_contact> concurrentHashMap = ContactsController.getInstance(this.currentAccount).contactsDict;
        if (concurrentHashMap == null || concurrentHashMap.isEmpty()) {
            if (!this.loadedContacts) {
                ContactsController.getInstance(this.currentAccount).loadContacts(false, 0L);
            }
            this.loadedContacts = true;
        }
        for (int i = 0; i < allDialogs.size(); i++) {
            TLRPC$Dialog tLRPC$Dialog = allDialogs.get(i);
            if (DialogObject.isUserDialog(tLRPC$Dialog.f1608id)) {
                TLRPC$User user2 = messagesController.getUser(Long.valueOf(tLRPC$Dialog.f1608id));
                if (user2 != null && !user2.bot && user2.f1751id != 777000 && !UserObject.isUserSelf(user2) && !user2.deleted && (!z || (concurrentHashMap != null && concurrentHashMap.get(Long.valueOf(user2.f1751id)) != null))) {
                    hashMap.put(Long.valueOf(user2.f1751id), Boolean.TRUE);
                    arrayList.add(user2);
                }
            } else if (z2 && DialogObject.isChatDialog(tLRPC$Dialog.f1608id) && (chat = messagesController.getChat(Long.valueOf(-tLRPC$Dialog.f1608id))) != null && !ChatObject.isChannelAndNotMegaGroup(chat)) {
                hashMap.put(Long.valueOf(-chat.f1602id), Boolean.TRUE);
                arrayList.add(chat);
            }
        }
        if (concurrentHashMap != null) {
            for (Map.Entry<Long, TLRPC$TL_contact> entry : concurrentHashMap.entrySet()) {
                long longValue = entry.getKey().longValue();
                if (!hashMap.containsKey(Long.valueOf(longValue)) && (user = messagesController.getUser(Long.valueOf(longValue))) != null && !user.bot && user.f1751id != 777000 && !UserObject.isUserSelf(user)) {
                    arrayList.add(user);
                    hashMap.put(Long.valueOf(user.f1751id), Boolean.TRUE);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getParticipantsCount(TLRPC$Chat tLRPC$Chat) {
        Integer num;
        int i;
        TLRPC$ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(tLRPC$Chat.f1602id);
        if (chatFull == null || (i = chatFull.participants_count) <= 0) {
            HashMap<Long, Integer> hashMap = this.smallChatsParticipantsCount;
            if (hashMap != null && (num = hashMap.get(Long.valueOf(tLRPC$Chat.f1602id))) != null) {
                return num.intValue();
            }
            return tLRPC$Chat.participants_count;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<TLObject> getChats() {
        TLRPC$Chat chat;
        ArrayList<TLObject> arrayList = new ArrayList<>();
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        ArrayList<TLRPC$Dialog> allDialogs = messagesController.getAllDialogs();
        for (int i = 0; i < allDialogs.size(); i++) {
            TLRPC$Dialog tLRPC$Dialog = allDialogs.get(i);
            if (messagesController.canAddToForward(tLRPC$Dialog)) {
                if (DialogObject.isUserDialog(tLRPC$Dialog.f1608id)) {
                    TLRPC$User user = messagesController.getUser(Long.valueOf(tLRPC$Dialog.f1608id));
                    if (user != null && !user.bot && user.f1751id != 777000 && !UserObject.isUserSelf(user)) {
                        arrayList.add(user);
                    }
                } else if (DialogObject.isChatDialog(tLRPC$Dialog.f1608id) && (chat = messagesController.getChat(Long.valueOf(-tLRPC$Dialog.f1608id))) != null && !ChatObject.isForum(chat)) {
                    arrayList.add(chat);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$UserCell */
    /* loaded from: classes6.dex */
    public static class UserCell extends FrameLayout {
        private Paint arrowPaint;
        private Path arrowPath;
        private final AvatarDrawable avatarDrawable;
        private final CheckBox2 checkBox;
        private final Paint dividerPaint;
        private boolean drawArrow;
        private final BackupImageView imageView;
        private boolean[] isOnline;
        private boolean needCheck;
        private boolean needDivider;
        private final RadioButton radioButton;
        private final Theme.ResourcesProvider resourcesProvider;
        private boolean sendAs;
        private final SimpleTextView subtitleTextView;
        private final SimpleTextView titleTextView;

        public UserCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            this.avatarDrawable = avatarDrawable;
            this.dividerPaint = new Paint(1);
            this.sendAs = false;
            this.needCheck = true;
            this.drawArrow = true;
            this.isOnline = new boolean[1];
            this.resourcesProvider = resourcesProvider;
            avatarDrawable.setRoundRadius(AndroidUtilities.m107dp(40));
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m107dp(20));
            addView(backupImageView);
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.titleTextView = simpleTextView;
            simpleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            simpleTextView.setTextSize(16);
            int i = Theme.key_dialogTextBlack;
            simpleTextView.setTextColor(Theme.getColor(i, resourcesProvider));
            simpleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            NotificationCenter.listenEmojiLoading(simpleTextView);
            addView(simpleTextView);
            SimpleTextView simpleTextView2 = new SimpleTextView(context);
            this.subtitleTextView = simpleTextView2;
            simpleTextView2.setTextSize(14);
            simpleTextView2.setTextColor(Theme.getColor(i, resourcesProvider));
            simpleTextView2.setGravity(LocaleController.isRTL ? 5 : 3);
            NotificationCenter.listenEmojiLoading(simpleTextView2);
            addView(simpleTextView2);
            CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
            this.checkBox = checkBox2;
            int i2 = Theme.key_dialogRoundCheckBox;
            int i3 = Theme.key_checkboxDisabled;
            checkBox2.setColor(i2, i3, Theme.key_dialogRoundCheckBoxCheck);
            checkBox2.setDrawUnchecked(true);
            checkBox2.setDrawBackgroundAsArc(10);
            addView(checkBox2);
            checkBox2.setChecked(false, false);
            checkBox2.setVisibility(8);
            RadioButton radioButton = new RadioButton(context);
            this.radioButton = radioButton;
            radioButton.setSize(AndroidUtilities.m107dp(20));
            radioButton.setColor(Theme.getColor(i3, resourcesProvider), Theme.getColor(Theme.key_dialogRadioBackgroundChecked, resourcesProvider));
            addView(radioButton);
            radioButton.setVisibility(8);
            updateLayouts();
        }

        private void updateLayouts() {
            BackupImageView backupImageView = this.imageView;
            int i = (LocaleController.isRTL ? 5 : 3) | 16;
            boolean z = this.needCheck;
            backupImageView.setLayoutParams(LayoutHelper.createFrame(40, 40, i, z ? 53 : 16, 0, z ? 53 : 16, 0));
            SimpleTextView simpleTextView = this.titleTextView;
            boolean z2 = LocaleController.isRTL;
            simpleTextView.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z2 ? 5 : 3) | 16, z2 ? 20 : this.needCheck ? 105 : 68, 0, z2 ? this.needCheck ? 105 : 68 : 20, 0));
            SimpleTextView simpleTextView2 = this.subtitleTextView;
            boolean z3 = LocaleController.isRTL;
            simpleTextView2.setLayoutParams(LayoutHelper.createFrame(-1, -2, (z3 ? 5 : 3) | 16, z3 ? 20 : this.needCheck ? 105 : 68, 0, z3 ? this.needCheck ? 105 : 68 : 20, 0));
            this.checkBox.setLayoutParams(LayoutHelper.createFrame(24, 24, (LocaleController.isRTL ? 5 : 3) | 16, 13, 0, 14, 0));
            this.radioButton.setLayoutParams(LayoutHelper.createFrame(22, 22, (LocaleController.isRTL ? 5 : 3) | 16, 14, 0, 15, 0));
        }

        public void setIsSendAs(boolean z, boolean z2) {
            this.sendAs = z;
            if (z2 != this.needCheck) {
                this.needCheck = z2;
                updateLayouts();
            }
            if (!this.needCheck) {
                this.radioButton.setVisibility(8);
                this.checkBox.setVisibility(8);
            }
            setWillNotDraw(!this.needDivider && (this.needCheck || !this.sendAs));
        }

        public void setRedCheckbox(boolean z) {
            this.checkBox.setColor(z ? Theme.key_color_red : Theme.key_dialogRoundCheckBox, Theme.key_checkboxDisabled, Theme.key_dialogRoundCheckBoxCheck);
        }

        public void setChecked(boolean z, boolean z2) {
            if (this.checkBox.getVisibility() == 0) {
                this.checkBox.setChecked(z, z2);
            }
            if (this.radioButton.getVisibility() == 0) {
                this.radioButton.setChecked(z, z2);
            }
        }

        public void setCheckboxAlpha(float f, boolean z) {
            if (z) {
                if (Math.abs(this.checkBox.getAlpha() - f) > 0.1d) {
                    this.checkBox.animate().cancel();
                    this.checkBox.animate().alpha(f).start();
                }
                if (Math.abs(this.radioButton.getAlpha() - f) > 0.1d) {
                    this.radioButton.animate().cancel();
                    this.radioButton.animate().alpha(f).start();
                    return;
                }
                return;
            }
            this.checkBox.animate().cancel();
            this.checkBox.setAlpha(f);
            this.radioButton.animate().cancel();
            this.radioButton.setAlpha(f);
        }

        public void setUser(TLRPC$User tLRPC$User) {
            this.avatarDrawable.setInfo(tLRPC$User);
            this.imageView.setRoundRadius(AndroidUtilities.m107dp(20));
            this.imageView.setForUserOrChat(tLRPC$User, this.avatarDrawable);
            this.titleTextView.setText(Emoji.replaceEmoji(UserObject.getUserName(tLRPC$User), this.titleTextView.getPaint().getFontMetricsInt(), false));
            boolean[] zArr = this.isOnline;
            zArr[0] = false;
            if (this.sendAs) {
                setSubtitle(LocaleController.getString(C3632R.string.VoipGroupPersonalAccount));
                this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextGray3, this.resourcesProvider));
            } else {
                setSubtitle(LocaleController.formatUserStatus(UserConfig.selectedAccount, tLRPC$User, zArr));
                this.subtitleTextView.setTextColor(Theme.getColor(this.isOnline[0] ? Theme.key_dialogTextBlue2 : Theme.key_dialogTextGray3, this.resourcesProvider));
            }
            this.checkBox.setVisibility(this.needCheck ? 0 : 8);
            this.checkBox.setAlpha(1.0f);
            this.radioButton.setVisibility(8);
        }

        public void setChat(TLRPC$Chat tLRPC$Chat, int i) {
            String lowerCase;
            this.avatarDrawable.setInfo(tLRPC$Chat);
            this.imageView.setRoundRadius(AndroidUtilities.m107dp(ChatObject.isForum(tLRPC$Chat) ? 12 : 20));
            this.imageView.setForUserOrChat(tLRPC$Chat, this.avatarDrawable);
            this.titleTextView.setText(Emoji.replaceEmoji(tLRPC$Chat.title, this.titleTextView.getPaint().getFontMetricsInt(), false));
            this.isOnline[0] = false;
            if (this.sendAs) {
                if (i <= 0) {
                    i = tLRPC$Chat.participants_count;
                }
                if (i >= 1) {
                    lowerCase = LocaleController.formatPluralString("Subscribers", i, new Object[0]);
                } else {
                    lowerCase = LocaleController.getString(C3632R.string.DiscussChannel);
                }
            } else if (!ChatObject.isChannel(tLRPC$Chat) || tLRPC$Chat.megagroup) {
                if (i >= 1) {
                    lowerCase = LocaleController.formatPluralStringComma("Members", i - 1);
                } else if (tLRPC$Chat.has_geo) {
                    lowerCase = LocaleController.getString("MegaLocation", C3632R.string.MegaLocation);
                } else if (!ChatObject.isPublic(tLRPC$Chat)) {
                    lowerCase = LocaleController.getString("MegaPrivate", C3632R.string.MegaPrivate).toLowerCase();
                } else {
                    lowerCase = LocaleController.getString("MegaPublic", C3632R.string.MegaPublic).toLowerCase();
                }
            } else if (i >= 1) {
                lowerCase = LocaleController.formatPluralStringComma("Subscribers", i - 1);
            } else if (!ChatObject.isPublic(tLRPC$Chat)) {
                lowerCase = LocaleController.getString("ChannelPrivate", C3632R.string.ChannelPrivate).toLowerCase();
            } else {
                lowerCase = LocaleController.getString("ChannelPublic", C3632R.string.ChannelPublic).toLowerCase();
            }
            setSubtitle(lowerCase);
            this.subtitleTextView.setTextColor(Theme.getColor(this.isOnline[0] ? Theme.key_dialogTextBlue2 : Theme.key_dialogTextGray3, this.resourcesProvider));
            this.checkBox.setVisibility(this.needCheck ? 0 : 8);
            this.radioButton.setVisibility(8);
            setCheckboxAlpha(i > 200 ? 0.3f : 1.0f, false);
        }

        private CharSequence withArrow(CharSequence charSequence) {
            SpannableString spannableString = new SpannableString(">");
            Drawable drawable = getContext().getResources().getDrawable(C3632R.C3634drawable.attach_arrow_right);
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(drawable, 2);
            drawable.setBounds(0, AndroidUtilities.m107dp(1), AndroidUtilities.m107dp(11), AndroidUtilities.m107dp(12));
            spannableString.setSpan(coloredImageSpan, 0, spannableString.length(), 33);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append(charSequence).append((CharSequence) " ").append((CharSequence) spannableString);
            return spannableStringBuilder;
        }

        public void setType(int i, int i2, TLRPC$User tLRPC$User) {
            if (i == 4) {
                this.titleTextView.setText(LocaleController.getString("StoryPrivacyOptionEveryone", C3632R.string.StoryPrivacyOptionEveryone));
                if (i2 == 1 && tLRPC$User != null) {
                    setSubtitle(withArrow(Emoji.replaceEmoji(LocaleController.formatString(C3632R.string.StoryPrivacyOptionExcludePerson, UserObject.getUserName(tLRPC$User)), this.subtitleTextView.getPaint().getFontMetricsInt(), false)));
                } else if (i2 > 0) {
                    setSubtitle(withArrow(LocaleController.formatPluralString("StoryPrivacyOptionExcludePeople", i2, new Object[0])));
                } else {
                    setSubtitle(withArrow(LocaleController.getString("StoryPrivacyOptionContactsDetail", C3632R.string.StoryPrivacyOptionContactsDetail)));
                }
                this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2, this.resourcesProvider));
                this.avatarDrawable.setAvatarType(7);
                this.avatarDrawable.setColor(-15292942, -15630089);
            } else if (i == 2) {
                this.titleTextView.setText(LocaleController.getString("StoryPrivacyOptionContacts", C3632R.string.StoryPrivacyOptionContacts));
                if (i2 == 1 && tLRPC$User != null) {
                    setSubtitle(withArrow(Emoji.replaceEmoji(LocaleController.formatString(C3632R.string.StoryPrivacyOptionExcludePerson, UserObject.getUserName(tLRPC$User)), this.subtitleTextView.getPaint().getFontMetricsInt(), false)));
                } else if (i2 > 0) {
                    setSubtitle(withArrow(LocaleController.formatPluralString("StoryPrivacyOptionExcludePeople", i2, new Object[0])));
                } else {
                    setSubtitle(withArrow(LocaleController.getString("StoryPrivacyOptionContactsDetail", C3632R.string.StoryPrivacyOptionContactsDetail)));
                }
                this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2, this.resourcesProvider));
                this.avatarDrawable.setAvatarType(4);
                this.avatarDrawable.setColor(-3905294, -6923014);
            } else if (i == 1) {
                this.titleTextView.setText(LocaleController.getString("StoryPrivacyOptionCloseFriends", C3632R.string.StoryPrivacyOptionCloseFriends));
                if (i2 == 1 && tLRPC$User != null) {
                    setSubtitle(withArrow(Emoji.replaceEmoji(UserObject.getUserName(tLRPC$User), this.subtitleTextView.getPaint().getFontMetricsInt(), false)));
                } else if (i2 > 0) {
                    setSubtitle(withArrow(LocaleController.formatPluralString("StoryPrivacyOptionPeople", i2, new Object[0])));
                } else {
                    setSubtitle(withArrow(LocaleController.getString("StoryPrivacyOptionCloseFriendsDetail", C3632R.string.StoryPrivacyOptionCloseFriendsDetail)));
                }
                this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2, this.resourcesProvider));
                this.avatarDrawable.setAvatarType(15);
                this.avatarDrawable.setColor(-7808710, -13781445);
            } else if (i == 3) {
                this.titleTextView.setText(LocaleController.getString("StoryPrivacyOptionSelectedContacts", C3632R.string.StoryPrivacyOptionSelectedContacts));
                if (i2 == 1 && tLRPC$User != null) {
                    setSubtitle(withArrow(Emoji.replaceEmoji(UserObject.getUserName(tLRPC$User), this.subtitleTextView.getPaint().getFontMetricsInt(), false)));
                } else if (i2 > 0) {
                    setSubtitle(withArrow(LocaleController.formatPluralString("StoryPrivacyOptionPeople", i2, new Object[0])));
                } else {
                    setSubtitle(withArrow(LocaleController.getString("StoryPrivacyOptionSelectedContactsDetail", C3632R.string.StoryPrivacyOptionSelectedContactsDetail)));
                }
                this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2, this.resourcesProvider));
                this.avatarDrawable.setAvatarType(6);
                this.avatarDrawable.setColor(-18621, -618956);
            }
            this.checkBox.setVisibility(8);
            this.radioButton.setVisibility(this.needCheck ? 0 : 8);
            this.imageView.setImageDrawable(this.avatarDrawable);
            this.imageView.setRoundRadius(AndroidUtilities.m107dp(20));
        }

        private void setSubtitle(CharSequence charSequence) {
            if (charSequence == null) {
                this.titleTextView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                this.subtitleTextView.setVisibility(8);
                return;
            }
            this.titleTextView.setTranslationY(AndroidUtilities.m107dp(-9));
            this.subtitleTextView.setTranslationY(AndroidUtilities.m107dp(12));
            this.subtitleTextView.setText(charSequence);
            this.subtitleTextView.setVisibility(0);
        }

        public void setDivider(boolean z) {
            this.needDivider = z;
            setWillNotDraw(!z && (this.needCheck || !this.sendAs));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp((!this.sendAs || this.needCheck) ? 56 : 62), 1073741824));
            if (this.needCheck || !this.sendAs) {
                return;
            }
            Path path = this.arrowPath;
            if (path == null) {
                this.arrowPath = new Path();
            } else {
                path.rewind();
            }
            float m107dp = LocaleController.isRTL ? AndroidUtilities.m107dp(31) : getMeasuredWidth() - AndroidUtilities.m107dp(31);
            float measuredHeight = getMeasuredHeight() / 2.0f;
            float f = LocaleController.isRTL ? -1.0f : 1.0f;
            this.arrowPath.moveTo(m107dp, measuredHeight - AndroidUtilities.m107dp(6));
            this.arrowPath.lineTo((f * AndroidUtilities.m107dp(6)) + m107dp, measuredHeight);
            this.arrowPath.lineTo(m107dp, measuredHeight + AndroidUtilities.m107dp(6));
            if (this.arrowPaint == null) {
                Paint paint = new Paint(1);
                this.arrowPaint = paint;
                paint.setStyle(Paint.Style.STROKE);
                this.arrowPaint.setStrokeCap(Paint.Cap.ROUND);
            }
            this.arrowPaint.setStrokeWidth(AndroidUtilities.dpf2(1.86f));
            this.arrowPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider), 0.3f));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Paint paint;
            super.onDraw(canvas);
            if (this.needDivider) {
                this.dividerPaint.setColor(Theme.getColor(Theme.key_divider, this.resourcesProvider));
                if (LocaleController.isRTL) {
                    canvas.drawRect(BitmapDescriptorFactory.HUE_RED, getHeight() - 1, getWidth() - AndroidUtilities.m107dp(105), getHeight(), this.dividerPaint);
                } else {
                    canvas.drawRect(AndroidUtilities.m107dp(105), getHeight() - 1, getWidth(), getHeight(), this.dividerPaint);
                }
            }
            Path path = this.arrowPath;
            if (path == null || (paint = this.arrowPaint) == null || this.needCheck || !this.sendAs || !this.drawArrow) {
                return;
            }
            canvas.drawPath(path, paint);
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$HeaderCell2 */
    /* loaded from: classes6.dex */
    private static class HeaderCell2 extends LinearLayout {
        private final Theme.ResourcesProvider resourcesProvider;
        private final TextView subtitleTextView;
        private final TextView titleTextView;

        public HeaderCell2(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            setOrientation(1);
            this.resourcesProvider = resourcesProvider;
            TextView textView = new TextView(context);
            this.titleTextView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
            textView.setTextSize(1, 20.0f);
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            addView(textView, LayoutHelper.createLinear(-1, -2, 55, 27, 16, 27, 0));
            TextView textView2 = new TextView(context);
            this.subtitleTextView = textView2;
            textView2.setTextColor(Theme.getColor(Theme.key_dialogTextGray2, resourcesProvider));
            textView2.setTextSize(1, 14.0f);
            addView(textView2, LayoutHelper.createLinear(-1, -2, 55, 27, 5, 27, 13));
        }

        public void setText(CharSequence charSequence, CharSequence charSequence2) {
            this.titleTextView.setText(charSequence);
            this.subtitleTextView.setText(charSequence2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$HeaderCell */
    /* loaded from: classes6.dex */
    public static class HeaderCell extends FrameLayout {
        public BackDrawable backDrawable;
        private ImageView closeView;
        private final Paint dividerPaint;
        private Runnable onCloseClickListener;
        private final Theme.ResourcesProvider resourcesProvider;
        private TextView textView;

        public HeaderCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.dividerPaint = new Paint(1);
            this.resourcesProvider = resourcesProvider;
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.textView.setTextSize(1, 20.0f);
            this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
            this.textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
            TextView textView2 = this.textView;
            boolean z = LocaleController.isRTL;
            addView(textView2, LayoutHelper.createFrame(-1, -2, 23, z ? 16 : 53, 0, z ? 53 : 16, 0));
            ImageView imageView = new ImageView(context);
            this.closeView = imageView;
            BackDrawable backDrawable = new BackDrawable(false);
            this.backDrawable = backDrawable;
            imageView.setImageDrawable(backDrawable);
            this.backDrawable.setColor(-1);
            this.backDrawable.setRotatedColor(-1);
            this.backDrawable.setAnimationTime(220.0f);
            addView(this.closeView, LayoutHelper.createFrame(24, 24, (LocaleController.isRTL ? 5 : 3) | 16, 16, 0, 16, 0));
            this.closeView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$HeaderCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StoryPrivacyBottomSheet.HeaderCell.this.lambda$new$0(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            Runnable runnable = this.onCloseClickListener;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            this.dividerPaint.setColor(Theme.getColor(Theme.key_divider, this.resourcesProvider));
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, getHeight() - AndroidUtilities.getShadowHeight(), getWidth(), getHeight(), this.dividerPaint);
        }

        public void setText(CharSequence charSequence) {
            this.textView.setText(charSequence);
        }

        public void setCloseImageVisible(boolean z) {
            this.closeView.setVisibility(z ? 0 : 8);
            TextView textView = this.textView;
            boolean z2 = LocaleController.isRTL;
            int i = 22;
            int i2 = (z2 || !z) ? 22 : 53;
            if (z2 && z) {
                i = 53;
            }
            textView.setLayoutParams(LayoutHelper.createFrame(-1, -2, 23, i2, 0, i, 0));
        }

        public void setOnCloseClickListener(Runnable runnable) {
            this.onCloseClickListener = runnable;
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(56), 1073741824));
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$SearchUsersCell */
    /* loaded from: classes6.dex */
    public class SearchUsersCell extends ScrollView {
        public ArrayList<GroupCreateSpan> allSpans;
        private final LinearGradient bottomGradient;
        private final AnimatedFloat bottomGradientAlpha;
        private final Matrix bottomGradientMatrix;
        private final Paint bottomGradientPaint;
        public float containerHeight;
        private GroupCreateSpan currentDeletingSpan;
        private EditTextBoldCursor editText;
        private int fieldY;
        private int hintTextWidth;
        private boolean ignoreScrollEvent;
        private boolean ignoreTextChange;
        private Utilities.Callback<String> onSearchTextChange;
        private int prevResultContainerHeight;
        private final Theme.ResourcesProvider resourcesProvider;
        public int resultContainerHeight;
        private boolean scroll;
        public SpansContainer spansContainer;
        private final LinearGradient topGradient;
        private final AnimatedFloat topGradientAlpha;
        private final Matrix topGradientMatrix;
        private final Paint topGradientPaint;
        private Runnable updateHeight;

        public SearchUsersCell(StoryPrivacyBottomSheet storyPrivacyBottomSheet, Context context, Theme.ResourcesProvider resourcesProvider, Runnable runnable) {
            super(context);
            this.allSpans = new ArrayList<>();
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.topGradientAlpha = new AnimatedFloat(this, 0L, 300L, cubicBezierInterpolator);
            LinearGradient linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(8), new int[]{-16777216, 0}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
            this.topGradient = linearGradient;
            Paint paint = new Paint(1);
            this.topGradientPaint = paint;
            this.topGradientMatrix = new Matrix();
            this.bottomGradientAlpha = new AnimatedFloat(this, 0L, 300L, cubicBezierInterpolator);
            LinearGradient linearGradient2 = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(8), new int[]{0, -16777216}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f}, Shader.TileMode.CLAMP);
            this.bottomGradient = linearGradient2;
            Paint paint2 = new Paint(1);
            this.bottomGradientPaint = paint2;
            this.bottomGradientMatrix = new Matrix();
            paint.setShader(linearGradient);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            paint2.setShader(linearGradient2);
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.resourcesProvider = resourcesProvider;
            this.updateHeight = runnable;
            setVerticalScrollBarEnabled(false);
            AndroidUtilities.setScrollViewEdgeEffectColor(this, Theme.getColor(Theme.key_windowBackgroundWhite));
            SpansContainer spansContainer = new SpansContainer(context);
            this.spansContainer = spansContainer;
            addView(spansContainer, LayoutHelper.createFrame(-1, -2));
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context, storyPrivacyBottomSheet) { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.SearchUsersCell.1
                @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (SearchUsersCell.this.currentDeletingSpan != null) {
                        SearchUsersCell.this.currentDeletingSpan.cancelDeleteAnimation();
                        SearchUsersCell.this.currentDeletingSpan = null;
                    }
                    if (motionEvent.getAction() == 0 && !AndroidUtilities.showKeyboard(this)) {
                        SearchUsersCell.this.fullScroll(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
                        clearFocus();
                        requestFocus();
                    }
                    return super.onTouchEvent(motionEvent);
                }
            };
            this.editText = editTextBoldCursor;
            if (Build.VERSION.SDK_INT >= 25) {
                editTextBoldCursor.setRevealOnFocusHint(false);
            }
            this.editText.setTextSize(1, 16.0f);
            this.editText.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, resourcesProvider));
            this.editText.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            EditTextBoldCursor editTextBoldCursor2 = this.editText;
            int i = Theme.key_groupcreate_cursor;
            editTextBoldCursor2.setCursorColor(Theme.getColor(i, resourcesProvider));
            this.editText.setHandlesColor(Theme.getColor(i, resourcesProvider));
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
            EditTextBoldCursor editTextBoldCursor3 = this.editText;
            int i2 = C3632R.string.Search;
            editTextBoldCursor3.setHintText(LocaleController.getString("Search", i2));
            this.hintTextWidth = (int) this.editText.getPaint().measureText(LocaleController.getString("Search", i2));
            this.editText.addTextChangedListener(new TextWatcher(storyPrivacyBottomSheet) { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.SearchUsersCell.2
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    if (SearchUsersCell.this.ignoreTextChange || SearchUsersCell.this.onSearchTextChange == null || editable == null) {
                        return;
                    }
                    SearchUsersCell.this.onSearchTextChange.run(editable.toString());
                }
            });
        }

        @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int scrollY;
            float scrollY2 = getScrollY();
            canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, scrollY2, getWidth(), getHeight() + scrollY, 255, 31);
            super.dispatchDraw(canvas);
            canvas.save();
            float f = this.topGradientAlpha.set(canScrollVertically(-1));
            this.topGradientMatrix.reset();
            this.topGradientMatrix.postTranslate(BitmapDescriptorFactory.HUE_RED, scrollY2);
            this.topGradient.setLocalMatrix(this.topGradientMatrix);
            this.topGradientPaint.setAlpha((int) (f * 255.0f));
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, scrollY2, getWidth(), AndroidUtilities.m107dp(8) + scrollY, this.topGradientPaint);
            float f2 = this.bottomGradientAlpha.set(canScrollVertically(1));
            this.bottomGradientMatrix.reset();
            this.bottomGradientMatrix.postTranslate(BitmapDescriptorFactory.HUE_RED, (getHeight() + scrollY) - AndroidUtilities.m107dp(8));
            this.bottomGradient.setLocalMatrix(this.bottomGradientMatrix);
            this.bottomGradientPaint.setAlpha((int) (f2 * 255.0f));
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, (getHeight() + scrollY) - AndroidUtilities.m107dp(8), getWidth(), scrollY + getHeight(), this.bottomGradientPaint);
            canvas.restore();
            canvas.restore();
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return super.dispatchTouchEvent(motionEvent);
        }

        public void setText(CharSequence charSequence) {
            this.ignoreTextChange = true;
            this.editText.setText(charSequence);
            this.ignoreTextChange = false;
        }

        public void setOnSearchTextChange(Utilities.Callback<String> callback) {
            this.onSearchTextChange = callback;
        }

        @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
        public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
            if (this.ignoreScrollEvent) {
                this.ignoreScrollEvent = false;
                return false;
            }
            rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
            rect.top += this.fieldY + AndroidUtilities.m107dp(20);
            rect.bottom += this.fieldY + AndroidUtilities.m107dp(50);
            return super.requestChildRectangleOnScreen(view, rect, z);
        }

        @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION), Integer.MIN_VALUE));
        }

        public void setContainerHeight(float f) {
            this.containerHeight = f;
            SpansContainer spansContainer = this.spansContainer;
            if (spansContainer != null) {
                spansContainer.requestLayout();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Animator getContainerHeightAnimator(float f) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.containerHeight, f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$SearchUsersCell$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    StoryPrivacyBottomSheet.SearchUsersCell.this.lambda$getContainerHeightAnimator$0(valueAnimator);
                }
            });
            return ofFloat;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getContainerHeightAnimator$0(ValueAnimator valueAnimator) {
            setContainerHeight(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }

        public void scrollToBottom() {
            this.scroll = true;
        }

        /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer */
        /* loaded from: classes6.dex */
        public class SpansContainer extends ViewGroup {
            private View addingSpan;
            private ArrayList<View> animAddingSpans;
            private ArrayList<View> animRemovingSpans;
            private boolean animationStarted;
            private ArrayList<Animator> animators;
            private AnimatorSet currentAnimation;
            private final ArrayList<View> removingSpans;

            public SpansContainer(Context context) {
                super(context);
                this.animAddingSpans = new ArrayList<>();
                this.animRemovingSpans = new ArrayList<>();
                this.animators = new ArrayList<>();
                this.removingSpans = new ArrayList<>();
            }

            /* JADX WARN: Removed duplicated region for block: B:32:0x00d8  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x00e4  */
            @Override // android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected void onMeasure(int r17, int r18) {
                /*
                    Method dump skipped, instructions count: 692
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Stories.recorder.StoryPrivacyBottomSheet.SearchUsersCell.SpansContainer.onMeasure(int, int):void");
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onMeasure$0() {
                SearchUsersCell.this.fullScroll(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                int childCount = getChildCount();
                for (int i5 = 0; i5 < childCount; i5++) {
                    View childAt = getChildAt(i5);
                    childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
                }
            }

            public void removeSpan(final GroupCreateSpan groupCreateSpan) {
                SearchUsersCell.this.ignoreScrollEvent = true;
                SearchUsersCell.this.allSpans.remove(groupCreateSpan);
                groupCreateSpan.setOnClickListener(null);
                setupEndValues();
                this.animationStarted = false;
                AnimatorSet animatorSet = new AnimatorSet();
                this.currentAnimation = animatorSet;
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.SearchUsersCell.SpansContainer.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SpansContainer.this.removeView(groupCreateSpan);
                        SpansContainer.this.removingSpans.clear();
                        SpansContainer.this.currentAnimation = null;
                        SpansContainer.this.animationStarted = false;
                        SearchUsersCell.this.editText.setAllowDrawCursor(true);
                        if (SearchUsersCell.this.updateHeight != null) {
                            SearchUsersCell.this.updateHeight.run();
                        }
                        if (SearchUsersCell.this.scroll) {
                            SearchUsersCell.this.fullScroll(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
                            SearchUsersCell.this.scroll = false;
                        }
                    }
                });
                this.removingSpans.clear();
                this.removingSpans.add(groupCreateSpan);
                this.animAddingSpans.clear();
                this.animRemovingSpans.clear();
                this.animAddingSpans.add(groupCreateSpan);
                this.animators.clear();
                this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.SCALE_X, 1.0f, 0.01f));
                this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.SCALE_Y, 1.0f, 0.01f));
                this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                requestLayout();
            }

            public void updateSpans(final ArrayList<GroupCreateSpan> arrayList, ArrayList<GroupCreateSpan> arrayList2, boolean z) {
                SearchUsersCell.this.ignoreScrollEvent = true;
                SearchUsersCell.this.allSpans.removeAll(arrayList);
                SearchUsersCell.this.allSpans.addAll(arrayList2);
                this.removingSpans.clear();
                this.removingSpans.addAll(arrayList);
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList.get(i).setOnClickListener(null);
                }
                setupEndValues();
                if (z) {
                    this.animationStarted = false;
                    AnimatorSet animatorSet = new AnimatorSet();
                    this.currentAnimation = animatorSet;
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.SearchUsersCell.SpansContainer.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                SpansContainer.this.removeView((View) arrayList.get(i2));
                            }
                            SpansContainer.this.addingSpan = null;
                            SpansContainer.this.removingSpans.clear();
                            SpansContainer.this.currentAnimation = null;
                            SpansContainer.this.animationStarted = false;
                            SearchUsersCell.this.editText.setAllowDrawCursor(true);
                            if (SearchUsersCell.this.updateHeight != null) {
                                SearchUsersCell.this.updateHeight.run();
                            }
                            if (SearchUsersCell.this.scroll) {
                                SearchUsersCell.this.fullScroll(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
                                SearchUsersCell.this.scroll = false;
                            }
                        }
                    });
                    this.animators.clear();
                    this.animAddingSpans.clear();
                    this.animRemovingSpans.clear();
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        GroupCreateSpan groupCreateSpan = arrayList.get(i2);
                        this.animRemovingSpans.add(groupCreateSpan);
                        this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.SCALE_X, 1.0f, 0.01f));
                        this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.SCALE_Y, 1.0f, 0.01f));
                        this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                    }
                    for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                        GroupCreateSpan groupCreateSpan2 = arrayList2.get(i3);
                        this.animAddingSpans.add(groupCreateSpan2);
                        this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan2, View.SCALE_X, 0.01f, 1.0f));
                        this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan2, View.SCALE_Y, 0.01f, 1.0f));
                        this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan2, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f));
                    }
                } else {
                    for (int i4 = 0; i4 < arrayList.size(); i4++) {
                        removeView(arrayList.get(i4));
                    }
                    this.removingSpans.clear();
                    this.currentAnimation = null;
                    this.animationStarted = false;
                    SearchUsersCell.this.editText.setAllowDrawCursor(true);
                }
                for (int i5 = 0; i5 < arrayList2.size(); i5++) {
                    addView(arrayList2.get(i5));
                }
                requestLayout();
            }

            public void removeAllSpans(boolean z) {
                SearchUsersCell.this.ignoreScrollEvent = true;
                final ArrayList arrayList = new ArrayList(SearchUsersCell.this.allSpans);
                this.removingSpans.clear();
                this.removingSpans.addAll(SearchUsersCell.this.allSpans);
                SearchUsersCell.this.allSpans.clear();
                for (int i = 0; i < arrayList.size(); i++) {
                    ((GroupCreateSpan) arrayList.get(i)).setOnClickListener(null);
                }
                setupEndValues();
                if (z) {
                    this.animationStarted = false;
                    AnimatorSet animatorSet = new AnimatorSet();
                    this.currentAnimation = animatorSet;
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.SearchUsersCell.SpansContainer.3
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                SpansContainer.this.removeView((View) arrayList.get(i2));
                            }
                            SpansContainer.this.removingSpans.clear();
                            SpansContainer.this.currentAnimation = null;
                            SpansContainer.this.animationStarted = false;
                            SearchUsersCell.this.editText.setAllowDrawCursor(true);
                            if (SearchUsersCell.this.updateHeight != null) {
                                SearchUsersCell.this.updateHeight.run();
                            }
                            if (SearchUsersCell.this.scroll) {
                                SearchUsersCell.this.fullScroll(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
                                SearchUsersCell.this.scroll = false;
                            }
                        }
                    });
                    this.animators.clear();
                    this.animAddingSpans.clear();
                    this.animRemovingSpans.clear();
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        GroupCreateSpan groupCreateSpan = (GroupCreateSpan) arrayList.get(i2);
                        this.animAddingSpans.add(groupCreateSpan);
                        this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.SCALE_X, 1.0f, 0.01f));
                        this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.SCALE_Y, 1.0f, 0.01f));
                        this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, View.ALPHA, 1.0f, BitmapDescriptorFactory.HUE_RED));
                    }
                } else {
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        removeView((View) arrayList.get(i3));
                    }
                    this.removingSpans.clear();
                    this.currentAnimation = null;
                    this.animationStarted = false;
                    SearchUsersCell.this.editText.setAllowDrawCursor(true);
                }
                requestLayout();
            }

            private void setupEndValues() {
                AnimatorSet animatorSet = this.currentAnimation;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                for (int i = 0; i < this.animAddingSpans.size(); i++) {
                    this.animAddingSpans.get(i).setScaleX(1.0f);
                    this.animAddingSpans.get(i).setScaleY(1.0f);
                    this.animAddingSpans.get(i).setAlpha(1.0f);
                }
                for (int i2 = 0; i2 < this.animRemovingSpans.size(); i2++) {
                    this.animRemovingSpans.get(i2).setScaleX(BitmapDescriptorFactory.HUE_RED);
                    this.animRemovingSpans.get(i2).setScaleY(BitmapDescriptorFactory.HUE_RED);
                    this.animRemovingSpans.get(i2).setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
                this.animAddingSpans.clear();
                this.animRemovingSpans.clear();
            }
        }
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$StoryPrivacy */
    /* loaded from: classes6.dex */
    public static class StoryPrivacy {
        public final ArrayList<TLRPC$InputPrivacyRule> rules;
        public final ArrayList<TLRPC$InputUser> selectedInputUsers;
        public final ArrayList<Long> selectedUserIds;
        public final HashMap<Long, ArrayList<Long>> selectedUserIdsByGroup;
        public final ArrayList<Long> sendToUsers;
        public final int type;

        public StoryPrivacy(int i, ArrayList<TLRPC$PrivacyRule> arrayList) {
            ArrayList<TLRPC$InputPrivacyRule> arrayList2 = new ArrayList<>();
            this.rules = arrayList2;
            this.selectedUserIds = new ArrayList<>();
            this.selectedUserIdsByGroup = new HashMap<>();
            this.selectedInputUsers = new ArrayList<>();
            this.sendToUsers = new ArrayList<>();
            int i2 = 0;
            if (containsRule(arrayList, TLRPC$TL_privacyValueAllowAll.class) != null) {
                this.type = 4;
                arrayList2.add(new TLRPC$TL_inputPrivacyValueAllowAll());
                TLRPC$TL_privacyValueDisallowUsers tLRPC$TL_privacyValueDisallowUsers = (TLRPC$TL_privacyValueDisallowUsers) containsRule(arrayList, TLRPC$TL_privacyValueDisallowUsers.class);
                if (tLRPC$TL_privacyValueDisallowUsers != null) {
                    TLRPC$TL_inputPrivacyValueDisallowUsers tLRPC$TL_inputPrivacyValueDisallowUsers = new TLRPC$TL_inputPrivacyValueDisallowUsers();
                    MessagesController messagesController = MessagesController.getInstance(i);
                    while (i2 < tLRPC$TL_privacyValueDisallowUsers.users.size()) {
                        long longValue = tLRPC$TL_privacyValueDisallowUsers.users.get(i2).longValue();
                        TLRPC$InputUser inputUser = messagesController.getInputUser(longValue);
                        if (!(inputUser instanceof TLRPC$TL_inputUserEmpty)) {
                            tLRPC$TL_inputPrivacyValueDisallowUsers.users.add(inputUser);
                            this.selectedUserIds.add(Long.valueOf(longValue));
                            this.selectedInputUsers.add(inputUser);
                        }
                        i2++;
                    }
                    this.rules.add(tLRPC$TL_inputPrivacyValueDisallowUsers);
                }
            } else if (containsRule(arrayList, TLRPC$TL_privacyValueAllowCloseFriends.class) != null) {
                this.type = 1;
                arrayList2.add(new TLRPC$TL_inputPrivacyValueAllowCloseFriends());
            } else {
                TLRPC$TL_privacyValueAllowUsers tLRPC$TL_privacyValueAllowUsers = (TLRPC$TL_privacyValueAllowUsers) containsRule(arrayList, TLRPC$TL_privacyValueAllowUsers.class);
                if (tLRPC$TL_privacyValueAllowUsers != null) {
                    this.type = 3;
                    TLRPC$TL_inputPrivacyValueAllowUsers tLRPC$TL_inputPrivacyValueAllowUsers = new TLRPC$TL_inputPrivacyValueAllowUsers();
                    MessagesController messagesController2 = MessagesController.getInstance(i);
                    while (i2 < tLRPC$TL_privacyValueAllowUsers.users.size()) {
                        long longValue2 = tLRPC$TL_privacyValueAllowUsers.users.get(i2).longValue();
                        TLRPC$InputUser inputUser2 = messagesController2.getInputUser(longValue2);
                        if (!(inputUser2 instanceof TLRPC$TL_inputUserEmpty)) {
                            tLRPC$TL_inputPrivacyValueAllowUsers.users.add(inputUser2);
                            this.selectedUserIds.add(Long.valueOf(longValue2));
                            this.selectedInputUsers.add(inputUser2);
                        }
                        i2++;
                    }
                    this.rules.add(tLRPC$TL_inputPrivacyValueAllowUsers);
                } else if (containsRule(arrayList, TLRPC$TL_privacyValueAllowContacts.class) != null) {
                    this.type = 2;
                    arrayList2.add(new TLRPC$TL_inputPrivacyValueAllowContacts());
                    TLRPC$TL_privacyValueDisallowUsers tLRPC$TL_privacyValueDisallowUsers2 = (TLRPC$TL_privacyValueDisallowUsers) containsRule(arrayList, TLRPC$TL_privacyValueDisallowUsers.class);
                    if (tLRPC$TL_privacyValueDisallowUsers2 != null) {
                        TLRPC$TL_inputPrivacyValueDisallowUsers tLRPC$TL_inputPrivacyValueDisallowUsers2 = new TLRPC$TL_inputPrivacyValueDisallowUsers();
                        MessagesController messagesController3 = MessagesController.getInstance(i);
                        while (i2 < tLRPC$TL_privacyValueDisallowUsers2.users.size()) {
                            long longValue3 = tLRPC$TL_privacyValueDisallowUsers2.users.get(i2).longValue();
                            TLRPC$InputUser inputUser3 = messagesController3.getInputUser(longValue3);
                            if (!(inputUser3 instanceof TLRPC$TL_inputUserEmpty)) {
                                tLRPC$TL_inputPrivacyValueDisallowUsers2.users.add(inputUser3);
                                this.selectedUserIds.add(Long.valueOf(longValue3));
                                this.selectedInputUsers.add(inputUser3);
                            }
                            i2++;
                        }
                        this.rules.add(tLRPC$TL_inputPrivacyValueDisallowUsers2);
                    }
                } else {
                    this.type = 4;
                }
            }
        }

        private <T> T containsRule(ArrayList<TLRPC$PrivacyRule> arrayList, Class<T> cls) {
            for (int i = 0; i < arrayList.size(); i++) {
                T t = (T) arrayList.get(i);
                if (cls.isInstance(t)) {
                    return t;
                }
            }
            return null;
        }

        public StoryPrivacy() {
            ArrayList<TLRPC$InputPrivacyRule> arrayList = new ArrayList<>();
            this.rules = arrayList;
            this.selectedUserIds = new ArrayList<>();
            this.selectedUserIdsByGroup = new HashMap<>();
            this.selectedInputUsers = new ArrayList<>();
            this.sendToUsers = new ArrayList<>();
            this.type = 4;
            arrayList.add(new TLRPC$TL_inputPrivacyValueAllowAll());
        }

        public StoryPrivacy(int i, int i2, ArrayList<Long> arrayList) {
            ArrayList<TLRPC$InputPrivacyRule> arrayList2 = new ArrayList<>();
            this.rules = arrayList2;
            this.selectedUserIds = new ArrayList<>();
            this.selectedUserIdsByGroup = new HashMap<>();
            this.selectedInputUsers = new ArrayList<>();
            ArrayList<Long> arrayList3 = new ArrayList<>();
            this.sendToUsers = arrayList3;
            this.type = i;
            int i3 = 0;
            if (i == 4) {
                arrayList2.add(new TLRPC$TL_inputPrivacyValueAllowAll());
                if (i2 < 0 || arrayList == null || arrayList.isEmpty()) {
                    return;
                }
                TLRPC$TL_inputPrivacyValueDisallowUsers tLRPC$TL_inputPrivacyValueDisallowUsers = new TLRPC$TL_inputPrivacyValueDisallowUsers();
                while (i3 < arrayList.size()) {
                    long longValue = arrayList.get(i3).longValue();
                    this.selectedUserIds.add(Long.valueOf(longValue));
                    TLRPC$InputUser inputUser = MessagesController.getInstance(i2).getInputUser(longValue);
                    if (inputUser != null && !(inputUser instanceof TLRPC$TL_inputUserEmpty)) {
                        tLRPC$TL_inputPrivacyValueDisallowUsers.users.add(inputUser);
                        this.selectedInputUsers.add(inputUser);
                    }
                    i3++;
                }
                this.rules.add(tLRPC$TL_inputPrivacyValueDisallowUsers);
            } else if (i == 1) {
                arrayList2.add(new TLRPC$TL_inputPrivacyValueAllowCloseFriends());
            } else if (i == 2) {
                arrayList2.add(new TLRPC$TL_inputPrivacyValueAllowContacts());
                if (i2 < 0 || arrayList == null || arrayList.isEmpty()) {
                    return;
                }
                TLRPC$TL_inputPrivacyValueDisallowUsers tLRPC$TL_inputPrivacyValueDisallowUsers2 = new TLRPC$TL_inputPrivacyValueDisallowUsers();
                while (i3 < arrayList.size()) {
                    long longValue2 = arrayList.get(i3).longValue();
                    this.selectedUserIds.add(Long.valueOf(longValue2));
                    TLRPC$InputUser inputUser2 = MessagesController.getInstance(i2).getInputUser(longValue2);
                    if (inputUser2 != null && !(inputUser2 instanceof TLRPC$TL_inputUserEmpty)) {
                        tLRPC$TL_inputPrivacyValueDisallowUsers2.users.add(inputUser2);
                        this.selectedInputUsers.add(inputUser2);
                    }
                    i3++;
                }
                this.rules.add(tLRPC$TL_inputPrivacyValueDisallowUsers2);
            } else if (i != 3) {
                if (i != 5 || arrayList == null) {
                    return;
                }
                arrayList3.addAll(arrayList);
            } else if (i2 < 0 || arrayList == null || arrayList.isEmpty()) {
            } else {
                TLRPC$TL_inputPrivacyValueAllowUsers tLRPC$TL_inputPrivacyValueAllowUsers = new TLRPC$TL_inputPrivacyValueAllowUsers();
                while (i3 < arrayList.size()) {
                    long longValue3 = arrayList.get(i3).longValue();
                    this.selectedUserIds.add(Long.valueOf(longValue3));
                    TLRPC$InputUser inputUser3 = MessagesController.getInstance(i2).getInputUser(longValue3);
                    if (inputUser3 != null && !(inputUser3 instanceof TLRPC$TL_inputUserEmpty)) {
                        tLRPC$TL_inputPrivacyValueAllowUsers.users.add(inputUser3);
                        this.selectedInputUsers.add(inputUser3);
                    }
                    i3++;
                }
                this.rules.add(tLRPC$TL_inputPrivacyValueAllowUsers);
            }
        }

        public StoryPrivacy(int i, ArrayList<TLRPC$InputUser> arrayList, int i2) {
            ArrayList<TLRPC$InputPrivacyRule> arrayList2 = new ArrayList<>();
            this.rules = arrayList2;
            this.selectedUserIds = new ArrayList<>();
            this.selectedUserIdsByGroup = new HashMap<>();
            this.selectedInputUsers = new ArrayList<>();
            this.sendToUsers = new ArrayList<>();
            this.type = i;
            int i3 = 0;
            if (i == 4) {
                arrayList2.add(new TLRPC$TL_inputPrivacyValueAllowAll());
                if (arrayList == null || arrayList.isEmpty()) {
                    return;
                }
                TLRPC$TL_inputPrivacyValueDisallowUsers tLRPC$TL_inputPrivacyValueDisallowUsers = new TLRPC$TL_inputPrivacyValueDisallowUsers();
                while (i3 < arrayList.size()) {
                    TLRPC$InputUser tLRPC$InputUser = arrayList.get(i3);
                    if (tLRPC$InputUser != null) {
                        tLRPC$TL_inputPrivacyValueDisallowUsers.users.add(tLRPC$InputUser);
                        this.selectedUserIds.add(Long.valueOf(tLRPC$InputUser.user_id));
                        this.selectedInputUsers.add(tLRPC$InputUser);
                    }
                    i3++;
                }
                this.rules.add(tLRPC$TL_inputPrivacyValueDisallowUsers);
            } else if (i == 1) {
                arrayList2.add(new TLRPC$TL_inputPrivacyValueAllowCloseFriends());
            } else if (i == 2) {
                arrayList2.add(new TLRPC$TL_inputPrivacyValueAllowContacts());
                if (arrayList == null || arrayList.isEmpty()) {
                    return;
                }
                TLRPC$TL_inputPrivacyValueDisallowUsers tLRPC$TL_inputPrivacyValueDisallowUsers2 = new TLRPC$TL_inputPrivacyValueDisallowUsers();
                while (i3 < arrayList.size()) {
                    TLRPC$InputUser tLRPC$InputUser2 = arrayList.get(i3);
                    if (tLRPC$InputUser2 != null) {
                        tLRPC$TL_inputPrivacyValueDisallowUsers2.users.add(tLRPC$InputUser2);
                        this.selectedUserIds.add(Long.valueOf(tLRPC$InputUser2.user_id));
                        this.selectedInputUsers.add(tLRPC$InputUser2);
                    }
                    i3++;
                }
                this.rules.add(tLRPC$TL_inputPrivacyValueDisallowUsers2);
            } else if (i != 3) {
                if (i != 5 || arrayList == null) {
                    return;
                }
                while (i3 < arrayList.size()) {
                    TLRPC$InputUser tLRPC$InputUser3 = arrayList.get(i3);
                    if (tLRPC$InputUser3 != null) {
                        this.sendToUsers.add(Long.valueOf(tLRPC$InputUser3.user_id));
                    }
                    i3++;
                }
            } else if (arrayList == null || arrayList.isEmpty()) {
            } else {
                TLRPC$TL_inputPrivacyValueAllowUsers tLRPC$TL_inputPrivacyValueAllowUsers = new TLRPC$TL_inputPrivacyValueAllowUsers();
                while (i3 < arrayList.size()) {
                    TLRPC$InputUser tLRPC$InputUser4 = arrayList.get(i3);
                    if (tLRPC$InputUser4 != null) {
                        tLRPC$TL_inputPrivacyValueAllowUsers.users.add(tLRPC$InputUser4);
                        this.selectedUserIds.add(Long.valueOf(tLRPC$InputUser4.user_id));
                        this.selectedInputUsers.add(tLRPC$InputUser4);
                    }
                    i3++;
                }
                this.rules.add(tLRPC$TL_inputPrivacyValueAllowUsers);
            }
        }

        public boolean isShare() {
            return this.type == 5;
        }

        public boolean isNone() {
            return this.sendToUsers.isEmpty() && this.rules.isEmpty();
        }

        public boolean isCloseFriends() {
            return this.type == 1;
        }

        public String toString() {
            TLRPC$InputPrivacyRule tLRPC$InputPrivacyRule;
            int size;
            if (!this.sendToUsers.isEmpty()) {
                return LocaleController.formatPluralString("StoryPrivacyRecipients", this.sendToUsers.size(), new Object[0]);
            }
            if (this.rules.isEmpty()) {
                return LocaleController.getString("StoryPrivacyNone", C3632R.string.StoryPrivacyNone);
            }
            TLRPC$InputPrivacyRule tLRPC$InputPrivacyRule2 = this.rules.get(0);
            int i = this.type;
            if (i == 4) {
                tLRPC$InputPrivacyRule = this.rules.size() >= 2 ? this.rules.get(1) : null;
                if ((tLRPC$InputPrivacyRule instanceof TLRPC$TL_inputPrivacyValueDisallowUsers) && (size = ((TLRPC$TL_inputPrivacyValueDisallowUsers) tLRPC$InputPrivacyRule).users.size()) > 0) {
                    return LocaleController.formatPluralString("StoryPrivacyEveryoneExclude", size, new Object[0]);
                }
                return LocaleController.getString("StoryPrivacyEveryone", C3632R.string.StoryPrivacyEveryone);
            } else if (i == 1) {
                return LocaleController.getString("StoryPrivacyCloseFriends", C3632R.string.StoryPrivacyCloseFriends);
            } else {
                if (i == 3 && (tLRPC$InputPrivacyRule2 instanceof TLRPC$TL_inputPrivacyValueAllowUsers)) {
                    return LocaleController.formatPluralString("StoryPrivacyContacts", ((TLRPC$TL_inputPrivacyValueAllowUsers) tLRPC$InputPrivacyRule2).users.size(), new Object[0]);
                }
                if (i == 2) {
                    tLRPC$InputPrivacyRule = this.rules.size() >= 2 ? this.rules.get(1) : null;
                    if (tLRPC$InputPrivacyRule instanceof TLRPC$TL_inputPrivacyValueDisallowUsers) {
                        int size2 = ((TLRPC$TL_inputPrivacyValueDisallowUsers) tLRPC$InputPrivacyRule).users.size();
                        if (size2 > 0) {
                            return LocaleController.formatPluralString("StoryPrivacyContactsExclude", size2, new Object[0]);
                        }
                        return LocaleController.getString("StoryPrivacyAllContacts", C3632R.string.StoryPrivacyAllContacts);
                    }
                    return LocaleController.getString("StoryPrivacyAllContacts", C3632R.string.StoryPrivacyAllContacts);
                } else if (i == 0) {
                    if (tLRPC$InputPrivacyRule2 instanceof TLRPC$TL_inputPrivacyValueAllowUsers) {
                        int size3 = ((TLRPC$TL_inputPrivacyValueAllowUsers) tLRPC$InputPrivacyRule2).users.size();
                        if (size3 <= 0) {
                            return LocaleController.getString("StoryPrivacyNone", C3632R.string.StoryPrivacyNone);
                        }
                        return LocaleController.formatPluralString("StoryPrivacyContacts", size3, new Object[0]);
                    }
                    return LocaleController.getString("StoryPrivacyNone", C3632R.string.StoryPrivacyNone);
                } else {
                    return LocaleController.getString("StoryPrivacyNone", C3632R.string.StoryPrivacyNone);
                }
            }
        }

        public ArrayList<TLRPC$PrivacyRule> toValue() {
            ArrayList<TLRPC$PrivacyRule> arrayList = new ArrayList<>();
            for (int i = 0; i < this.rules.size(); i++) {
                TLRPC$InputPrivacyRule tLRPC$InputPrivacyRule = this.rules.get(i);
                if (tLRPC$InputPrivacyRule instanceof TLRPC$TL_inputPrivacyValueAllowAll) {
                    arrayList.add(new TLRPC$TL_privacyValueAllowAll());
                } else if (tLRPC$InputPrivacyRule instanceof TLRPC$TL_inputPrivacyValueAllowCloseFriends) {
                    arrayList.add(new TLRPC$TL_privacyValueAllowCloseFriends());
                } else if (tLRPC$InputPrivacyRule instanceof TLRPC$TL_inputPrivacyValueAllowContacts) {
                    arrayList.add(new TLRPC$TL_privacyValueAllowContacts());
                } else if (tLRPC$InputPrivacyRule instanceof TLRPC$TL_inputPrivacyValueDisallowUsers) {
                    TLRPC$TL_inputPrivacyValueDisallowUsers tLRPC$TL_inputPrivacyValueDisallowUsers = (TLRPC$TL_inputPrivacyValueDisallowUsers) tLRPC$InputPrivacyRule;
                    TLRPC$TL_privacyValueDisallowUsers tLRPC$TL_privacyValueDisallowUsers = new TLRPC$TL_privacyValueDisallowUsers();
                    for (int i2 = 0; i2 < tLRPC$TL_inputPrivacyValueDisallowUsers.users.size(); i2++) {
                        tLRPC$TL_privacyValueDisallowUsers.users.add(Long.valueOf(tLRPC$TL_inputPrivacyValueDisallowUsers.users.get(i2).user_id));
                    }
                    arrayList.add(tLRPC$TL_privacyValueDisallowUsers);
                } else if (tLRPC$InputPrivacyRule instanceof TLRPC$TL_inputPrivacyValueAllowUsers) {
                    TLRPC$TL_inputPrivacyValueAllowUsers tLRPC$TL_inputPrivacyValueAllowUsers = (TLRPC$TL_inputPrivacyValueAllowUsers) tLRPC$InputPrivacyRule;
                    TLRPC$TL_privacyValueAllowUsers tLRPC$TL_privacyValueAllowUsers = new TLRPC$TL_privacyValueAllowUsers();
                    for (int i3 = 0; i3 < tLRPC$TL_inputPrivacyValueAllowUsers.users.size(); i3++) {
                        tLRPC$TL_privacyValueAllowUsers.users.add(Long.valueOf(tLRPC$TL_inputPrivacyValueAllowUsers.users.get(i3).user_id));
                    }
                    arrayList.add(tLRPC$TL_privacyValueAllowUsers);
                }
            }
            return arrayList;
        }

        public static ArrayList<TLRPC$InputPrivacyRule> toInput(int i, ArrayList<TLRPC$PrivacyRule> arrayList) {
            MessagesController messagesController = MessagesController.getInstance(i);
            ArrayList<TLRPC$InputPrivacyRule> arrayList2 = new ArrayList<>();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                TLRPC$PrivacyRule tLRPC$PrivacyRule = arrayList.get(i2);
                if (tLRPC$PrivacyRule != null) {
                    if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueAllowAll) {
                        arrayList2.add(new TLRPC$TL_inputPrivacyValueAllowAll());
                    } else if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueAllowCloseFriends) {
                        arrayList2.add(new TLRPC$TL_inputPrivacyValueAllowCloseFriends());
                    } else if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueAllowContacts) {
                        arrayList2.add(new TLRPC$TL_inputPrivacyValueAllowContacts());
                    } else if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueDisallowUsers) {
                        TLRPC$TL_privacyValueDisallowUsers tLRPC$TL_privacyValueDisallowUsers = (TLRPC$TL_privacyValueDisallowUsers) tLRPC$PrivacyRule;
                        TLRPC$TL_inputPrivacyValueDisallowUsers tLRPC$TL_inputPrivacyValueDisallowUsers = new TLRPC$TL_inputPrivacyValueDisallowUsers();
                        for (int i3 = 0; i3 < tLRPC$TL_privacyValueDisallowUsers.users.size(); i3++) {
                            TLRPC$InputUser inputUser = messagesController.getInputUser(tLRPC$TL_privacyValueDisallowUsers.users.get(i3).longValue());
                            if (!(inputUser instanceof TLRPC$TL_inputUserEmpty)) {
                                tLRPC$TL_inputPrivacyValueDisallowUsers.users.add(inputUser);
                            }
                        }
                        arrayList2.add(tLRPC$TL_inputPrivacyValueDisallowUsers);
                    } else if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueAllowUsers) {
                        TLRPC$TL_privacyValueAllowUsers tLRPC$TL_privacyValueAllowUsers = (TLRPC$TL_privacyValueAllowUsers) tLRPC$PrivacyRule;
                        TLRPC$TL_inputPrivacyValueAllowUsers tLRPC$TL_inputPrivacyValueAllowUsers = new TLRPC$TL_inputPrivacyValueAllowUsers();
                        for (int i4 = 0; i4 < tLRPC$TL_privacyValueAllowUsers.users.size(); i4++) {
                            TLRPC$InputUser inputUser2 = messagesController.getInputUser(tLRPC$TL_privacyValueAllowUsers.users.get(i4).longValue());
                            if (!(inputUser2 instanceof TLRPC$TL_inputUserEmpty)) {
                                tLRPC$TL_inputPrivacyValueAllowUsers.users.add(inputUser2);
                            }
                        }
                        arrayList2.add(tLRPC$TL_inputPrivacyValueAllowUsers);
                    }
                }
            }
            return arrayList2;
        }

        public static ArrayList<TLRPC$PrivacyRule> toOutput(ArrayList<TLRPC$InputPrivacyRule> arrayList) {
            ArrayList<TLRPC$PrivacyRule> arrayList2 = new ArrayList<>();
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC$InputPrivacyRule tLRPC$InputPrivacyRule = arrayList.get(i);
                if (tLRPC$InputPrivacyRule != null) {
                    if (tLRPC$InputPrivacyRule instanceof TLRPC$TL_inputPrivacyValueAllowAll) {
                        arrayList2.add(new TLRPC$TL_privacyValueAllowAll());
                    } else if (tLRPC$InputPrivacyRule instanceof TLRPC$TL_inputPrivacyValueAllowCloseFriends) {
                        arrayList2.add(new TLRPC$TL_privacyValueAllowCloseFriends());
                    } else if (tLRPC$InputPrivacyRule instanceof TLRPC$TL_inputPrivacyValueAllowContacts) {
                        arrayList2.add(new TLRPC$TL_privacyValueAllowContacts());
                    } else if (tLRPC$InputPrivacyRule instanceof TLRPC$TL_inputPrivacyValueDisallowUsers) {
                        TLRPC$TL_inputPrivacyValueDisallowUsers tLRPC$TL_inputPrivacyValueDisallowUsers = (TLRPC$TL_inputPrivacyValueDisallowUsers) tLRPC$InputPrivacyRule;
                        TLRPC$TL_privacyValueDisallowUsers tLRPC$TL_privacyValueDisallowUsers = new TLRPC$TL_privacyValueDisallowUsers();
                        for (int i2 = 0; i2 < tLRPC$TL_inputPrivacyValueDisallowUsers.users.size(); i2++) {
                            tLRPC$TL_privacyValueDisallowUsers.users.add(Long.valueOf(tLRPC$TL_inputPrivacyValueDisallowUsers.users.get(i2).user_id));
                        }
                        arrayList2.add(tLRPC$TL_privacyValueDisallowUsers);
                    } else if (tLRPC$InputPrivacyRule instanceof TLRPC$TL_inputPrivacyValueAllowUsers) {
                        TLRPC$TL_inputPrivacyValueAllowUsers tLRPC$TL_inputPrivacyValueAllowUsers = (TLRPC$TL_inputPrivacyValueAllowUsers) tLRPC$InputPrivacyRule;
                        TLRPC$TL_privacyValueAllowUsers tLRPC$TL_privacyValueAllowUsers = new TLRPC$TL_privacyValueAllowUsers();
                        for (int i3 = 0; i3 < tLRPC$TL_inputPrivacyValueAllowUsers.users.size(); i3++) {
                            tLRPC$TL_privacyValueAllowUsers.users.add(Long.valueOf(tLRPC$TL_inputPrivacyValueAllowUsers.users.get(i3).user_id));
                        }
                        arrayList2.add(tLRPC$TL_privacyValueAllowUsers);
                    }
                }
            }
            return arrayList2;
        }

        public boolean containsUser(TLRPC$User tLRPC$User) {
            if (tLRPC$User == null) {
                return false;
            }
            int i = this.type;
            if (i == 4) {
                return !this.selectedUserIds.contains(Long.valueOf(tLRPC$User.f1751id));
            }
            if (i == 2) {
                return !this.selectedUserIds.contains(Long.valueOf(tLRPC$User.f1751id)) && tLRPC$User.contact;
            } else if (i == 1) {
                return tLRPC$User.close_friend;
            } else {
                if (i == 3) {
                    return this.selectedUserIds.contains(Long.valueOf(tLRPC$User.f1751id));
                }
                return false;
            }
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ViewPagerFixed viewPagerFixed = this.viewPager;
        if (viewPagerFixed == null) {
            return;
        }
        int i3 = 0;
        if (i == NotificationCenter.contactsDidLoad) {
            View[] viewPages = viewPagerFixed.getViewPages();
            if (viewPages[0] instanceof Page) {
                ((Page) viewPages[0]).updateItems(true);
            }
            if (viewPages[1] instanceof Page) {
                ((Page) viewPages[1]).updateItems(true);
            }
        } else if (i == NotificationCenter.storiesBlocklistUpdate) {
            View[] viewPages2 = viewPagerFixed.getViewPages();
            while (i3 < viewPages2.length) {
                if (viewPages2[i3] instanceof Page) {
                    Page page = (Page) viewPages2[i3];
                    int i4 = page.pageType;
                    if (i4 == 6) {
                        page.applyBlocklist(true);
                    } else if (i4 == 0) {
                        page.updateItems(true);
                    }
                }
                i3++;
            }
        } else if (i == NotificationCenter.storiesSendAsUpdate) {
            View[] viewPages3 = viewPagerFixed.getViewPages();
            while (i3 < viewPages3.length) {
                if (viewPages3[i3] instanceof Page) {
                    Page page2 = (Page) viewPages3[i3];
                    if (page2.pageType == 0) {
                        page2.updateItems(true);
                    }
                }
                i3++;
            }
        }
    }

    private void pullSaved() {
        String string = MessagesController.getInstance(this.currentAccount).getMainSettings().getString("story_prv_contacts", null);
        if (string != null) {
            String[] split = string.split(",");
            this.selectedContacts.clear();
            for (String str : split) {
                try {
                    this.selectedContacts.add(Long.valueOf(Long.parseLong(str)));
                } catch (Exception unused) {
                }
            }
        }
        String string2 = MessagesController.getInstance(this.currentAccount).getMainSettings().getString("story_prv_grpcontacts", null);
        if (string2 != null) {
            String[] split2 = string2.split(";");
            this.selectedContactsByGroup.clear();
            for (String str2 : split2) {
                String[] split3 = str2.split(",");
                if (split3.length > 0) {
                    try {
                        long parseLong = Long.parseLong(split3[0]);
                        ArrayList<Long> arrayList = new ArrayList<>();
                        for (int i = 1; i < split3.length; i++) {
                            arrayList.add(Long.valueOf(Long.parseLong(split3[i])));
                        }
                        this.selectedContactsByGroup.put(Long.valueOf(parseLong), arrayList);
                    } catch (Exception unused2) {
                    }
                }
            }
        }
        String string3 = MessagesController.getInstance(this.currentAccount).getMainSettings().getString("story_prv_everyoneexcept", null);
        if (string3 != null) {
            String[] split4 = string3.split(",");
            this.excludedEveryone.clear();
            for (String str3 : split4) {
                try {
                    this.excludedEveryone.add(Long.valueOf(Long.parseLong(str3)));
                } catch (Exception unused3) {
                }
            }
        }
        String string4 = MessagesController.getInstance(this.currentAccount).getMainSettings().getString("story_prv_grpeveryoneexcept", null);
        if (string4 != null) {
            String[] split5 = string4.split(";");
            this.excludedEveryoneByGroup.clear();
            for (String str4 : split5) {
                String[] split6 = str4.split(",");
                if (split6.length > 0) {
                    try {
                        long parseLong2 = Long.parseLong(split6[0]);
                        ArrayList<Long> arrayList2 = new ArrayList<>();
                        for (int i2 = 1; i2 < split6.length; i2++) {
                            arrayList2.add(Long.valueOf(Long.parseLong(split6[i2])));
                        }
                        this.excludedEveryoneByGroup.put(Long.valueOf(parseLong2), arrayList2);
                    } catch (Exception unused4) {
                    }
                }
            }
        }
        String string5 = MessagesController.getInstance(this.currentAccount).getMainSettings().getString("story_prv_excluded", null);
        if (string5 != null) {
            String[] split7 = string5.split(",");
            this.excludedContacts.clear();
            for (String str5 : split7) {
                try {
                    this.excludedContacts.add(Long.valueOf(Long.parseLong(str5)));
                } catch (Exception unused5) {
                }
            }
        }
        this.selectedContactsCount = mergeUsers(this.selectedContacts, this.selectedContactsByGroup).size();
        this.excludedEveryoneCount = mergeUsers(this.excludedEveryone, this.excludedEveryoneByGroup).size();
        this.allowScreenshots = !MessagesController.getInstance(this.currentAccount).getMainSettings().getBoolean("story_noforwards", false);
        this.keepOnMyPage = MessagesController.getInstance(this.currentAccount).getMainSettings().getBoolean("story_keep", true);
    }

    private void save() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<Long, ArrayList<Long>> entry : this.selectedContactsByGroup.entrySet()) {
            if (sb.length() > 0) {
                sb.append(";");
            }
            sb.append(entry.getKey());
            sb.append(",");
            sb.append(TextUtils.join(",", entry.getValue()));
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<Long, ArrayList<Long>> entry2 : this.excludedEveryoneByGroup.entrySet()) {
            if (sb2.length() > 0) {
                sb2.append(";");
            }
            sb2.append(entry2.getKey());
            sb2.append(",");
            sb2.append(TextUtils.join(",", entry2.getValue()));
        }
        MessagesController.getInstance(this.currentAccount).getMainSettings().edit().putString("story_prv_everyoneexcept", TextUtils.join(",", this.excludedEveryone)).putString("story_prv_grpeveryoneexcept", sb2.toString()).putString("story_prv_contacts", TextUtils.join(",", this.selectedContacts)).putString("story_prv_grpcontacts", sb.toString()).putString("story_prv_excluded", TextUtils.join(",", this.excludedContacts)).putBoolean("story_noforwards", !this.allowScreenshots).putBoolean("story_keep", this.keepOnMyPage).apply();
    }

    public StoryPrivacyBottomSheet setCanChangePeer(boolean z) {
        this.canChangePeer = z;
        return this;
    }

    /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$ChoosePeerSheet */
    /* loaded from: classes6.dex */
    public static class ChoosePeerSheet extends BottomSheet {
        private final int currentAccount;
        private final TextView headerView;
        private final RecyclerListView listView;
        private final Utilities.Callback<TLRPC$InputPeer> onPeerSelected;
        private final List<TLRPC$InputPeer> peers;
        private final TLRPC$InputPeer selectedPeer;

        public ChoosePeerSheet(Context context, final int i, TLRPC$InputPeer tLRPC$InputPeer, final Utilities.Callback<TLRPC$InputPeer> callback, final Theme.ResourcesProvider resourcesProvider) {
            super(context, false, resourcesProvider);
            fixNavigationBar();
            this.currentAccount = i;
            this.peers = MessagesController.getInstance(i).getStoriesController().sendAs;
            this.selectedPeer = tLRPC$InputPeer;
            this.onPeerSelected = callback;
            this.containerView = new FrameLayout(context) { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.ChoosePeerSheet.1
                private final Paint backgroundPaint = new Paint(1);
                private final AnimatedFloat statusBarT = new AnimatedFloat(this, 0, 350, CubicBezierInterpolator.EASE_OUT_QUINT);

                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    this.backgroundPaint.setColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
                    float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, ChoosePeerSheet.this.top());
                    float lerp = AndroidUtilities.lerp(max, (float) BitmapDescriptorFactory.HUE_RED, this.statusBarT.set(max < ((float) AndroidUtilities.statusBarHeight)));
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(((BottomSheet) ChoosePeerSheet.this).backgroundPaddingLeft, lerp, getWidth() - ((BottomSheet) ChoosePeerSheet.this).backgroundPaddingLeft, getHeight() + AndroidUtilities.m107dp(14));
                    float m107dp = AndroidUtilities.m107dp(14) * (1.0f - this.statusBarT.get());
                    canvas.drawRoundRect(rectF, m107dp, m107dp, this.backgroundPaint);
                    ChoosePeerSheet.this.headerView.setTranslationY(Math.max(AndroidUtilities.statusBarHeight + AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(14) + lerp));
                    canvas.save();
                    canvas.clipRect(((BottomSheet) ChoosePeerSheet.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight + AndroidUtilities.m107dp(14), getWidth() - ((BottomSheet) ChoosePeerSheet.this).backgroundPaddingLeft, getHeight());
                    super.dispatchDraw(canvas);
                    canvas.restore();
                }

                @Override // android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getY() < ChoosePeerSheet.this.top()) {
                        ChoosePeerSheet.this.dismiss();
                        return true;
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }
            };
            RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider);
            this.listView = recyclerListView;
            int i2 = this.backgroundPaddingLeft;
            recyclerListView.setPadding(i2, 0, i2, 0);
            recyclerListView.setAdapter(new Adapter());
            recyclerListView.setLayoutManager(new LinearLayoutManager(context));
            this.containerView.addView(recyclerListView, LayoutHelper.createFrame(-1, -1, 119));
            recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$ChoosePeerSheet$$ExternalSyntheticLambda1
                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i3) {
                    StoryPrivacyBottomSheet.ChoosePeerSheet.this.lambda$new$1(callback, resourcesProvider, i, view, i3);
                }
            });
            recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.ChoosePeerSheet.2
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                    ((BottomSheet) ChoosePeerSheet.this).containerView.invalidate();
                }
            });
            TextView textView = new TextView(getContext());
            this.headerView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            textView.setTextSize(1, 20.0f);
            textView.setPadding(this.backgroundPaddingLeft + AndroidUtilities.m107dp(22), AndroidUtilities.m107dp(2), this.backgroundPaddingLeft + AndroidUtilities.m107dp(22), AndroidUtilities.m107dp(14));
            textView.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            textView.setText(LocaleController.getString(C3632R.string.StoryPrivacyPublishAs));
            this.containerView.addView(textView, LayoutHelper.createFrame(-1, -2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(final Utilities.Callback callback, Theme.ResourcesProvider resourcesProvider, int i, View view, int i2) {
            if (i2 <= 1) {
                return;
            }
            final TLRPC$InputPeer tLRPC$InputPeer = this.peers.get(i2 - 2);
            if (tLRPC$InputPeer.channel_id == 0 && tLRPC$InputPeer.chat_id == 0) {
                callback.run(tLRPC$InputPeer);
                dismiss();
                return;
            }
            final AlertDialog alertDialog = new AlertDialog(getContext(), 3, resourcesProvider);
            alertDialog.showDelayed(200L);
            MessagesController.getInstance(i).getStoriesController().canSendStoryFor(DialogObject.getPeerDialogId(tLRPC$InputPeer), new Consumer() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$ChoosePeerSheet$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    StoryPrivacyBottomSheet.ChoosePeerSheet.lambda$new$0(AlertDialog.this, callback, tLRPC$InputPeer, (Boolean) obj);
                }
            }, true, resourcesProvider);
            dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$new$0(AlertDialog alertDialog, Utilities.Callback callback, TLRPC$InputPeer tLRPC$InputPeer, Boolean bool) {
            alertDialog.dismiss();
            if (!bool.booleanValue() || callback == null) {
                return;
            }
            callback.run(tLRPC$InputPeer);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float top() {
            int childAdapterPosition;
            float measuredHeight = this.containerView.getMeasuredHeight();
            for (int i = 0; i < this.listView.getChildCount(); i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt != null && (childAdapterPosition = this.listView.getChildAdapterPosition(childAt)) != -1 && childAdapterPosition > 0) {
                    measuredHeight = Math.min(childAt.getY(), measuredHeight);
                }
            }
            return measuredHeight;
        }

        @Override // org.telegram.p043ui.ActionBar.BottomSheet
        protected boolean canDismissWithSwipe() {
            return top() > ((float) ((int) (((float) AndroidUtilities.displaySize.y) * 0.5f)));
        }

        /* renamed from: org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter */
        /* loaded from: classes6.dex */
        private class Adapter extends RecyclerListView.SelectionAdapter {
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                if (i == 0) {
                    return 0;
                }
                return i == 1 ? 1 : 2;
            }

            private Adapter() {
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return viewHolder.getItemViewType() == 2;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View view;
                int m107dp;
                if (i == 0 || i == 1) {
                    view = new View(ChoosePeerSheet.this.getContext());
                    if (i == 0) {
                        m107dp = (AndroidUtilities.displaySize.y + AndroidUtilities.statusBarHeight) - AndroidUtilities.m108dp(306.0f);
                    } else {
                        m107dp = AndroidUtilities.m107dp(54);
                    }
                    view.setLayoutParams(new RecyclerView.LayoutParams(-1, m107dp));
                } else {
                    view = new UserCell(ChoosePeerSheet.this.getContext(), ((BottomSheet) ChoosePeerSheet.this).resourcesProvider);
                }
                return new RecyclerListView.Holder(view);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                if (viewHolder.getItemViewType() == 2) {
                    UserCell userCell = (UserCell) viewHolder.itemView;
                    userCell.setIsSendAs(true, true);
                    TLRPC$InputPeer tLRPC$InputPeer = (TLRPC$InputPeer) ChoosePeerSheet.this.peers.get(i - 2);
                    if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerSelf) {
                        userCell.setUser(UserConfig.getInstance(ChoosePeerSheet.this.currentAccount).getCurrentUser());
                    } else if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerUser) {
                        userCell.setUser(MessagesController.getInstance(ChoosePeerSheet.this.currentAccount).getUser(Long.valueOf(tLRPC$InputPeer.user_id)));
                    } else if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerChat) {
                        userCell.setChat(MessagesController.getInstance(ChoosePeerSheet.this.currentAccount).getChat(Long.valueOf(tLRPC$InputPeer.chat_id)), 0);
                    } else if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerChannel) {
                        userCell.setChat(MessagesController.getInstance(ChoosePeerSheet.this.currentAccount).getChat(Long.valueOf(tLRPC$InputPeer.channel_id)), 0);
                    }
                    userCell.checkBox.setVisibility(8);
                    userCell.radioButton.setVisibility(0);
                    userCell.setChecked((ChoosePeerSheet.this.selectedPeer == null && i == 2) || did(ChoosePeerSheet.this.selectedPeer) == did(tLRPC$InputPeer), false);
                    userCell.setDivider(i != getItemCount() - 1);
                }
            }

            private long did(TLRPC$InputPeer tLRPC$InputPeer) {
                if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerSelf) {
                    return UserConfig.getInstance(ChoosePeerSheet.this.currentAccount).getClientUserId();
                }
                return DialogObject.getPeerDialogId(tLRPC$InputPeer);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return ChoosePeerSheet.this.peers.size() + 2;
            }
        }
    }
}
