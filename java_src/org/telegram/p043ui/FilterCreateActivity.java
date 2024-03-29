package org.telegram.p043ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.text.style.ReplacementSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.enums.FilterActivityType;
import com.iMe.fork.p023ui.dialog.SelectFabsBottomSheet;
import com.iMe.fork.p023ui.dialog.SelectIconBottomSheet;
import com.iMe.fork.p023ui.view.FloatingActionButtonsCell;
import com.iMe.fork.p023ui.view.PollEditTextCellWrapper;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.p030ui.base.mvp.JavaMvpFragment;
import com.iMe.storage.data.repository.topics.Topic;
import com.iMe.storage.domain.model.filters.FilterIcon;
import com.iMe.storage.domain.model.filters.FilterSettingsModel;
import com.iMe.storage.domain.model.topics.TopicModel;
import com.iMe.utils.extentions.model.filter.FilterIconExtKt;
import com.iMe.utils.extentions.model.topic.TopicExtKt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Set;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.PollEditTextCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.UserCell;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.FolderBottomSheet;
import org.telegram.p043ui.Components.HintView;
import org.telegram.p043ui.Components.ItemOptions;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.QRCodeBottomSheet;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.FilterCreateActivity;
import org.telegram.p043ui.UsersSelectActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$TL_dialogFilter;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputPeerChannel;
import org.telegram.tgnet.TLRPC$TL_inputPeerChat;
import org.telegram.tgnet.TLRPC$TL_inputPeerUser;
import org.telegram.tgnet.TLRPC$TL_messages_updateDialogFilter;
import org.telegram.tgnet.TLRPC$TL_messages_updateDialogFiltersOrder;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.p042tl.TL_chatlists$TL_chatlists_deleteExportedInvite;
import org.telegram.tgnet.p042tl.TL_chatlists$TL_chatlists_exportChatlistInvite;
import org.telegram.tgnet.p042tl.TL_chatlists$TL_chatlists_exportedChatlistInvite;
import org.telegram.tgnet.p042tl.TL_chatlists$TL_chatlists_exportedInvites;
import org.telegram.tgnet.p042tl.TL_chatlists$TL_chatlists_getExportedInvites;
import org.telegram.tgnet.p042tl.TL_chatlists$TL_exportedChatlistInvite;
import org.telegram.tgnet.p042tl.TL_chatlists$TL_inputChatlistDialogFilter;
/* renamed from: org.telegram.ui.FilterCreateActivity */
/* loaded from: classes5.dex */
public class FilterCreateActivity extends JavaMvpFragment {
    private ListAdapter adapter;
    private CreateLinkCell createLinkCell;
    private boolean creatingNew;
    private boolean doNotCloseWhenSave;
    private Callbacks$Callback2<MessagesController.DialogFilter, TopicModel> doneCallback;
    private ActionBarMenuItem doneItem;
    private boolean excludeExpanded;
    private MessagesController.DialogFilter filter;
    private boolean hasUserChanged;
    private boolean includeExpanded;
    private ArrayList<TL_chatlists$TL_exportedChatlistInvite> invites;
    private boolean isAutoTopic;
    private ArrayList<ItemInner> items;
    private RecyclerListView listView;
    private boolean loadingInvites;
    private boolean nameChangedManually;
    private int nameRow;
    private ArrayList<Long> newAlwaysShow;
    private int newFilterFlags;
    private String newFilterName;
    private FilterSettingsModel newFilterSettings;
    private ArrayList<Long> newNeverShow;
    private LongSparseIntArray newPinned;
    private ArrayList<ItemInner> oldItems;
    private PollEditTextCellWrapper pollEditTextCellWrapper;
    private int requestingInvitesReqId;
    private HintView saveHintView;
    float shiftDp;
    private Runnable showBulletinOnResume;
    private boolean showedUpdateBulletin;
    private TopicModel topic;
    private Topic topicNewIcon;
    private final FilterActivityType type;

    public static /* synthetic */ void access$2500(FilterCreateActivity filterCreateActivity) {
        filterCreateActivity.showIconSelectAlert();
    }

    public FilterCreateActivity() {
        this(null, null, null, null, FilterActivityType.FILTER);
    }

    public FilterCreateActivity(MessagesController.DialogFilter dialogFilter) {
        this(dialogFilter, null, null, null, FilterActivityType.FILTER);
    }

    public FilterCreateActivity(MessagesController.DialogFilter dialogFilter, ArrayList<Long> arrayList) {
        this(dialogFilter, arrayList, null, null, FilterActivityType.FILTER);
    }

    public void setDoneCallback(Callbacks$Callback2<MessagesController.DialogFilter, TopicModel> callbacks$Callback2) {
        this.doneCallback = callbacks$Callback2;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        dismissCurrentDialog();
    }

    public void showIconSelectAlert() {
        Activity parentActivity = getParentActivity();
        FilterActivityType filterActivityType = this.type;
        FilterSettingsModel filterSettingsModel = this.newFilterSettings;
        showDialog(new SelectIconBottomSheet(parentActivity, filterActivityType, filterSettingsModel != null ? filterSettingsModel.getIcon() : null, this.topicNewIcon, new Callbacks$Callback2() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda12
            @Override // com.iMe.fork.utils.Callbacks$Callback2
            public final void invoke(Object obj, Object obj2) {
                FilterCreateActivity.this.lambda$showIconSelectAlert$0((FilterIcon) obj, (Topic) obj2);
            }
        }));
    }

    public /* synthetic */ void lambda$showIconSelectAlert$0(FilterIcon filterIcon, Topic topic) {
        FilterSettingsModel filterSettingsModel = this.newFilterSettings;
        if (filterSettingsModel != null) {
            filterSettingsModel.setIcon(filterIcon);
            this.pollEditTextCellWrapper.setIcon(filterIcon != null ? FilterIconExtKt.iconInfo(filterIcon).getOutlinedIcon() : -1);
        } else {
            this.topicNewIcon = topic;
            this.pollEditTextCellWrapper.setIcon(topic != null ? TopicExtKt.info(topic).getIconResId() : -1);
        }
        checkDoneButton(false);
    }

    private boolean canCreateLink() {
        return !(TextUtils.isEmpty(this.newFilterName) && TextUtils.isEmpty(this.filter.name)) && (this.newFilterFlags & (~(MessagesController.DIALOG_FILTER_FLAG_CHATLIST | MessagesController.DIALOG_FILTER_FLAG_CHATLIST_ADMIN))) == 0 && this.newNeverShow.isEmpty() && !this.newAlwaysShow.isEmpty();
    }

    /* renamed from: org.telegram.ui.FilterCreateActivity$HintInnerCell */
    /* loaded from: classes5.dex */
    public class HintInnerCell extends FrameLayout {
        private RLottieImageView imageView;

        public HintInnerCell(FilterCreateActivity filterCreateActivity, Context context) {
            super(context);
            this.imageView = new RLottieImageView(context);
            FilterActivityType filterActivityType = filterCreateActivity.type;
            FilterActivityType filterActivityType2 = FilterActivityType.TOPIC;
            if (filterActivityType == filterActivityType2) {
                this.imageView.setAnimation(C3632R.raw.fork_topic_new, 125, 125);
            } else {
                this.imageView.setAnimation(C3632R.raw.filter_new, 100, 100);
            }
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.playAnimation();
            if (filterCreateActivity.type == filterActivityType2) {
                addView(this.imageView, LayoutHelper.createFrame(125, 125, 17, 3, 0, 0, 5));
            } else {
                addView(this.imageView, LayoutHelper.createFrame(100, 100, 17, 0, 0, 0, 0));
            }
            this.imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$HintInnerCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FilterCreateActivity.HintInnerCell.this.lambda$new$0(view);
                }
            });
        }

        public /* synthetic */ void lambda$new$0(View view) {
            if (this.imageView.isPlaying()) {
                return;
            }
            this.imageView.setProgress(BitmapDescriptorFactory.HUE_RED);
            this.imageView.playAnimation();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(156), 1073741824));
        }
    }

    public FilterCreateActivity(TopicModel topicModel, Set<Long> set, FilterActivityType filterActivityType) {
        this(null, null, topicModel, set, filterActivityType);
    }

    public FilterCreateActivity(MessagesController.DialogFilter dialogFilter, ArrayList<Long> arrayList, TopicModel topicModel, Set<Long> set, FilterActivityType filterActivityType) {
        TopicModel topicModel2;
        this.nameRow = -1;
        this.invites = new ArrayList<>();
        this.oldItems = new ArrayList<>();
        this.items = new ArrayList<>();
        this.shiftDp = -5.0f;
        this.type = filterActivityType;
        if (filterActivityType == FilterActivityType.TOPIC) {
            if (topicModel == null) {
                HashSet hashSet = new HashSet();
                HashSet hashSet2 = new HashSet();
                HashSet hashSet3 = new HashSet();
                if (set != null) {
                    hashSet.addAll(set);
                    for (Long l : set) {
                        long longValue = l.longValue();
                        if (getMessagesController().isArchivedDialog(longValue)) {
                            hashSet3.add(Long.valueOf(longValue));
                        } else {
                            hashSet2.add(Long.valueOf(longValue));
                        }
                    }
                }
                topicModel2 = new TopicModel(getTopicsController().calcNextId(), null, null, getTopicsController().calcNextOrder(), false, new HashSet(), hashSet, hashSet2, hashSet3);
                this.creatingNew = true;
            } else {
                this.isAutoTopic = topicModel.isAutoTopic();
                topicModel2 = topicModel;
            }
            this.topicNewIcon = topicModel2.getIcon();
            MessagesController.DialogFilter dialogFilter2 = new MessagesController.DialogFilter();
            this.filter = dialogFilter2;
            dialogFilter2.name = topicModel2.getName();
            this.filter.alwaysShow.addAll(topicModel2.getFilterDialogs());
            this.filter.neverShow.addAll(topicModel2.getFilterArchivedDialogs());
            this.newFilterName = this.filter.name;
            this.newAlwaysShow = new ArrayList<>(this.filter.alwaysShow);
            this.newNeverShow = new ArrayList<>(this.filter.neverShow);
            this.newPinned = new LongSparseIntArray();
            this.topic = topicModel2;
            return;
        }
        this.filter = dialogFilter;
        if (dialogFilter == null) {
            MessagesController.DialogFilter dialogFilter3 = new MessagesController.DialogFilter();
            this.filter = dialogFilter3;
            dialogFilter3.f1538id = 2;
            while (getMessagesController().dialogFiltersById.get(this.filter.f1538id) != null) {
                this.filter.f1538id++;
            }
            this.filter.name = "";
            this.creatingNew = true;
        }
        this.newFilterSettings = getFiltersController().getSettings(this.filter.f1538id).getCopy();
        MessagesController.DialogFilter dialogFilter4 = this.filter;
        this.newFilterName = dialogFilter4.name;
        this.newFilterFlags = dialogFilter4.flags;
        ArrayList<Long> arrayList2 = new ArrayList<>(this.filter.alwaysShow);
        this.newAlwaysShow = arrayList2;
        if (arrayList != null) {
            arrayList2.addAll(arrayList);
        }
        this.newNeverShow = new ArrayList<>(this.filter.neverShow);
        this.newPinned = this.filter.pinnedDialogs.clone();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        updateRows();
        return super.onFragmentCreate();
    }

    public void loadInvites() {
        MessagesController.DialogFilter dialogFilter;
        if (this.loadingInvites || (dialogFilter = this.filter) == null || !dialogFilter.isChatlist()) {
            return;
        }
        this.loadingInvites = true;
        TL_chatlists$TL_chatlists_getExportedInvites tL_chatlists$TL_chatlists_getExportedInvites = new TL_chatlists$TL_chatlists_getExportedInvites();
        TL_chatlists$TL_inputChatlistDialogFilter tL_chatlists$TL_inputChatlistDialogFilter = new TL_chatlists$TL_inputChatlistDialogFilter();
        tL_chatlists$TL_chatlists_getExportedInvites.chatlist = tL_chatlists$TL_inputChatlistDialogFilter;
        tL_chatlists$TL_inputChatlistDialogFilter.filter_id = this.filter.f1538id;
        this.requestingInvitesReqId = getConnectionsManager().sendRequest(tL_chatlists$TL_chatlists_getExportedInvites, new RequestDelegate() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda28
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                FilterCreateActivity.this.lambda$loadInvites$2(tLObject, tLRPC$TL_error);
            }
        });
    }

    public /* synthetic */ void lambda$loadInvites$2(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                FilterCreateActivity.this.lambda$loadInvites$1(tLObject);
            }
        });
    }

    public /* synthetic */ void lambda$loadInvites$1(TLObject tLObject) {
        this.loadingInvites = false;
        if (tLObject instanceof TL_chatlists$TL_chatlists_exportedInvites) {
            TL_chatlists$TL_chatlists_exportedInvites tL_chatlists$TL_chatlists_exportedInvites = (TL_chatlists$TL_chatlists_exportedInvites) tLObject;
            getMessagesController().putChats(tL_chatlists$TL_chatlists_exportedInvites.chats, false);
            getMessagesController().putUsers(tL_chatlists$TL_chatlists_exportedInvites.users, false);
            this.invites.clear();
            this.invites.addAll(tL_chatlists$TL_chatlists_exportedInvites.invites);
            updateRows();
        }
        this.requestingInvitesReqId = 0;
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        if (this.requestingInvitesReqId != 0) {
            getConnectionsManager().cancelRequest(this.requestingInvitesReqId, true);
        }
    }

    private void updateRows() {
        updateRows(true);
    }

    private void updateRows(boolean z) {
        String string;
        int i;
        String str;
        this.oldItems.clear();
        this.oldItems.addAll(this.items);
        this.items.clear();
        this.items.add(new ItemInner(5, false));
        this.nameRow = this.items.size();
        if (!this.isAutoTopic) {
            this.items.add(ItemInner.asEdit());
        }
        if (!this.isAutoTopic) {
            this.items.add(ItemInner.asShadow(null));
        }
        if (this.type == FilterActivityType.FILTER) {
            this.items.add(new ItemInner(IdFabric$ViewTypes.FLOATING_ACTION_BUTTON, false).whenClicked(new View.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FilterCreateActivity.this.lambda$updateRows$4(view);
                }
            }));
            this.items.add(ItemInner.asShadow(LocaleController.getInternalString(C3632R.string.create_folder_change_fab_section_description)));
        }
        this.items.add(ItemInner.asHeader(this.type == FilterActivityType.TOPIC ? LocaleController.getInternalString(C3632R.string.topic_main_chats) : LocaleController.getString("FilterInclude", C3632R.string.FilterInclude)));
        this.items.add(ItemInner.asButton(C3632R.C3634drawable.msg2_chats_add, LocaleController.getString("FilterAddChats", C3632R.string.FilterAddChats), false).whenClicked(new View.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilterCreateActivity.this.lambda$updateRows$5(view);
            }
        }));
        if ((this.newFilterFlags & MessagesController.DIALOG_FILTER_FLAG_CONTACTS) != 0) {
            this.items.add(ItemInner.asChat(true, LocaleController.getString("FilterContacts", C3632R.string.FilterContacts), "contacts", MessagesController.DIALOG_FILTER_FLAG_CONTACTS));
        }
        if ((this.newFilterFlags & MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS) != 0) {
            this.items.add(ItemInner.asChat(true, LocaleController.getString("FilterNonContacts", C3632R.string.FilterNonContacts), "non_contacts", MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS));
        }
        if ((this.newFilterFlags & MessagesController.DIALOG_FILTER_FLAG_GROUPS) != 0) {
            this.items.add(ItemInner.asChat(true, LocaleController.getString("FilterGroups", C3632R.string.FilterGroups), "groups", MessagesController.DIALOG_FILTER_FLAG_GROUPS));
        }
        if ((this.newFilterFlags & MessagesController.DIALOG_FILTER_FLAG_CHANNELS) != 0) {
            this.items.add(ItemInner.asChat(true, LocaleController.getString("FilterChannels", C3632R.string.FilterChannels), "channels", MessagesController.DIALOG_FILTER_FLAG_CHANNELS));
        }
        if ((this.newFilterFlags & MessagesController.DIALOG_FILTER_FLAG_BOTS) != 0) {
            this.items.add(ItemInner.asChat(true, LocaleController.getString("FilterBots", C3632R.string.FilterBots), "bots", MessagesController.DIALOG_FILTER_FLAG_BOTS));
        }
        if (!this.newAlwaysShow.isEmpty()) {
            int size = (this.includeExpanded || this.newAlwaysShow.size() < 8) ? this.newAlwaysShow.size() : Math.min(5, this.newAlwaysShow.size());
            for (int i2 = 0; i2 < size; i2++) {
                this.items.add(ItemInner.asChat(true, this.newAlwaysShow.get(i2).longValue()));
            }
            if (size != this.newAlwaysShow.size()) {
                this.items.add(ItemInner.asButton(C3632R.C3634drawable.arrow_more, LocaleController.formatPluralString("FilterShowMoreChats", this.newAlwaysShow.size() - 5, new Object[0]), false).whenClicked(new View.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        FilterCreateActivity.this.lambda$updateRows$6(view);
                    }
                }));
            }
        }
        ArrayList<ItemInner> arrayList = this.items;
        FilterActivityType filterActivityType = this.type;
        FilterActivityType filterActivityType2 = FilterActivityType.TOPIC;
        arrayList.add(ItemInner.asShadow(filterActivityType == filterActivityType2 ? LocaleController.getInternalString(C3632R.string.topic_add_main_chats_hint) : LocaleController.getString("FilterIncludeInfo", C3632R.string.FilterIncludeInfo)));
        if (!this.filter.isChatlist()) {
            ArrayList<ItemInner> arrayList2 = this.items;
            if (this.type == filterActivityType2) {
                i = C3632R.string.ArchivedChats;
                str = "ArchivedChats";
            } else {
                i = C3632R.string.FilterExclude;
                str = "FilterExclude";
            }
            arrayList2.add(ItemInner.asHeader(LocaleController.getString(str, i)));
            this.items.add(ItemInner.asButton(C3632R.C3634drawable.msg2_chats_add, this.type == filterActivityType2 ? LocaleController.getString("FilterAddChats", C3632R.string.FilterAddChats) : LocaleController.getString("FilterRemoveChats", C3632R.string.FilterRemoveChats), false).whenClicked(new View.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FilterCreateActivity.this.lambda$updateRows$7(view);
                }
            }));
            if ((this.newFilterFlags & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED) != 0) {
                this.items.add(ItemInner.asChat(false, LocaleController.getString("FilterMuted", C3632R.string.FilterMuted), "muted", MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED));
            }
            if ((this.newFilterFlags & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ) != 0) {
                this.items.add(ItemInner.asChat(false, LocaleController.getString("FilterRead", C3632R.string.FilterRead), "read", MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ));
            }
            if ((this.newFilterFlags & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED) != 0) {
                this.items.add(ItemInner.asChat(false, LocaleController.getString("FilterArchived", C3632R.string.FilterArchived), "archived", MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED));
            }
            if (!this.newNeverShow.isEmpty()) {
                int size2 = (this.excludeExpanded || this.newNeverShow.size() < 8) ? this.newNeverShow.size() : Math.min(5, this.newNeverShow.size());
                for (int i3 = 0; i3 < size2; i3++) {
                    this.items.add(ItemInner.asChat(false, this.newNeverShow.get(i3).longValue()));
                }
                if (size2 != this.newNeverShow.size()) {
                    this.items.add(ItemInner.asButton(C3632R.C3634drawable.arrow_more, LocaleController.formatPluralString("FilterShowMoreChats", this.newNeverShow.size() - 5, new Object[0]), false).whenClicked(new View.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda8
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            FilterCreateActivity.this.lambda$updateRows$8(view);
                        }
                    }));
                }
            }
            this.items.add(ItemInner.asShadow(this.type == FilterActivityType.TOPIC ? LocaleController.getInternalString(C3632R.string.topic_add_archived_chats_hint) : LocaleController.getString("FilterExcludeInfo", C3632R.string.FilterExcludeInfo)));
        }
        if (this.type == FilterActivityType.FILTER) {
            if (this.invites.isEmpty()) {
                this.items.add(ItemInner.asHeader(LocaleController.getString("FilterShareFolder", C3632R.string.FilterShareFolder), true));
                this.items.add(ItemInner.asButton(C3632R.C3634drawable.msg2_link2, LocaleController.getString("FilterShareFolderButton", C3632R.string.FilterShareFolderButton), false));
                this.items.add(ItemInner.asShadow(LocaleController.getString("FilterInviteLinksHintNew", C3632R.string.FilterInviteLinksHintNew)));
            } else {
                this.items.add(ItemInner.asHeader(LocaleController.getString("FilterInviteLinks", C3632R.string.FilterInviteLinks), true));
                this.items.add(ItemInner.asCreateLink());
                for (int i4 = 0; i4 < this.invites.size(); i4++) {
                    this.items.add(ItemInner.asLink(this.invites.get(i4)));
                }
                ArrayList<ItemInner> arrayList3 = this.items;
                MessagesController.DialogFilter dialogFilter = this.filter;
                if (dialogFilter != null && dialogFilter.isChatlist()) {
                    string = LocaleController.getString("FilterInviteLinksHintNew", C3632R.string.FilterInviteLinksHintNew);
                } else {
                    string = LocaleController.getString("FilterInviteLinksHint", C3632R.string.FilterInviteLinksHint);
                }
                arrayList3.add(ItemInner.asShadow(string));
            }
        }
        if (!this.creatingNew) {
            this.items.add(ItemInner.asButton(0, this.type == FilterActivityType.TOPIC ? LocaleController.getInternalString(C3632R.string.topics_remove) : LocaleController.getString("FilterDelete", C3632R.string.FilterDelete), true).whenClicked(new View.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FilterCreateActivity.this.deleteFolder(view);
                }
            }));
            this.items.add(ItemInner.asShadow(null));
        }
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            if (z) {
                listAdapter.setItems(this.oldItems, this.items);
            } else {
                listAdapter.notifyDataSetChanged();
            }
        }
    }

    public /* synthetic */ void lambda$updateRows$4(View view) {
        showDialog(new SelectFabsBottomSheet(getParentActivity(), new HashSet(this.newFilterSettings.getFabs()), new Callbacks$Callback1() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda11
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                FilterCreateActivity.this.lambda$updateRows$3((Set) obj);
            }
        }));
    }

    public /* synthetic */ void lambda$updateRows$3(Set set) {
        this.newFilterSettings.setFabs(set);
        updateRows();
        checkDoneButton(false);
    }

    public /* synthetic */ void lambda$updateRows$5(View view) {
        selectChatsFor(true);
    }

    public /* synthetic */ void lambda$updateRows$6(View view) {
        this.includeExpanded = true;
        updateRows();
    }

    public /* synthetic */ void lambda$updateRows$7(View view) {
        selectChatsFor(false);
    }

    public /* synthetic */ void lambda$updateRows$8(View view) {
        this.excludeExpanded = true;
        updateRows();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(Context context) {
        super.createView(context);
        this.actionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        ActionBarMenu createMenu = this.actionBar.createMenu();
        if (this.creatingNew) {
            if (this.type == FilterActivityType.TOPIC) {
                this.actionBar.setTitle(LocaleController.getInternalString(C3632R.string.topic_new));
            } else {
                this.actionBar.setTitle(LocaleController.getString("FilterNew", C3632R.string.FilterNew));
            }
        } else {
            TextPaint textPaint = new TextPaint(1);
            textPaint.setTextSize(AndroidUtilities.m107dp(20));
            if (this.type == FilterActivityType.TOPIC) {
                if (this.topic.isUserTopic()) {
                    this.actionBar.setTitle(Emoji.replaceEmoji((CharSequence) this.topic.getName(), textPaint.getFontMetricsInt(), AndroidUtilities.m107dp(20), false));
                } else if (this.topic.getIcon() != null) {
                    this.actionBar.setTitle(LocaleController.getInternalString(TopicExtKt.info(this.topic.getIcon()).getTitleResId()));
                }
            } else {
                this.actionBar.setTitle(Emoji.replaceEmoji((CharSequence) this.filter.name, textPaint.getFontMetricsInt(), AndroidUtilities.m107dp(20), false));
            }
        }
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.FilterCreateActivity.1
            {
                FilterCreateActivity.this = this;
            }

            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    if (FilterCreateActivity.this.checkDiscard()) {
                        FilterCreateActivity.this.finishFragment();
                    }
                } else if (i == 1) {
                    FilterCreateActivity.this.processDone();
                }
            }
        });
        this.doneItem = createMenu.addItem(1, LocaleController.getString("Save", C3632R.string.Save).toUpperCase());
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        FrameLayout frameLayout2 = frameLayout;
        frameLayout2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.FilterCreateActivity.2
            @Override // android.view.ViewGroup, android.view.View
            public boolean requestFocus(int i, Rect rect) {
                return false;
            }

            {
                FilterCreateActivity.this = this;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView
            public Integer getSelectorColor(int i) {
                ItemInner itemInner = (i < 0 || i >= FilterCreateActivity.this.items.size()) ? null : (ItemInner) FilterCreateActivity.this.items.get(i);
                if (itemInner != null && itemInner.isRed) {
                    return Integer.valueOf(Theme.multAlpha(getThemedColor(Theme.key_text_RedRegular), 0.12f));
                }
                return Integer.valueOf(getThemedColor(Theme.key_listSelector));
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        this.listView.setVerticalScrollBarEnabled(false);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1));
        RecyclerListView recyclerListView2 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.adapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda32
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                FilterCreateActivity.this.lambda$createView$10(view, i, f, f2);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda33
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i) {
                boolean lambda$createView$11;
                lambda$createView$11 = FilterCreateActivity.this.lambda$createView$11(view, i);
                return lambda$createView$11;
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.listView.setItemAnimator(defaultItemAnimator);
        checkDoneButton(false);
        loadInvites();
        return this.fragmentView;
    }

    public /* synthetic */ void lambda$createView$10(View view, int i, float f, float f2) {
        final ItemInner itemInner;
        if (getParentActivity() == null || (itemInner = this.items.get(i)) == null) {
            return;
        }
        if (itemInner.onClickListener == null) {
            int i2 = itemInner.viewType;
            if (i2 == 1) {
                UserCell userCell = (UserCell) view;
                showRemoveAlert(itemInner, userCell.getName(), userCell.getCurrentObject(), itemInner.include);
                return;
            } else if (i2 == 7) {
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda20
                    @Override // java.lang.Runnable
                    public final void run() {
                        FilterCreateActivity.this.lambda$createView$9(itemInner);
                    }
                };
                if (this.doneItem.isEnabled()) {
                    save(false, runnable);
                    return;
                } else {
                    runnable.run();
                    return;
                }
            } else if (i2 == 8 || (i2 == 4 && itemInner.iconResId == C3632R.C3634drawable.msg2_link2)) {
                onClickCreateLink(view);
                return;
            } else if (itemInner.viewType == 2 && this.pollEditTextCellWrapper.checkEditTextTouch(f)) {
                PollEditTextCell pollEditTextCell = this.pollEditTextCellWrapper.getPollEditTextCell();
                pollEditTextCell.getTextView().requestFocus();
                AndroidUtilities.showKeyboard(pollEditTextCell.getTextView());
                return;
            } else {
                return;
            }
        }
        itemInner.onClickListener.onClick(view);
    }

    public /* synthetic */ void lambda$createView$9(ItemInner itemInner) {
        FilterChatlistActivity filterChatlistActivity = new FilterChatlistActivity(this.filter, itemInner.link);
        filterChatlistActivity.setOnEdit(new FilterCreateActivity$$ExternalSyntheticLambda25(this));
        filterChatlistActivity.setOnDelete(new FilterCreateActivity$$ExternalSyntheticLambda26(this));
        presentFragment(filterChatlistActivity);
    }

    public /* synthetic */ boolean lambda$createView$11(View view, int i) {
        ItemInner itemInner = this.items.get(i);
        if (itemInner != null && (view instanceof UserCell)) {
            UserCell userCell = (UserCell) view;
            showRemoveAlert(itemInner, userCell.getName(), userCell.getCurrentObject(), itemInner.include);
            return true;
        }
        return false;
    }

    private void onClickCreateLink(View view) {
        if (this.creatingNew && this.doneItem.getAlpha() > BitmapDescriptorFactory.HUE_RED) {
            float f = -this.shiftDp;
            this.shiftDp = f;
            AndroidUtilities.shakeViewSpring(view, f);
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            this.doNotCloseWhenSave = true;
            showSaveHint();
        } else if (!canCreateLink()) {
            float f2 = -this.shiftDp;
            this.shiftDp = f2;
            AndroidUtilities.shakeViewSpring(view, f2);
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            if (TextUtils.isEmpty(this.newFilterName) && TextUtils.isEmpty(this.filter.name)) {
                BulletinFactory.m65of(this).createErrorBulletin(LocaleController.getString("FilterInviteErrorEmptyName", C3632R.string.FilterInviteErrorEmptyName)).show();
            } else if ((this.newFilterFlags & (~(MessagesController.DIALOG_FILTER_FLAG_CHATLIST | MessagesController.DIALOG_FILTER_FLAG_CHATLIST_ADMIN))) != 0) {
                if (!this.newNeverShow.isEmpty()) {
                    BulletinFactory.m65of(this).createErrorBulletin(LocaleController.getString("FilterInviteErrorTypesExcluded", C3632R.string.FilterInviteErrorTypesExcluded)).show();
                } else {
                    BulletinFactory.m65of(this).createErrorBulletin(LocaleController.getString("FilterInviteErrorTypes", C3632R.string.FilterInviteErrorTypes)).show();
                }
            } else if (this.newAlwaysShow.isEmpty()) {
                BulletinFactory.m65of(this).createErrorBulletin(LocaleController.getString("FilterInviteErrorEmpty", C3632R.string.FilterInviteErrorEmpty)).show();
            } else {
                BulletinFactory.m65of(this).createErrorBulletin(LocaleController.getString("FilterInviteErrorExcluded", C3632R.string.FilterInviteErrorExcluded)).show();
            }
        } else {
            save(false, new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    FilterCreateActivity.this.lambda$onClickCreateLink$15();
                }
            });
        }
    }

    public /* synthetic */ void lambda$onClickCreateLink$15() {
        getMessagesController().updateFilterDialogs(this.filter);
        ArrayList<TLRPC$InputPeer> arrayList = new ArrayList<>();
        for (int i = 0; i < this.filter.alwaysShow.size(); i++) {
            long longValue = this.filter.alwaysShow.get(i).longValue();
            if (longValue < 0 && canAddToFolder(getMessagesController().getChat(Long.valueOf(-longValue)))) {
                arrayList.add(getMessagesController().getInputPeer(longValue));
            }
        }
        if (arrayList.size() > (getUserConfig().isPremium() ? getMessagesController().dialogFiltersChatsLimitPremium : getMessagesController().dialogFiltersChatsLimitDefault)) {
            showDialog(new LimitReachedBottomSheet(this, getContext(), 4, this.currentAccount, null));
        } else if (!arrayList.isEmpty()) {
            TL_chatlists$TL_chatlists_exportChatlistInvite tL_chatlists$TL_chatlists_exportChatlistInvite = new TL_chatlists$TL_chatlists_exportChatlistInvite();
            TL_chatlists$TL_inputChatlistDialogFilter tL_chatlists$TL_inputChatlistDialogFilter = new TL_chatlists$TL_inputChatlistDialogFilter();
            tL_chatlists$TL_chatlists_exportChatlistInvite.chatlist = tL_chatlists$TL_inputChatlistDialogFilter;
            tL_chatlists$TL_inputChatlistDialogFilter.filter_id = this.filter.f1538id;
            tL_chatlists$TL_chatlists_exportChatlistInvite.peers = arrayList;
            tL_chatlists$TL_chatlists_exportChatlistInvite.title = "";
            getConnectionsManager().sendRequest(tL_chatlists$TL_chatlists_exportChatlistInvite, new RequestDelegate() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda27
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    FilterCreateActivity.this.lambda$onClickCreateLink$14(tLObject, tLRPC$TL_error);
                }
            });
        } else {
            FilterChatlistActivity filterChatlistActivity = new FilterChatlistActivity(this.filter, null);
            filterChatlistActivity.setOnEdit(new FilterCreateActivity$$ExternalSyntheticLambda25(this));
            filterChatlistActivity.setOnDelete(new FilterCreateActivity$$ExternalSyntheticLambda26(this));
            presentFragment(filterChatlistActivity);
        }
    }

    public /* synthetic */ void lambda$onClickCreateLink$14(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                FilterCreateActivity.this.lambda$onClickCreateLink$13(tLRPC$TL_error, tLObject);
            }
        });
    }

    public /* synthetic */ void lambda$onClickCreateLink$13(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject) {
        if (processErrors(tLRPC$TL_error, this, BulletinFactory.m65of(this)) && (tLObject instanceof TL_chatlists$TL_chatlists_exportedChatlistInvite)) {
            hideNew(0);
            getMessagesController().loadRemoteFilters(true);
            final TL_chatlists$TL_chatlists_exportedChatlistInvite tL_chatlists$TL_chatlists_exportedChatlistInvite = (TL_chatlists$TL_chatlists_exportedChatlistInvite) tLObject;
            FilterChatlistActivity filterChatlistActivity = new FilterChatlistActivity(this.filter, tL_chatlists$TL_chatlists_exportedChatlistInvite.invite);
            filterChatlistActivity.setOnEdit(new FilterCreateActivity$$ExternalSyntheticLambda25(this));
            filterChatlistActivity.setOnDelete(new FilterCreateActivity$$ExternalSyntheticLambda26(this));
            presentFragment(filterChatlistActivity);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    FilterCreateActivity.this.lambda$onClickCreateLink$12(tL_chatlists$TL_chatlists_exportedChatlistInvite);
                }
            }, 200L);
        }
    }

    public /* synthetic */ void lambda$onClickCreateLink$12(TL_chatlists$TL_chatlists_exportedChatlistInvite tL_chatlists$TL_chatlists_exportedChatlistInvite) {
        onEdit(tL_chatlists$TL_chatlists_exportedChatlistInvite.invite);
    }

    private void showSaveHint() {
        HintView hintView = this.saveHintView;
        if (hintView == null || hintView.getVisibility() != 0) {
            HintView hintView2 = new HintView(this, getContext(), 6, true) { // from class: org.telegram.ui.FilterCreateActivity.3
                @Override // android.view.View
                public void setVisibility(int i) {
                    super.setVisibility(i);
                    if (i != 0) {
                        try {
                            ((ViewGroup) getParent()).removeView(this);
                        } catch (Exception unused) {
                        }
                    }
                }
            };
            this.saveHintView = hintView2;
            hintView2.textView.setMaxWidth(AndroidUtilities.displaySize.x);
            this.saveHintView.setExtraTranslationY(AndroidUtilities.m107dp(-16));
            this.saveHintView.setText(LocaleController.getString("FilterFinishCreating", C3632R.string.FilterFinishCreating));
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
            marginLayoutParams.rightMargin = AndroidUtilities.m107dp(3);
            getParentLayout().getOverlayContainerView().addView(this.saveHintView, marginLayoutParams);
            this.saveHintView.showForView(this.doneItem, true);
        }
    }

    public static boolean canAddToFolder(TLRPC$Chat tLRPC$Chat) {
        return ChatObject.canUserDoAdminAction(tLRPC$Chat, 3) || (ChatObject.isPublic(tLRPC$Chat) && !tLRPC$Chat.join_request);
    }

    public void onDelete(TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite) {
        if (tL_chatlists$TL_exportedChatlistInvite == null) {
            return;
        }
        int i = -1;
        int i2 = 0;
        while (true) {
            if (i2 >= this.invites.size()) {
                break;
            } else if (TextUtils.equals(this.invites.get(i2).url, tL_chatlists$TL_exportedChatlistInvite.url)) {
                i = i2;
                break;
            } else {
                i2++;
            }
        }
        if (i >= 0) {
            this.invites.remove(i);
            if (this.invites.isEmpty()) {
                this.filter.flags &= ~MessagesController.DIALOG_FILTER_FLAG_CHATLIST;
            }
            updateRows();
        }
    }

    public void onEdit(TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite) {
        if (tL_chatlists$TL_exportedChatlistInvite == null) {
            return;
        }
        int i = -1;
        int i2 = 0;
        while (true) {
            if (i2 >= this.invites.size()) {
                break;
            } else if (TextUtils.equals(this.invites.get(i2).url, tL_chatlists$TL_exportedChatlistInvite.url)) {
                i = i2;
                break;
            } else {
                i2++;
            }
        }
        if (i < 0) {
            this.invites.add(tL_chatlists$TL_exportedChatlistInvite);
        } else {
            this.invites.set(i, tL_chatlists$TL_exportedChatlistInvite);
        }
        updateRows();
    }

    public void deleteFolder(View view) {
        MessagesController.DialogFilter dialogFilter = this.filter;
        if (dialogFilter != null && dialogFilter.isChatlist()) {
            FolderBottomSheet.showForDeletion(this, this.filter.f1538id, new Utilities.Callback() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda24
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    FilterCreateActivity.this.lambda$deleteFolder$16((Boolean) obj);
                }
            });
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        FilterActivityType filterActivityType = this.type;
        FilterActivityType filterActivityType2 = FilterActivityType.TOPIC;
        builder.setTitle(filterActivityType == filterActivityType2 ? LocaleController.getInternalString(C3632R.string.topics_remove) : LocaleController.getString("FilterDelete", C3632R.string.FilterDelete));
        builder.setMessage(this.type == filterActivityType2 ? LocaleController.getInternalString(C3632R.string.topics_remove_alert) : LocaleController.getString("FilterDeleteAlert", C3632R.string.FilterDeleteAlert));
        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("Delete", C3632R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                FilterCreateActivity.this.lambda$deleteFolder$19(dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    public /* synthetic */ void lambda$deleteFolder$16(Boolean bool) {
        finishFragment();
    }

    public /* synthetic */ void lambda$deleteFolder$19(DialogInterface dialogInterface, int i) {
        if (this.type == FilterActivityType.TOPIC) {
            getTopicsController().removeTopicFilterDialogs(this.topic);
            finishFragment();
            return;
        }
        final AlertDialog alertDialog = null;
        if (getParentActivity() != null) {
            alertDialog = new AlertDialog(getParentActivity(), 3);
            alertDialog.setCanCancel(false);
            alertDialog.show();
        }
        TLRPC$TL_messages_updateDialogFilter tLRPC$TL_messages_updateDialogFilter = new TLRPC$TL_messages_updateDialogFilter();
        tLRPC$TL_messages_updateDialogFilter.f1718id = this.filter.f1538id;
        getConnectionsManager().sendRequest(tLRPC$TL_messages_updateDialogFilter, new RequestDelegate() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda29
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                FilterCreateActivity.this.lambda$deleteFolder$18(alertDialog, tLObject, tLRPC$TL_error);
            }
        });
    }

    public /* synthetic */ void lambda$deleteFolder$18(final AlertDialog alertDialog, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                FilterCreateActivity.this.lambda$deleteFolder$17(alertDialog);
            }
        });
    }

    public /* synthetic */ void lambda$deleteFolder$17(AlertDialog alertDialog) {
        if (alertDialog != null) {
            try {
                alertDialog.dismiss();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
        getMessagesController().removeFilter(this.filter);
        getMessagesStorage().deleteDialogFilter(this.filter);
        finishFragment();
    }

    private void onUpdate(boolean z, ArrayList<Long> arrayList, ArrayList<Long> arrayList2) {
        int i;
        int i2;
        if (arrayList != null && arrayList2 != null) {
            i = 0;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                if (!arrayList2.contains(arrayList.get(i3))) {
                    i++;
                }
            }
            i2 = 0;
            for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                if (!arrayList.contains(arrayList2.get(i4))) {
                    i2++;
                }
            }
        } else if (arrayList != null) {
            i = arrayList.size();
            i2 = 0;
        } else if (arrayList2 != null) {
            i2 = arrayList2.size();
            i = 0;
        } else {
            i = 0;
            i2 = 0;
        }
        if (!z) {
            if (i2 > 0) {
                onUpdate(false, i2);
            }
        } else if (i2 > 0 && i2 > i) {
            onUpdate(true, i2);
        } else if (i > 0) {
            onUpdate(false, i);
        }
    }

    private void selectChatsFor(final boolean z) {
        UsersSelectActivity usersSelectActivity = new UsersSelectActivity(z, z ? this.newAlwaysShow : this.newNeverShow, this.newFilterFlags);
        usersSelectActivity.noChatTypes = this.filter.isChatlist();
        usersSelectActivity.setDelegate(new UsersSelectActivity.FilterUsersActivityDelegate() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda34
            @Override // org.telegram.p043ui.UsersSelectActivity.FilterUsersActivityDelegate
            public final void didSelectChats(ArrayList arrayList, int i) {
                FilterCreateActivity.this.lambda$selectChatsFor$20(z, arrayList, i);
            }
        });
        if (this.type == FilterActivityType.TOPIC) {
            usersSelectActivity.topicMode = true;
            usersSelectActivity.topicModeFilterFolderId = !z ? 1 : 0;
        }
        presentFragment(usersSelectActivity);
    }

    public /* synthetic */ void lambda$selectChatsFor$20(boolean z, ArrayList arrayList, int i) {
        this.newFilterFlags = i;
        if (z) {
            onUpdate(true, this.newAlwaysShow, arrayList);
            this.newAlwaysShow = arrayList;
            for (int i2 = 0; i2 < this.newAlwaysShow.size(); i2++) {
                this.newNeverShow.remove(this.newAlwaysShow.get(i2));
            }
            ArrayList arrayList2 = new ArrayList();
            int size = this.newPinned.size();
            for (int i3 = 0; i3 < size; i3++) {
                Long valueOf = Long.valueOf(this.newPinned.keyAt(i3));
                if (!DialogObject.isEncryptedDialog(valueOf.longValue()) && !this.newAlwaysShow.contains(valueOf)) {
                    arrayList2.add(valueOf);
                }
            }
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                this.newPinned.delete(((Long) arrayList2.get(i4)).longValue());
            }
        } else {
            onUpdate(false, this.newNeverShow, arrayList);
            this.newNeverShow = arrayList;
            for (int i5 = 0; i5 < this.newNeverShow.size(); i5++) {
                Long l = this.newNeverShow.get(i5);
                this.newAlwaysShow.remove(l);
                this.newPinned.delete(l.longValue());
            }
        }
        fillFilterName();
        checkDoneButton(false);
        updateRows();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        updateRows();
        Runnable runnable = this.showBulletinOnResume;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        return checkDiscard();
    }

    private void fillFilterName() {
        String string;
        if (this.creatingNew) {
            if (TextUtils.isEmpty(this.newFilterName) || !this.nameChangedManually) {
                int i = this.newFilterFlags;
                int i2 = MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS;
                int i3 = i & i2;
                String str = "";
                if ((i3 & i2) == i2) {
                    if ((MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ & i) != 0) {
                        string = LocaleController.getString("FilterNameUnread", C3632R.string.FilterNameUnread);
                    } else {
                        if ((i & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED) != 0) {
                            string = LocaleController.getString("FilterNameNonMuted", C3632R.string.FilterNameNonMuted);
                        }
                        string = "";
                    }
                } else {
                    int i4 = MessagesController.DIALOG_FILTER_FLAG_CONTACTS;
                    if ((i3 & i4) != 0) {
                        if (((~i4) & i3) == 0) {
                            string = LocaleController.getString("FilterContacts", C3632R.string.FilterContacts);
                        }
                        string = "";
                    } else {
                        int i5 = MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS;
                        if ((i3 & i5) != 0) {
                            if (((~i5) & i3) == 0) {
                                string = LocaleController.getString("FilterNonContacts", C3632R.string.FilterNonContacts);
                            }
                            string = "";
                        } else {
                            int i6 = MessagesController.DIALOG_FILTER_FLAG_GROUPS;
                            if ((i3 & i6) != 0) {
                                if (((~i6) & i3) == 0) {
                                    string = LocaleController.getString("FilterGroups", C3632R.string.FilterGroups);
                                }
                                string = "";
                            } else {
                                int i7 = MessagesController.DIALOG_FILTER_FLAG_BOTS;
                                if ((i3 & i7) != 0) {
                                    if (((~i7) & i3) == 0) {
                                        string = LocaleController.getString("FilterBots", C3632R.string.FilterBots);
                                    }
                                    string = "";
                                } else {
                                    int i8 = MessagesController.DIALOG_FILTER_FLAG_CHANNELS;
                                    if ((i3 & i8) != 0 && ((~i8) & i3) == 0) {
                                        string = LocaleController.getString("FilterChannels", C3632R.string.FilterChannels);
                                    }
                                    string = "";
                                }
                            }
                        }
                    }
                }
                if (string == null || string.length() <= 12) {
                    str = string;
                }
                this.newFilterName = str;
                RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.listView.findViewHolderForAdapterPosition(this.nameRow);
                if (findViewHolderForAdapterPosition != null) {
                    this.adapter.onViewAttachedToWindow(findViewHolderForAdapterPosition);
                }
            }
        }
    }

    public boolean checkDiscard() {
        if (this.doneItem.getAlpha() == 1.0f) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            if (this.creatingNew) {
                FilterActivityType filterActivityType = this.type;
                FilterActivityType filterActivityType2 = FilterActivityType.TOPIC;
                builder.setTitle(filterActivityType == filterActivityType2 ? LocaleController.getInternalString(C3632R.string.topic_create_discard_title) : LocaleController.getString("FilterDiscardNewTitle", C3632R.string.FilterDiscardNewTitle));
                builder.setMessage(this.type == filterActivityType2 ? LocaleController.getInternalString(C3632R.string.topic_create_discard_message) : LocaleController.getString("FilterDiscardNewAlert", C3632R.string.FilterDiscardNewAlert));
                builder.setPositiveButton(LocaleController.getString("FilterDiscardNewSave", C3632R.string.FilterDiscardNewSave), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        FilterCreateActivity.this.lambda$checkDiscard$21(dialogInterface, i);
                    }
                });
            } else {
                builder.setTitle(LocaleController.getString("FilterDiscardTitle", C3632R.string.FilterDiscardTitle));
                builder.setMessage(this.type == FilterActivityType.TOPIC ? LocaleController.getInternalString(C3632R.string.topic_edit_discard_message) : LocaleController.getString("FilterDiscardAlert", C3632R.string.FilterDiscardAlert));
                builder.setPositiveButton(LocaleController.getString("ApplyTheme", C3632R.string.ApplyTheme), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        FilterCreateActivity.this.lambda$checkDiscard$22(dialogInterface, i);
                    }
                });
            }
            builder.setNegativeButton(LocaleController.getString("PassportDiscard", C3632R.string.PassportDiscard), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FilterCreateActivity.this.lambda$checkDiscard$23(dialogInterface, i);
                }
            });
            showDialog(builder.create());
            return false;
        }
        return true;
    }

    public /* synthetic */ void lambda$checkDiscard$21(DialogInterface dialogInterface, int i) {
        processDone();
    }

    public /* synthetic */ void lambda$checkDiscard$22(DialogInterface dialogInterface, int i) {
        processDone();
    }

    public /* synthetic */ void lambda$checkDiscard$23(DialogInterface dialogInterface, int i) {
        finishFragment();
    }

    private void showRemoveAlert(final ItemInner itemInner, CharSequence charSequence, Object obj, final boolean z) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        if (this.type == FilterActivityType.TOPIC) {
            builder.setTitle(LocaleController.getInternalString(C3632R.string.topic_remove_chat_title));
            builder.setMessage(LocaleController.formatStringInternal(C3632R.string.topic_remove_chat_message, charSequence));
        } else if (z) {
            builder.setTitle(LocaleController.getString("FilterRemoveInclusionTitle", C3632R.string.FilterRemoveInclusionTitle));
            if (obj instanceof String) {
                builder.setMessage(LocaleController.formatString("FilterRemoveInclusionText", C3632R.string.FilterRemoveInclusionText, charSequence));
            } else if (obj instanceof TLRPC$User) {
                builder.setMessage(LocaleController.formatString("FilterRemoveInclusionUserText", C3632R.string.FilterRemoveInclusionUserText, charSequence));
            } else {
                builder.setMessage(LocaleController.formatString("FilterRemoveInclusionChatText", C3632R.string.FilterRemoveInclusionChatText, charSequence));
            }
        } else {
            builder.setTitle(LocaleController.getString("FilterRemoveExclusionTitle", C3632R.string.FilterRemoveExclusionTitle));
            if (obj instanceof String) {
                builder.setMessage(LocaleController.formatString("FilterRemoveExclusionText", C3632R.string.FilterRemoveExclusionText, charSequence));
            } else if (obj instanceof TLRPC$User) {
                builder.setMessage(LocaleController.formatString("FilterRemoveExclusionUserText", C3632R.string.FilterRemoveExclusionUserText, charSequence));
            } else {
                builder.setMessage(LocaleController.formatString("FilterRemoveExclusionChatText", C3632R.string.FilterRemoveExclusionChatText, charSequence));
            }
        }
        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("StickersRemove", C3632R.string.StickersRemove), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                FilterCreateActivity.this.lambda$showRemoveAlert$24(itemInner, z, dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    public /* synthetic */ void lambda$showRemoveAlert$24(ItemInner itemInner, boolean z, DialogInterface dialogInterface, int i) {
        if (itemInner.flags > 0) {
            this.newFilterFlags = (~itemInner.flags) & this.newFilterFlags;
        } else {
            (z ? this.newAlwaysShow : this.newNeverShow).remove(Long.valueOf(itemInner.did));
        }
        fillFilterName();
        updateRows();
        checkDoneButton(true);
        if (z) {
            onUpdate(false, 1);
        }
    }

    public void processDone() {
        HintView hintView = this.saveHintView;
        if (hintView != null) {
            hintView.hide(true);
            this.saveHintView = null;
        }
        if (this.type == FilterActivityType.TOPIC) {
            if (!this.isAutoTopic) {
                this.topic.setName(this.newFilterName);
                this.topic.setIcon(this.topicNewIcon);
            }
            Set<Long> dialogs = this.topic.getDialogs();
            dialogs.removeAll(this.topic.getFilterDialogs());
            dialogs.removeAll(this.topic.getFilterArchivedDialogs());
            dialogs.addAll(this.newAlwaysShow);
            dialogs.addAll(this.newNeverShow);
            Set<Long> presets = this.topic.getPresets();
            presets.removeAll(this.topic.getFilterDialogs());
            presets.removeAll(this.topic.getFilterArchivedDialogs());
            presets.addAll(this.newAlwaysShow);
            presets.addAll(this.newNeverShow);
            getTopicsController().addOrEditTopic(this.topic);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.topicsDidLoad, new Object[0]);
            finishFragment();
            Callbacks$Callback2<MessagesController.DialogFilter, TopicModel> callbacks$Callback2 = this.doneCallback;
            if (callbacks$Callback2 != null) {
                callbacks$Callback2.invoke(null, this.topic);
                return;
            }
            return;
        }
        save(true, new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                FilterCreateActivity.this.lambda$processDone$25();
            }
        });
    }

    public /* synthetic */ void lambda$processDone$25() {
        Callbacks$Callback2<MessagesController.DialogFilter, TopicModel> callbacks$Callback2 = this.doneCallback;
        if (callbacks$Callback2 != null) {
            callbacks$Callback2.invoke(this.filter, null);
        }
        getFiltersController().addOrEditFilterSettings(this.newFilterSettings);
        if (this.doNotCloseWhenSave) {
            this.doNotCloseWhenSave = false;
            TextPaint textPaint = new TextPaint(1);
            textPaint.setTextSize(AndroidUtilities.m107dp(20));
            this.actionBar.setTitleAnimated(Emoji.replaceEmoji((CharSequence) this.filter.name, textPaint.getFontMetricsInt(), AndroidUtilities.m107dp(20), false), true, 220L);
            return;
        }
        finishFragment();
    }

    private void save(boolean z, final Runnable runnable) {
        saveFilterToServer(this.filter, this.newFilterFlags, this.newFilterName, this.newAlwaysShow, this.newNeverShow, this.newPinned, this.creatingNew, false, this.hasUserChanged, true, z, this, new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                FilterCreateActivity.this.lambda$save$26(runnable);
            }
        });
    }

    public /* synthetic */ void lambda$save$26(Runnable runnable) {
        this.hasUserChanged = false;
        this.creatingNew = false;
        this.filter.flags = this.newFilterFlags;
        checkDoneButton(true);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        if (runnable != null) {
            runnable.run();
        }
    }

    private static void processAddFilter(MessagesController.DialogFilter dialogFilter, int i, String str, ArrayList<Long> arrayList, ArrayList<Long> arrayList2, boolean z, boolean z2, boolean z3, boolean z4, BaseFragment baseFragment, Runnable runnable) {
        if (dialogFilter.flags != i || z3) {
            dialogFilter.pendingUnreadCount = -1;
            if (z4) {
                dialogFilter.unreadCount = -1;
            }
        }
        dialogFilter.flags = i;
        dialogFilter.name = str;
        dialogFilter.neverShow = arrayList2;
        dialogFilter.alwaysShow = arrayList;
        if (z) {
            baseFragment.getMessagesController().addFilter(dialogFilter, z2);
        } else {
            baseFragment.getMessagesController().onFilterUpdate(dialogFilter);
        }
        baseFragment.getMessagesStorage().saveDialogFilter(dialogFilter, z2, true);
        if (z2) {
            TLRPC$TL_messages_updateDialogFiltersOrder tLRPC$TL_messages_updateDialogFiltersOrder = new TLRPC$TL_messages_updateDialogFiltersOrder();
            ArrayList<MessagesController.DialogFilter> dialogFilters = baseFragment.getMessagesController().getDialogFilters();
            int size = dialogFilters.size();
            for (int i2 = 0; i2 < size; i2++) {
                tLRPC$TL_messages_updateDialogFiltersOrder.order.add(Integer.valueOf(dialogFilters.get(i2).f1538id));
            }
            baseFragment.getConnectionsManager().sendRequest(tLRPC$TL_messages_updateDialogFiltersOrder, null);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void saveFilterToServer(final MessagesController.DialogFilter dialogFilter, final int i, final String str, final ArrayList<Long> arrayList, final ArrayList<Long> arrayList2, final LongSparseIntArray longSparseIntArray, final boolean z, final boolean z2, final boolean z3, final boolean z4, final boolean z5, final BaseFragment baseFragment, final Runnable runnable) {
        AlertDialog alertDialog;
        ArrayList<TLRPC$InputPeer> arrayList3;
        ArrayList<Long> arrayList4;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        int i2 = 3;
        int i3 = 0;
        if (z5) {
            alertDialog = new AlertDialog(baseFragment.getParentActivity(), 3);
            alertDialog.setCanCancel(false);
            alertDialog.show();
        } else {
            alertDialog = null;
        }
        TLRPC$TL_messages_updateDialogFilter tLRPC$TL_messages_updateDialogFilter = new TLRPC$TL_messages_updateDialogFilter();
        tLRPC$TL_messages_updateDialogFilter.f1718id = dialogFilter.f1538id;
        int i4 = 1;
        tLRPC$TL_messages_updateDialogFilter.flags |= 1;
        TLRPC$TL_dialogFilter tLRPC$TL_dialogFilter = new TLRPC$TL_dialogFilter();
        tLRPC$TL_messages_updateDialogFilter.filter = tLRPC$TL_dialogFilter;
        tLRPC$TL_dialogFilter.contacts = (i & MessagesController.DIALOG_FILTER_FLAG_CONTACTS) != 0;
        tLRPC$TL_dialogFilter.non_contacts = (i & MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS) != 0;
        tLRPC$TL_dialogFilter.groups = (i & MessagesController.DIALOG_FILTER_FLAG_GROUPS) != 0;
        tLRPC$TL_dialogFilter.broadcasts = (i & MessagesController.DIALOG_FILTER_FLAG_CHANNELS) != 0;
        tLRPC$TL_dialogFilter.bots = (i & MessagesController.DIALOG_FILTER_FLAG_BOTS) != 0;
        tLRPC$TL_dialogFilter.exclude_muted = (i & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED) != 0;
        tLRPC$TL_dialogFilter.exclude_read = (i & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ) != 0;
        tLRPC$TL_dialogFilter.exclude_archived = (i & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED) != 0;
        tLRPC$TL_dialogFilter.f1609id = dialogFilter.f1538id;
        tLRPC$TL_dialogFilter.title = str;
        MessagesController messagesController = baseFragment.getMessagesController();
        ArrayList<Long> arrayList5 = new ArrayList<>();
        if (longSparseIntArray.size() != 0) {
            int size = longSparseIntArray.size();
            for (int i5 = 0; i5 < size; i5++) {
                long keyAt = longSparseIntArray.keyAt(i5);
                if (!DialogObject.isEncryptedDialog(keyAt)) {
                    arrayList5.add(Long.valueOf(keyAt));
                }
            }
            Collections.sort(arrayList5, new Comparator() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda23
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$saveFilterToServer$27;
                    lambda$saveFilterToServer$27 = FilterCreateActivity.lambda$saveFilterToServer$27(LongSparseIntArray.this, (Long) obj, (Long) obj2);
                    return lambda$saveFilterToServer$27;
                }
            });
        }
        int i6 = 0;
        while (i6 < i2) {
            if (i6 == 0) {
                arrayList3 = tLRPC$TL_messages_updateDialogFilter.filter.include_peers;
                arrayList4 = arrayList;
            } else if (i6 == i4) {
                arrayList3 = tLRPC$TL_messages_updateDialogFilter.filter.exclude_peers;
                arrayList4 = arrayList2;
            } else {
                arrayList3 = tLRPC$TL_messages_updateDialogFilter.filter.pinned_peers;
                arrayList4 = arrayList5;
            }
            int size2 = arrayList4.size();
            for (int i7 = i3; i7 < size2; i7++) {
                long longValue = arrayList4.get(i7).longValue();
                if ((i6 != 0 || longSparseIntArray.indexOfKey(longValue) < 0) && !DialogObject.isEncryptedDialog(longValue)) {
                    if (longValue > 0) {
                        TLRPC$User user = messagesController.getUser(Long.valueOf(longValue));
                        if (user != null) {
                            TLRPC$TL_inputPeerUser tLRPC$TL_inputPeerUser = new TLRPC$TL_inputPeerUser();
                            tLRPC$TL_inputPeerUser.user_id = longValue;
                            tLRPC$TL_inputPeerUser.access_hash = user.access_hash;
                            arrayList3.add(tLRPC$TL_inputPeerUser);
                        }
                    } else {
                        long j = -longValue;
                        TLRPC$Chat chat = messagesController.getChat(Long.valueOf(j));
                        if (chat != null) {
                            if (ChatObject.isChannel(chat)) {
                                TLRPC$TL_inputPeerChannel tLRPC$TL_inputPeerChannel = new TLRPC$TL_inputPeerChannel();
                                tLRPC$TL_inputPeerChannel.channel_id = j;
                                tLRPC$TL_inputPeerChannel.access_hash = chat.access_hash;
                                arrayList3.add(tLRPC$TL_inputPeerChannel);
                            } else {
                                TLRPC$TL_inputPeerChat tLRPC$TL_inputPeerChat = new TLRPC$TL_inputPeerChat();
                                tLRPC$TL_inputPeerChat.chat_id = j;
                                arrayList3.add(tLRPC$TL_inputPeerChat);
                            }
                        }
                    }
                }
            }
            i6++;
            i2 = 3;
            i3 = 0;
            i4 = 1;
        }
        final AlertDialog alertDialog2 = alertDialog;
        baseFragment.getConnectionsManager().sendRequest(tLRPC$TL_messages_updateDialogFilter, new RequestDelegate() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda30
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                FilterCreateActivity.lambda$saveFilterToServer$29(z5, alertDialog2, dialogFilter, i, str, arrayList, arrayList2, z, z2, z3, z4, baseFragment, runnable, tLObject, tLRPC$TL_error);
            }
        });
        if (z5) {
            return;
        }
        processAddFilter(dialogFilter, i, str, arrayList, arrayList2, z, z2, z3, z4, baseFragment, null);
    }

    public static /* synthetic */ int lambda$saveFilterToServer$27(LongSparseIntArray longSparseIntArray, Long l, Long l2) {
        int i = longSparseIntArray.get(l.longValue());
        int i2 = longSparseIntArray.get(l2.longValue());
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    public static /* synthetic */ void lambda$saveFilterToServer$29(final boolean z, final AlertDialog alertDialog, final MessagesController.DialogFilter dialogFilter, final int i, final String str, final ArrayList arrayList, final ArrayList arrayList2, final boolean z2, final boolean z3, final boolean z4, final boolean z5, final BaseFragment baseFragment, final Runnable runnable, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                FilterCreateActivity.lambda$saveFilterToServer$28(z, alertDialog, dialogFilter, i, str, arrayList, arrayList2, z2, z3, z4, z5, baseFragment, runnable);
            }
        });
    }

    public static /* synthetic */ void lambda$saveFilterToServer$28(boolean z, AlertDialog alertDialog, MessagesController.DialogFilter dialogFilter, int i, String str, ArrayList arrayList, ArrayList arrayList2, boolean z2, boolean z3, boolean z4, boolean z5, BaseFragment baseFragment, Runnable runnable) {
        if (!z) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        if (alertDialog != null) {
            try {
                alertDialog.dismiss();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
        processAddFilter(dialogFilter, i, str, arrayList, arrayList2, z2, z3, z4, z5, baseFragment, runnable);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        return checkDiscard();
    }

    private boolean hasChanges() {
        this.hasUserChanged = false;
        if (this.filter.alwaysShow.size() != this.newAlwaysShow.size()) {
            this.hasUserChanged = true;
        }
        if (this.filter.neverShow.size() != this.newNeverShow.size()) {
            this.hasUserChanged = true;
        }
        if (!this.hasUserChanged) {
            Collections.sort(this.filter.alwaysShow);
            Collections.sort(this.newAlwaysShow);
            if (!this.filter.alwaysShow.equals(this.newAlwaysShow)) {
                this.hasUserChanged = true;
            }
            Collections.sort(this.filter.neverShow);
            Collections.sort(this.newNeverShow);
            if (!this.filter.neverShow.equals(this.newNeverShow)) {
                this.hasUserChanged = true;
            }
        }
        FilterActivityType filterActivityType = this.type;
        if (filterActivityType == FilterActivityType.TOPIC) {
            if (this.topic.getIcon() != this.topicNewIcon) {
                return true;
            }
        } else if (filterActivityType == FilterActivityType.FILTER) {
            FilterSettingsModel copy = getFiltersController().getSettings(this.filter.f1538id).getCopy();
            if (copy.getIcon() != this.newFilterSettings.getIcon()) {
                return true;
            }
            ArrayList arrayList = new ArrayList(copy.getFabs());
            ArrayList arrayList2 = new ArrayList(this.newFilterSettings.getFabs());
            if (arrayList.size() != arrayList2.size()) {
                return true;
            }
            Collections.sort(arrayList);
            Collections.sort(arrayList2);
            if (!arrayList.equals(arrayList2)) {
                return true;
            }
        }
        if (TextUtils.equals(this.filter.name, this.newFilterName) && this.filter.flags == this.newFilterFlags) {
            return this.hasUserChanged;
        }
        return true;
    }

    public void checkDoneButton(boolean z) {
        boolean z2 = false;
        boolean z3 = !TextUtils.isEmpty(this.newFilterName) && this.newFilterName.length() <= 12;
        FilterActivityType filterActivityType = this.type;
        FilterActivityType filterActivityType2 = FilterActivityType.TOPIC;
        if (filterActivityType == filterActivityType2 && this.isAutoTopic) {
            z3 = true;
        }
        if (z3) {
            if ((this.newFilterFlags & MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS) != 0 || !this.newAlwaysShow.isEmpty() || (this.type == filterActivityType2 && !this.newNeverShow.isEmpty())) {
                z2 = true;
            }
            z3 = (!z2 || this.creatingNew) ? z2 : hasChanges();
        }
        if (this.doneItem.isEnabled() == z3) {
            return;
        }
        this.doneItem.setEnabled(z3);
        if (z) {
            this.doneItem.animate().alpha(z3 ? 1.0f : 0.0f).scaleX(z3 ? 1.0f : 0.0f).scaleY(z3 ? 1.0f : 0.0f).setDuration(180L).start();
            return;
        }
        this.doneItem.setAlpha(z3 ? 1.0f : 0.0f);
        this.doneItem.setScaleX(z3 ? 1.0f : 0.0f);
        this.doneItem.setScaleY(z3 ? 1.0f : 0.0f);
    }

    public void setTextLeft(View view) {
        PollEditTextCellWrapper pollEditTextCellWrapper = this.pollEditTextCellWrapper;
        if (view == pollEditTextCellWrapper) {
            setTextLeft(pollEditTextCellWrapper.getPollEditTextCell());
        } else if (view instanceof PollEditTextCell) {
            PollEditTextCell pollEditTextCell = (PollEditTextCell) view;
            String str = this.newFilterName;
            int length = 12 - (str != null ? str.length() : 0);
            if (length <= 3.6000004f) {
                pollEditTextCell.setText2(String.format("%d", Integer.valueOf(length)));
                SimpleTextView textView2 = pollEditTextCell.getTextView2();
                int i = length < 0 ? Theme.key_text_RedRegular : Theme.key_windowBackgroundWhiteGrayText3;
                textView2.setTextColor(Theme.getColor(i));
                textView2.setTag(Integer.valueOf(i));
                textView2.setAlpha((pollEditTextCell.getTextView().isFocused() || length < 0) ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                return;
            }
            pollEditTextCell.setText2("");
        }
    }

    /* renamed from: org.telegram.ui.FilterCreateActivity$ItemInner */
    /* loaded from: classes5.dex */
    public static class ItemInner extends AdapterWithDiffUtils.Item {
        private String chatType;
        private long did;
        private int flags;
        private int iconResId;
        private boolean include;
        private boolean isRed;
        private TL_chatlists$TL_exportedChatlistInvite link;
        private boolean newSpan;
        private View.OnClickListener onClickListener;
        private CharSequence text;

        public ItemInner(int i, boolean z) {
            super(i, z);
        }

        public static ItemInner asHeader(CharSequence charSequence) {
            ItemInner itemInner = new ItemInner(0, false);
            itemInner.text = charSequence;
            return itemInner;
        }

        public static ItemInner asHeader(CharSequence charSequence, boolean z) {
            ItemInner itemInner = new ItemInner(0, false);
            itemInner.text = charSequence;
            itemInner.newSpan = z;
            return itemInner;
        }

        public static ItemInner asChat(boolean z, long j) {
            ItemInner itemInner = new ItemInner(1, false);
            itemInner.include = z;
            itemInner.did = j;
            return itemInner;
        }

        public static ItemInner asChat(boolean z, CharSequence charSequence, String str, int i) {
            ItemInner itemInner = new ItemInner(1, false);
            itemInner.include = z;
            itemInner.text = charSequence;
            itemInner.chatType = str;
            itemInner.flags = i;
            return itemInner;
        }

        public static ItemInner asEdit() {
            return new ItemInner(2, false);
        }

        public static ItemInner asShadow(CharSequence charSequence) {
            ItemInner itemInner = new ItemInner(TextUtils.isEmpty(charSequence) ? 3 : 6, false);
            itemInner.text = charSequence;
            return itemInner;
        }

        public static ItemInner asLink(TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite) {
            ItemInner itemInner = new ItemInner(7, false);
            itemInner.link = tL_chatlists$TL_exportedChatlistInvite;
            return itemInner;
        }

        public static ItemInner asButton(int i, CharSequence charSequence, boolean z) {
            ItemInner itemInner = new ItemInner(4, false);
            itemInner.iconResId = i;
            itemInner.text = charSequence;
            itemInner.isRed = z;
            return itemInner;
        }

        public static ItemInner asCreateLink() {
            return new ItemInner(8, false);
        }

        public ItemInner whenClicked(View.OnClickListener onClickListener) {
            this.onClickListener = onClickListener;
            return this;
        }

        public boolean isShadow() {
            int i = this.viewType;
            return i == 3 || i == 6;
        }

        public boolean equals(Object obj) {
            TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite;
            TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite2;
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
            if ((i == 0 || i == 1 || i == 3 || i == 4) && !TextUtils.equals(this.text, itemInner.text)) {
                return false;
            }
            int i2 = this.viewType;
            if (i2 == 0) {
                return this.newSpan == itemInner.newSpan;
            } else if (i2 == 1) {
                return this.did == itemInner.did && TextUtils.equals(this.chatType, itemInner.chatType) && this.flags == itemInner.flags;
            } else if (i2 != 7 || (tL_chatlists$TL_exportedChatlistInvite = this.link) == (tL_chatlists$TL_exportedChatlistInvite2 = itemInner.link)) {
                return true;
            } else {
                if (TextUtils.equals(tL_chatlists$TL_exportedChatlistInvite.url, tL_chatlists$TL_exportedChatlistInvite2.url)) {
                    TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite3 = this.link;
                    boolean z = tL_chatlists$TL_exportedChatlistInvite3.revoked;
                    TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite4 = itemInner.link;
                    if (z == tL_chatlists$TL_exportedChatlistInvite4.revoked && TextUtils.equals(tL_chatlists$TL_exportedChatlistInvite3.title, tL_chatlists$TL_exportedChatlistInvite4.title) && this.link.peers.size() == itemInner.link.peers.size()) {
                        return true;
                    }
                }
                return false;
            }
        }
    }

    /* renamed from: org.telegram.ui.FilterCreateActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends AdapterWithDiffUtils {
        private Context mContext;

        public ListAdapter(Context context) {
            FilterCreateActivity.this = r1;
            this.mContext = context;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            return (itemViewType == 3 || itemViewType == 0 || itemViewType == 2 || itemViewType == 5) ? false : true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return FilterCreateActivity.this.items.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View headerCell;
            if (i == IdFabric$ViewTypes.FLOATING_ACTION_BUTTON) {
                headerCell = new FloatingActionButtonsCell(this.mContext);
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else {
                switch (i) {
                    case 0:
                        headerCell = new HeaderCell(this.mContext, 22);
                        headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                        break;
                    case 1:
                        UserCell userCell = new UserCell(this.mContext, 6, 0, false);
                        userCell.setSelfAsSavedMessages(true);
                        userCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                        headerCell = userCell;
                        break;
                    case 2:
                        final PollEditTextCell pollEditTextCell = new PollEditTextCell(this.mContext, null);
                        pollEditTextCell.createErrorTextView();
                        pollEditTextCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                        FilterCreateActivity filterCreateActivity = FilterCreateActivity.this;
                        FilterActivityType filterActivityType = FilterCreateActivity.this.type;
                        final FilterCreateActivity filterCreateActivity2 = FilterCreateActivity.this;
                        filterCreateActivity.pollEditTextCellWrapper = new PollEditTextCellWrapper(pollEditTextCell, filterActivityType, new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$ListAdapter$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                FilterCreateActivity.access$2500(FilterCreateActivity.this);
                            }
                        });
                        pollEditTextCell.addTextWatcher(new TextWatcher() { // from class: org.telegram.ui.FilterCreateActivity.ListAdapter.1
                            @Override // android.text.TextWatcher
                            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                            }

                            @Override // android.text.TextWatcher
                            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                            }

                            {
                                ListAdapter.this = this;
                            }

                            @Override // android.text.TextWatcher
                            public void afterTextChanged(Editable editable) {
                                if (pollEditTextCell.getTag() != null) {
                                    return;
                                }
                                String obj = editable.toString();
                                if (!TextUtils.equals(obj, FilterCreateActivity.this.newFilterName)) {
                                    FilterCreateActivity.this.nameChangedManually = !TextUtils.isEmpty(obj);
                                    FilterCreateActivity.this.newFilterName = obj;
                                }
                                RecyclerView.ViewHolder findViewHolderForAdapterPosition = FilterCreateActivity.this.listView.findViewHolderForAdapterPosition(FilterCreateActivity.this.nameRow);
                                if (findViewHolderForAdapterPosition != null) {
                                    FilterCreateActivity.this.setTextLeft(findViewHolderForAdapterPosition.itemView);
                                }
                                FilterCreateActivity.this.checkDoneButton(true);
                            }
                        });
                        EditTextBoldCursor textView = pollEditTextCell.getTextView();
                        pollEditTextCell.setShowNextButton(true);
                        textView.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.FilterCreateActivity$ListAdapter$$ExternalSyntheticLambda0
                            @Override // android.view.View.OnFocusChangeListener
                            public final void onFocusChange(View view, boolean z) {
                                FilterCreateActivity.ListAdapter.this.lambda$onCreateViewHolder$1(pollEditTextCell, view, z);
                            }
                        });
                        textView.setImeOptions(268435462);
                        pollEditTextCell.setTag(1);
                        pollEditTextCell.setTag(null);
                        if (FilterCreateActivity.this.creatingNew || ((FilterCreateActivity.this.newFilterSettings == null || FilterCreateActivity.this.newFilterSettings.getIcon() == null) && FilterCreateActivity.this.topicNewIcon == null)) {
                            FilterCreateActivity.this.pollEditTextCellWrapper.setIcon(-1);
                        } else if (FilterCreateActivity.this.newFilterSettings == null || FilterCreateActivity.this.newFilterSettings.getIcon() == null) {
                            FilterCreateActivity.this.pollEditTextCellWrapper.setIcon(TopicExtKt.info(FilterCreateActivity.this.topicNewIcon).getIconResId());
                        } else {
                            FilterCreateActivity.this.pollEditTextCellWrapper.setIcon(FilterIconExtKt.iconInfo(FilterCreateActivity.this.newFilterSettings.getIcon()).getOutlinedIcon());
                        }
                        headerCell = FilterCreateActivity.this.pollEditTextCellWrapper;
                        break;
                    case 3:
                        headerCell = new ShadowSectionCell(this.mContext);
                        break;
                    case 4:
                        headerCell = new ButtonCell(this.mContext);
                        headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                        break;
                    case 5:
                        headerCell = new HintInnerCell(FilterCreateActivity.this, this.mContext);
                        break;
                    case 6:
                    default:
                        headerCell = new TextInfoPrivacyCell(this.mContext);
                        break;
                    case 7:
                        Context context = this.mContext;
                        FilterCreateActivity filterCreateActivity3 = FilterCreateActivity.this;
                        headerCell = new LinkCell(context, filterCreateActivity3, ((BaseFragment) filterCreateActivity3).currentAccount, FilterCreateActivity.this.filter.f1538id) { // from class: org.telegram.ui.FilterCreateActivity.ListAdapter.2
                            {
                                ListAdapter.this = this;
                            }

                            @Override // org.telegram.p043ui.FilterCreateActivity.LinkCell
                            protected void onDelete(TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite) {
                                FilterCreateActivity.this.onDelete(tL_chatlists$TL_exportedChatlistInvite);
                            }
                        };
                        break;
                    case 8:
                        headerCell = new CreateLinkCell(this.mContext);
                        headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                        break;
                }
            }
            return new RecyclerListView.Holder(headerCell);
        }

        public /* synthetic */ void lambda$onCreateViewHolder$1(PollEditTextCell pollEditTextCell, View view, boolean z) {
            pollEditTextCell.getTextView2().setAlpha((z || FilterCreateActivity.this.newFilterName.length() > 12) ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() == 2) {
                FilterCreateActivity.this.setTextLeft(viewHolder.itemView);
                PollEditTextCell pollEditTextCell = FilterCreateActivity.this.pollEditTextCellWrapper.getPollEditTextCell();
                pollEditTextCell.setTag(1);
                pollEditTextCell.setTextAndHint(FilterCreateActivity.this.newFilterName != null ? FilterCreateActivity.this.newFilterName : "", FilterCreateActivity.this.type == FilterActivityType.TOPIC ? LocaleController.getInternalString(C3632R.string.topic_name_hint) : LocaleController.getString("FilterNameHint", C3632R.string.FilterNameHint), false);
                pollEditTextCell.setTag(null);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() == 2) {
                EditTextBoldCursor textView = FilterCreateActivity.this.pollEditTextCellWrapper.getPollEditTextCell().getTextView();
                if (textView.isFocused()) {
                    textView.clearFocus();
                    AndroidUtilities.hideKeyboard(textView);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String string;
            String string2;
            ItemInner itemInner = (ItemInner) FilterCreateActivity.this.items.get(i);
            if (itemInner == null) {
                return;
            }
            int i2 = i + 1;
            boolean z = i2 < FilterCreateActivity.this.items.size() && !((ItemInner) FilterCreateActivity.this.items.get(i2)).isShadow();
            if (itemInner.viewType == IdFabric$ViewTypes.FLOATING_ACTION_BUTTON) {
                ((FloatingActionButtonsCell) viewHolder.itemView).setFabs(FilterCreateActivity.this.newFilterSettings.getFabs());
                return;
            }
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                if (itemInner.newSpan) {
                    headerCell.setText(FilterCreateActivity.withNew(0, itemInner.text, false));
                } else {
                    headerCell.setText(itemInner.text);
                }
            } else if (itemViewType != 1) {
                if (itemViewType == 3) {
                    viewHolder.itemView.setBackground(Theme.getThemedDrawableByKey(this.mContext, z ? C3632R.C3634drawable.greydivider : C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                } else if (itemViewType == 4) {
                    ButtonCell buttonCell = (ButtonCell) viewHolder.itemView;
                    buttonCell.setRed(itemInner.isRed);
                    buttonCell.set(itemInner.iconResId, itemInner.text, z);
                } else if (itemViewType == 6) {
                    ((TextInfoPrivacyCell) viewHolder.itemView).setText(itemInner.text);
                    viewHolder.itemView.setBackground(Theme.getThemedDrawableByKey(this.mContext, z ? C3632R.C3634drawable.greydivider : C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                } else if (itemViewType == 7) {
                    ((LinkCell) viewHolder.itemView).setInvite(itemInner.link, z);
                } else if (itemViewType != 8) {
                } else {
                    FilterCreateActivity.this.createLinkCell = (CreateLinkCell) viewHolder.itemView;
                    FilterCreateActivity.this.createLinkCell.setDivider(z);
                }
            } else {
                UserCell userCell = (UserCell) viewHolder.itemView;
                if (itemInner.chatType != null) {
                    userCell.setData(itemInner.chatType, itemInner.text, null, 0, z);
                    return;
                }
                long j = itemInner.did;
                if (j > 0) {
                    TLRPC$User user = FilterCreateActivity.this.getMessagesController().getUser(Long.valueOf(j));
                    if (user != null) {
                        if (user.bot) {
                            string2 = LocaleController.getString("Bot", C3632R.string.Bot);
                        } else if (user.contact) {
                            string2 = LocaleController.getString("FilterContact", C3632R.string.FilterContact);
                        } else {
                            string2 = LocaleController.getString("FilterNonContact", C3632R.string.FilterNonContact);
                        }
                        userCell.setData(user, null, string2, 0, z);
                        return;
                    }
                    return;
                }
                TLRPC$Chat chat = FilterCreateActivity.this.getMessagesController().getChat(Long.valueOf(-j));
                if (chat != null) {
                    if (chat.participants_count != 0) {
                        if (ChatObject.isChannelAndNotMegaGroup(chat)) {
                            string = LocaleController.formatPluralStringComma("Subscribers", chat.participants_count);
                        } else {
                            string = LocaleController.formatPluralStringComma("Members", chat.participants_count);
                        }
                    } else if (!ChatObject.isPublic(chat)) {
                        if (ChatObject.isChannel(chat) && !chat.megagroup) {
                            string = LocaleController.getString("ChannelPrivate", C3632R.string.ChannelPrivate);
                        } else {
                            string = LocaleController.getString("MegaPrivate", C3632R.string.MegaPrivate);
                        }
                    } else if (ChatObject.isChannel(chat) && !chat.megagroup) {
                        string = LocaleController.getString("ChannelPublic", C3632R.string.ChannelPublic);
                    } else {
                        string = LocaleController.getString("MegaPublic", C3632R.string.MegaPublic);
                    }
                    userCell.setData(chat, null, string, 0, z);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            ItemInner itemInner = (ItemInner) FilterCreateActivity.this.items.get(i);
            if (itemInner == null) {
                return 3;
            }
            return itemInner.viewType;
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda31
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                FilterCreateActivity.this.lambda$getThemeDescriptions$30();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        int i = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{FloatingActionButtonsCell.class}, null, null, null, i));
        int i2 = Theme.key_switchTrackChecked;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, TextCell.class, PollEditTextCell.class, UserCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        C3704ActionBar c3704ActionBar = this.actionBar;
        int i3 = ThemeDescription.FLAG_BACKGROUND;
        int i4 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(c3704ActionBar, i3, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        int i5 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_text_RedRegular));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"ImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        int i6 = Theme.key_windowBackgroundGrayShadow;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{UserCell.class}, new String[]{"adminTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_profile_creatorIcon));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayIcon));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteGrayText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        return arrayList;
    }

    public /* synthetic */ void lambda$getThemeDescriptions$30() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof FloatingActionButtonsCell) {
                    ((FloatingActionButtonsCell) childAt).updateColors();
                } else if (childAt instanceof PollEditTextCellWrapper) {
                    ((PollEditTextCellWrapper) childAt).updateColors();
                } else if (childAt instanceof UserCell) {
                    ((UserCell) childAt).update(0);
                }
            }
        }
    }

    /* renamed from: org.telegram.ui.FilterCreateActivity$ButtonCell */
    /* loaded from: classes5.dex */
    private static class ButtonCell extends FrameLayout {
        private boolean divider;
        private ImageView imageView;
        private int lastIconResId;
        private TextView textView;
        private Boolean translateText;

        public ButtonCell(Context context) {
            super(context);
            this.divider = true;
            this.translateText = null;
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.imageView, LayoutHelper.createFrame(24, 24, (LocaleController.isRTL ? 5 : 3) | 16, 24, 0, 24, 0));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 16.0f);
            this.textView.setLines(1);
            this.textView.setSingleLine();
            TextView textView2 = this.textView;
            boolean z = LocaleController.isRTL;
            textView2.setPadding(z ? 24 : 0, 0, z ? 0 : 24, 0);
            this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
            TextView textView3 = this.textView;
            boolean z2 = LocaleController.isRTL;
            addView(textView3, LayoutHelper.createFrame(-1, -2, 23, z2 ? 0 : 72, 0, z2 ? 72 : 0, 0));
        }

        public void setRed(boolean z) {
            this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(z ? Theme.key_text_RedBold : Theme.key_windowBackgroundWhiteBlueText2), PorterDuff.Mode.MULTIPLY));
            this.textView.setTextColor(Theme.getColor(z ? Theme.key_text_RedRegular : Theme.key_windowBackgroundWhiteBlueText4));
        }

        public void set(int i, CharSequence charSequence, boolean z) {
            int i2 = LocaleController.isRTL ? -1 : 1;
            boolean z2 = false;
            if (i == 0) {
                this.imageView.setVisibility(8);
            } else {
                this.imageView.setVisibility(0);
                this.imageView.setImageResource(i);
            }
            if (LocaleController.isRTL) {
                ((ViewGroup.MarginLayoutParams) this.textView.getLayoutParams()).rightMargin = AndroidUtilities.m107dp(i != 0 ? 72 : 24);
            } else {
                ((ViewGroup.MarginLayoutParams) this.textView.getLayoutParams()).leftMargin = AndroidUtilities.m107dp(i != 0 ? 72 : 24);
            }
            this.textView.setText(charSequence);
            if (!z && i != 0) {
                z2 = true;
            }
            Boolean bool = this.translateText;
            if (bool == null || bool.booleanValue() != z2) {
                this.translateText = Boolean.valueOf(z2);
                int i3 = this.lastIconResId;
                float f = BitmapDescriptorFactory.HUE_RED;
                if (i3 == i) {
                    this.textView.clearAnimation();
                    ViewPropertyAnimator animate = this.textView.animate();
                    if (z2) {
                        f = AndroidUtilities.m107dp(i2 * (-7));
                    }
                    animate.translationX(f).setDuration(180L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                } else {
                    TextView textView = this.textView;
                    if (z2) {
                        f = AndroidUtilities.m107dp(i2 * (-7));
                    }
                    textView.setTranslationX(f);
                }
            }
            this.divider = z;
            setWillNotDraw(!z);
            this.lastIconResId = i;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (this.divider) {
                canvas.drawRect(this.textView.getLeft(), getMeasuredHeight() - 1, this.textView.getRight(), getMeasuredHeight(), Theme.dividerPaint);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(48), 1073741824));
        }
    }

    /* renamed from: org.telegram.ui.FilterCreateActivity$CreateLinkCell */
    /* loaded from: classes5.dex */
    private static class CreateLinkCell extends FrameLayout {
        ImageView imageView;
        boolean needDivider;
        TextView textView;

        public CreateLinkCell(Context context) {
            super(context);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4));
            this.textView.setTextSize(1, 16.0f);
            this.textView.setText(LocaleController.getString("CreateNewLink", C3632R.string.CreateNewLink));
            this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
            TextView textView2 = this.textView;
            boolean z = LocaleController.isRTL;
            textView2.setPadding(z ? 16 : 0, 0, z ? 0 : 16, 0);
            TextView textView3 = this.textView;
            boolean z2 = LocaleController.isRTL;
            addView(textView3, LayoutHelper.createFrame(-1, -2, 23, z2 ? 0 : 64, 0, z2 ? 64 : 0, 0));
            this.imageView = new ImageView(context);
            Drawable drawable = context.getResources().getDrawable(C3632R.C3634drawable.poll_add_circle);
            Drawable drawable2 = context.getResources().getDrawable(C3632R.C3634drawable.poll_add_plus);
            drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_featuredStickers_addButton), PorterDuff.Mode.MULTIPLY));
            drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck), PorterDuff.Mode.MULTIPLY));
            this.imageView.setImageDrawable(new CombinedDrawable(drawable, drawable2));
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            ImageView imageView = this.imageView;
            boolean z3 = LocaleController.isRTL;
            addView(imageView, LayoutHelper.createFrame(32, 32, (z3 ? 5 : 3) | 16, z3 ? 0 : 16, 0, z3 ? 16 : 0, 0));
        }

        public void setText(String str) {
            this.textView.setText(str);
        }

        public void setDivider(boolean z) {
            if (this.needDivider != z) {
                this.needDivider = z;
                setWillNotDraw(!z);
            }
        }

        @Override // android.view.View
        public void setEnabled(boolean z) {
            super.setEnabled(z);
            this.textView.setAlpha(z ? 1.0f : 0.5f);
            this.imageView.setAlpha(z ? 1.0f : 0.5f);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (this.needDivider) {
                canvas.drawRect(this.textView.getLeft(), getMeasuredHeight() - 1, this.textView.getRight(), getMeasuredHeight(), Theme.dividerPaint);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(45), 1073741824));
        }
    }

    /* renamed from: org.telegram.ui.FilterCreateActivity$LinkCell */
    /* loaded from: classes5.dex */
    public static class LinkCell extends FrameLayout {
        private int currentAccount;
        private int filterId;
        private BaseFragment fragment;
        private TL_chatlists$TL_exportedChatlistInvite lastInvite;
        protected String lastUrl;
        Drawable linkIcon;
        boolean needDivider;
        ImageView optionsIcon;
        Paint paint;
        float revokeT;
        Drawable revokedLinkIcon;
        Paint revokedPaint;
        AnimatedTextView subtitleTextView;
        AnimatedTextView titleTextView;
        private ValueAnimator valueAnimator;

        protected void onDelete(TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite) {
        }

        public LinkCell(Context context, BaseFragment baseFragment, int i, int i2) {
            super(context);
            this.fragment = baseFragment;
            this.currentAccount = i;
            this.filterId = i2;
            setImportantForAccessibility(1);
            setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, false);
            this.titleTextView = animatedTextView;
            animatedTextView.setTextSize(AndroidUtilities.m108dp(15.66f));
            this.titleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            this.titleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            this.titleTextView.setEllipsizeByGradient(true);
            AnimatedTextView animatedTextView2 = this.titleTextView;
            boolean z = LocaleController.isRTL;
            addView(animatedTextView2, LayoutHelper.createFrame(-1, 20.0f, 55, z ? 56.0f : 64.0f, 10.33f, z ? 64.0f : 56.0f, (float) BitmapDescriptorFactory.HUE_RED));
            AnimatedTextView animatedTextView3 = new AnimatedTextView(context, false, false, false);
            this.subtitleTextView = animatedTextView3;
            animatedTextView3.setTextSize(AndroidUtilities.m107dp(13));
            this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
            this.subtitleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            AnimatedTextView animatedTextView4 = this.subtitleTextView;
            boolean z2 = LocaleController.isRTL;
            addView(animatedTextView4, LayoutHelper.createFrame(-1, 16.0f, 55, z2 ? 56.0f : 64.0f, 33.33f, z2 ? 64.0f : 56.0f, (float) BitmapDescriptorFactory.HUE_RED));
            ImageView imageView = new ImageView(context);
            this.optionsIcon = imageView;
            imageView.setImageDrawable(getContext().getResources().getDrawable(C3632R.C3634drawable.ic_ab_other));
            this.optionsIcon.setScaleType(ImageView.ScaleType.CENTER);
            this.optionsIcon.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector)));
            this.optionsIcon.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_stickers_menu), PorterDuff.Mode.SRC_IN));
            this.optionsIcon.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$LinkCell$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FilterCreateActivity.LinkCell.this.lambda$new$0(view);
                }
            });
            this.optionsIcon.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions));
            ImageView imageView2 = this.optionsIcon;
            boolean z3 = LocaleController.isRTL;
            addView(imageView2, LayoutHelper.createFrame(40, 40, (z3 ? 3 : 5) | 16, z3 ? 8 : 4, 4, z3 ? 4 : 8, 4));
            Paint paint = new Paint();
            this.paint = paint;
            paint.setColor(Theme.getColor(Theme.key_featuredStickers_addButton));
            Paint paint2 = new Paint();
            this.revokedPaint = paint2;
            paint2.setColor(Theme.getColor(Theme.key_color_red));
            Drawable mutate = getContext().getResources().getDrawable(C3632R.C3634drawable.msg_link_1).mutate();
            this.linkIcon = mutate;
            mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            Drawable mutate2 = getContext().getResources().getDrawable(C3632R.C3634drawable.msg_link_2).mutate();
            this.revokedLinkIcon = mutate2;
            mutate2.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
            setWillNotDraw(false);
        }

        public /* synthetic */ void lambda$new$0(View view) {
            options();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int measuredWidth = LocaleController.isRTL ? getMeasuredWidth() - AndroidUtilities.m107dp(32) : AndroidUtilities.m107dp(32);
            float f = measuredWidth;
            canvas.drawCircle(f, getMeasuredHeight() / 2.0f, AndroidUtilities.m107dp(16), this.paint);
            float f2 = this.revokeT;
            float f3 = BitmapDescriptorFactory.HUE_RED;
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                canvas.drawCircle(f, getMeasuredHeight() / 2.0f, AndroidUtilities.m107dp(16) * this.revokeT, this.revokedPaint);
            }
            float f4 = this.revokeT;
            if (f4 < 1.0f) {
                this.linkIcon.setAlpha((int) ((1.0f - f4) * 255.0f));
                this.linkIcon.setBounds(measuredWidth - AndroidUtilities.m107dp(14), (getMeasuredHeight() / 2) - AndroidUtilities.m107dp(14), AndroidUtilities.m107dp(14) + measuredWidth, (getMeasuredHeight() / 2) + AndroidUtilities.m107dp(14));
                this.linkIcon.draw(canvas);
            }
            float f5 = this.revokeT;
            if (f5 > BitmapDescriptorFactory.HUE_RED) {
                this.revokedLinkIcon.setAlpha((int) (f5 * 255.0f));
                this.revokedLinkIcon.setBounds(measuredWidth - AndroidUtilities.m107dp(14), (getMeasuredHeight() / 2) - AndroidUtilities.m107dp(14), measuredWidth + AndroidUtilities.m107dp(14), (getMeasuredHeight() / 2) + AndroidUtilities.m107dp(14));
                this.revokedLinkIcon.draw(canvas);
            }
            if (this.needDivider) {
                if (!LocaleController.isRTL) {
                    f3 = AndroidUtilities.m107dp(64);
                }
                canvas.drawRect(f3, getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m107dp(64) : 0), getMeasuredHeight(), Theme.dividerPaint);
            }
        }

        public void setRevoked(final boolean z, boolean z2) {
            if ((z ? 1.0f : 0.0f) != this.revokeT) {
                ValueAnimator valueAnimator = this.valueAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.valueAnimator = null;
                }
                if (z2) {
                    float[] fArr = new float[2];
                    fArr[0] = this.revokeT;
                    fArr[1] = z ? 1.0f : 0.0f;
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
                    this.valueAnimator = ofFloat;
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.FilterCreateActivity$LinkCell$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            FilterCreateActivity.LinkCell.this.lambda$setRevoked$1(valueAnimator2);
                        }
                    });
                    this.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.FilterCreateActivity.LinkCell.1
                        {
                            LinkCell.this = this;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            LinkCell linkCell = LinkCell.this;
                            linkCell.revokeT = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                            linkCell.invalidate();
                        }
                    });
                    this.valueAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                    this.valueAnimator.setDuration(350L);
                    this.valueAnimator.start();
                    return;
                }
                this.revokeT = z ? 1.0f : 0.0f;
                invalidate();
            }
        }

        public /* synthetic */ void lambda$setRevoked$1(ValueAnimator valueAnimator) {
            this.revokeT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        public void setInvite(TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite, boolean z) {
            boolean z2 = this.lastInvite == tL_chatlists$TL_exportedChatlistInvite;
            this.lastInvite = tL_chatlists$TL_exportedChatlistInvite;
            String str = tL_chatlists$TL_exportedChatlistInvite.url;
            this.lastUrl = str;
            if (str.startsWith("http://")) {
                str = str.substring(7);
            }
            if (str.startsWith("https://")) {
                str = str.substring(8);
            }
            if (TextUtils.isEmpty(tL_chatlists$TL_exportedChatlistInvite.title)) {
                this.titleTextView.setText(str, z2);
            } else {
                this.titleTextView.setText(tL_chatlists$TL_exportedChatlistInvite.title, z2);
            }
            this.subtitleTextView.setText(LocaleController.formatPluralString("FilterInviteChats", tL_chatlists$TL_exportedChatlistInvite.peers.size(), new Object[0]), z2);
            if (this.needDivider != z) {
                this.needDivider = z;
                invalidate();
            }
            setRevoked(tL_chatlists$TL_exportedChatlistInvite.revoked, z2);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(60), 1073741824));
        }

        public void options() {
            BaseFragment baseFragment = this.fragment;
            if (baseFragment == null) {
                return;
            }
            ItemOptions makeOptions = ItemOptions.makeOptions(baseFragment, this);
            makeOptions.add(C3632R.C3634drawable.msg_qrcode, LocaleController.getString("GetQRCode", C3632R.string.GetQRCode), new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$LinkCell$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    FilterCreateActivity.LinkCell.this.qrcode();
                }
            });
            makeOptions.add(C3632R.C3634drawable.msg_delete, (CharSequence) LocaleController.getString("DeleteLink", C3632R.string.DeleteLink), true, new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$LinkCell$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    FilterCreateActivity.LinkCell.this.deleteLink();
                }
            });
            if (LocaleController.isRTL) {
                makeOptions.setGravity(3);
            }
            makeOptions.show();
        }

        private String getSlug() {
            String str = this.lastUrl;
            if (str == null) {
                return null;
            }
            return str.substring(str.lastIndexOf(47) + 1);
        }

        public void deleteLink() {
            String slug = getSlug();
            if (slug == null) {
                return;
            }
            TL_chatlists$TL_chatlists_deleteExportedInvite tL_chatlists$TL_chatlists_deleteExportedInvite = new TL_chatlists$TL_chatlists_deleteExportedInvite();
            TL_chatlists$TL_inputChatlistDialogFilter tL_chatlists$TL_inputChatlistDialogFilter = new TL_chatlists$TL_inputChatlistDialogFilter();
            tL_chatlists$TL_chatlists_deleteExportedInvite.chatlist = tL_chatlists$TL_inputChatlistDialogFilter;
            tL_chatlists$TL_inputChatlistDialogFilter.filter_id = this.filterId;
            tL_chatlists$TL_chatlists_deleteExportedInvite.slug = slug;
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$LinkCell$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    FilterCreateActivity.LinkCell.this.lambda$deleteLink$4();
                }
            };
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_chatlists$TL_chatlists_deleteExportedInvite, new RequestDelegate() { // from class: org.telegram.ui.FilterCreateActivity$LinkCell$$ExternalSyntheticLambda6
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    FilterCreateActivity.LinkCell.this.lambda$deleteLink$6(runnable, tLObject, tLRPC$TL_error);
                }
            });
            AndroidUtilities.runOnUIThread(runnable, 150L);
        }

        public /* synthetic */ void lambda$deleteLink$4() {
            onDelete(this.lastInvite);
        }

        public /* synthetic */ void lambda$deleteLink$6(final Runnable runnable, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$LinkCell$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    FilterCreateActivity.LinkCell.this.lambda$deleteLink$5(tLRPC$TL_error, runnable);
                }
            });
        }

        public /* synthetic */ void lambda$deleteLink$5(TLRPC$TL_error tLRPC$TL_error, Runnable runnable) {
            if (tLRPC$TL_error != null) {
                BulletinFactory.m65of(this.fragment).createErrorBulletin(LocaleController.getString("UnknownError", C3632R.string.UnknownError)).show();
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
        }

        public void qrcode() {
            if (this.lastUrl == null) {
                return;
            }
            QRCodeBottomSheet qRCodeBottomSheet = new QRCodeBottomSheet(getContext(), LocaleController.getString("InviteByQRCode", C3632R.string.InviteByQRCode), this.lastUrl, LocaleController.getString("QRCodeLinkHelpFolder", C3632R.string.QRCodeLinkHelpFolder), false);
            qRCodeBottomSheet.setCenterAnimation(C3632R.raw.qr_code_logo);
            qRCodeBottomSheet.show();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            String str;
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            StringBuilder sb = new StringBuilder();
            TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite = this.lastInvite;
            String str2 = "";
            if (tL_chatlists$TL_exportedChatlistInvite == null || TextUtils.isEmpty(tL_chatlists$TL_exportedChatlistInvite.title)) {
                str = "";
            } else {
                str = this.lastInvite.title + "\n ";
            }
            sb.append(str);
            sb.append(LocaleController.getString("InviteLink", C3632R.string.InviteLink));
            sb.append(", ");
            sb.append((Object) this.subtitleTextView.getText());
            TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite2 = this.lastInvite;
            if (tL_chatlists$TL_exportedChatlistInvite2 != null && TextUtils.isEmpty(tL_chatlists$TL_exportedChatlistInvite2.title)) {
                str2 = "\n\n" + this.lastInvite.url;
            }
            sb.append(str2);
            accessibilityNodeInfo.setContentDescription(sb.toString());
        }
    }

    public static void hideNew(int i) {
        SharedPreferences.Editor edit = MessagesController.getGlobalMainSettings().edit();
        edit.putBoolean("n_" + i, true).apply();
    }

    public static CharSequence withNew(int i, CharSequence charSequence, boolean z) {
        Context context;
        if (i >= 0) {
            SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
            if (globalMainSettings.getBoolean("n_" + i, false) || (context = ApplicationLoader.applicationContext) == null) {
                return charSequence;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
            spannableStringBuilder.append((CharSequence) "  ");
            SpannableString spannableString = new SpannableString("NEW");
            if (z) {
                Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.msg_other_new_outline).mutate();
                mutate.setBounds(0, -AndroidUtilities.m107dp(8), mutate.getIntrinsicWidth(), mutate.getIntrinsicHeight() - AndroidUtilities.m107dp(8));
                spannableString.setSpan(new ColorImageSpan(mutate, 0), 0, spannableString.length(), 33);
            } else {
                Drawable mutate2 = context.getResources().getDrawable(C3632R.C3634drawable.msg_other_new_filled).mutate();
                Drawable mutate3 = context.getResources().getDrawable(C3632R.C3634drawable.msg_other_new_filled_text).mutate();
                mutate2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_featuredStickers_unread), PorterDuff.Mode.MULTIPLY));
                mutate3.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_featuredStickers_buttonText), PorterDuff.Mode.MULTIPLY));
                CombinedDrawable combinedDrawable = new CombinedDrawable(mutate2, mutate3);
                combinedDrawable.setBounds(0, 0, combinedDrawable.getIntrinsicWidth(), combinedDrawable.getIntrinsicHeight());
                spannableString.setSpan(new ImageSpan(combinedDrawable, 0), 0, spannableString.length(), 33);
            }
            spannableStringBuilder.append((CharSequence) spannableString);
            return spannableStringBuilder;
        }
        return charSequence;
    }

    /* renamed from: org.telegram.ui.FilterCreateActivity$ColorImageSpan */
    /* loaded from: classes5.dex */
    public static class ColorImageSpan extends ImageSpan {
        int lastColor;

        public ColorImageSpan(Drawable drawable, int i) {
            super(drawable, i);
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            if (paint.getColor() != this.lastColor && getDrawable() != null) {
                Drawable drawable = getDrawable();
                int color = paint.getColor();
                this.lastColor = color;
                drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
            }
            super.draw(canvas, charSequence, i, i2, f, i3, i4, i5, paint);
        }
    }

    /* renamed from: org.telegram.ui.FilterCreateActivity$NewSpan */
    /* loaded from: classes5.dex */
    public static class NewSpan extends ReplacementSpan {
        Paint bgPaint;
        private int color;
        float height;
        StaticLayout layout;
        private boolean outline;
        TextPaint textPaint;
        float width;

        public NewSpan(boolean z) {
            this.textPaint = new TextPaint(1);
            this.bgPaint = new Paint(1);
            this.outline = z;
            this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            if (z) {
                this.bgPaint.setStyle(Paint.Style.STROKE);
                this.bgPaint.setStrokeWidth(AndroidUtilities.dpf2(1.33f));
                this.textPaint.setTextSize(AndroidUtilities.m107dp(10));
                this.textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
                this.textPaint.setStrokeWidth(AndroidUtilities.dpf2(0.2f));
                if (Build.VERSION.SDK_INT >= 21) {
                    this.textPaint.setLetterSpacing(0.03f);
                    return;
                }
                return;
            }
            this.bgPaint.setStyle(Paint.Style.FILL);
            this.textPaint.setTextSize(AndroidUtilities.m107dp(12));
        }

        public NewSpan(float f) {
            this.textPaint = new TextPaint(1);
            this.bgPaint = new Paint(1);
            this.outline = false;
            this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.bgPaint.setStyle(Paint.Style.FILL);
            this.textPaint.setTextSize(AndroidUtilities.m108dp(f));
        }

        public void setColor(int i) {
            this.color = i;
        }

        public StaticLayout makeLayout() {
            if (this.layout == null) {
                StaticLayout staticLayout = new StaticLayout("NEW", this.textPaint, AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
                this.layout = staticLayout;
                this.width = staticLayout.getLineWidth(0);
                this.height = this.layout.getHeight();
            }
            return this.layout;
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            makeLayout();
            return (int) (AndroidUtilities.m107dp(10) + this.width);
        }

        @Override // android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            float m108dp;
            makeLayout();
            int i6 = this.color;
            if (i6 == 0) {
                i6 = paint.getColor();
            }
            this.bgPaint.setColor(i6);
            if (this.outline) {
                this.textPaint.setColor(i6);
            } else {
                this.textPaint.setColor(AndroidUtilities.computePerceivedBrightness(i6) > 0.721f ? -16777216 : -1);
            }
            float m107dp = f + AndroidUtilities.m107dp(2);
            float m107dp2 = (i4 - this.height) + AndroidUtilities.m107dp(1);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(m107dp, m107dp2, this.width + m107dp, this.height + m107dp2);
            if (this.outline) {
                m108dp = AndroidUtilities.m108dp(3.66f);
                rectF.left -= AndroidUtilities.m107dp(4);
                rectF.top -= AndroidUtilities.m108dp(2.33f);
                rectF.right += AndroidUtilities.m108dp(3.66f);
                rectF.bottom += AndroidUtilities.m108dp(1.33f);
            } else {
                m108dp = AndroidUtilities.m108dp(4.4f);
                rectF.inset(AndroidUtilities.m107dp(-4), AndroidUtilities.m108dp(-2.33f));
            }
            canvas.drawRoundRect(rectF, m108dp, m108dp, this.bgPaint);
            canvas.save();
            canvas.translate(m107dp, m107dp2);
            this.layout.draw(canvas);
            canvas.restore();
        }
    }

    private void onUpdate(final boolean z, final int i) {
        MessagesController.DialogFilter dialogFilter;
        if (!this.showedUpdateBulletin && (dialogFilter = this.filter) != null && dialogFilter.isChatlist() && this.filter.isMyChatlist()) {
            this.showedUpdateBulletin = true;
            this.showBulletinOnResume = new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    FilterCreateActivity.this.lambda$onUpdate$31(z, i);
                }
            };
            if (getLayoutContainer() != null) {
                this.showBulletinOnResume.run();
                this.showBulletinOnResume = null;
            }
        }
    }

    public /* synthetic */ void lambda$onUpdate$31(boolean z, int i) {
        String formatPluralString;
        BulletinFactory m65of = BulletinFactory.m65of(this);
        int i2 = z ? C3632R.raw.folder_in : C3632R.raw.folder_out;
        if (z) {
            formatPluralString = LocaleController.formatPluralString("FolderLinkAddedChats", i, new Object[0]);
        } else {
            formatPluralString = LocaleController.formatPluralString("FolderLinkRemovedChats", i, new Object[0]);
        }
        m65of.createSimpleBulletin(i2, formatPluralString, LocaleController.getString("FolderLinkChatlistUpdate", C3632R.string.FolderLinkChatlistUpdate)).setDuration(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS).show();
    }

    /* renamed from: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet */
    /* loaded from: classes5.dex */
    public static class FilterInvitesBottomSheet extends BottomSheetWithRecyclerListView {
        private AdapterWithDiffUtils adapter;
        private FrameLayout bulletinContainer;
        private TextView button;
        private MessagesController.DialogFilter filter;
        private ArrayList<TL_chatlists$TL_exportedChatlistInvite> invites;
        private ArrayList<ItemInner> items;
        private ArrayList<ItemInner> oldItems;

        public static void show(final BaseFragment baseFragment, final MessagesController.DialogFilter dialogFilter, final Runnable runnable) {
            final long currentTimeMillis = System.currentTimeMillis();
            TL_chatlists$TL_chatlists_getExportedInvites tL_chatlists$TL_chatlists_getExportedInvites = new TL_chatlists$TL_chatlists_getExportedInvites();
            TL_chatlists$TL_inputChatlistDialogFilter tL_chatlists$TL_inputChatlistDialogFilter = new TL_chatlists$TL_inputChatlistDialogFilter();
            tL_chatlists$TL_chatlists_getExportedInvites.chatlist = tL_chatlists$TL_inputChatlistDialogFilter;
            tL_chatlists$TL_inputChatlistDialogFilter.filter_id = dialogFilter.f1538id;
            baseFragment.getConnectionsManager().sendRequest(tL_chatlists$TL_chatlists_getExportedInvites, new RequestDelegate() { // from class: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda3
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    FilterCreateActivity.FilterInvitesBottomSheet.lambda$show$1(BaseFragment.this, dialogFilter, runnable, currentTimeMillis, tLObject, tLRPC$TL_error);
                }
            });
        }

        public static /* synthetic */ void lambda$show$1(final BaseFragment baseFragment, final MessagesController.DialogFilter dialogFilter, final Runnable runnable, final long j, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FilterCreateActivity.FilterInvitesBottomSheet.lambda$show$0(BaseFragment.this, tLObject, dialogFilter, tLRPC$TL_error, runnable, j);
                }
            });
        }

        public static /* synthetic */ void lambda$show$0(BaseFragment baseFragment, TLObject tLObject, MessagesController.DialogFilter dialogFilter, TLRPC$TL_error tLRPC$TL_error, Runnable runnable, long j) {
            if (baseFragment == null || baseFragment.getContext() == null) {
                return;
            }
            if (tLObject instanceof TL_chatlists$TL_chatlists_exportedInvites) {
                TL_chatlists$TL_chatlists_exportedInvites tL_chatlists$TL_chatlists_exportedInvites = (TL_chatlists$TL_chatlists_exportedInvites) tLObject;
                baseFragment.getMessagesController().putChats(tL_chatlists$TL_chatlists_exportedInvites.chats, false);
                baseFragment.getMessagesController().putUsers(tL_chatlists$TL_chatlists_exportedInvites.users, false);
                new FilterInvitesBottomSheet(baseFragment, dialogFilter, tL_chatlists$TL_chatlists_exportedInvites.invites).show();
            } else if (tLRPC$TL_error != null && "FILTER_ID_INVALID".equals(tLRPC$TL_error.text) && !dialogFilter.isDefault()) {
                new FilterInvitesBottomSheet(baseFragment, dialogFilter, null).show();
            } else {
                BulletinFactory.m65of(baseFragment).createErrorBulletin(LocaleController.getString("UnknownError", C3632R.string.UnknownError)).show();
            }
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable, Math.max(0L, 200 - (System.currentTimeMillis() - j)));
            }
        }

        public FilterInvitesBottomSheet(BaseFragment baseFragment, MessagesController.DialogFilter dialogFilter, ArrayList<TL_chatlists$TL_exportedChatlistInvite> arrayList) {
            super(baseFragment, false, false);
            this.invites = new ArrayList<>();
            this.oldItems = new ArrayList<>();
            this.items = new ArrayList<>();
            this.filter = dialogFilter;
            if (arrayList != null) {
                this.invites.addAll(arrayList);
            }
            updateRows(false);
            this.actionBar.setTitle(getTitle());
            fixNavigationBar(Theme.getColor(Theme.key_dialogBackground));
            TextView textView = new TextView(getContext());
            this.button = textView;
            textView.setTextSize(1, 14.0f);
            this.button.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
            this.button.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.button.setBackground(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, 8.0f));
            this.button.setText(LocaleController.getString("FolderLinkShareButton", C3632R.string.FolderLinkShareButton));
            this.button.setGravity(17);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FilterCreateActivity.FilterInvitesBottomSheet.this.lambda$new$2(view);
                }
            });
            this.containerView.addView(this.button, LayoutHelper.createFrame(-1, 48, 87, 16, 10, 16, 10));
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.bulletinContainer = frameLayout;
            this.containerView.addView(frameLayout, LayoutHelper.createFrame(-1, 100, 80, 6, 0, 6, 0));
            updateCreateInviteButton();
        }

        public /* synthetic */ void lambda$new$2(View view) {
            createLink();
        }

        public void updateCreateInviteButton() {
            this.button.setVisibility(this.invites.isEmpty() ? 0 : 8);
            this.recyclerListView.setPadding(AndroidUtilities.m107dp(6), 0, AndroidUtilities.m107dp(6), this.invites.isEmpty() ? AndroidUtilities.m107dp(68) : 0);
        }

        @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
        protected CharSequence getTitle() {
            int i = C3632R.string.FolderLinkShareTitle;
            Object[] objArr = new Object[1];
            MessagesController.DialogFilter dialogFilter = this.filter;
            objArr[0] = dialogFilter == null ? "" : dialogFilter.name;
            return LocaleController.formatString("FolderLinkShareTitle", i, objArr);
        }

        public void updateRows(boolean z) {
            this.oldItems.clear();
            this.oldItems.addAll(this.items);
            this.items.clear();
            this.items.add(ItemInner.asHeader(null));
            if (!this.invites.isEmpty()) {
                this.items.add(ItemInner.asShadow(null));
                this.items.add(ItemInner.asCreateLink());
                for (int i = 0; i < this.invites.size(); i++) {
                    this.items.add(ItemInner.asLink(this.invites.get(i)));
                }
            }
            AdapterWithDiffUtils adapterWithDiffUtils = this.adapter;
            if (adapterWithDiffUtils != null) {
                if (z) {
                    adapterWithDiffUtils.setItems(this.oldItems, this.items);
                } else {
                    notifyDataSetChanged();
                }
            }
        }

        @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
        protected RecyclerListView.SelectionAdapter createAdapter() {
            AdapterWithDiffUtils adapterWithDiffUtils = new AdapterWithDiffUtils() { // from class: org.telegram.ui.FilterCreateActivity.FilterInvitesBottomSheet.1
                {
                    FilterInvitesBottomSheet.this = this;
                }

                private RecyclerView.Adapter realAdapter() {
                    return ((BottomSheetWithRecyclerListView) FilterInvitesBottomSheet.this).recyclerListView.getAdapter();
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void notifyItemChanged(int i) {
                    realAdapter().notifyItemChanged(i + 1);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void notifyItemInserted(int i) {
                    realAdapter().notifyItemInserted(i + 1);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void notifyItemMoved(int i, int i2) {
                    realAdapter().notifyItemMoved(i + 1, i2);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void notifyItemRangeChanged(int i, int i2) {
                    realAdapter().notifyItemRangeChanged(i + 1, i2);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void notifyItemRangeChanged(int i, int i2, Object obj) {
                    realAdapter().notifyItemRangeChanged(i + 1, i2, obj);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void notifyItemRangeInserted(int i, int i2) {
                    realAdapter().notifyItemRangeInserted(i + 1, i2);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void notifyItemRangeRemoved(int i, int i2) {
                    realAdapter().notifyItemRangeRemoved(i + 1, i2);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void notifyItemRemoved(int i) {
                    realAdapter().notifyItemRemoved(i + 1);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void notifyDataSetChanged() {
                    realAdapter().notifyDataSetChanged();
                }

                @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
                public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                    int itemViewType = viewHolder.getItemViewType();
                    return itemViewType == 8 || itemViewType == 7;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                    View textInfoPrivacyCell;
                    if (i == 8) {
                        textInfoPrivacyCell = new CreateLinkCell(FilterInvitesBottomSheet.this.getContext());
                        textInfoPrivacyCell.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground));
                    } else if (i == 7) {
                        textInfoPrivacyCell = new C62141(FilterInvitesBottomSheet.this.getContext(), null, ((BottomSheet) FilterInvitesBottomSheet.this).currentAccount, FilterInvitesBottomSheet.this.filter.f1538id);
                        textInfoPrivacyCell.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground));
                    } else if (i == 6 || i == 3) {
                        textInfoPrivacyCell = new TextInfoPrivacyCell(FilterInvitesBottomSheet.this.getContext());
                        textInfoPrivacyCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
                    } else {
                        FilterInvitesBottomSheet filterInvitesBottomSheet = FilterInvitesBottomSheet.this;
                        textInfoPrivacyCell = new HeaderView(filterInvitesBottomSheet.getContext());
                    }
                    return new RecyclerListView.Holder(textInfoPrivacyCell);
                }

                /* renamed from: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet$1$1 */
                /* loaded from: classes5.dex */
                public class C62141 extends LinkCell {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C62141(Context context, BaseFragment baseFragment, int i, int i2) {
                        super(context, baseFragment, i, i2);
                        C62131.this = r1;
                    }

                    @Override // org.telegram.p043ui.FilterCreateActivity.LinkCell
                    public void options() {
                        ItemOptions makeOptions = ItemOptions.makeOptions(((BottomSheet) FilterInvitesBottomSheet.this).container, this);
                        makeOptions.add(C3632R.C3634drawable.msg_copy, LocaleController.getString("CopyLink", C3632R.string.CopyLink), new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet$1$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                FilterCreateActivity.FilterInvitesBottomSheet.C62131.C62141.this.copy();
                            }
                        });
                        makeOptions.add(C3632R.C3634drawable.msg_qrcode, LocaleController.getString("GetQRCode", C3632R.string.GetQRCode), new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet$1$1$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                FilterCreateActivity.FilterInvitesBottomSheet.C62131.C62141.this.qrcode();
                            }
                        });
                        makeOptions.add(C3632R.C3634drawable.msg_delete, (CharSequence) LocaleController.getString("DeleteLink", C3632R.string.DeleteLink), true, new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet$1$1$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                FilterCreateActivity.FilterInvitesBottomSheet.C62131.C62141.this.deleteLink();
                            }
                        });
                        if (LocaleController.isRTL) {
                            makeOptions.setGravity(3);
                        }
                        makeOptions.show();
                    }

                    public void copy() {
                        String str = this.lastUrl;
                        if (str != null && AndroidUtilities.addToClipboard(str)) {
                            BulletinFactory.m66of(FilterInvitesBottomSheet.this.bulletinContainer, null).createCopyLinkBulletin().show();
                        }
                    }

                    @Override // org.telegram.p043ui.FilterCreateActivity.LinkCell
                    protected void onDelete(TL_chatlists$TL_exportedChatlistInvite tL_chatlists$TL_exportedChatlistInvite) {
                        FilterInvitesBottomSheet.this.invites.remove(tL_chatlists$TL_exportedChatlistInvite);
                        FilterInvitesBottomSheet.this.updateCreateInviteButton();
                        FilterInvitesBottomSheet.this.updateRows(true);
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemViewType(int i) {
                    return ((ItemInner) FilterInvitesBottomSheet.this.items.get(i)).viewType;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                    int itemViewType = viewHolder.getItemViewType();
                    ItemInner itemInner = (ItemInner) FilterInvitesBottomSheet.this.items.get(i);
                    boolean z = true;
                    int i2 = i + 1;
                    if (i2 >= FilterInvitesBottomSheet.this.items.size() || ((ItemInner) FilterInvitesBottomSheet.this.items.get(i2)).isShadow()) {
                        z = false;
                    }
                    if (itemViewType == 7) {
                        ((LinkCell) viewHolder.itemView).setInvite(itemInner.link, z);
                    } else if (itemViewType != 6 && itemViewType != 3) {
                        if (itemViewType != 0 && itemViewType == 8) {
                            CreateLinkCell createLinkCell = (CreateLinkCell) viewHolder.itemView;
                            createLinkCell.setText(LocaleController.getString("CreateNewInviteLink", C3632R.string.CreateNewInviteLink));
                            createLinkCell.setDivider(z);
                        }
                    } else {
                        TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                        if (itemViewType == 6) {
                            textInfoPrivacyCell.setFixedSize(0);
                            textInfoPrivacyCell.setText(itemInner.text);
                        } else {
                            textInfoPrivacyCell.setFixedSize(12);
                            textInfoPrivacyCell.setText("");
                        }
                        textInfoPrivacyCell.setForeground(Theme.getThemedDrawableByKey(FilterInvitesBottomSheet.this.getContext(), z ? C3632R.C3634drawable.greydivider : C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemCount() {
                    return FilterInvitesBottomSheet.this.items.size();
                }
            };
            this.adapter = adapterWithDiffUtils;
            return adapterWithDiffUtils;
        }

        /* renamed from: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet$HeaderView */
        /* loaded from: classes5.dex */
        public class HeaderView extends FrameLayout {
            private final ImageView closeImageView;
            private final ImageView imageView;
            private final TextView subtitleView;
            private final TextView titleView;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public HeaderView(Context context) {
                super(context);
                String string;
                FilterInvitesBottomSheet.this = r12;
                ImageView imageView = new ImageView(context);
                this.imageView = imageView;
                imageView.setScaleType(ImageView.ScaleType.CENTER);
                imageView.setImageResource(C3632R.C3634drawable.msg_limit_links);
                imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
                imageView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m107dp(22), Theme.getColor(Theme.key_featuredStickers_addButton)));
                addView(imageView, LayoutHelper.createFrame(54, 44, 49, 0, 22, 0, 0));
                TextView textView = new TextView(context);
                this.titleView = textView;
                textView.setText(r12.getTitle());
                textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                textView.setTextSize(1, 20.0f);
                int i = Theme.key_dialogTextBlack;
                textView.setTextColor(Theme.getColor(i));
                textView.setGravity(1);
                addView(textView, LayoutHelper.createFrame(-2, -2, 49, 20, 84, 20, 0));
                TextView textView2 = new TextView(context);
                this.subtitleView = textView2;
                if (r12.invites.isEmpty()) {
                    string = LocaleController.getString("FolderLinkShareSubtitleEmpty", C3632R.string.FolderLinkShareSubtitleEmpty);
                } else {
                    string = LocaleController.getString("FolderLinkShareSubtitle", C3632R.string.FolderLinkShareSubtitle);
                }
                textView2.setText(string);
                textView2.setLines(2);
                textView2.setGravity(1);
                textView2.setTextSize(1, 14.0f);
                textView2.setTextColor(Theme.getColor(i));
                addView(textView2, LayoutHelper.createFrame(-2, -2, 49, 30, 117, 30, 0));
                ImageView imageView2 = new ImageView(context);
                this.closeImageView = imageView2;
                imageView2.setScaleType(ImageView.ScaleType.CENTER);
                imageView2.setImageResource(C3632R.C3634drawable.msg_close);
                imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText5), PorterDuff.Mode.MULTIPLY));
                imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet$HeaderView$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        FilterCreateActivity.FilterInvitesBottomSheet.HeaderView.this.lambda$new$0(view);
                    }
                });
                addView(imageView2, LayoutHelper.createFrame(48, 48, 53, 0, -4, 2, 0));
            }

            public /* synthetic */ void lambda$new$0(View view) {
                FilterInvitesBottomSheet.this.dismiss();
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(171), 1073741824));
            }
        }

        private void createLink() {
            ArrayList<TLRPC$InputPeer> arrayList = new ArrayList<>();
            for (int i = 0; i < this.filter.alwaysShow.size(); i++) {
                long longValue = this.filter.alwaysShow.get(i).longValue();
                if (longValue < 0 && FilterCreateActivity.canAddToFolder(getBaseFragment().getMessagesController().getChat(Long.valueOf(-longValue)))) {
                    arrayList.add(getBaseFragment().getMessagesController().getInputPeer(longValue));
                }
            }
            if (arrayList.isEmpty()) {
                dismiss();
                getBaseFragment().presentFragment(new FilterChatlistActivity(this.filter, null));
                return;
            }
            TL_chatlists$TL_chatlists_exportChatlistInvite tL_chatlists$TL_chatlists_exportChatlistInvite = new TL_chatlists$TL_chatlists_exportChatlistInvite();
            TL_chatlists$TL_inputChatlistDialogFilter tL_chatlists$TL_inputChatlistDialogFilter = new TL_chatlists$TL_inputChatlistDialogFilter();
            tL_chatlists$TL_chatlists_exportChatlistInvite.chatlist = tL_chatlists$TL_inputChatlistDialogFilter;
            tL_chatlists$TL_inputChatlistDialogFilter.filter_id = this.filter.f1538id;
            tL_chatlists$TL_chatlists_exportChatlistInvite.peers = arrayList;
            tL_chatlists$TL_chatlists_exportChatlistInvite.title = "";
            getBaseFragment().getConnectionsManager().sendRequest(tL_chatlists$TL_chatlists_exportChatlistInvite, new RequestDelegate() { // from class: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    FilterCreateActivity.FilterInvitesBottomSheet.this.lambda$createLink$4(tLObject, tLRPC$TL_error);
                }
            });
        }

        public /* synthetic */ void lambda$createLink$4(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    FilterCreateActivity.FilterInvitesBottomSheet.this.lambda$createLink$3(tLRPC$TL_error, tLObject);
                }
            });
        }

        public /* synthetic */ void lambda$createLink$3(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject) {
            if (FilterCreateActivity.processErrors(tLRPC$TL_error, getBaseFragment(), BulletinFactory.m66of(this.bulletinContainer, null)) && (tLObject instanceof TL_chatlists$TL_chatlists_exportedChatlistInvite)) {
                FilterCreateActivity.hideNew(0);
                dismiss();
                getBaseFragment().getMessagesController().loadRemoteFilters(true);
                getBaseFragment().presentFragment(new FilterChatlistActivity(this.filter, ((TL_chatlists$TL_chatlists_exportedChatlistInvite) tLObject).invite));
            }
        }

        @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
        public void onViewCreated(FrameLayout frameLayout) {
            super.onViewCreated(frameLayout);
            this.recyclerListView.setOverScrollMode(2);
            this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.FilterCreateActivity$FilterInvitesBottomSheet$$ExternalSyntheticLambda5
                @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i) {
                    FilterCreateActivity.FilterInvitesBottomSheet.this.lambda$onViewCreated$5(view, i);
                }
            });
            DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
            defaultItemAnimator.setSupportsChangeAnimations(false);
            defaultItemAnimator.setDelayAnimations(false);
            defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            defaultItemAnimator.setDurations(350L);
            this.recyclerListView.setItemAnimator(defaultItemAnimator);
        }

        public /* synthetic */ void lambda$onViewCreated$5(View view, int i) {
            int i2 = i - 1;
            if (i2 < 0 || i2 >= this.items.size()) {
                return;
            }
            ItemInner itemInner = this.items.get(i2);
            int i3 = itemInner.viewType;
            if (i3 == 7) {
                dismiss();
                getBaseFragment().presentFragment(new FilterChatlistActivity(this.filter, itemInner.link));
            } else if (i3 == 8) {
                createLink();
            }
        }
    }

    public static boolean processErrors(TLRPC$TL_error tLRPC$TL_error, BaseFragment baseFragment, BulletinFactory bulletinFactory) {
        if (tLRPC$TL_error != null && !TextUtils.isEmpty(tLRPC$TL_error.text)) {
            if ("INVITE_PEERS_TOO_MUCH".equals(tLRPC$TL_error.text)) {
                new LimitReachedBottomSheet(baseFragment, baseFragment.getContext(), 4, baseFragment.getCurrentAccount(), null).show();
            } else if ("PEERS_LIST_EMPTY".equals(tLRPC$TL_error.text)) {
                bulletinFactory.createErrorBulletin(LocaleController.getString("FolderLinkNoChatsError", C3632R.string.FolderLinkNoChatsError)).show();
            } else if ("USER_CHANNELS_TOO_MUCH".equals(tLRPC$TL_error.text)) {
                bulletinFactory.createErrorBulletin(LocaleController.getString("FolderLinkOtherAdminLimitError", C3632R.string.FolderLinkOtherAdminLimitError)).show();
            } else if ("CHANNELS_TOO_MUCH".equals(tLRPC$TL_error.text)) {
                new LimitReachedBottomSheet(baseFragment, baseFragment.getContext(), 5, baseFragment.getCurrentAccount(), null).show();
            } else if ("INVITES_TOO_MUCH".equals(tLRPC$TL_error.text)) {
                new LimitReachedBottomSheet(baseFragment, baseFragment.getContext(), 12, baseFragment.getCurrentAccount(), null).show();
            } else if ("CHATLISTS_TOO_MUCH".equals(tLRPC$TL_error.text)) {
                new LimitReachedBottomSheet(baseFragment, baseFragment.getContext(), 13, baseFragment.getCurrentAccount(), null).show();
            } else if ("INVITE_SLUG_EXPIRED".equals(tLRPC$TL_error.text)) {
                bulletinFactory.createErrorBulletin(LocaleController.getString("NoFolderFound", C3632R.string.NoFolderFound)).show();
            } else if ("FILTER_INCLUDE_TOO_MUCH".equals(tLRPC$TL_error.text)) {
                new LimitReachedBottomSheet(baseFragment, baseFragment.getContext(), 4, baseFragment.getCurrentAccount(), null).show();
            } else if ("DIALOG_FILTERS_TOO_MUCH".equals(tLRPC$TL_error.text)) {
                new LimitReachedBottomSheet(baseFragment, baseFragment.getContext(), 3, baseFragment.getCurrentAccount(), null).show();
            } else {
                bulletinFactory.createErrorBulletin(LocaleController.getString("UnknownError", C3632R.string.UnknownError)).show();
            }
        }
        return true;
    }
}
