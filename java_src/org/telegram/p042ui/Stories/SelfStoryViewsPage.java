package org.telegram.p042ui.Stories;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p042ui.ActionBar.ActionBarMenuItem;
import org.telegram.p042ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p042ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p042ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Cells.ReactedUserHolderView;
import org.telegram.p042ui.Components.AnimatedEmojiDrawable;
import org.telegram.p042ui.Components.Bulletin;
import org.telegram.p042ui.Components.BulletinFactory;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
import org.telegram.p042ui.Components.CustomPopupMenu;
import org.telegram.p042ui.Components.EmojiPacksAlert;
import org.telegram.p042ui.Components.FillLastLinearLayoutManager;
import org.telegram.p042ui.Components.ItemOptions;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.Components.MessageContainsEmojiButton;
import org.telegram.p042ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p042ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p042ui.Components.RecyclerAnimationScrollHelper;
import org.telegram.p042ui.Components.RecyclerItemsEnterAnimator;
import org.telegram.p042ui.Components.RecyclerListView;
import org.telegram.p042ui.Components.ReplaceableIconDrawable;
import org.telegram.p042ui.Components.SearchField;
import org.telegram.p042ui.ProfileActivity;
import org.telegram.p042ui.RecyclerListViewScroller;
import org.telegram.p042ui.Stories.SelfStoryViewsPage;
import org.telegram.p042ui.Stories.SelfStoryViewsView;
import org.telegram.p042ui.Stories.StoriesController;
import org.telegram.p042ui.Stories.StoriesListPlaceProvider;
import org.telegram.p042ui.Stories.recorder.StoryEntry;
import org.telegram.p042ui.Stories.recorder.StoryPrivacyBottomSheet;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$PeerStories;
import org.telegram.tgnet.TLRPC$Reaction;
import org.telegram.tgnet.TLRPC$StoryItem;
import org.telegram.tgnet.TLRPC$StoryViews;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_reactionCustomEmoji;
import org.telegram.tgnet.TLRPC$TL_stories_getStoryViewsList;
import org.telegram.tgnet.TLRPC$TL_stories_storyViewsList;
import org.telegram.tgnet.TLRPC$TL_storyView;
import org.telegram.tgnet.TLRPC$TL_storyViews;
import org.telegram.tgnet.TLRPC$User;
import p033j$.util.Comparator;
import p033j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.Stories.SelfStoryViewsPage */
/* loaded from: classes6.dex */
public class SelfStoryViewsPage extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private int TOP_PADDING;
    private boolean checkAutoscroll;
    int currentAccount;
    ViewsModel currentModel;
    ViewsModel defaultModel;
    private long dialogId;
    HeaderView headerView;
    private boolean isAttachedToWindow;
    boolean isSearchDebounce;
    public FillLastLinearLayoutManager layoutManager;
    ListAdapter listAdapter;
    private int measuerdHeight;
    Consumer<SelfStoryViewsPage> onSharedStateChanged;
    private CustomPopupMenu popupMenu;
    RecyclerItemsEnterAnimator recyclerItemsEnterAnimator;
    RecyclerListView recyclerListView;
    Theme.ResourcesProvider resourcesProvider;
    RecyclerAnimationScrollHelper scrollHelper;
    private final RecyclerListViewScroller scroller;
    SearchField searchField;
    Drawable shadowDrawable;
    private final View shadowView;
    private final View shadowView2;
    final FiltersState sharedFilterState;
    private boolean showContactsFilter;
    private boolean showReactionsSort;
    private boolean showSearch;
    final FiltersState state;
    SelfStoryViewsView.StoryItemInternal storyItem;
    StoryViewer storyViewer;
    private final TextView titleView;
    private final FrameLayout topViewsContainer;

    public void onTopOffsetChanged(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateSharedState() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void access$1200(SelfStoryViewsPage selfStoryViewsPage) {
        selfStoryViewsPage.showPremiumAlert();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isStoryShownToUser(TLRPC$TL_storyView tLRPC$TL_storyView) {
        StoryEntry storyEntry;
        StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy;
        if (!MessagesController.getInstance(this.currentAccount).getStoriesController().isBlocked(tLRPC$TL_storyView) && MessagesController.getInstance(this.currentAccount).blockePeers.indexOfKey(tLRPC$TL_storyView.user_id) < 0) {
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tLRPC$TL_storyView.user_id));
            SelfStoryViewsView.StoryItemInternal storyItemInternal = this.storyItem;
            if (storyItemInternal != null) {
                TLRPC$StoryItem tLRPC$StoryItem = storyItemInternal.storyItem;
                if (tLRPC$StoryItem != null) {
                    if (tLRPC$StoryItem.parsedPrivacy == null) {
                        tLRPC$StoryItem.parsedPrivacy = new StoryPrivacyBottomSheet.StoryPrivacy(this.currentAccount, tLRPC$StoryItem.privacy);
                    }
                    return this.storyItem.storyItem.parsedPrivacy.containsUser(user);
                }
                StoriesController.UploadingStory uploadingStory = storyItemInternal.uploadingStory;
                if (uploadingStory == null || (storyEntry = uploadingStory.entry) == null || (storyPrivacy = storyEntry.privacy) == null) {
                    return true;
                }
                return storyPrivacy.containsUser(user);
            }
            return true;
        }
        return false;
    }

    public SelfStoryViewsPage(final StoryViewer storyViewer, Context context, FiltersState filtersState, Consumer<SelfStoryViewsPage> consumer) {
        super(context);
        this.TOP_PADDING = 96;
        this.state = new FiltersState();
        this.sharedFilterState = filtersState;
        this.onSharedStateChanged = consumer;
        this.resourcesProvider = storyViewer.resourcesProvider;
        this.storyViewer = storyViewer;
        this.currentAccount = storyViewer.currentAccount;
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider));
        textView.setTextSize(1, 20.0f);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setPadding(AndroidUtilities.m102dp(21), AndroidUtilities.m102dp(6), AndroidUtilities.m102dp(21), AndroidUtilities.m102dp(8));
        this.headerView = new HeaderView(getContext());
        RecyclerListViewInner recyclerListViewInner = new RecyclerListViewInner(context, this.resourcesProvider) { // from class: org.telegram.ui.Stories.SelfStoryViewsPage.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p042ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public void onMeasure(int i, int i2) {
                SelfStoryViewsPage.this.measuerdHeight = View.MeasureSpec.getSize(i2);
                super.onMeasure(i, i2);
            }
        };
        this.recyclerListView = recyclerListViewInner;
        recyclerListViewInner.setClipToPadding(false);
        this.recyclerItemsEnterAnimator = new RecyclerItemsEnterAnimator(this.recyclerListView, true);
        RecyclerListView recyclerListView = this.recyclerListView;
        FillLastLinearLayoutManager fillLastLinearLayoutManager = new FillLastLinearLayoutManager(context, 0, recyclerListView);
        this.layoutManager = fillLastLinearLayoutManager;
        recyclerListView.setLayoutManager(fillLastLinearLayoutManager);
        this.recyclerListView.setNestedScrollingEnabled(true);
        RecyclerListView recyclerListView2 = this.recyclerListView;
        ListAdapter listAdapter = new ListAdapter();
        this.listAdapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        RecyclerAnimationScrollHelper recyclerAnimationScrollHelper = new RecyclerAnimationScrollHelper(this.recyclerListView, this.layoutManager);
        this.scrollHelper = recyclerAnimationScrollHelper;
        recyclerAnimationScrollHelper.setScrollListener(new RecyclerAnimationScrollHelper.ScrollListener() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage.2
            @Override // org.telegram.p042ui.Components.RecyclerAnimationScrollHelper.ScrollListener
            public void onScroll() {
                SelfStoryViewsPage.this.invalidate();
            }
        });
        addView(this.recyclerListView);
        this.scroller = new RecyclerListViewScroller(this.recyclerListView);
        this.recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                SelfStoryViewsPage.this.checkLoadMore();
                SelfStoryViewsPage.this.invalidate();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
                if (i == 0) {
                    SelfStoryViewsPage.this.checkAutoscroll = true;
                    SelfStoryViewsPage.this.invalidate();
                }
                if (i == 1) {
                    SelfStoryViewsPage.this.checkAutoscroll = false;
                    SelfStoryViewsPage.this.scroller.cancel();
                    AndroidUtilities.hideKeyboard(SelfStoryViewsPage.this);
                }
            }
        });
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$$ExternalSyntheticLambda0
            @Override // org.telegram.p042ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                SelfStoryViewsPage.this.lambda$new$0(storyViewer, view, i);
            }
        });
        this.recyclerListView.setOnItemLongClickListener(new C70434(storyViewer));
        this.listAdapter.updateRows();
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.topViewsContainer = frameLayout;
        View view = new View(getContext());
        this.shadowView = view;
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        int i = Theme.key_dialogBackground;
        view.setBackground(new GradientDrawable(orientation, new int[]{Theme.getColor(i, this.resourcesProvider), 0}));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, 8, 0, 0, this.TOP_PADDING - 8, 0, 0));
        View view2 = new View(getContext());
        this.shadowView2 = view2;
        view2.setBackgroundColor(Theme.getColor(i, this.resourcesProvider));
        frameLayout.addView(view2, LayoutHelper.createFrame(-1, 10, 0, 0, this.TOP_PADDING - 17, 0, 0));
        frameLayout.addView(this.headerView);
        frameLayout.addView(textView);
        C70455 c70455 = new C70455(getContext(), true, 13.0f, this.resourcesProvider);
        this.searchField = c70455;
        c70455.setHint(LocaleController.getString("Search", C3630R.string.Search));
        frameLayout.addView(this.searchField, LayoutHelper.createFrame(-1, -1, 51, 0, 36, 0, 0));
        addView(frameLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(StoryViewer storyViewer, View view, int i) {
        TLRPC$TL_storyView tLRPC$TL_storyView;
        if (i < 0 || i >= this.listAdapter.items.size() || (tLRPC$TL_storyView = this.listAdapter.items.get(i).user) == null) {
            return;
        }
        storyViewer.presentFragment(ProfileActivity.m54of(tLRPC$TL_storyView.user_id));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.SelfStoryViewsPage$4 */
    /* loaded from: classes6.dex */
    public class C70434 implements RecyclerListView.OnItemLongClickListener {
        final /* synthetic */ StoryViewer val$storyViewer;

        C70434(StoryViewer storyViewer) {
            this.val$storyViewer = storyViewer;
        }

        @Override // org.telegram.p042ui.Components.RecyclerListView.OnItemLongClickListener
        public boolean onItemClick(View view, int i) {
            final MessagesController messagesController;
            final TLRPC$User user;
            final C70434 c70434;
            if (view instanceof ReactedUserHolderView) {
                final ReactedUserHolderView reactedUserHolderView = (ReactedUserHolderView) view;
                StoryViewer storyViewer = this.val$storyViewer;
                if (storyViewer == null || storyViewer.containerView == null) {
                    return false;
                }
                final TLRPC$TL_storyView tLRPC$TL_storyView = SelfStoryViewsPage.this.listAdapter.items.get(i).user;
                if (tLRPC$TL_storyView == null || (user = (messagesController = MessagesController.getInstance(SelfStoryViewsPage.this.currentAccount)).getUser(Long.valueOf(tLRPC$TL_storyView.user_id))) == null) {
                    return false;
                }
                boolean z = messagesController.blockePeers.indexOfKey(user.f1762id) >= 0;
                boolean z2 = user.contact || ContactsController.getInstance(SelfStoryViewsPage.this.currentAccount).contactsDict.get(Long.valueOf(user.f1762id)) != null;
                boolean isStoryShownToUser = SelfStoryViewsPage.this.isStoryShownToUser(tLRPC$TL_storyView);
                boolean isBlocked = messagesController.getStoriesController().isBlocked(tLRPC$TL_storyView);
                String str = TextUtils.isEmpty(user.first_name) ? TextUtils.isEmpty(user.last_name) ? "" : user.last_name : user.first_name;
                int indexOf = str.indexOf(" ");
                if (indexOf > 2) {
                    str = str.substring(0, indexOf);
                }
                final String str2 = str;
                ItemOptions cutTextInFancyHalf = ItemOptions.makeOptions(this.val$storyViewer.containerView, SelfStoryViewsPage.this.resourcesProvider, view).setGravity(3).ignoreX().setScrimViewBackground(new ColorDrawable(Theme.getColor(Theme.key_dialogBackground, SelfStoryViewsPage.this.resourcesProvider))).setDimAlpha(133).addIf((!isStoryShownToUser || isBlocked || z) ? false : true, C3630R.C3632drawable.msg_stories_myhide, LocaleController.formatString(C3630R.string.StoryHideFrom, str2), new Runnable() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$4$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        SelfStoryViewsPage.C70434.this.lambda$onItemClick$0(messagesController, user, str2, reactedUserHolderView, tLRPC$TL_storyView);
                    }
                }).makeMultiline(false).cutTextInFancyHalf().addIf(isBlocked && !z, C3630R.C3632drawable.msg_menu_stories, LocaleController.formatString(C3630R.string.StoryShowBackTo, str2), new Runnable() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$4$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SelfStoryViewsPage.C70434.this.lambda$onItemClick$1(messagesController, user, str2, reactedUserHolderView, tLRPC$TL_storyView);
                    }
                }).makeMultiline(false).cutTextInFancyHalf();
                boolean z3 = (z2 || z) ? false : true;
                int i2 = C3630R.C3632drawable.msg_user_remove;
                final ItemOptions addIf = cutTextInFancyHalf.addIf(z3, i2, (CharSequence) LocaleController.getString(C3630R.string.BlockUser), true, new Runnable() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$4$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        SelfStoryViewsPage.C70434.this.lambda$onItemClick$2(messagesController, user, reactedUserHolderView, tLRPC$TL_storyView);
                    }
                }).addIf(!z2 && z, C3630R.C3632drawable.msg_block, LocaleController.getString(C3630R.string.Unblock), new Runnable() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$4$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        SelfStoryViewsPage.C70434.this.lambda$onItemClick$3(messagesController, user, reactedUserHolderView, tLRPC$TL_storyView);
                    }
                }).addIf(z2, i2, (CharSequence) LocaleController.getString(C3630R.string.StoryDeleteContact), true, new Runnable() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$4$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        SelfStoryViewsPage.C70434.this.lambda$onItemClick$4(user, str2, reactedUserHolderView, tLRPC$TL_storyView);
                    }
                });
                TLRPC$Reaction tLRPC$Reaction = tLRPC$TL_storyView.reaction;
                if (tLRPC$Reaction instanceof TLRPC$TL_reactionCustomEmoji) {
                    c70434 = this;
                    TLRPC$InputStickerSet findStickerSet = AnimatedEmojiDrawable.getDocumentFetcher(SelfStoryViewsPage.this.currentAccount).findStickerSet(((TLRPC$TL_reactionCustomEmoji) tLRPC$Reaction).document_id);
                    if (findStickerSet != null) {
                        addIf.addGap();
                        final ArrayList arrayList = new ArrayList();
                        arrayList.add(findStickerSet);
                        SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
                        MessageContainsEmojiButton messageContainsEmojiButton = new MessageContainsEmojiButton(selfStoryViewsPage.currentAccount, selfStoryViewsPage.getContext(), SelfStoryViewsPage.this.resourcesProvider, arrayList, 3);
                        messageContainsEmojiButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$4$$ExternalSyntheticLambda0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                SelfStoryViewsPage.C70434.this.lambda$onItemClick$5(arrayList, addIf, view2);
                            }
                        });
                        addIf.addView(messageContainsEmojiButton);
                    }
                } else {
                    c70434 = this;
                }
                addIf.show();
                try {
                    try {
                        SelfStoryViewsPage.this.performHapticFeedback(0, 1);
                        return true;
                    } catch (Exception unused) {
                        return true;
                    }
                } catch (Exception unused2) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(MessagesController messagesController, TLRPC$User tLRPC$User, String str, ReactedUserHolderView reactedUserHolderView, TLRPC$TL_storyView tLRPC$TL_storyView) {
            messagesController.getStoriesController().updateBlockUser(tLRPC$User.f1762id, true);
            SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
            BulletinFactory.m62of(selfStoryViewsPage, selfStoryViewsPage.resourcesProvider).createSimpleBulletin(C3630R.raw.ic_ban, LocaleController.formatString(C3630R.string.StoryHidFromToast, str)).show();
            reactedUserHolderView.animateAlpha(SelfStoryViewsPage.this.isStoryShownToUser(tLRPC$TL_storyView) ? 1.0f : 0.5f, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1(MessagesController messagesController, TLRPC$User tLRPC$User, String str, ReactedUserHolderView reactedUserHolderView, TLRPC$TL_storyView tLRPC$TL_storyView) {
            messagesController.getStoriesController().updateBlockUser(tLRPC$User.f1762id, false);
            SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
            BulletinFactory.m62of(selfStoryViewsPage, selfStoryViewsPage.resourcesProvider).createSimpleBulletin(C3630R.raw.contact_check, LocaleController.formatString(C3630R.string.StoryShownBackToToast, str)).show();
            reactedUserHolderView.animateAlpha(SelfStoryViewsPage.this.isStoryShownToUser(tLRPC$TL_storyView) ? 1.0f : 0.5f, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$2(MessagesController messagesController, TLRPC$User tLRPC$User, ReactedUserHolderView reactedUserHolderView, TLRPC$TL_storyView tLRPC$TL_storyView) {
            messagesController.blockPeer(tLRPC$User.f1762id);
            SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
            BulletinFactory.m62of(selfStoryViewsPage, selfStoryViewsPage.resourcesProvider).createBanBulletin(true).show();
            reactedUserHolderView.animateAlpha(SelfStoryViewsPage.this.isStoryShownToUser(tLRPC$TL_storyView) ? 1.0f : 0.5f, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$3(MessagesController messagesController, TLRPC$User tLRPC$User, ReactedUserHolderView reactedUserHolderView, TLRPC$TL_storyView tLRPC$TL_storyView) {
            messagesController.getStoriesController().updateBlockUser(tLRPC$User.f1762id, false);
            messagesController.unblockPeer(tLRPC$User.f1762id);
            SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
            BulletinFactory.m62of(selfStoryViewsPage, selfStoryViewsPage.resourcesProvider).createBanBulletin(false).show();
            reactedUserHolderView.animateAlpha(SelfStoryViewsPage.this.isStoryShownToUser(tLRPC$TL_storyView) ? 1.0f : 0.5f, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$4(TLRPC$User tLRPC$User, String str, ReactedUserHolderView reactedUserHolderView, TLRPC$TL_storyView tLRPC$TL_storyView) {
            ArrayList<TLRPC$User> arrayList = new ArrayList<>();
            arrayList.add(tLRPC$User);
            ContactsController.getInstance(SelfStoryViewsPage.this.currentAccount).deleteContact(arrayList, false);
            SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
            BulletinFactory.m62of(selfStoryViewsPage, selfStoryViewsPage.resourcesProvider).createSimpleBulletin(C3630R.raw.ic_ban, LocaleController.formatString(C3630R.string.DeletedFromYourContacts, str)).show();
            reactedUserHolderView.animateAlpha(SelfStoryViewsPage.this.isStoryShownToUser(tLRPC$TL_storyView) ? 1.0f : 0.5f, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$5(ArrayList arrayList, ItemOptions itemOptions, View view) {
            new EmojiPacksAlert(new BaseFragment() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage.4.1
                @Override // org.telegram.p042ui.ActionBar.BaseFragment
                public int getCurrentAccount() {
                    return this.currentAccount;
                }

                @Override // org.telegram.p042ui.ActionBar.BaseFragment
                public Context getContext() {
                    return SelfStoryViewsPage.this.getContext();
                }

                @Override // org.telegram.p042ui.ActionBar.BaseFragment
                public Theme.ResourcesProvider getResourceProvider() {
                    return SelfStoryViewsPage.this.resourcesProvider;
                }
            }, SelfStoryViewsPage.this.getContext(), SelfStoryViewsPage.this.resourcesProvider, arrayList).show();
            itemOptions.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Stories.SelfStoryViewsPage$5 */
    /* loaded from: classes6.dex */
    public class C70455 extends SearchField {
        Runnable runnable;

        C70455(Context context, boolean z, float f, Theme.ResourcesProvider resourcesProvider) {
            super(context, z, f, resourcesProvider);
        }

        @Override // org.telegram.p042ui.Components.SearchField
        public void onTextChange(final String str) {
            Runnable runnable = this.runnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            this.runnable = new Runnable() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SelfStoryViewsPage.C70455.this.lambda$onTextChange$0(str);
                }
            };
            if (!TextUtils.isEmpty(str)) {
                AndroidUtilities.runOnUIThread(this.runnable, 300L);
            } else {
                this.runnable.run();
            }
            if (this.runnable != null) {
                SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
                if (selfStoryViewsPage.isSearchDebounce) {
                    return;
                }
                selfStoryViewsPage.isSearchDebounce = true;
                selfStoryViewsPage.listAdapter.updateRows();
                SelfStoryViewsPage selfStoryViewsPage2 = SelfStoryViewsPage.this;
                selfStoryViewsPage2.layoutManager.scrollToPositionWithOffset(0, -selfStoryViewsPage2.recyclerListView.getPaddingTop());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTextChange$0(String str) {
            this.runnable = null;
            SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
            selfStoryViewsPage.isSearchDebounce = false;
            selfStoryViewsPage.state.searchQuery = str.toLowerCase();
            SelfStoryViewsPage.this.reload();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int paddingTop;
        View view = null;
        int i = -1;
        for (int i2 = 0; i2 < this.recyclerListView.getChildCount(); i2++) {
            View childAt = this.recyclerListView.getChildAt(i2);
            int childLayoutPosition = this.recyclerListView.getChildLayoutPosition(childAt);
            if (childLayoutPosition < i || i == -1) {
                view = childAt;
                i = childLayoutPosition;
            }
        }
        if (i == 0) {
            paddingTop = (int) Math.max((float) BitmapDescriptorFactory.HUE_RED, view.getY());
        } else {
            paddingTop = i > 0 ? 0 : this.recyclerListView.getPaddingTop();
        }
        float f = paddingTop;
        if (this.topViewsContainer.getTranslationY() != f) {
            this.topViewsContainer.setTranslationY(f);
            onTopOffsetChanged(paddingTop);
        }
        this.shadowDrawable.setBounds(-AndroidUtilities.m102dp(6), paddingTop, getMeasuredWidth() + AndroidUtilities.m102dp(6), getMeasuredHeight());
        this.shadowDrawable.draw(canvas);
        if (this.checkAutoscroll) {
            this.checkAutoscroll = false;
            if (this.topViewsContainer.getTranslationY() != BitmapDescriptorFactory.HUE_RED && this.topViewsContainer.getTranslationY() != this.recyclerListView.getPaddingTop()) {
                if (this.topViewsContainer.getTranslationY() > this.recyclerListView.getPaddingTop() / 2.0f) {
                    this.scroller.smoothScrollBy((int) (-(this.recyclerListView.getPaddingTop() - this.topViewsContainer.getTranslationY())));
                } else {
                    this.scroller.smoothScrollBy((int) this.topViewsContainer.getTranslationY());
                }
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getY() < this.topViewsContainer.getTranslationY()) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getY() < this.topViewsContainer.getTranslationY()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view == this.recyclerListView) {
            canvas.save();
            canvas.clipRect(0, AndroidUtilities.m102dp(this.TOP_PADDING), getMeasuredWidth(), getMeasuredHeight());
            super.drawChild(canvas, view, j);
            canvas.restore();
            return true;
        }
        return super.drawChild(canvas, view, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkLoadMore() {
        if (this.currentModel == null || this.layoutManager.findLastVisibleItemPosition() <= this.listAdapter.getItemCount() - 10) {
            return;
        }
        this.currentModel.loadNext();
    }

    public void setStoryItem(long j, SelfStoryViewsView.StoryItemInternal storyItemInternal) {
        this.dialogId = j;
        this.storyItem = storyItemInternal;
        updateViewsVisibility();
        updateViewState(false);
    }

    private void updateViewsVisibility() {
        this.showSearch = false;
        this.showContactsFilter = false;
        this.showReactionsSort = false;
        TLRPC$StoryItem tLRPC$StoryItem = this.storyItem.storyItem;
        if (tLRPC$StoryItem != null) {
            TLRPC$StoryViews tLRPC$StoryViews = tLRPC$StoryItem.views;
            boolean z = true;
            if (tLRPC$StoryViews != null) {
                int i = tLRPC$StoryViews.views_count;
                this.showSearch = i >= 15;
                this.showReactionsSort = tLRPC$StoryViews.reactions_count >= (BuildVars.DEBUG_PRIVATE_VERSION ? 5 : 10);
                this.showContactsFilter = (i < 20 || tLRPC$StoryItem.contacts || tLRPC$StoryItem.close_friends || tLRPC$StoryItem.selected_contacts) ? false : true;
            }
            ViewsModel viewsModel = MessagesController.getInstance(this.currentAccount).getStoriesController().selfViewsModel.get(tLRPC$StoryItem.f1635id);
            this.defaultModel = viewsModel;
            TLRPC$StoryViews tLRPC$StoryViews2 = tLRPC$StoryItem.views;
            int i2 = tLRPC$StoryViews2 == null ? 0 : tLRPC$StoryViews2.views_count;
            if (viewsModel == null || viewsModel.totalCount != i2) {
                if (viewsModel != null) {
                    viewsModel.release();
                }
                ViewsModel viewsModel2 = new ViewsModel(this.currentAccount, this.dialogId, tLRPC$StoryItem, true);
                this.defaultModel = viewsModel2;
                viewsModel2.reloadIfNeed(this.state, this.showContactsFilter, this.showReactionsSort);
                this.defaultModel.loadNext();
                MessagesController.getInstance(this.currentAccount).getStoriesController().selfViewsModel.put(tLRPC$StoryItem.f1635id, this.defaultModel);
            } else {
                viewsModel.reloadIfNeed(this.state, this.showContactsFilter, this.showReactionsSort);
            }
            ViewsModel viewsModel3 = this.currentModel;
            if (viewsModel3 != null) {
                viewsModel3.removeListener(this);
            }
            ViewsModel viewsModel4 = this.defaultModel;
            this.currentModel = viewsModel4;
            if (viewsModel4 != null && this.isAttachedToWindow) {
                viewsModel4.addListener(this);
            }
            if (!this.currentModel.isExpiredViews || UserConfig.getInstance(this.currentAccount).isPremium()) {
                ViewsModel viewsModel5 = this.currentModel;
                if (viewsModel5.loading || viewsModel5.hasNext || !viewsModel5.views.isEmpty() || !TextUtils.isEmpty(this.currentModel.state.searchQuery)) {
                    TLRPC$StoryViews tLRPC$StoryViews3 = tLRPC$StoryItem.views;
                    if (tLRPC$StoryViews3 == null || tLRPC$StoryViews3.views_count == 0) {
                        this.showSearch = false;
                        this.showReactionsSort = false;
                        this.showContactsFilter = false;
                        this.titleView.setText(LocaleController.getString("Viewers", C3630R.string.Viewers));
                        this.searchField.setVisibility(8);
                        this.headerView.setVisibility(8);
                        this.TOP_PADDING = 46;
                    } else {
                        this.headerView.setVisibility(0);
                        ViewsModel viewsModel6 = this.currentModel;
                        if (viewsModel6.showReactionOnly) {
                            TextView textView = this.titleView;
                            int i3 = tLRPC$StoryItem.views.reactions_count;
                            textView.setText(LocaleController.formatPluralString("Likes", i3, Integer.valueOf(i3)));
                            this.showSearch = false;
                            this.showReactionsSort = false;
                            this.showContactsFilter = false;
                        } else {
                            if (viewsModel6.views.size() < 20 && this.currentModel.views.size() < tLRPC$StoryItem.views.views_count) {
                                ViewsModel viewsModel7 = this.currentModel;
                                if (!viewsModel7.loading && !viewsModel7.hasNext) {
                                    this.showSearch = false;
                                    this.showReactionsSort = false;
                                    this.showContactsFilter = false;
                                    this.titleView.setText(LocaleController.getString("Viewers", C3630R.string.Viewers));
                                }
                            }
                            TLRPC$StoryViews tLRPC$StoryViews4 = tLRPC$StoryItem.views;
                            int i4 = tLRPC$StoryViews4.views_count;
                            this.showSearch = i4 >= 15;
                            this.showReactionsSort = tLRPC$StoryViews4.reactions_count >= (BuildVars.DEBUG_VERSION ? 5 : 10);
                            if (i4 < 20 || tLRPC$StoryItem.contacts || tLRPC$StoryItem.close_friends || tLRPC$StoryItem.selected_contacts) {
                                z = false;
                            }
                            this.showContactsFilter = z;
                            this.titleView.setText(LocaleController.getString("Viewers", C3630R.string.Viewers));
                        }
                        this.searchField.setVisibility(this.showSearch ? 0 : 8);
                        this.TOP_PADDING = this.showSearch ? 96 : 46;
                    }
                }
            }
            this.showSearch = false;
            this.showReactionsSort = false;
            this.showContactsFilter = false;
            this.titleView.setText(LocaleController.getString("Viewers", C3630R.string.Viewers));
            this.searchField.setVisibility(8);
            this.headerView.setVisibility(8);
            this.TOP_PADDING = 46;
        } else {
            this.TOP_PADDING = 46;
            this.titleView.setText(LocaleController.getString("UploadingStory", C3630R.string.UploadingStory));
            this.searchField.setVisibility(8);
            this.headerView.setVisibility(8);
        }
        this.headerView.buttonContainer.setVisibility(this.showReactionsSort ? 0 : 8);
        this.headerView.allViewersView.setVisibility(this.showContactsFilter ? 0 : 8);
        this.headerView.contactsViewersView.setVisibility(this.showContactsFilter ? 0 : 8);
        if (!this.showContactsFilter) {
            this.titleView.setVisibility(0);
        } else {
            this.titleView.setVisibility(8);
        }
        ((ViewGroup.MarginLayoutParams) this.shadowView.getLayoutParams()).topMargin = AndroidUtilities.m102dp(this.TOP_PADDING - 8);
        ((ViewGroup.MarginLayoutParams) this.shadowView2.getLayoutParams()).topMargin = AndroidUtilities.m102dp(this.TOP_PADDING - 17);
    }

    public static void preload(int i, long j, TLRPC$StoryItem tLRPC$StoryItem) {
        if (tLRPC$StoryItem == null) {
            return;
        }
        ViewsModel viewsModel = MessagesController.getInstance(i).getStoriesController().selfViewsModel.get(tLRPC$StoryItem.f1635id);
        TLRPC$StoryViews tLRPC$StoryViews = tLRPC$StoryItem.views;
        int i2 = tLRPC$StoryViews == null ? 0 : tLRPC$StoryViews.views_count;
        if (viewsModel == null || viewsModel.totalCount != i2) {
            if (viewsModel != null) {
                viewsModel.release();
            }
            ViewsModel viewsModel2 = new ViewsModel(i, j, tLRPC$StoryItem, true);
            viewsModel2.loadNext();
            MessagesController.getInstance(i).getStoriesController().selfViewsModel.put(tLRPC$StoryItem.f1635id, viewsModel2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isAttachedToWindow = true;
        ViewsModel viewsModel = this.currentModel;
        if (viewsModel != null) {
            viewsModel.addListener(this);
            this.currentModel.animateDateForUsers.clear();
        }
        this.listAdapter.updateRows();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesBlocklistUpdate);
        Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage.6
            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean clipWithGradient(int i) {
                return Bulletin.Delegate.CC.$default$clipWithGradient(this, i);
            }

            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public /* synthetic */ int getTopOffset(int i) {
                return Bulletin.Delegate.CC.$default$getTopOffset(this, i);
            }

            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public /* synthetic */ void onBottomOffsetChange(float f) {
                Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
            }

            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public /* synthetic */ void onShow(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onShow(this, bulletin);
            }

            @Override // org.telegram.p042ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i) {
                return SelfStoryViewsPage.this.recyclerListView.getPaddingBottom();
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isAttachedToWindow = false;
        ViewsModel viewsModel = this.currentModel;
        if (viewsModel != null) {
            viewsModel.removeListener(this);
        }
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesBlocklistUpdate);
        Bulletin.removeDelegate(this);
    }

    public void onDataRecieved(ViewsModel viewsModel) {
        int itemCount = this.listAdapter.getItemCount();
        if (TextUtils.isEmpty(this.state.searchQuery) && !this.state.contactsOnly) {
            updateViewsVisibility();
        }
        this.listAdapter.updateRows();
        this.recyclerItemsEnterAnimator.showItemsAnimated(itemCount - 1);
        checkLoadMore();
    }

    public void setListBottomPadding(float f) {
        if (f != this.recyclerListView.getPaddingBottom()) {
            this.recyclerListView.setPadding(0, (int) f, 0, 0);
            this.recyclerListView.requestLayout();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        int childAdapterPosition;
        TLRPC$PeerStories stories;
        int i3 = 0;
        if (i == NotificationCenter.storiesUpdated) {
            if (this.storyItem.uploadingStory == null || (stories = MessagesController.getInstance(this.currentAccount).getStoriesController().getStories(UserConfig.getInstance(this.currentAccount).clientUserId)) == null) {
                return;
            }
            while (i3 < stories.stories.size()) {
                TLRPC$StoryItem tLRPC$StoryItem = stories.stories.get(i3);
                String str = tLRPC$StoryItem.attachPath;
                if (str != null && str.equals(this.storyItem.uploadingStory.path)) {
                    SelfStoryViewsView.StoryItemInternal storyItemInternal = this.storyItem;
                    storyItemInternal.uploadingStory = null;
                    storyItemInternal.storyItem = tLRPC$StoryItem;
                    setStoryItem(this.dialogId, storyItemInternal);
                    return;
                }
                i3++;
            }
        } else if (i == NotificationCenter.storiesBlocklistUpdate) {
            while (i3 < this.recyclerListView.getChildCount()) {
                View childAt = this.recyclerListView.getChildAt(i3);
                if ((childAt instanceof ReactedUserHolderView) && (childAdapterPosition = this.recyclerListView.getChildAdapterPosition(childAt)) >= 0 && childAdapterPosition < this.listAdapter.items.size()) {
                    ((ReactedUserHolderView) childAt).animateAlpha(isStoryShownToUser(this.listAdapter.items.get(childAdapterPosition).user) ? 1.0f : 0.5f, true);
                }
                i3++;
            }
        }
    }

    public void setShadowDrawable(Drawable drawable) {
        this.shadowDrawable = drawable;
    }

    public void onKeyboardShown() {
        this.recyclerListView.dispatchTouchEvent(AndroidUtilities.emptyMotionEvent());
        if (this.topViewsContainer.getTranslationY() != BitmapDescriptorFactory.HUE_RED) {
            this.scroller.smoothScrollBy((int) this.topViewsContainer.getTranslationY(), 250L, AdjustPanLayoutHelper.keyboardInterpolator);
        }
    }

    public boolean onBackPressed() {
        CustomPopupMenu customPopupMenu = this.popupMenu;
        if (customPopupMenu != null && customPopupMenu.isShowing()) {
            this.popupMenu.dismiss();
            return true;
        } else if (Math.abs(this.topViewsContainer.getTranslationY() - this.recyclerListView.getPaddingTop()) > AndroidUtilities.m102dp(2)) {
            this.recyclerListView.dispatchTouchEvent(AndroidUtilities.emptyMotionEvent());
            this.recyclerListView.smoothScrollToPosition(0);
            return true;
        } else {
            return false;
        }
    }

    public float getTopOffset() {
        return this.topViewsContainer.getTranslationY();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.SelfStoryViewsPage$ListAdapter */
    /* loaded from: classes6.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        ArrayList<Item> items;

        private ListAdapter() {
            this.items = new ArrayList<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0() {
            SelfStoryViewsPage.this.showPremiumAlert();
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00dd  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00ef  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.ViewHolder onCreateViewHolder(android.view.ViewGroup r12, int r13) {
            /*
                Method dump skipped, instructions count: 532
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Stories.SelfStoryViewsPage.ListAdapter.onCreateViewHolder(android.view.ViewGroup, int):androidx.recyclerview.widget.RecyclerView$ViewHolder");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ReactionsLayoutInBubble.VisibleReaction fromTLReaction;
            String str;
            boolean z = true;
            if (viewHolder.getItemViewType() == 1) {
                ReactedUserHolderView reactedUserHolderView = (ReactedUserHolderView) viewHolder.itemView;
                TLRPC$User user = MessagesController.getInstance(SelfStoryViewsPage.this.currentAccount).getUser(Long.valueOf(this.items.get(i).user.user_id));
                boolean remove = SelfStoryViewsPage.this.defaultModel.animateDateForUsers.remove(Long.valueOf(this.items.get(i).user.user_id));
                boolean z2 = (this.items.get(i).user.reaction == null || (fromTLReaction = ReactionsLayoutInBubble.VisibleReaction.fromTLReaction(this.items.get(i).user.reaction)) == null || (str = fromTLReaction.emojicon) == null || !str.equals("❤")) ? false : true;
                reactedUserHolderView.setUserReaction(user, null, z2 ? null : this.items.get(i).user.reaction, z2, this.items.get(i).user.date, true, remove);
                int i2 = i < this.items.size() - 1 ? this.items.get(i + 1).viewType : -1;
                if (i2 != 1 && i2 != 11 && i2 != 12) {
                    z = false;
                }
                reactedUserHolderView.drawDivider = z;
                reactedUserHolderView.animateAlpha(SelfStoryViewsPage.this.isStoryShownToUser(this.items.get(i).user) ? 1.0f : 0.5f, false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.items.size();
        }

        @Override // org.telegram.p042ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1;
        }

        public void updateRows() {
            this.items.clear();
            SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
            ViewsModel viewsModel = selfStoryViewsPage.currentModel;
            if (selfStoryViewsPage.isSearchDebounce) {
                this.items.add(new Item(0));
                this.items.add(new Item(6));
            } else {
                this.items.add(new Item(0));
                if (viewsModel != null && viewsModel.views.isEmpty() && (viewsModel.isExpiredViews || (!viewsModel.loading && !viewsModel.hasNext))) {
                    if (!TextUtils.isEmpty(viewsModel.state.searchQuery)) {
                        this.items.add(new Item(7));
                    } else if (viewsModel.isExpiredViews) {
                        this.items.add(new Item(5));
                    } else {
                        int i = viewsModel.totalCount;
                        if (i > 0 && viewsModel.state.contactsOnly) {
                            this.items.add(new Item(8));
                        } else if (i > 0) {
                            this.items.add(new Item(10));
                        } else {
                            this.items.add(new Item(5));
                        }
                    }
                } else {
                    if (viewsModel != null) {
                        for (int i2 = 0; i2 < viewsModel.views.size(); i2++) {
                            this.items.add(new Item(1, viewsModel.views.get(i2)));
                        }
                    }
                    if (viewsModel != null && (viewsModel.loading || viewsModel.hasNext)) {
                        if (viewsModel.views.isEmpty()) {
                            this.items.add(new Item(6));
                        } else {
                            this.items.add(new Item(4));
                        }
                    } else if (viewsModel != null && viewsModel.showReactionOnly) {
                        this.items.add(new Item(11));
                    } else if (viewsModel != null && viewsModel.views.size() < viewsModel.totalCount && TextUtils.isEmpty(viewsModel.state.searchQuery) && !viewsModel.state.contactsOnly) {
                        this.items.add(new Item(12));
                    }
                }
            }
            this.items.add(new Item(9));
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return this.items.get(i).viewType;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPremiumAlert() {
        new PremiumFeatureBottomSheet(this.storyViewer.fragment, 14, false).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.SelfStoryViewsPage$Item */
    /* loaded from: classes6.dex */
    public class Item {
        TLRPC$TL_storyView user;
        final int viewType;

        private Item(SelfStoryViewsPage selfStoryViewsPage, int i) {
            this.viewType = i;
        }

        private Item(SelfStoryViewsPage selfStoryViewsPage, int i, TLRPC$TL_storyView tLRPC$TL_storyView) {
            this.viewType = i;
            this.user = tLRPC$TL_storyView;
        }
    }

    /* renamed from: org.telegram.ui.Stories.SelfStoryViewsPage$ViewsModel */
    /* loaded from: classes6.dex */
    public static class ViewsModel {
        int currentAccount;
        private long dialogId;
        boolean initial;
        boolean isExpiredViews;
        boolean loading;
        String offset;
        boolean showReactionOnly;
        TLRPC$StoryItem storyItem;
        public int totalCount;
        boolean useLocalFilters;
        ArrayList<TLRPC$TL_storyView> views = new ArrayList<>();
        ArrayList<TLRPC$TL_storyView> originalViews = new ArrayList<>();
        boolean hasNext = true;
        int reqId = -1;
        HashSet<Long> animateDateForUsers = new HashSet<>();
        ArrayList<SelfStoryViewsPage> listeners = new ArrayList<>();
        FiltersState state = new FiltersState();

        public ViewsModel(int i, long j, TLRPC$StoryItem tLRPC$StoryItem, boolean z) {
            TLRPC$StoryViews tLRPC$StoryViews;
            this.currentAccount = i;
            this.storyItem = tLRPC$StoryItem;
            this.dialogId = j;
            TLRPC$StoryViews tLRPC$StoryViews2 = tLRPC$StoryItem.views;
            int i2 = tLRPC$StoryViews2 == null ? 0 : tLRPC$StoryViews2.views_count;
            this.totalCount = i2;
            if (i2 < 200) {
                this.useLocalFilters = true;
            }
            boolean z2 = StoriesUtilities.hasExpiredViews(tLRPC$StoryItem) && !UserConfig.getInstance(i).isPremium();
            this.isExpiredViews = z2;
            if (z2 && (tLRPC$StoryViews = tLRPC$StoryItem.views) != null && tLRPC$StoryViews.reactions_count > 0) {
                this.isExpiredViews = false;
                this.showReactionOnly = true;
            }
            if (this.isExpiredViews) {
                return;
            }
            this.initial = true;
            if (tLRPC$StoryItem.views == null || !z) {
                return;
            }
            for (int i3 = 0; i3 < tLRPC$StoryItem.views.recent_viewers.size(); i3++) {
                long longValue = tLRPC$StoryItem.views.recent_viewers.get(i3).longValue();
                if (MessagesController.getInstance(i).getUser(Long.valueOf(longValue)) != null) {
                    TLRPC$TL_storyView tLRPC$TL_storyView = new TLRPC$TL_storyView();
                    tLRPC$TL_storyView.user_id = longValue;
                    tLRPC$TL_storyView.date = 0;
                    this.views.add(tLRPC$TL_storyView);
                }
            }
        }

        public void loadNext() {
            if (this.loading || !this.hasNext || this.isExpiredViews) {
                return;
            }
            TLRPC$TL_stories_getStoryViewsList tLRPC$TL_stories_getStoryViewsList = new TLRPC$TL_stories_getStoryViewsList();
            tLRPC$TL_stories_getStoryViewsList.f1745id = this.storyItem.f1635id;
            tLRPC$TL_stories_getStoryViewsList.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
            if (this.useLocalFilters) {
                tLRPC$TL_stories_getStoryViewsList.f1746q = "";
                tLRPC$TL_stories_getStoryViewsList.just_contacts = false;
                tLRPC$TL_stories_getStoryViewsList.reactions_first = true;
            } else {
                String str = this.state.searchQuery;
                tLRPC$TL_stories_getStoryViewsList.f1746q = str;
                if (!TextUtils.isEmpty(str)) {
                    tLRPC$TL_stories_getStoryViewsList.flags |= 2;
                }
                FiltersState filtersState = this.state;
                tLRPC$TL_stories_getStoryViewsList.just_contacts = filtersState.contactsOnly;
                tLRPC$TL_stories_getStoryViewsList.reactions_first = filtersState.sortByReactions;
            }
            int i = 20;
            if (!this.initial && this.views.size() >= 20) {
                i = 100;
            }
            tLRPC$TL_stories_getStoryViewsList.limit = i;
            String str2 = this.offset;
            tLRPC$TL_stories_getStoryViewsList.offset = str2;
            if (str2 == null) {
                tLRPC$TL_stories_getStoryViewsList.offset = "";
            }
            this.loading = true;
            FileLog.m100d("SelfStoryViewsPage load next " + this.storyItem.f1635id + " " + this.initial + " offset=" + tLRPC$TL_stories_getStoryViewsList.offset + " q" + tLRPC$TL_stories_getStoryViewsList.f1746q + " " + tLRPC$TL_stories_getStoryViewsList.just_contacts + " " + tLRPC$TL_stories_getStoryViewsList.reactions_first);
            int sendRequest = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_stories_getStoryViewsList, new RequestDelegate() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda2
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    SelfStoryViewsPage.ViewsModel.this.lambda$loadNext$1(r2, tLObject, tLRPC$TL_error);
                }
            });
            this.reqId = sendRequest;
            final int[] iArr = {sendRequest};
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadNext$1(final int[] iArr, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SelfStoryViewsPage.ViewsModel.this.lambda$loadNext$0(iArr, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadNext$0(int[] iArr, TLObject tLObject) {
            boolean z;
            if (iArr[0] != this.reqId) {
                FileLog.m100d("SelfStoryViewsPage " + this.storyItem.f1635id + " localId != reqId");
                return;
            }
            this.loading = false;
            this.reqId = -1;
            if (tLObject != null) {
                TLRPC$TL_stories_storyViewsList tLRPC$TL_stories_storyViewsList = (TLRPC$TL_stories_storyViewsList) tLObject;
                MessagesController.getInstance(this.currentAccount).getStoriesController().applyStoryViewsBlocked(tLRPC$TL_stories_storyViewsList);
                MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$TL_stories_storyViewsList.users, false);
                if (this.initial) {
                    this.initial = false;
                    for (int i = 0; i < this.views.size(); i++) {
                        this.animateDateForUsers.add(Long.valueOf(this.views.get(i).user_id));
                    }
                    this.views.clear();
                    this.originalViews.clear();
                }
                if (this.useLocalFilters) {
                    this.originalViews.addAll(tLRPC$TL_stories_storyViewsList.views);
                    applyLocalFilter();
                } else {
                    this.views.addAll(tLRPC$TL_stories_storyViewsList.views);
                }
                boolean z2 = true;
                if (!tLRPC$TL_stories_storyViewsList.views.isEmpty()) {
                    this.hasNext = true;
                } else {
                    this.hasNext = false;
                }
                String str = tLRPC$TL_stories_storyViewsList.next_offset;
                this.offset = str;
                if (TextUtils.isEmpty(str)) {
                    this.hasNext = false;
                }
                TLRPC$StoryItem tLRPC$StoryItem = this.storyItem;
                if (tLRPC$StoryItem.views == null) {
                    tLRPC$StoryItem.views = new TLRPC$TL_storyViews();
                }
                int i2 = tLRPC$TL_stories_storyViewsList.count;
                TLRPC$StoryViews tLRPC$StoryViews = this.storyItem.views;
                if (i2 > tLRPC$StoryViews.views_count) {
                    tLRPC$StoryViews.recent_viewers.clear();
                    for (int i3 = 0; i3 < Math.min(3, tLRPC$TL_stories_storyViewsList.users.size()); i3++) {
                        this.storyItem.views.recent_viewers.add(Long.valueOf(tLRPC$TL_stories_storyViewsList.users.get(i3).f1762id));
                    }
                    this.storyItem.views.views_count = tLRPC$TL_stories_storyViewsList.count;
                    z = true;
                } else {
                    z = false;
                }
                TLRPC$StoryViews tLRPC$StoryViews2 = this.storyItem.views;
                int i4 = tLRPC$StoryViews2.reactions_count;
                int i5 = tLRPC$TL_stories_storyViewsList.reactions_count;
                if (i4 != i5) {
                    tLRPC$StoryViews2.reactions_count = i5;
                } else {
                    z2 = z;
                }
                if (z2) {
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
                }
            } else {
                this.hasNext = false;
            }
            FileLog.m100d("SelfStoryViewsPage " + this.storyItem.f1635id + " response  totalItems " + this.views.size() + " has next " + this.hasNext);
            for (int i6 = 0; i6 < this.listeners.size(); i6++) {
                this.listeners.get(i6).onDataRecieved(this);
            }
            if (this.views.size() >= 20 || !this.hasNext) {
                return;
            }
            loadNext();
        }

        private void applyLocalFilter() {
            String str;
            this.views.clear();
            FiltersState filtersState = this.state;
            if (filtersState.contactsOnly || !TextUtils.isEmpty(filtersState.searchQuery)) {
                String str2 = null;
                if (TextUtils.isEmpty(this.state.searchQuery)) {
                    str = null;
                } else {
                    str2 = this.state.searchQuery.trim().toLowerCase();
                    str = LocaleController.getInstance().getTranslitString(str2);
                }
                for (int i = 0; i < this.originalViews.size(); i++) {
                    TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.originalViews.get(i).user_id));
                    boolean z = !this.state.contactsOnly || (user != null && user.contact);
                    if (z && str2 != null) {
                        String lowerCase = ContactsController.formatName(user.first_name, user.last_name).toLowerCase();
                        String publicUsername = UserObject.getPublicUsername(user);
                        if (!lowerCase.contains(str2) && !lowerCase.contains(str) && (publicUsername == null || (!publicUsername.contains(str2) && !publicUsername.contains(str)))) {
                            z = false;
                        }
                    }
                    if (z) {
                        this.views.add(this.originalViews.get(i));
                    }
                }
            } else {
                this.views.addAll(this.originalViews);
            }
            if (this.state.sortByReactions) {
                return;
            }
            Collections.sort(this.views, Comparator.CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$ViewsModel$$ExternalSyntheticLambda1
                @Override // p033j$.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    int lambda$applyLocalFilter$2;
                    lambda$applyLocalFilter$2 = SelfStoryViewsPage.ViewsModel.lambda$applyLocalFilter$2((TLRPC$TL_storyView) obj);
                    return lambda$applyLocalFilter$2;
                }
            }));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int lambda$applyLocalFilter$2(TLRPC$TL_storyView tLRPC$TL_storyView) {
            return -tLRPC$TL_storyView.date;
        }

        public void addListener(SelfStoryViewsPage selfStoryViewsPage) {
            if (this.listeners.contains(selfStoryViewsPage)) {
                return;
            }
            this.listeners.add(selfStoryViewsPage);
        }

        public void removeListener(SelfStoryViewsPage selfStoryViewsPage) {
            this.listeners.remove(selfStoryViewsPage);
        }

        public void release() {
            if (this.reqId >= 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, false);
            }
            this.reqId = -1;
        }

        public void reloadIfNeed(FiltersState filtersState, boolean z, boolean z2) {
            FiltersState filtersState2 = new FiltersState();
            filtersState2.set(filtersState);
            if (!z) {
                filtersState2.contactsOnly = false;
            }
            if (!z2) {
                filtersState2.sortByReactions = true;
            }
            if (this.state.equals(filtersState2)) {
                return;
            }
            this.state.set(filtersState2);
            if (this.useLocalFilters) {
                applyLocalFilter();
                for (int i = 0; i < this.listeners.size(); i++) {
                    this.listeners.get(i).onDataRecieved(this);
                }
                return;
            }
            release();
            this.views.clear();
            this.initial = true;
            this.loading = false;
            this.hasNext = true;
            this.offset = "";
            loadNext();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Stories.SelfStoryViewsPage$HeaderView */
    /* loaded from: classes6.dex */
    public class HeaderView extends FrameLayout {
        TextView allViewersView;
        float animateFromAlpha1;
        float animateFromAlpha2;
        RectF animateFromRect;
        float animationProgress;
        ValueAnimator animator;
        private final LinearLayout buttonContainer;
        TextView contactsViewersView;
        boolean lastSortType;
        RectF rectF;
        ReplaceableIconDrawable replacableDrawable;
        int selected;
        Paint selectedPaint;

        public HeaderView(Context context) {
            super(context);
            this.selectedPaint = new Paint(1);
            this.animateFromRect = new RectF();
            this.rectF = new RectF();
            this.animationProgress = 1.0f;
            Paint paint = this.selectedPaint;
            int i = Theme.key_listSelector;
            paint.setColor(Theme.getColor(i, SelfStoryViewsPage.this.resourcesProvider));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            TextView textView = new TextView(context);
            this.allViewersView = textView;
            textView.setText(LocaleController.getString("AllViewers", C3630R.string.AllViewers));
            TextView textView2 = this.allViewersView;
            int i2 = Theme.key_dialogTextBlack;
            textView2.setTextColor(Theme.getColor(i2, SelfStoryViewsPage.this.resourcesProvider));
            this.allViewersView.setTextSize(1, 14.0f);
            this.allViewersView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.allViewersView.setPadding(AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(4));
            TextView textView3 = new TextView(context);
            this.contactsViewersView = textView3;
            textView3.setText(LocaleController.getString("Contacts", C3630R.string.Contacts));
            this.contactsViewersView.setTextColor(Theme.getColor(i2, SelfStoryViewsPage.this.resourcesProvider));
            this.contactsViewersView.setTextSize(1, 14.0f);
            this.contactsViewersView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.contactsViewersView.setPadding(AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(4), AndroidUtilities.m102dp(12), AndroidUtilities.m102dp(4));
            linearLayout.setPadding(0, AndroidUtilities.m102dp(6), 0, AndroidUtilities.m102dp(6));
            linearLayout.addView(this.allViewersView, LayoutHelper.createLinear(-2, -2, 0, 13, 0, 0, 0));
            linearLayout.addView(this.contactsViewersView, LayoutHelper.createLinear(-2, -2, 0, 0, 0, 0, 0));
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            this.buttonContainer = linearLayout2;
            linearLayout2.setPadding(AndroidUtilities.m102dp(6), 0, AndroidUtilities.m102dp(6), 0);
            linearLayout2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m102dp(26), Theme.getColor(i, SelfStoryViewsPage.this.resourcesProvider)));
            linearLayout2.setOrientation(0);
            ReplaceableIconDrawable replaceableIconDrawable = new ReplaceableIconDrawable(getContext());
            this.replacableDrawable = replaceableIconDrawable;
            replaceableIconDrawable.exactlyBounds = true;
            this.lastSortType = true;
            replaceableIconDrawable.setIcon(C3630R.C3632drawable.menu_views_reactions3, false);
            ImageView imageView = new ImageView(getContext());
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            imageView.setImageDrawable(this.replacableDrawable);
            imageView.setPadding(AndroidUtilities.m102dp(1), AndroidUtilities.m102dp(1), AndroidUtilities.m102dp(1), AndroidUtilities.m102dp(1));
            linearLayout2.addView(imageView, LayoutHelper.createLinear(26, 26));
            ImageView imageView2 = new ImageView(getContext());
            imageView2.setImageResource(C3630R.C3632drawable.arrow_more);
            linearLayout2.addView(imageView2, LayoutHelper.createLinear(16, 26));
            addView(linearLayout, LayoutHelper.createFrame(-2, -2));
            addView(linearLayout2, LayoutHelper.createFrame(-2, -2, 5, 13, 6, 13, 6));
            this.allViewersView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$HeaderView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelfStoryViewsPage.HeaderView.this.lambda$new$0(view);
                }
            });
            this.contactsViewersView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$HeaderView$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelfStoryViewsPage.HeaderView.this.lambda$new$1(view);
                }
            });
            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$HeaderView$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelfStoryViewsPage.HeaderView.this.lambda$new$2(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
            FiltersState filtersState = selfStoryViewsPage.state;
            if (filtersState.contactsOnly) {
                filtersState.contactsOnly = false;
                selfStoryViewsPage.updateViewState(true);
                SelfStoryViewsPage.this.reload();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
            FiltersState filtersState = selfStoryViewsPage.state;
            if (filtersState.contactsOnly) {
                return;
            }
            filtersState.contactsOnly = true;
            selfStoryViewsPage.updateViewState(true);
            SelfStoryViewsPage.this.reload();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.Stories.SelfStoryViewsPage$HeaderView$1 */
        /* loaded from: classes6.dex */
        public class C70471 extends CustomPopupMenu {
            @Override // org.telegram.p042ui.Components.CustomPopupMenu
            protected void onDismissed() {
            }

            C70471(Context context, Theme.ResourcesProvider resourcesProvider, boolean z) {
                super(context, resourcesProvider, z);
            }

            @Override // org.telegram.p042ui.Components.CustomPopupMenu
            protected void onCreate(ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout) {
                actionBarPopupWindowLayout.setBackgroundColor(ColorUtils.blendARGB(-16777216, -1, 0.18f));
                ActionBarMenuSubItem addItem = ActionBarMenuItem.addItem(actionBarPopupWindowLayout, SelfStoryViewsPage.this.state.sortByReactions ? C3630R.C3632drawable.menu_views_reactions2 : C3630R.C3632drawable.menu_views_reactions, LocaleController.getString("SortByReactions", C3630R.string.SortByReactions), false, SelfStoryViewsPage.this.resourcesProvider);
                if (!SelfStoryViewsPage.this.state.sortByReactions) {
                    addItem.setAlpha(0.5f);
                }
                addItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$HeaderView$1$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SelfStoryViewsPage.HeaderView.C70471.this.lambda$onCreate$0(view);
                    }
                });
                ActionBarMenuSubItem addItem2 = ActionBarMenuItem.addItem(actionBarPopupWindowLayout, !SelfStoryViewsPage.this.state.sortByReactions ? C3630R.C3632drawable.menu_views_recent2 : C3630R.C3632drawable.menu_views_recent, LocaleController.getString("SortByTime", C3630R.string.SortByTime), false, SelfStoryViewsPage.this.resourcesProvider);
                if (SelfStoryViewsPage.this.state.sortByReactions) {
                    addItem2.setAlpha(0.5f);
                }
                addItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$HeaderView$1$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SelfStoryViewsPage.HeaderView.C70471.this.lambda$onCreate$1(view);
                    }
                });
                ActionBarPopupWindow.GapView gapView = new ActionBarPopupWindow.GapView(HeaderView.this.getContext(), SelfStoryViewsPage.this.resourcesProvider, Theme.key_actionBarDefaultSubmenuSeparator);
                gapView.setTag(C3630R.C3633id.fit_width_tag, 1);
                actionBarPopupWindowLayout.addView((View) gapView, LayoutHelper.createLinear(-1, 8));
                ActionBarMenuItem.addText(actionBarPopupWindowLayout, LocaleController.getString("StoryViewsSortDescription", C3630R.string.StoryViewsSortDescription), SelfStoryViewsPage.this.resourcesProvider);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onCreate$0(View view) {
                SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
                FiltersState filtersState = selfStoryViewsPage.state;
                if (!filtersState.sortByReactions) {
                    FiltersState filtersState2 = selfStoryViewsPage.sharedFilterState;
                    if (filtersState2 != null) {
                        filtersState.sortByReactions = true;
                        filtersState2.sortByReactions = true;
                    } else {
                        filtersState.sortByReactions = true;
                    }
                    selfStoryViewsPage.updateViewState(true);
                    SelfStoryViewsPage.this.reload();
                    SelfStoryViewsPage selfStoryViewsPage2 = SelfStoryViewsPage.this;
                    selfStoryViewsPage2.onSharedStateChanged.accept(selfStoryViewsPage2);
                }
                if (SelfStoryViewsPage.this.popupMenu != null) {
                    SelfStoryViewsPage.this.popupMenu.dismiss();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onCreate$1(View view) {
                SelfStoryViewsPage selfStoryViewsPage = SelfStoryViewsPage.this;
                FiltersState filtersState = selfStoryViewsPage.state;
                if (filtersState.sortByReactions) {
                    FiltersState filtersState2 = selfStoryViewsPage.sharedFilterState;
                    if (filtersState2 != null) {
                        filtersState.sortByReactions = false;
                        filtersState2.sortByReactions = false;
                    } else {
                        filtersState.sortByReactions = false;
                    }
                    selfStoryViewsPage.updateViewState(true);
                    SelfStoryViewsPage.this.reload();
                    SelfStoryViewsPage selfStoryViewsPage2 = SelfStoryViewsPage.this;
                    selfStoryViewsPage2.onSharedStateChanged.accept(selfStoryViewsPage2);
                }
                if (SelfStoryViewsPage.this.popupMenu != null) {
                    SelfStoryViewsPage.this.popupMenu.dismiss();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) {
            SelfStoryViewsPage.this.popupMenu = new C70471(getContext(), SelfStoryViewsPage.this.resourcesProvider, false);
            CustomPopupMenu customPopupMenu = SelfStoryViewsPage.this.popupMenu;
            LinearLayout linearLayout = this.buttonContainer;
            customPopupMenu.show(linearLayout, 0, (-linearLayout.getMeasuredHeight()) - AndroidUtilities.m102dp(8));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            float f;
            if (SelfStoryViewsPage.this.showContactsFilter) {
                float f2 = 0.5f;
                if (this.selected == 0) {
                    this.allViewersView.getHitRect(AndroidUtilities.rectTmp2);
                    f = 0.5f;
                    f2 = 1.0f;
                } else {
                    this.contactsViewersView.getHitRect(AndroidUtilities.rectTmp2);
                    f = 1.0f;
                }
                this.rectF.set(AndroidUtilities.rectTmp2);
                float f3 = this.animationProgress;
                if (f3 != 1.0f) {
                    f2 = AndroidUtilities.lerp(this.animateFromAlpha1, f2, f3);
                    f = AndroidUtilities.lerp(this.animateFromAlpha2, f, this.animationProgress);
                    RectF rectF = this.animateFromRect;
                    RectF rectF2 = this.rectF;
                    AndroidUtilities.lerp(rectF, rectF2, this.animationProgress, rectF2);
                }
                this.allViewersView.setAlpha(f2);
                this.contactsViewersView.setAlpha(f);
                float height = this.rectF.height() / 2.0f;
                canvas.drawRoundRect(this.rectF, height, height, this.selectedPaint);
            }
            super.dispatchDraw(canvas);
        }

        public void setState(boolean z, boolean z2) {
            if (z == this.selected && z2) {
                return;
            }
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.animator.cancel();
            }
            this.selected = z ? 1 : 0;
            if (!z2) {
                this.animationProgress = 1.0f;
                invalidate();
                return;
            }
            this.animateFromRect.set(this.rectF);
            this.animateFromAlpha1 = this.allViewersView.getAlpha();
            this.animateFromAlpha2 = this.contactsViewersView.getAlpha();
            this.animationProgress = BitmapDescriptorFactory.HUE_RED;
            invalidate();
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            this.animator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage$HeaderView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    SelfStoryViewsPage.HeaderView.this.lambda$setState$3(valueAnimator2);
                }
            });
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.SelfStoryViewsPage.HeaderView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    HeaderView headerView = HeaderView.this;
                    headerView.animator = null;
                    headerView.animationProgress = 1.0f;
                    headerView.invalidate();
                }
            });
            this.animator.setDuration(250L);
            this.animator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.animator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setState$3(ValueAnimator valueAnimator) {
            this.animationProgress = ((Float) this.animator.getAnimatedValue()).floatValue();
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reload() {
        ViewsModel viewsModel = this.currentModel;
        if (viewsModel != null) {
            viewsModel.removeListener(this);
        }
        ViewsModel viewsModel2 = this.defaultModel;
        this.currentModel = viewsModel2;
        if (viewsModel2 == null) {
            return;
        }
        viewsModel2.addListener(this);
        this.currentModel.reloadIfNeed(this.state, this.showContactsFilter, this.showReactionsSort);
        this.listAdapter.updateRows();
        this.layoutManager.scrollToPositionWithOffset(0, (int) (getTopOffset() - this.recyclerListView.getPaddingTop()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViewState(boolean z) {
        this.headerView.setState(this.state.contactsOnly, z);
        HeaderView headerView = this.headerView;
        boolean z2 = headerView.lastSortType;
        boolean z3 = this.state.sortByReactions;
        if (z2 != z3) {
            headerView.lastSortType = z3;
            headerView.replacableDrawable.setIcon(z3 ? C3630R.C3632drawable.menu_views_reactions3 : C3630R.C3632drawable.menu_views_recent3, z);
        }
    }

    /* renamed from: org.telegram.ui.Stories.SelfStoryViewsPage$FiltersState */
    /* loaded from: classes6.dex */
    public static class FiltersState {
        boolean contactsOnly;
        String searchQuery;
        boolean sortByReactions = true;

        public void set(FiltersState filtersState) {
            this.sortByReactions = filtersState.sortByReactions;
            this.contactsOnly = filtersState.contactsOnly;
            this.searchQuery = filtersState.searchQuery;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || FiltersState.class != obj.getClass()) {
                return false;
            }
            FiltersState filtersState = (FiltersState) obj;
            return this.sortByReactions == filtersState.sortByReactions && this.contactsOnly == filtersState.contactsOnly && ((TextUtils.isEmpty(this.searchQuery) && TextUtils.isEmpty(filtersState.searchQuery)) || Objects.equals(this.searchQuery, filtersState.searchQuery));
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(this.sortByReactions), Boolean.valueOf(this.contactsOnly), this.searchQuery);
        }
    }

    /* renamed from: org.telegram.ui.Stories.SelfStoryViewsPage$RecyclerListViewInner */
    /* loaded from: classes6.dex */
    private class RecyclerListViewInner extends RecyclerListView implements StoriesListPlaceProvider.ClippedView {
        public RecyclerListViewInner(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
        }

        @Override // org.telegram.p042ui.Stories.StoriesListPlaceProvider.ClippedView
        public void updateClip(int[] iArr) {
            iArr[0] = AndroidUtilities.m102dp(SelfStoryViewsPage.this.TOP_PADDING);
            iArr[1] = getMeasuredHeight();
        }
    }
}
