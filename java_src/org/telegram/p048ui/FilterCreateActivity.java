package org.telegram.p048ui;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.p031ui.base.mvp.JavaMvpFragment;
import com.smedialink.storage.data.repository.topics.Topic;
import com.smedialink.storage.domain.model.filters.FilterIcon;
import com.smedialink.storage.domain.model.filters.FilterSettingsModel;
import com.smedialink.storage.domain.model.topics.TopicModel;
import com.smedialink.utils.extentions.model.filter.FilterIconExtKt;
import com.smedialink.utils.extentions.model.topic.TopicExtKt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Set;
import org.fork.enums.FilterActivityType;
import org.fork.p046ui.dialog.SelectFabsBottomSheet;
import org.fork.p046ui.dialog.SelectIconBottomSheet;
import org.fork.p046ui.view.FabsCell;
import org.fork.p046ui.view.PollEditTextCellWrapper;
import org.fork.utils.Callbacks$Callback;
import org.fork.utils.Callbacks$Callback1;
import org.fork.utils.Callbacks$Callback2;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.p048ui.ActionBar.ActionBarMenu;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.SimpleTextView;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.PollEditTextCell;
import org.telegram.p048ui.Cells.ShadowSectionCell;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Cells.UserCell;
import org.telegram.p048ui.Components.EditTextBoldCursor;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RLottieImageView;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.FilterCreateActivity;
import org.telegram.p048ui.UsersSelectActivity;
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
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.FilterCreateActivity */
/* loaded from: classes5.dex */
public class FilterCreateActivity extends JavaMvpFragment {
    private ListAdapter adapter;
    private boolean creatingNew;
    private ActionBarMenuItem doneItem;
    private int excludeAddRow;
    private int excludeArchivedRow;
    private int excludeEndRow;
    private boolean excludeExpanded;
    private int excludeHeaderRow;
    private int excludeMutedRow;
    private int excludeReadRow;
    private int excludeSectionRow;
    private int excludeShowMoreRow;
    private int excludeStartRow;
    private MessagesController.DialogFilter filter;
    private int filterFabRow;
    private int filterFabSectionRow;
    private boolean hasUserChanged;
    private int imageRow;
    private int includeAddRow;
    private int includeBotsRow;
    private int includeChannelsRow;
    private int includeContactsRow;
    private int includeEndRow;
    private boolean includeExpanded;
    private int includeGroupsRow;
    private int includeHeaderRow;
    private int includeNonContactsRow;
    private int includeSectionRow;
    private int includeShowMoreRow;
    private int includeStartRow;
    private boolean isAutoTopic;
    private RecyclerListView listView;
    private boolean nameChangedManually;
    private int namePreSectionRow;
    private int nameRow;
    private int nameSectionRow;
    private ArrayList<Long> newAlwaysShow;
    private int newFilterFlags;
    private String newFilterName;
    private FilterSettingsModel newFilterSettings;
    private ArrayList<Long> newNeverShow;
    private LongSparseIntArray newPinned;
    private Callbacks$Callback onDoneCallback;
    private PollEditTextCellWrapper pollEditTextCellWrapper;
    private int removeRow;
    private int removeSectionRow;
    private int rowCount;
    private TopicModel topic;
    private Topic topicNewIcon;
    private final FilterActivityType type;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void access$4300(FilterCreateActivity filterCreateActivity) {
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

    public void setOnDoneCallback(Callbacks$Callback callbacks$Callback) {
        this.onDoneCallback = callbacks$Callback;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        dismissCurrentDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showIconSelectAlert() {
        Activity parentActivity = getParentActivity();
        FilterActivityType filterActivityType = this.type;
        FilterSettingsModel filterSettingsModel = this.newFilterSettings;
        showDialog(new SelectIconBottomSheet(parentActivity, filterActivityType, filterSettingsModel != null ? filterSettingsModel.getIcon() : null, this.topicNewIcon, new Callbacks$Callback2() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda10
            @Override // org.fork.utils.Callbacks$Callback2
            public final void invoke(Object obj, Object obj2) {
                FilterCreateActivity.this.lambda$showIconSelectAlert$0((FilterIcon) obj, (Topic) obj2);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
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
                this.imageView.setAnimation(C3286R.C3291raw.fork_topic_new, 125, 125);
            } else {
                this.imageView.setAnimation(C3286R.C3291raw.filter_new, 100, 100);
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

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (this.imageView.isPlaying()) {
                return;
            }
            this.imageView.setProgress(BitmapDescriptorFactory.HUE_RED);
            this.imageView.playAnimation();
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(156), 1073741824));
        }
    }

    public FilterCreateActivity(TopicModel topicModel, Set<Long> set, FilterActivityType filterActivityType) {
        this(null, null, topicModel, set, filterActivityType);
    }

    public FilterCreateActivity(MessagesController.DialogFilter dialogFilter, ArrayList<Long> arrayList, TopicModel topicModel, Set<Long> set, FilterActivityType filterActivityType) {
        TopicModel topicModel2;
        this.rowCount = 0;
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
                topicModel2 = new TopicModel(getTopicsController().calcNextId(), null, null, getTopicsController().calcNextOrder(), new HashSet(), hashSet, hashSet2, hashSet3);
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
            dialogFilter3.f1439id = 2;
            while (getMessagesController().dialogFiltersById.get(this.filter.f1439id) != null) {
                this.filter.f1439id++;
            }
            this.filter.name = "";
            this.creatingNew = true;
        }
        this.newFilterSettings = getFiltersController().getSettings(this.filter.f1439id).getCopy();
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

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        updateRows();
        return super.onFragmentCreate();
    }

    private void updateRows() {
        this.rowCount = 0;
        if (this.creatingNew) {
            this.rowCount = 0 + 1;
            this.imageRow = 0;
            this.namePreSectionRow = -1;
        } else {
            this.imageRow = -1;
            this.rowCount = 0 + 1;
            this.namePreSectionRow = 0;
        }
        int i = this.rowCount;
        int i2 = i + 1;
        this.rowCount = i2;
        this.nameRow = i;
        int i3 = i2 + 1;
        this.rowCount = i3;
        this.nameSectionRow = i2;
        if (this.type == FilterActivityType.FILTER) {
            int i4 = i3 + 1;
            this.rowCount = i4;
            this.filterFabRow = i3;
            this.rowCount = i4 + 1;
            this.filterFabSectionRow = i4;
        } else {
            this.filterFabSectionRow = -1;
            this.filterFabRow = -1;
            if (this.isAutoTopic) {
                this.rowCount = i;
                this.nameSectionRow = -1;
                this.nameRow = -1;
            }
        }
        int i5 = this.rowCount;
        int i6 = i5 + 1;
        this.rowCount = i6;
        this.includeHeaderRow = i5;
        int i7 = i6 + 1;
        this.rowCount = i7;
        this.includeAddRow = i6;
        int i8 = this.newFilterFlags;
        if ((MessagesController.DIALOG_FILTER_FLAG_CONTACTS & i8) != 0) {
            this.rowCount = i7 + 1;
            this.includeContactsRow = i7;
        } else {
            this.includeContactsRow = -1;
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS & i8) != 0) {
            int i9 = this.rowCount;
            this.rowCount = i9 + 1;
            this.includeNonContactsRow = i9;
        } else {
            this.includeNonContactsRow = -1;
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_GROUPS & i8) != 0) {
            int i10 = this.rowCount;
            this.rowCount = i10 + 1;
            this.includeGroupsRow = i10;
        } else {
            this.includeGroupsRow = -1;
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_CHANNELS & i8) != 0) {
            int i11 = this.rowCount;
            this.rowCount = i11 + 1;
            this.includeChannelsRow = i11;
        } else {
            this.includeChannelsRow = -1;
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_BOTS & i8) != 0) {
            int i12 = this.rowCount;
            this.rowCount = i12 + 1;
            this.includeBotsRow = i12;
        } else {
            this.includeBotsRow = -1;
        }
        if (!this.newAlwaysShow.isEmpty()) {
            this.includeStartRow = this.rowCount;
            int size = (this.includeExpanded || this.newAlwaysShow.size() < 8) ? this.newAlwaysShow.size() : Math.min(5, this.newAlwaysShow.size());
            int i13 = this.rowCount + size;
            this.rowCount = i13;
            this.includeEndRow = i13;
            if (size != this.newAlwaysShow.size()) {
                int i14 = this.rowCount;
                this.rowCount = i14 + 1;
                this.includeShowMoreRow = i14;
            } else {
                this.includeShowMoreRow = -1;
            }
        } else {
            this.includeStartRow = -1;
            this.includeEndRow = -1;
            this.includeShowMoreRow = -1;
        }
        int i15 = this.rowCount;
        int i16 = i15 + 1;
        this.rowCount = i16;
        this.includeSectionRow = i15;
        int i17 = i16 + 1;
        this.rowCount = i17;
        this.excludeHeaderRow = i16;
        int i18 = i17 + 1;
        this.rowCount = i18;
        this.excludeAddRow = i17;
        int i19 = this.newFilterFlags;
        if ((MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED & i19) != 0) {
            this.rowCount = i18 + 1;
            this.excludeMutedRow = i18;
        } else {
            this.excludeMutedRow = -1;
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ & i19) != 0) {
            int i20 = this.rowCount;
            this.rowCount = i20 + 1;
            this.excludeReadRow = i20;
        } else {
            this.excludeReadRow = -1;
        }
        if ((i19 & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED) != 0) {
            int i21 = this.rowCount;
            this.rowCount = i21 + 1;
            this.excludeArchivedRow = i21;
        } else {
            this.excludeArchivedRow = -1;
        }
        if (!this.newNeverShow.isEmpty()) {
            this.excludeStartRow = this.rowCount;
            int size2 = (this.excludeExpanded || this.newNeverShow.size() < 8) ? this.newNeverShow.size() : Math.min(5, this.newNeverShow.size());
            int i22 = this.rowCount + size2;
            this.rowCount = i22;
            this.excludeEndRow = i22;
            if (size2 != this.newNeverShow.size()) {
                int i23 = this.rowCount;
                this.rowCount = i23 + 1;
                this.excludeShowMoreRow = i23;
            } else {
                this.excludeShowMoreRow = -1;
            }
        } else {
            this.excludeStartRow = -1;
            this.excludeEndRow = -1;
            this.excludeShowMoreRow = -1;
        }
        int i24 = this.rowCount;
        int i25 = i24 + 1;
        this.rowCount = i25;
        this.excludeSectionRow = i24;
        if (!this.creatingNew) {
            int i26 = i25 + 1;
            this.rowCount = i26;
            this.removeRow = i25;
            this.rowCount = i26 + 1;
            this.removeSectionRow = i26;
        } else {
            this.removeRow = -1;
            this.removeSectionRow = -1;
        }
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(Context context) {
        super.createView(context);
        this.actionBar.setBackButtonImage(C3286R.C3288drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        ActionBarMenu createMenu = this.actionBar.createMenu();
        if (this.creatingNew) {
            if (this.type == FilterActivityType.TOPIC) {
                this.actionBar.setTitle(LocaleController.getInternalString(C3286R.string.topic_new));
            } else {
                this.actionBar.setTitle(LocaleController.getString("FilterNew", C3286R.string.FilterNew));
            }
        } else {
            TextPaint textPaint = new TextPaint(1);
            textPaint.setTextSize(AndroidUtilities.m50dp(20));
            if (this.type == FilterActivityType.TOPIC) {
                if (this.topic.isUserTopic()) {
                    this.actionBar.setTitle(Emoji.replaceEmoji(this.topic.getName(), textPaint.getFontMetricsInt(), AndroidUtilities.m50dp(20), false));
                } else if (this.topic.isAutoTopic()) {
                    this.actionBar.setTitle(LocaleController.getInternalString(TopicExtKt.info(this.topic.getIcon()).getTitleResId()));
                }
            } else {
                this.actionBar.setTitle(Emoji.replaceEmoji(this.filter.name, textPaint.getFontMetricsInt(), AndroidUtilities.m50dp(20), false));
            }
        }
        this.actionBar.setActionBarMenuOnItemClick(new C3351ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.FilterCreateActivity.1
            @Override // org.telegram.p048ui.ActionBar.C3351ActionBar.ActionBarMenuOnItemClick
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
        this.doneItem = createMenu.addItem(1, LocaleController.getString("Save", C3286R.string.Save).toUpperCase());
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        FrameLayout frameLayout2 = frameLayout;
        frameLayout2.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        RecyclerListView recyclerListView = new RecyclerListView(this, context) { // from class: org.telegram.ui.FilterCreateActivity.2
            @Override // android.view.ViewGroup, android.view.View
            public boolean requestFocus(int i, Rect rect) {
                return false;
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
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda14
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                FilterCreateActivity.this.lambda$createView$6(view, i, f, f2);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda15
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i) {
                boolean lambda$createView$7;
                lambda$createView$7 = FilterCreateActivity.this.lambda$createView$7(view, i);
                return lambda$createView$7;
            }
        });
        checkDoneButton(false);
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(View view, final int i, float f, float f2) {
        if (getParentActivity() == null) {
            return;
        }
        if (i == this.filterFabRow) {
            showDialog(new SelectFabsBottomSheet(getParentActivity(), new HashSet(this.newFilterSettings.getFabs()), new Callbacks$Callback1() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda9
                @Override // org.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    FilterCreateActivity.this.lambda$createView$1((Set) obj);
                }
            }));
            return;
        }
        if (i == this.includeShowMoreRow) {
            this.includeExpanded = true;
            updateRows();
        } else if (i == this.excludeShowMoreRow) {
            this.excludeExpanded = true;
            updateRows();
        } else {
            int i2 = this.includeAddRow;
            if (i == i2 || i == this.excludeAddRow) {
                UsersSelectActivity usersSelectActivity = new UsersSelectActivity(i == i2, i == this.excludeAddRow ? this.newNeverShow : this.newAlwaysShow, this.newFilterFlags);
                usersSelectActivity.setDelegate(new UsersSelectActivity.FilterUsersActivityDelegate() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda16
                    @Override // org.telegram.p048ui.UsersSelectActivity.FilterUsersActivityDelegate
                    public final void didSelectChats(ArrayList arrayList, int i3) {
                        FilterCreateActivity.this.lambda$createView$2(i, arrayList, i3);
                    }
                });
                if (this.type == FilterActivityType.TOPIC) {
                    usersSelectActivity.topicMode = true;
                    usersSelectActivity.topicModeFilterFolderId = i == this.includeAddRow ? 0 : 1;
                }
                presentFragment(usersSelectActivity);
            } else if (i == this.removeRow) {
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setTitle(LocaleController.getString("FilterDelete", C3286R.string.FilterDelete));
                builder.setMessage(LocaleController.getString("FilterDeleteAlert", C3286R.string.FilterDeleteAlert));
                if (this.type == FilterActivityType.TOPIC) {
                    builder.setTitle(LocaleController.getInternalString(C3286R.string.topics_remove));
                    builder.setMessage(LocaleController.getInternalString(C3286R.string.topics_remove_alert));
                }
                builder.setNegativeButton(LocaleController.getString("Cancel", C3286R.string.Cancel), null);
                builder.setPositiveButton(LocaleController.getString("Delete", C3286R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        FilterCreateActivity.this.lambda$createView$5(dialogInterface, i3);
                    }
                });
                AlertDialog create = builder.create();
                showDialog(create);
                TextView textView = (TextView) create.getButton(-1);
                if (textView != null) {
                    textView.setTextColor(Theme.getColor("dialogTextRed"));
                }
            } else if (i == this.nameRow) {
                if (this.pollEditTextCellWrapper.checkEditTextTouch(f)) {
                    PollEditTextCell pollEditTextCell = this.pollEditTextCellWrapper.getPollEditTextCell();
                    pollEditTextCell.getTextView().requestFocus();
                    AndroidUtilities.showKeyboard(pollEditTextCell.getTextView());
                }
            } else if (view instanceof UserCell) {
                UserCell userCell = (UserCell) view;
                showRemoveAlert(i, userCell.getName(), userCell.getCurrentObject(), i < this.includeSectionRow);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(Set set) {
        this.newFilterSettings.setFabs(set);
        updateRows();
        checkDoneButton(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(int i, ArrayList arrayList, int i2) {
        this.newFilterFlags = i2;
        if (i == this.excludeAddRow) {
            this.newNeverShow = arrayList;
            for (int i3 = 0; i3 < this.newNeverShow.size(); i3++) {
                Long l = this.newNeverShow.get(i3);
                this.newAlwaysShow.remove(l);
                this.newPinned.delete(l.longValue());
            }
        } else {
            this.newAlwaysShow = arrayList;
            for (int i4 = 0; i4 < this.newAlwaysShow.size(); i4++) {
                this.newNeverShow.remove(this.newAlwaysShow.get(i4));
            }
            ArrayList arrayList2 = new ArrayList();
            int size = this.newPinned.size();
            for (int i5 = 0; i5 < size; i5++) {
                Long valueOf = Long.valueOf(this.newPinned.keyAt(i5));
                if (!DialogObject.isEncryptedDialog(valueOf.longValue()) && !this.newAlwaysShow.contains(valueOf)) {
                    arrayList2.add(valueOf);
                }
            }
            int size2 = arrayList2.size();
            for (int i6 = 0; i6 < size2; i6++) {
                this.newPinned.delete(((Long) arrayList2.get(i6)).longValue());
            }
        }
        fillFilterName();
        checkDoneButton(false);
        updateRows();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(DialogInterface dialogInterface, int i) {
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
        tLRPC$TL_messages_updateDialogFilter.f1610id = this.filter.f1439id;
        getConnectionsManager().sendRequest(tLRPC$TL_messages_updateDialogFilter, new RequestDelegate() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda11
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                FilterCreateActivity.this.lambda$createView$4(alertDialog, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(final AlertDialog alertDialog, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                FilterCreateActivity.this.lambda$createView$3(alertDialog);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(AlertDialog alertDialog) {
        if (alertDialog != null) {
            try {
                alertDialog.dismiss();
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }
        getMessagesController().removeFilter(this.filter);
        getMessagesStorage().deleteDialogFilter(this.filter);
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$7(View view, int i) {
        if (view instanceof UserCell) {
            UserCell userCell = (UserCell) view;
            showRemoveAlert(i, userCell.getName(), userCell.getCurrentObject(), i < this.includeSectionRow);
            return true;
        }
        return false;
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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
                        string = LocaleController.getString("FilterNameUnread", C3286R.string.FilterNameUnread);
                    } else {
                        if ((i & MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED) != 0) {
                            string = LocaleController.getString("FilterNameNonMuted", C3286R.string.FilterNameNonMuted);
                        }
                        string = "";
                    }
                } else {
                    int i4 = MessagesController.DIALOG_FILTER_FLAG_CONTACTS;
                    if ((i3 & i4) != 0) {
                        if (((~i4) & i3) == 0) {
                            string = LocaleController.getString("FilterContacts", C3286R.string.FilterContacts);
                        }
                        string = "";
                    } else {
                        int i5 = MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS;
                        if ((i3 & i5) != 0) {
                            if (((~i5) & i3) == 0) {
                                string = LocaleController.getString("FilterNonContacts", C3286R.string.FilterNonContacts);
                            }
                            string = "";
                        } else {
                            int i6 = MessagesController.DIALOG_FILTER_FLAG_GROUPS;
                            if ((i3 & i6) != 0) {
                                if (((~i6) & i3) == 0) {
                                    string = LocaleController.getString("FilterGroups", C3286R.string.FilterGroups);
                                }
                                string = "";
                            } else {
                                int i7 = MessagesController.DIALOG_FILTER_FLAG_BOTS;
                                if ((i3 & i7) != 0) {
                                    if (((~i7) & i3) == 0) {
                                        string = LocaleController.getString("FilterBots", C3286R.string.FilterBots);
                                    }
                                    string = "";
                                } else {
                                    int i8 = MessagesController.DIALOG_FILTER_FLAG_CHANNELS;
                                    if ((i3 & i8) != 0 && ((~i8) & i3) == 0) {
                                        string = LocaleController.getString("FilterChannels", C3286R.string.FilterChannels);
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkDiscard() {
        if (this.doneItem.getAlpha() == 1.0f) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            if (this.creatingNew) {
                builder.setTitle(LocaleController.getString("FilterDiscardNewTitle", C3286R.string.FilterDiscardNewTitle));
                builder.setMessage(LocaleController.getString("FilterDiscardNewAlert", C3286R.string.FilterDiscardNewAlert));
                if (this.type == FilterActivityType.TOPIC) {
                    builder.setTitle(LocaleController.getInternalString(C3286R.string.topic_create_discard_title));
                    builder.setMessage(LocaleController.getInternalString(C3286R.string.topic_create_discard_message));
                }
                builder.setPositiveButton(LocaleController.getString("FilterDiscardNewSave", C3286R.string.FilterDiscardNewSave), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        FilterCreateActivity.this.lambda$checkDiscard$8(dialogInterface, i);
                    }
                });
            } else {
                builder.setTitle(LocaleController.getString("FilterDiscardTitle", C3286R.string.FilterDiscardTitle));
                if (this.type == FilterActivityType.TOPIC) {
                    builder.setMessage(LocaleController.getInternalString(C3286R.string.topic_edit_discard_message));
                } else {
                    builder.setMessage(LocaleController.getString("FilterDiscardAlert", C3286R.string.FilterDiscardAlert));
                }
                builder.setPositiveButton(LocaleController.getString("ApplyTheme", C3286R.string.ApplyTheme), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        FilterCreateActivity.this.lambda$checkDiscard$9(dialogInterface, i);
                    }
                });
            }
            builder.setNegativeButton(LocaleController.getString("PassportDiscard", C3286R.string.PassportDiscard), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FilterCreateActivity.this.lambda$checkDiscard$10(dialogInterface, i);
                }
            });
            showDialog(builder.create());
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$8(DialogInterface dialogInterface, int i) {
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$9(DialogInterface dialogInterface, int i) {
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$10(DialogInterface dialogInterface, int i) {
        finishFragment();
    }

    private void showRemoveAlert(final int i, CharSequence charSequence, Object obj, final boolean z) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        if (z) {
            builder.setTitle(LocaleController.getString("FilterRemoveInclusionTitle", C3286R.string.FilterRemoveInclusionTitle));
            if (obj instanceof String) {
                builder.setMessage(LocaleController.formatString("FilterRemoveInclusionText", C3286R.string.FilterRemoveInclusionText, charSequence));
            } else if (obj instanceof TLRPC$User) {
                builder.setMessage(LocaleController.formatString("FilterRemoveInclusionUserText", C3286R.string.FilterRemoveInclusionUserText, charSequence));
            } else {
                builder.setMessage(LocaleController.formatString("FilterRemoveInclusionChatText", C3286R.string.FilterRemoveInclusionChatText, charSequence));
            }
        } else {
            builder.setTitle(LocaleController.getString("FilterRemoveExclusionTitle", C3286R.string.FilterRemoveExclusionTitle));
            if (obj instanceof String) {
                builder.setMessage(LocaleController.formatString("FilterRemoveExclusionText", C3286R.string.FilterRemoveExclusionText, charSequence));
            } else if (obj instanceof TLRPC$User) {
                builder.setMessage(LocaleController.formatString("FilterRemoveExclusionUserText", C3286R.string.FilterRemoveExclusionUserText, charSequence));
            } else {
                builder.setMessage(LocaleController.formatString("FilterRemoveExclusionChatText", C3286R.string.FilterRemoveExclusionChatText, charSequence));
            }
        }
        if (this.type == FilterActivityType.TOPIC) {
            builder.setTitle(LocaleController.getInternalString(C3286R.string.topic_remove_chat_title));
            builder.setMessage(LocaleController.formatStringInternal(C3286R.string.topic_remove_chat_message, charSequence));
        }
        builder.setNegativeButton(LocaleController.getString("Cancel", C3286R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("StickersRemove", C3286R.string.StickersRemove), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                FilterCreateActivity.this.lambda$showRemoveAlert$11(i, z, dialogInterface, i2);
            }
        });
        AlertDialog create = builder.create();
        showDialog(create);
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor("dialogTextRed"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showRemoveAlert$11(int i, boolean z, DialogInterface dialogInterface, int i2) {
        if (i == this.includeContactsRow) {
            this.newFilterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_CONTACTS;
        } else if (i == this.includeNonContactsRow) {
            this.newFilterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS;
        } else if (i == this.includeGroupsRow) {
            this.newFilterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_GROUPS;
        } else if (i == this.includeChannelsRow) {
            this.newFilterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_CHANNELS;
        } else if (i == this.includeBotsRow) {
            this.newFilterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_BOTS;
        } else if (i == this.excludeArchivedRow) {
            this.newFilterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED;
        } else if (i == this.excludeMutedRow) {
            this.newFilterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED;
        } else if (i == this.excludeReadRow) {
            this.newFilterFlags &= ~MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ;
        } else if (z) {
            this.newAlwaysShow.remove(i - this.includeStartRow);
        } else {
            this.newNeverShow.remove(i - this.excludeStartRow);
        }
        fillFilterName();
        updateRows();
        checkDoneButton(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone() {
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
            getNotificationCenter().postNotificationName(NotificationCenter.topicsDidLoad, new Object[0]);
            finishFragment();
            return;
        }
        Callbacks$Callback callbacks$Callback = this.onDoneCallback;
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
        getFiltersController().addOrEditFilterSettings(this.newFilterSettings);
        saveFilterToServer(this.filter, this.newFilterFlags, this.newFilterName, this.newAlwaysShow, this.newNeverShow, this.newPinned, this.creatingNew, false, this.hasUserChanged, true, true, this, new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                FilterCreateActivity.this.lambda$processDone$12();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$12() {
        getNotificationCenter().postNotificationName(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        finishFragment();
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
        if (z5) {
            alertDialog = new AlertDialog(baseFragment.getParentActivity(), 3);
            alertDialog.setCanCancel(false);
            alertDialog.show();
        } else {
            alertDialog = null;
        }
        TLRPC$TL_messages_updateDialogFilter tLRPC$TL_messages_updateDialogFilter = new TLRPC$TL_messages_updateDialogFilter();
        tLRPC$TL_messages_updateDialogFilter.f1610id = dialogFilter.f1439id;
        int i3 = 1;
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
        tLRPC$TL_dialogFilter.f1506id = dialogFilter.f1439id;
        tLRPC$TL_dialogFilter.title = str;
        MessagesController messagesController = baseFragment.getMessagesController();
        ArrayList<Long> arrayList5 = new ArrayList<>();
        if (longSparseIntArray.size() != 0) {
            int size = longSparseIntArray.size();
            for (int i4 = 0; i4 < size; i4++) {
                long keyAt = longSparseIntArray.keyAt(i4);
                if (!DialogObject.isEncryptedDialog(keyAt)) {
                    arrayList5.add(Long.valueOf(keyAt));
                }
            }
            Collections.sort(arrayList5, new Comparator() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda8
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$saveFilterToServer$13;
                    lambda$saveFilterToServer$13 = FilterCreateActivity.lambda$saveFilterToServer$13(LongSparseIntArray.this, (Long) obj, (Long) obj2);
                    return lambda$saveFilterToServer$13;
                }
            });
        }
        int i5 = 0;
        while (i5 < i2) {
            if (i5 == 0) {
                arrayList3 = tLRPC$TL_messages_updateDialogFilter.filter.include_peers;
                arrayList4 = arrayList;
            } else if (i5 == i3) {
                arrayList3 = tLRPC$TL_messages_updateDialogFilter.filter.exclude_peers;
                arrayList4 = arrayList2;
            } else {
                arrayList3 = tLRPC$TL_messages_updateDialogFilter.filter.pinned_peers;
                arrayList4 = arrayList5;
            }
            int size2 = arrayList4.size();
            for (int i6 = 0; i6 < size2; i6++) {
                long longValue = arrayList4.get(i6).longValue();
                if ((i5 != 0 || longSparseIntArray.indexOfKey(longValue) < 0) && !DialogObject.isEncryptedDialog(longValue)) {
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
            i5++;
            i2 = 3;
            i3 = 1;
        }
        final AlertDialog alertDialog2 = alertDialog;
        baseFragment.getConnectionsManager().sendRequest(tLRPC$TL_messages_updateDialogFilter, new RequestDelegate() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda12
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                FilterCreateActivity.lambda$saveFilterToServer$15(z5, alertDialog2, dialogFilter, i, str, arrayList, arrayList2, z, z2, z3, z4, baseFragment, runnable, tLObject, tLRPC$TL_error);
            }
        });
        if (z5) {
            return;
        }
        processAddFilter(dialogFilter, i, str, arrayList, arrayList2, z, z2, z3, z4, baseFragment, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$saveFilterToServer$13(LongSparseIntArray longSparseIntArray, Long l, Long l2) {
        int i = longSparseIntArray.get(l.longValue());
        int i2 = longSparseIntArray.get(l2.longValue());
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveFilterToServer$15(final boolean z, final AlertDialog alertDialog, final MessagesController.DialogFilter dialogFilter, final int i, final String str, final ArrayList arrayList, final ArrayList arrayList2, final boolean z2, final boolean z3, final boolean z4, final boolean z5, final BaseFragment baseFragment, final Runnable runnable, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                FilterCreateActivity.lambda$saveFilterToServer$14(z, alertDialog, dialogFilter, i, str, arrayList, arrayList2, z2, z3, z4, z5, baseFragment, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$saveFilterToServer$14(boolean z, AlertDialog alertDialog, MessagesController.DialogFilter dialogFilter, int i, String str, ArrayList arrayList, ArrayList arrayList2, boolean z2, boolean z3, boolean z4, boolean z5, BaseFragment baseFragment, Runnable runnable) {
        if (z) {
            if (alertDialog != null) {
                try {
                    alertDialog.dismiss();
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
            processAddFilter(dialogFilter, i, str, arrayList, arrayList2, z2, z3, z4, z5, baseFragment, runnable);
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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
            FilterSettingsModel copy = getFiltersController().getSettings(this.filter.f1439id).getCopy();
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

    /* JADX INFO: Access modifiers changed from: private */
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
            this.doneItem.animate().alpha(z3 ? 1.0f : BitmapDescriptorFactory.HUE_RED).scaleX(z3 ? 1.0f : BitmapDescriptorFactory.HUE_RED).scaleY(z3 ? 1.0f : BitmapDescriptorFactory.HUE_RED).setDuration(180L).start();
            return;
        }
        this.doneItem.setAlpha(z3 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.doneItem.setScaleX(z3 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.doneItem.setScaleY(z3 ? 1.0f : BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
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
                String str2 = length < 0 ? "windowBackgroundWhiteRedText5" : "windowBackgroundWhiteGrayText3";
                textView2.setTextColor(Theme.getColor(str2));
                textView2.setTag(str2);
                textView2.setAlpha((pollEditTextCell.getTextView().isFocused() || length < 0) ? 1.0f : BitmapDescriptorFactory.HUE_RED);
                return;
            }
            pollEditTextCell.setText2("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.FilterCreateActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            return (itemViewType == 3 || itemViewType == 0 || itemViewType == 2 || itemViewType == 5) ? false : true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return FilterCreateActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View headerCell;
            if (i == IdFabric$ViewTypes.FABS) {
                headerCell = new FabsCell(this.mContext);
                headerCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else if (i == 0) {
                headerCell = new HeaderCell(this.mContext);
                headerCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else if (i == 1) {
                UserCell userCell = new UserCell(this.mContext, 6, 0, false);
                userCell.setSelfAsSavedMessages(true);
                userCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                headerCell = userCell;
            } else if (i == 2) {
                final PollEditTextCell pollEditTextCell = new PollEditTextCell(this.mContext, null);
                pollEditTextCell.createErrorTextView();
                pollEditTextCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                FilterCreateActivity filterCreateActivity = FilterCreateActivity.this;
                FilterActivityType filterActivityType = FilterCreateActivity.this.type;
                final FilterCreateActivity filterCreateActivity2 = FilterCreateActivity.this;
                filterCreateActivity.pollEditTextCellWrapper = new PollEditTextCellWrapper(pollEditTextCell, filterActivityType, new Runnable() { // from class: org.telegram.ui.FilterCreateActivity$ListAdapter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        FilterCreateActivity.access$4300(FilterCreateActivity.this);
                    }
                });
                pollEditTextCell.addTextWatcher(new TextWatcher() { // from class: org.telegram.ui.FilterCreateActivity.ListAdapter.1
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
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
            } else if (i == 3) {
                headerCell = new ShadowSectionCell(this.mContext);
            } else if (i == 4) {
                headerCell = new TextCell(this.mContext);
                headerCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            } else if (i == 5) {
                headerCell = new HintInnerCell(FilterCreateActivity.this, this.mContext);
            } else {
                headerCell = new TextInfoPrivacyCell(this.mContext);
            }
            return new RecyclerListView.Holder(headerCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$1(PollEditTextCell pollEditTextCell, View view, boolean z) {
            pollEditTextCell.getTextView2().setAlpha((z || FilterCreateActivity.this.newFilterName.length() > 12) ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() == 2) {
                FilterCreateActivity.this.setTextLeft(viewHolder.itemView);
                PollEditTextCell pollEditTextCell = FilterCreateActivity.this.pollEditTextCellWrapper.getPollEditTextCell();
                pollEditTextCell.setTag(1);
                pollEditTextCell.setTextAndHint(FilterCreateActivity.this.newFilterName != null ? FilterCreateActivity.this.newFilterName : "", LocaleController.getString("FilterNameHint", C3286R.string.FilterNameHint), false);
                if (FilterCreateActivity.this.type == FilterActivityType.TOPIC) {
                    pollEditTextCell.setHint(LocaleController.getInternalString(C3286R.string.topic_name_hint));
                }
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

        /* JADX WARN: Code restructure failed: missing block: B:76:0x0212, code lost:
            if (r13 == (r11.this$0.includeEndRow - 1)) goto L91;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0215, code lost:
            r4 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x024b, code lost:
            if (r13 == (r11.this$0.excludeEndRow - 1)) goto L91;
         */
        /* JADX WARN: Removed duplicated region for block: B:102:0x028f  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x0258  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r12, int r13) {
            /*
                Method dump skipped, instructions count: 1082
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.FilterCreateActivity.ListAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i != FilterCreateActivity.this.filterFabRow) {
                if (i == FilterCreateActivity.this.includeHeaderRow || i == FilterCreateActivity.this.excludeHeaderRow) {
                    return 0;
                }
                if (i < FilterCreateActivity.this.includeStartRow || i >= FilterCreateActivity.this.includeEndRow) {
                    if ((i >= FilterCreateActivity.this.excludeStartRow && i < FilterCreateActivity.this.excludeEndRow) || i == FilterCreateActivity.this.includeContactsRow || i == FilterCreateActivity.this.includeNonContactsRow || i == FilterCreateActivity.this.includeGroupsRow || i == FilterCreateActivity.this.includeChannelsRow || i == FilterCreateActivity.this.includeBotsRow || i == FilterCreateActivity.this.excludeReadRow || i == FilterCreateActivity.this.excludeArchivedRow || i == FilterCreateActivity.this.excludeMutedRow) {
                        return 1;
                    }
                    if (i == FilterCreateActivity.this.nameRow) {
                        return 2;
                    }
                    if (i == FilterCreateActivity.this.nameSectionRow || i == FilterCreateActivity.this.namePreSectionRow || i == FilterCreateActivity.this.removeSectionRow) {
                        return 3;
                    }
                    if (i == FilterCreateActivity.this.imageRow) {
                        return 5;
                    }
                    return (i == FilterCreateActivity.this.filterFabSectionRow || i == FilterCreateActivity.this.includeSectionRow || i == FilterCreateActivity.this.excludeSectionRow) ? 6 : 4;
                }
                return 1;
            }
            return IdFabric$ViewTypes.FABS;
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{FabsCell.class}, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"));
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda13
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                FilterCreateActivity.this.lambda$getThemeDescriptions$16();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, TextCell.class, PollEditTextCell.class, UserCell.class}, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundGray"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteRedText5"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueText4"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCell.class}, new String[]{"ImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText4"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{UserCell.class}, new String[]{"adminTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "profile_creatorIcon"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayIcon"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, "windowBackgroundWhiteGrayText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, "windowBackgroundWhiteBlueText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell.class}, null, Theme.avatarDrawables, null, "avatar_text"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundRed"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundOrange"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundViolet"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundGreen"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundCyan"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundBlue"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundPink"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$16() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof FabsCell) {
                    ((FabsCell) childAt).updateColors();
                } else if (childAt instanceof PollEditTextCellWrapper) {
                    ((PollEditTextCellWrapper) childAt).updateColors();
                } else if (childAt instanceof UserCell) {
                    ((UserCell) childAt).update(0);
                }
            }
        }
    }
}
