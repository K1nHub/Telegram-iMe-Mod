package org.telegram.p048ui;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.p031ui.base.mvp.JavaMvpFragment;
import com.smedialink.p031ui.topics.TopicInfo;
import com.smedialink.storage.domain.model.topics.TopicModel;
import com.smedialink.utils.extentions.common.ContextExtKt;
import com.smedialink.utils.extentions.model.topic.TopicExtKt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.fork.controller.ForkTopicsController;
import org.fork.enums.FilterActivityType;
import org.fork.enums.FilterTabNotificationMode;
import org.fork.enums.FilterTabWidthMode;
import org.fork.p046ui.fragment.AllChatsTabSettingsActivity;
import org.fork.p046ui.fragment.ChooseIntervalSettingsActivity;
import org.fork.p046ui.fragment.SortingFilterSettingsActivity;
import org.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.SimpleTextView;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.NotificationsCheckCell;
import org.telegram.p048ui.Cells.ShadowSectionCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Cells.TextSettingsCell;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.BulletinFactory;
import org.telegram.p048ui.Components.CombinedDrawable;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p048ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p048ui.Components.ProgressButton;
import org.telegram.p048ui.Components.RLottieImageView;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.FiltersSetupActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$DialogFilter;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$TL_dialogFilterSuggested;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_updateDialogFilter;
import org.telegram.tgnet.TLRPC$TL_messages_updateDialogFiltersOrder;
/* renamed from: org.telegram.ui.FiltersSetupActivity */
/* loaded from: classes5.dex */
public class FiltersSetupActivity extends JavaMvpFragment implements NotificationCenter.NotificationCenterDelegate {
    private ListAdapter adapter;
    private int createFilterRow;
    private int createSectionRow;
    private int filterFiltersFirstRow;
    private int filterHelpRow;
    private int filterHideFiltersRow;
    private int filterSortingAllChatsTabRow;
    private int filterSortingHeaderRow;
    private int filterSortingSectionRow;
    private int filterSortingTabsRow;
    private int filterTabsSettingsAtBottomRow;
    private int filterTabsSettingsHeaderRow;
    private int filterTabsSettingsNotificationModeRow;
    private int filterTabsSettingsRememberLastFilterTab;
    private int filterTabsSettingsSectionRow;
    private int filterTabsSettingsWidthTabsRow;
    private int filtersEndRow;
    private int filtersHeaderRow;
    private int filtersStartRow;
    private boolean ignoreUpdates;
    private ItemTouchHelper itemTouchHelper;
    private RecyclerListView listView;
    private boolean newTopicsBarAtBottom;
    private boolean newTopicsBarEnabled;
    private boolean orderChanged;
    private int recommendedEndRow;
    private int recommendedHeaderRow;
    private int recommendedSectionRow;
    private int recommendedStartRow;
    private int rowCount;
    private boolean showAllChats;
    private List<TopicModel> topics;
    private int topicsBarEnableRow;
    private int topicsCatalogHeaderRow;
    private int topicsCatalogSectionRow;
    private int topicsCatalogUpdateAutoRow;
    private int topicsCatalogUpdateManuallyRow;
    private int topicsSettingsBarAtBottomRow;
    private int topicsSettingsHeaderRow;
    private int topicsSettingsSectionRow;
    private final FilterActivityType type;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onFragmentDestroy$2(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    public FiltersSetupActivity() {
        this(FilterActivityType.FILTER);
    }

    public FiltersSetupActivity(FilterActivityType filterActivityType) {
        this.rowCount = 0;
        this.type = filterActivityType;
        if (filterActivityType == FilterActivityType.TOPIC) {
            this.newTopicsBarEnabled = getTopicsController().isTopicsBarEnabled();
            this.newTopicsBarAtBottom = getTopicsController().isTopicsBarAtBottomEnabled();
            this.topics = getTopicsController().getAllTopicsNotEmpty();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSortingTabsCount() {
        return getFiltersController().getActiveSortingTabsCount(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTotalTabsCount() {
        return (getFiltersController().isHideFoldersEnabled() ? 0 : getMessagesController().dialogFilters.size() - 1) + getSortingTabsCount();
    }

    private void showHintDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setMessage(str);
        builder.setPositiveButton(LocaleController.getString("OK", C3301R.string.OK), null);
        showDialog(builder.create());
    }

    private void showWidthModeDialog() {
        int ordinal = SharedConfig.selectedFilterTabWidthMode.ordinal();
        String internalString = LocaleController.getInternalString(C3301R.string.folder_tabs_width_mode_item_title);
        int length = FilterTabWidthMode.values().length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = LocaleController.getInternalString(FilterTabWidthMode.values()[i].getTitleResId());
        }
        showDialog(AlertsCreator.createSingleChoiceDialog(getParentActivity(), strArr, internalString, ordinal, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FiltersSetupActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                FiltersSetupActivity.this.lambda$showWidthModeDialog$0(dialogInterface, i2);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showWidthModeDialog$0(DialogInterface dialogInterface, int i) {
        SharedConfig.setSelectedFilterTabsWidthMode(FilterTabWidthMode.values()[i]);
        getNotificationCenter().postNotificationName(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyItemChanged(this.filterTabsSettingsWidthTabsRow);
        }
    }

    private void showNotificationModeDialog() {
        int ordinal = SharedConfig.selectedFilterTabsNotificationMode.ordinal();
        String internalString = LocaleController.getInternalString(C3301R.string.folder_tabs_notification_mode_item_title);
        int length = FilterTabNotificationMode.values().length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = LocaleController.getInternalString(FilterTabNotificationMode.values()[i].getTitleResId());
        }
        showDialog(AlertsCreator.createSingleChoiceDialog(getParentActivity(), strArr, internalString, ordinal, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FiltersSetupActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                FiltersSetupActivity.this.lambda$showNotificationModeDialog$1(dialogInterface, i2);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNotificationModeDialog$1(DialogInterface dialogInterface, int i) {
        SharedConfig.setSelectedFilterTabsNotificationMode(FilterTabNotificationMode.values()[i]);
        getNotificationCenter().postNotificationName(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyItemChanged(this.filterTabsSettingsNotificationModeRow);
        }
    }

    /* renamed from: org.telegram.ui.FiltersSetupActivity$TextCell */
    /* loaded from: classes5.dex */
    public class TextCell extends FrameLayout {
        private ImageView imageView;
        private SimpleTextView textView;

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (FiltersSetupActivity.this.type == FilterActivityType.TOPIC) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }

        public TextCell(Context context) {
            super(context);
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.textView = simpleTextView;
            simpleTextView.setTextSize(16);
            this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
            this.textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlueText2"));
            this.textView.setTag("windowBackgroundWhiteBlueText2");
            addView(this.textView);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.imageView);
            if (FiltersSetupActivity.this.type == FilterActivityType.TOPIC) {
                setWillNotDraw(false);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            AndroidUtilities.m50dp(48);
            this.textView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(94), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
            this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(50), 1073741824));
            setMeasuredDimension(size, AndroidUtilities.m50dp(50));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int m50dp;
            int i5 = i3 - i;
            int textHeight = ((i4 - i2) - this.textView.getTextHeight()) / 2;
            if (LocaleController.isRTL) {
                m50dp = (getMeasuredWidth() - this.textView.getMeasuredWidth()) - AndroidUtilities.m50dp(this.imageView.getVisibility() != 0 ? 23 : 64);
            } else {
                m50dp = AndroidUtilities.m50dp(this.imageView.getVisibility() != 0 ? 23 : 64);
            }
            SimpleTextView simpleTextView = this.textView;
            simpleTextView.layout(m50dp, textHeight, simpleTextView.getMeasuredWidth() + m50dp, this.textView.getMeasuredHeight() + textHeight);
            int m50dp2 = (!LocaleController.isRTL ? AndroidUtilities.m50dp(20) : (i5 - this.imageView.getMeasuredWidth()) - AndroidUtilities.m50dp(20)) + AndroidUtilities.m50dp(LocaleController.isRTL ? 2 : -2);
            ImageView imageView = this.imageView;
            imageView.layout(m50dp2, 0, imageView.getMeasuredWidth() + m50dp2, this.imageView.getMeasuredHeight());
        }

        public void setTextAndIcon(String str, Drawable drawable, boolean z) {
            this.textView.setText(str);
            this.imageView.setImageDrawable(drawable);
        }
    }

    /* renamed from: org.telegram.ui.FiltersSetupActivity$SuggestedFilterCell */
    /* loaded from: classes5.dex */
    public static class SuggestedFilterCell extends FrameLayout {
        private ProgressButton addButton;
        private boolean needDivider;
        private TLRPC$TL_dialogFilterSuggested suggestedFilter;
        private TextView textView;
        private TextView valueTextView;

        public SuggestedFilterCell(Context context) {
            super(context);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.textView.setTextSize(1, 16.0f);
            this.textView.setLines(1);
            this.textView.setMaxLines(1);
            this.textView.setSingleLine(true);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
            addView(this.textView, LayoutHelper.createFrame(-2, -2, LocaleController.isRTL ? 5 : 3, 22, 10, 22, 0));
            TextView textView2 = new TextView(context);
            this.valueTextView = textView2;
            textView2.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
            this.valueTextView.setTextSize(1, 13.0f);
            this.valueTextView.setLines(1);
            this.valueTextView.setMaxLines(1);
            this.valueTextView.setSingleLine(true);
            this.valueTextView.setEllipsize(TextUtils.TruncateAt.END);
            this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            addView(this.valueTextView, LayoutHelper.createFrame(-2, -2, LocaleController.isRTL ? 5 : 3, 22, 35, 22, 0));
            ProgressButton progressButton = new ProgressButton(context);
            this.addButton = progressButton;
            progressButton.setText(LocaleController.getString("Add", C3301R.string.Add));
            this.addButton.setTextColor(Theme.getColor("featuredStickers_buttonText"));
            this.addButton.setProgressColor(Theme.getColor("featuredStickers_buttonProgress"));
            this.addButton.setBackgroundRoundRect(Theme.getColor("featuredStickers_addButton"), Theme.getColor("featuredStickers_addButtonPressed"));
            addView(this.addButton, LayoutHelper.createFrameRelatively(-2.0f, 28.0f, 8388661, BitmapDescriptorFactory.HUE_RED, 18.0f, 14.0f, BitmapDescriptorFactory.HUE_RED));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m50dp(64));
            measureChildWithMargins(this.addButton, i, 0, i2, 0);
            measureChildWithMargins(this.textView, i, this.addButton.getMeasuredWidth(), i2, 0);
            measureChildWithMargins(this.valueTextView, i, this.addButton.getMeasuredWidth(), i2, 0);
        }

        public void setFilter(TLRPC$TL_dialogFilterSuggested tLRPC$TL_dialogFilterSuggested, boolean z) {
            this.needDivider = z;
            this.suggestedFilter = tLRPC$TL_dialogFilterSuggested;
            setWillNotDraw(!z);
            this.textView.setText(tLRPC$TL_dialogFilterSuggested.filter.title);
            this.valueTextView.setText(tLRPC$TL_dialogFilterSuggested.description);
        }

        public TLRPC$TL_dialogFilterSuggested getSuggestedFilter() {
            return this.suggestedFilter;
        }

        public void setAddOnClickListener(View.OnClickListener onClickListener) {
            this.addButton.setOnClickListener(onClickListener);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.needDivider) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getHeight() - 1, getWidth() - getPaddingRight(), getHeight() - 1, Theme.dividerPaint);
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setEnabled(true);
            accessibilityNodeInfo.setText(this.addButton.getText());
            accessibilityNodeInfo.setClassName("android.widget.Button");
        }
    }

    /* renamed from: org.telegram.ui.FiltersSetupActivity$HintInnerCell */
    /* loaded from: classes5.dex */
    public class HintInnerCell extends FrameLayout {
        private RLottieImageView imageView;
        private TextView messageTextView;

        public HintInnerCell(FiltersSetupActivity filtersSetupActivity, Context context) {
            super(context);
            this.imageView = new RLottieImageView(context);
            FilterActivityType filterActivityType = filtersSetupActivity.type;
            FilterActivityType filterActivityType2 = FilterActivityType.TOPIC;
            if (filterActivityType == filterActivityType2) {
                this.imageView.setAnimation(C3301R.C3306raw.fork_topics, 110, 110);
            } else {
                this.imageView.setAnimation(C3301R.C3306raw.filters, 90, 90);
            }
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.playAnimation();
            this.imageView.setImportantForAccessibility(2);
            if (filtersSetupActivity.type == filterActivityType2) {
                addView(this.imageView, LayoutHelper.createFrame(110, 110, 49, 0, 0, 0, 0));
            } else {
                addView(this.imageView, LayoutHelper.createFrame(90, 90, 49, 0, 14, 0, 0));
            }
            this.imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FiltersSetupActivity$HintInnerCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FiltersSetupActivity.HintInnerCell.this.lambda$new$0(view);
                }
            });
            TextView textView = new TextView(context);
            this.messageTextView = textView;
            textView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText4"));
            this.messageTextView.setTextSize(1, 14.0f);
            this.messageTextView.setGravity(17);
            if (filtersSetupActivity.type == filterActivityType2) {
                this.messageTextView.setText(LocaleController.getInternalString(C3301R.string.topic_new_info));
            } else {
                this.messageTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("CreateNewFilterInfo", C3301R.string.CreateNewFilterInfo, new Object[0])));
            }
            addView(this.messageTextView, LayoutHelper.createFrame(-1, -2, 49, 40, 121, 40, 24));
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
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), i2);
        }
    }

    /* renamed from: org.telegram.ui.FiltersSetupActivity$FilterCell */
    /* loaded from: classes5.dex */
    public class FilterCell extends FrameLayout {
        private MessagesController.DialogFilter currentFilter;
        private TopicModel currentTopic;
        private final AppCompatImageView iconView;
        private ImageView moveImageView;
        private boolean needDivider;
        private ImageView optionsImageView;
        float progressToLock;
        private SimpleTextView textView;
        private TextView valueTextView;

        public void setTopic(TopicModel topicModel, boolean z) {
            this.currentTopic = topicModel;
            if (topicModel.isUserTopic()) {
                if (topicModel.getIcon() != null) {
                    this.iconView.setVisibility(0);
                    this.iconView.setImageResource(TopicExtKt.info(topicModel.getIcon()).getIconResId());
                } else {
                    this.iconView.setVisibility(8);
                }
                this.textView.setText(Emoji.replaceEmoji(topicModel.getName(), this.textView.getPaint().getFontMetricsInt(), AndroidUtilities.m50dp(20), false));
            } else if (topicModel.isAutoTopic()) {
                TopicInfo info = TopicExtKt.info(topicModel.getIcon());
                this.iconView.setVisibility(0);
                this.iconView.setImageResource(info.getIconResId());
                this.textView.setText(LocaleController.getInternalString(info.getTitleResId()));
            }
            if (this.iconView.getVisibility() == 0) {
                this.textView.setPadding(AndroidUtilities.m50dp(FilterActivityType.TOPIC.getIconSize()), 0, 0, 0);
            } else {
                this.textView.setPadding(0, 0, 0, 0);
            }
            this.needDivider = z;
        }

        public TopicModel getCurrentTopic() {
            return this.currentTopic;
        }

        public FilterCell(Context context) {
            super(context);
            setWillNotDraw(false);
            ImageView imageView = new ImageView(context);
            this.moveImageView = imageView;
            imageView.setFocusable(false);
            this.moveImageView.setScaleType(ImageView.ScaleType.CENTER);
            this.moveImageView.setImageResource(C3301R.C3303drawable.list_reorder);
            this.moveImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("stickers_menu"), PorterDuff.Mode.MULTIPLY));
            this.moveImageView.setContentDescription(LocaleController.getString("FilterReorder", C3301R.string.FilterReorder));
            this.moveImageView.setClickable(true);
            addView(this.moveImageView, LayoutHelper.createFrame(48, 48, (LocaleController.isRTL ? 5 : 3) | 16, 6, 0, 6, 0));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.textView = simpleTextView;
            simpleTextView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.textView.setTextSize(16);
            this.textView.setMaxLines(1);
            this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            Drawable drawable = ContextCompat.getDrawable(getContext(), C3301R.C3303drawable.other_lockedfolders2);
            drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor("stickers_menu"), PorterDuff.Mode.MULTIPLY));
            this.textView.setRightDrawable(drawable);
            View view = this.textView;
            boolean z = LocaleController.isRTL;
            addView(view, LayoutHelper.createFrame(-1, -2, (z ? 5 : 3) | 48, z ? 80 : 64, 14, z ? 64 : 80, 0));
            TextView textView = new TextView(context);
            this.valueTextView = textView;
            textView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
            this.valueTextView.setTextSize(1, 13.0f);
            this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            this.valueTextView.setLines(1);
            this.valueTextView.setMaxLines(1);
            this.valueTextView.setSingleLine(true);
            this.valueTextView.setPadding(0, 0, 0, 0);
            this.valueTextView.setEllipsize(TextUtils.TruncateAt.END);
            View view2 = this.valueTextView;
            boolean z2 = LocaleController.isRTL;
            addView(view2, LayoutHelper.createFrame(-2, -2, (z2 ? 5 : 3) | 48, z2 ? 80 : 64, 35, z2 ? 64 : 80, 0));
            this.valueTextView.setVisibility(8);
            ImageView imageView2 = new ImageView(context);
            this.optionsImageView = imageView2;
            imageView2.setFocusable(false);
            this.optionsImageView.setScaleType(ImageView.ScaleType.CENTER);
            this.optionsImageView.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor("stickers_menuSelector")));
            this.optionsImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("stickers_menu"), PorterDuff.Mode.MULTIPLY));
            this.optionsImageView.setImageResource(C3301R.C3303drawable.msg_actions);
            this.optionsImageView.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3301R.string.AccDescrMoreOptions));
            addView(this.optionsImageView, LayoutHelper.createFrame(40, 40, (LocaleController.isRTL ? 3 : 5) | 16, 6, 0, 6, 0));
            AppCompatImageView appCompatImageView = new AppCompatImageView(context);
            this.iconView = appCompatImageView;
            appCompatImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            appCompatImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_actionBackground"), PorterDuff.Mode.SRC_IN));
            addView(appCompatImageView, LayoutHelper.createFrame(FiltersSetupActivity.this.type.getIconSize(), FiltersSetupActivity.this.type.getIconSize(), 51, FiltersSetupActivity.this.type.getIconLeftMargin() + 48, (50 - FiltersSetupActivity.this.type.getIconSize()) / 2, 0, 0));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(50), 1073741824));
        }

        /* JADX WARN: Removed duplicated region for block: B:56:0x00d4  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x00f5  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0108  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0110  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0151  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0179  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x017f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void setFilter(org.telegram.messenger.MessagesController.DialogFilter r9, boolean r10) {
            /*
                Method dump skipped, instructions count: 392
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.FiltersSetupActivity.FilterCell.setFilter(org.telegram.messenger.MessagesController$DialogFilter, boolean):void");
        }

        public MessagesController.DialogFilter getCurrentFilter() {
            return this.currentFilter;
        }

        public void setOnOptionsClick(View.OnClickListener onClickListener) {
            this.optionsImageView.setOnClickListener(onClickListener);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.needDivider) {
                canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.m50dp(62), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m50dp(62) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
            MessagesController.DialogFilter dialogFilter = this.currentFilter;
            if (dialogFilter != null) {
                boolean z = dialogFilter.locked;
                if (z) {
                    float f = this.progressToLock;
                    if (f != 1.0f) {
                        this.progressToLock = f + 0.10666667f;
                        invalidate();
                    }
                }
                if (!z) {
                    float f2 = this.progressToLock;
                    if (f2 != BitmapDescriptorFactory.HUE_RED) {
                        this.progressToLock = f2 - 0.10666667f;
                        invalidate();
                    }
                }
            }
            float clamp = Utilities.clamp(this.progressToLock, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            this.progressToLock = clamp;
            this.textView.setRightDrawableScale(clamp);
            this.textView.invalidate();
        }

        public void setOnReorderButtonTouchListener(View.OnTouchListener onTouchListener) {
            this.moveImageView.setOnTouchListener(onTouchListener);
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        updateRows(true);
        if (this.type == FilterActivityType.TOPIC) {
            getNotificationCenter().addObserver(this, NotificationCenter.topicsDidLoad);
            return super.onFragmentCreate();
        }
        getMessagesController().loadRemoteFilters(true);
        getNotificationCenter().addObserver(this, NotificationCenter.dialogFiltersUpdated);
        getNotificationCenter().addObserver(this, NotificationCenter.suggestedFiltersLoaded);
        if (getMessagesController().suggestedFilters.isEmpty()) {
            getMessagesController().loadSuggestedFilters();
        }
        return super.onFragmentCreate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRows(boolean z) {
        ListAdapter listAdapter;
        this.recommendedHeaderRow = -1;
        this.recommendedStartRow = -1;
        this.recommendedEndRow = -1;
        this.recommendedSectionRow = -1;
        ArrayList<TLRPC$TL_dialogFilterSuggested> arrayList = getMessagesController().suggestedFilters;
        this.rowCount = 0;
        this.rowCount = 0 + 1;
        this.filterHelpRow = 0;
        int size = getMessagesController().dialogFilters.size();
        this.showAllChats = true;
        this.showAllChats = false;
        int i = size - 1;
        this.filterFiltersFirstRow = -1;
        this.filterHideFiltersRow = -1;
        this.filterSortingSectionRow = -1;
        this.filterSortingTabsRow = -1;
        this.filterSortingAllChatsTabRow = -1;
        this.filterSortingHeaderRow = -1;
        this.filterTabsSettingsSectionRow = -1;
        this.filterTabsSettingsRememberLastFilterTab = -1;
        this.filterTabsSettingsWidthTabsRow = -1;
        this.filterTabsSettingsNotificationModeRow = -1;
        this.filterTabsSettingsAtBottomRow = -1;
        this.filterTabsSettingsHeaderRow = -1;
        this.topicsCatalogSectionRow = -1;
        this.topicsCatalogUpdateManuallyRow = -1;
        this.topicsCatalogUpdateAutoRow = -1;
        this.topicsCatalogHeaderRow = -1;
        this.topicsSettingsSectionRow = -1;
        this.topicsSettingsBarAtBottomRow = -1;
        this.topicsBarEnableRow = -1;
        this.topicsSettingsHeaderRow = -1;
        FilterActivityType filterActivityType = this.type;
        FilterActivityType filterActivityType2 = FilterActivityType.FILTER;
        if (filterActivityType == filterActivityType2) {
            int i2 = this.rowCount;
            int i3 = i2 + 1;
            this.rowCount = i3;
            this.filterTabsSettingsHeaderRow = i2;
            int i4 = i3 + 1;
            this.rowCount = i4;
            this.filterTabsSettingsAtBottomRow = i3;
            int i5 = i4 + 1;
            this.rowCount = i5;
            this.filterTabsSettingsNotificationModeRow = i4;
            int i6 = i5 + 1;
            this.rowCount = i6;
            this.filterTabsSettingsWidthTabsRow = i5;
            int i7 = i6 + 1;
            this.rowCount = i7;
            this.filterTabsSettingsRememberLastFilterTab = i6;
            int i8 = i7 + 1;
            this.rowCount = i8;
            this.filterTabsSettingsSectionRow = i7;
            int i9 = i8 + 1;
            this.rowCount = i9;
            this.filterSortingHeaderRow = i8;
            int i10 = i9 + 1;
            this.rowCount = i10;
            this.filterSortingAllChatsTabRow = i9;
            int i11 = i10 + 1;
            this.rowCount = i11;
            this.filterSortingTabsRow = i10;
            this.rowCount = i11 + 1;
            this.filterSortingSectionRow = i11;
        } else {
            int i12 = this.rowCount;
            int i13 = i12 + 1;
            this.rowCount = i13;
            this.topicsSettingsHeaderRow = i12;
            int i14 = i13 + 1;
            this.rowCount = i14;
            this.topicsBarEnableRow = i13;
            int i15 = i14 + 1;
            this.rowCount = i15;
            this.topicsSettingsBarAtBottomRow = i14;
            int i16 = i15 + 1;
            this.rowCount = i16;
            this.topicsSettingsSectionRow = i15;
            int i17 = i16 + 1;
            this.rowCount = i17;
            this.topicsCatalogHeaderRow = i16;
            int i18 = i17 + 1;
            this.rowCount = i18;
            this.topicsCatalogUpdateAutoRow = i17;
            int i19 = i18 + 1;
            this.rowCount = i19;
            this.topicsCatalogUpdateManuallyRow = i18;
            this.rowCount = i19 + 1;
            this.topicsCatalogSectionRow = i19;
        }
        FilterActivityType filterActivityType3 = FilterActivityType.TOPIC;
        if (filterActivityType == filterActivityType3) {
            i = this.topics.size();
        }
        if (!arrayList.isEmpty() && i < 10) {
            int i20 = this.rowCount;
            int i21 = i20 + 1;
            this.rowCount = i21;
            this.recommendedHeaderRow = i20;
            this.recommendedStartRow = i21;
            int size2 = i21 + arrayList.size();
            this.rowCount = size2;
            this.recommendedEndRow = size2;
            this.rowCount = size2 + 1;
            this.recommendedSectionRow = size2;
        }
        if (i != 0) {
            int i22 = this.rowCount;
            int i23 = i22 + 1;
            this.rowCount = i23;
            this.filtersHeaderRow = i22;
            if (this.type == filterActivityType3) {
                this.rowCount = i23 + 1;
                this.createFilterRow = i23;
            } else {
                int i24 = i23 + 1;
                this.rowCount = i24;
                this.filterHideFiltersRow = i23;
                this.rowCount = i24 + 1;
                this.filterFiltersFirstRow = i24;
            }
            int i25 = this.rowCount;
            this.filtersStartRow = i25;
            int i26 = i25 + i;
            this.rowCount = i26;
            this.filtersEndRow = i26;
        } else {
            if (this.type == filterActivityType3) {
                int i27 = this.rowCount;
                this.rowCount = i27 + 1;
                this.createFilterRow = i27;
            }
            this.filtersHeaderRow = -1;
            this.filtersStartRow = -1;
            this.filtersEndRow = -1;
        }
        if (this.type == filterActivityType2) {
            if (i < getMessagesController().dialogFiltersLimitPremium) {
                int i28 = this.rowCount;
                this.rowCount = i28 + 1;
                this.createFilterRow = i28;
            } else {
                this.createFilterRow = -1;
            }
        }
        int i29 = this.rowCount;
        this.rowCount = i29 + 1;
        this.createSectionRow = i29;
        if (!z || (listAdapter = this.adapter) == null) {
            return;
        }
        listAdapter.notifyDataSetChanged();
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        if (this.type == FilterActivityType.TOPIC) {
            getNotificationCenter().removeObserver(this, NotificationCenter.topicsDidLoad);
            ForkTopicsController topicsController = getTopicsController();
            if (this.orderChanged || this.newTopicsBarEnabled != topicsController.isTopicsBarEnabled() || this.newTopicsBarAtBottom != topicsController.isTopicsBarAtBottomEnabled()) {
                topicsController.setTopicsBarEnabled(this.newTopicsBarEnabled);
                topicsController.setTopicsBarAtBottomEnabled(this.newTopicsBarAtBottom);
                topicsController.saveConfig();
                getNotificationCenter().postNotificationName(NotificationCenter.topicsSettingsChanged, new Object[0]);
            }
            super.onFragmentDestroy();
            return;
        }
        NotificationCenter notificationCenter = getNotificationCenter();
        int i = NotificationCenter.dialogFiltersUpdated;
        notificationCenter.removeObserver(this, i);
        getNotificationCenter().removeObserver(this, NotificationCenter.suggestedFiltersLoaded);
        if (this.orderChanged) {
            getNotificationCenter().postNotificationName(i, new Object[0]);
            getMessagesStorage().saveDialogFiltersOrder();
            TLRPC$TL_messages_updateDialogFiltersOrder tLRPC$TL_messages_updateDialogFiltersOrder = new TLRPC$TL_messages_updateDialogFiltersOrder();
            ArrayList<MessagesController.DialogFilter> arrayList = getMessagesController().dialogFilters;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                tLRPC$TL_messages_updateDialogFiltersOrder.order.add(Integer.valueOf(arrayList.get(i2).f1440id));
            }
            getConnectionsManager().sendRequest(tLRPC$TL_messages_updateDialogFiltersOrder, FiltersSetupActivity$$ExternalSyntheticLambda4.INSTANCE);
        }
        super.onFragmentDestroy();
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        super.createView(context);
        this.actionBar.setBackButtonImage(C3301R.C3303drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        if (this.type == FilterActivityType.TOPIC) {
            this.actionBar.setTitle(LocaleController.getInternalString(C3301R.string.topics));
        } else {
            this.actionBar.setTitle(LocaleController.getString("Filters", C3301R.string.Filters));
        }
        this.actionBar.setActionBarMenuOnItemClick(new C3366ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.FiltersSetupActivity.1
            @Override // org.telegram.p048ui.ActionBar.C3366ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    FiltersSetupActivity.this.finishFragment();
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        FrameLayout frameLayout2 = frameLayout;
        frameLayout2.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        C56232 c56232 = new C56232(context);
        this.listView = c56232;
        ((DefaultItemAnimator) c56232.getItemAnimator()).setSupportsChangeAnimations(false);
        ((DefaultItemAnimator) this.listView.getItemAnimator()).setDelayAnimations(false);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        this.listView.setVerticalScrollBarEnabled(false);
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new TouchHelperCallback());
        this.itemTouchHelper = itemTouchHelper;
        itemTouchHelper.attachToRecyclerView(this.listView);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1));
        RecyclerListView recyclerListView = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.adapter = listAdapter;
        recyclerListView.setAdapter(listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.FiltersSetupActivity$$ExternalSyntheticLambda5
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
                FiltersSetupActivity.this.lambda$createView$4(context, view, i, f, f2);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.FiltersSetupActivity$2 */
    /* loaded from: classes5.dex */
    public class C56232 extends RecyclerListView {
        C56232(Context context) {
            super(context);
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FiltersSetupActivity.C56232.this.lambda$onTouchEvent$0();
                    }
                }, 250L);
            }
            return super.onTouchEvent(motionEvent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$0() {
            FiltersSetupActivity.this.getMessagesController().lockFiltersInternal();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p048ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            drawSectionBackground(canvas, FiltersSetupActivity.this.filtersStartRow, FiltersSetupActivity.this.filtersEndRow, getThemedColor("windowBackgroundWhite"));
            super.dispatchDraw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(Context context, View view, int i, float f, float f2) {
        if (getParentActivity() == null || !view.isEnabled()) {
            return;
        }
        if (view instanceof NotificationsCheckCell) {
            NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
            if (i == this.topicsCatalogUpdateAutoRow) {
                if (notificationsCheckCell.checkSwitchLocation(f)) {
                    getTopicsController().setAutoUpdateTopicsCatalogEnabled(!getTopicsController().isAutoUpdateTopicsCatalogEnabled());
                    getTopicsController().resetLastAutoUpdateCatalogTime();
                    notificationsCheckCell.setChecked(!notificationsCheckCell.isChecked());
                    this.adapter.notifyItemChanged(i);
                    getTopicsController().saveConfig();
                    return;
                }
                presentFragment(ChooseIntervalSettingsActivity.newInstanceForAutoUpdateTopicsCatalogSettings());
            }
        } else if (view instanceof TextSettingsCell) {
            if (i == this.filterTabsSettingsNotificationModeRow) {
                showNotificationModeDialog();
            } else if (i == this.filterSortingAllChatsTabRow) {
                presentFragment(new AllChatsTabSettingsActivity());
            } else if (i == this.filterTabsSettingsWidthTabsRow) {
                showWidthModeDialog();
            }
        } else if (view instanceof TextCheckCell) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            if (i == this.topicsBarEnableRow) {
                textCheckCell.setChecked(!textCheckCell.isChecked());
                this.newTopicsBarEnabled = !this.newTopicsBarEnabled;
            } else if (i == this.topicsSettingsBarAtBottomRow) {
                textCheckCell.setChecked(!textCheckCell.isChecked());
                this.newTopicsBarAtBottom = !this.newTopicsBarAtBottom;
            } else if (i == this.filterTabsSettingsRememberLastFilterTab) {
                if (textCheckCell.checkSwitchLocation(f)) {
                    textCheckCell.setChecked(!textCheckCell.isChecked());
                    SharedConfig.setRememberLastFilterTabEnabled(!SharedConfig.isRememberLastFilterTabEnabled);
                    return;
                }
                showHintDialog(LocaleController.getInternalString(C3301R.string.folder_tabs_remember_last_filter_tab_hint));
            } else {
                textCheckCell.setChecked(!textCheckCell.isChecked());
                if (i == this.filterTabsSettingsAtBottomRow) {
                    SharedConfig.setFilterTabsAtBottomEnabled(!SharedConfig.isFilterTabsAtBottomEnabled);
                    getNotificationCenter().postNotificationName(NotificationCenter.filterTabsAtBottomUpdated, new Object[0]);
                } else if (i == this.filterHideFiltersRow) {
                    getFiltersController().setHideFoldersEnabled(!getFiltersController().isHideFoldersEnabled());
                    getFiltersController().saveConfig();
                    if ((!getFiltersController().isHideFoldersEnabled() && !getMessagesController().dialogFilters.isEmpty()) || (getFiltersController().getActiveSortingTabsCount(false) > 0 && SharedConfig.getChatSwipeAction(this.currentAccount) != 5)) {
                        SharedConfig.updateChatListSwipeSetting(5);
                    }
                    this.adapter.notifyItemChanged(this.filterTabsSettingsAtBottomRow);
                    this.adapter.notifyItemChanged(this.filterTabsSettingsNotificationModeRow);
                    this.adapter.notifyItemChanged(this.filterTabsSettingsWidthTabsRow);
                    this.adapter.notifyItemChanged(this.filterTabsSettingsRememberLastFilterTab);
                    this.adapter.notifyItemChanged(this.filterSortingAllChatsTabRow);
                    getNotificationCenter().postNotificationName(NotificationCenter.dialogFiltersUpdated, new Object[0]);
                } else if (i == this.filterFiltersFirstRow) {
                    getFiltersController().setFoldersFirstEnabled(!getFiltersController().isFoldersFirstEnabled());
                    getFiltersController().saveConfig();
                    getNotificationCenter().postNotificationName(NotificationCenter.dialogFiltersUpdated, new Object[0]);
                }
            }
        } else if (view instanceof org.telegram.p048ui.Cells.TextCell) {
            if (i == this.topicsCatalogUpdateManuallyRow) {
                showDialog(new AlertDialog(getParentActivity(), 3));
                getTopicsController().updateCatalog(false, new Callbacks$Callback1() { // from class: org.telegram.ui.FiltersSetupActivity$$ExternalSyntheticLambda3
                    @Override // org.fork.utils.Callbacks$Callback1
                    public final void invoke(Object obj) {
                        FiltersSetupActivity.this.lambda$createView$3((Boolean) obj);
                    }
                });
            } else if (i == this.filterSortingTabsRow) {
                presentFragment(new SortingFilterSettingsActivity());
            }
        } else {
            int i2 = this.filtersStartRow;
            if (i >= i2 && i < this.filtersEndRow) {
                FilterActivityType filterActivityType = this.type;
                FilterActivityType filterActivityType2 = FilterActivityType.TOPIC;
                if (filterActivityType == filterActivityType2) {
                    presentFragment(new FilterCreateActivity(this.topics.get(i - i2), null, filterActivityType2));
                    return;
                }
                int i3 = i - i2;
                if (!this.showAllChats) {
                    i3++;
                }
                if (getMessagesController().dialogFilters.get(i3).isDefault()) {
                    return;
                }
                if (getMessagesController().dialogFilters.get(i3).locked) {
                    showDialog(new LimitReachedBottomSheet(this, context, 3, this.currentAccount));
                } else {
                    presentFragment(new FilterCreateActivity(getMessagesController().dialogFilters.get(i3)));
                }
            } else if (i == this.createFilterRow) {
                FilterActivityType filterActivityType3 = this.type;
                FilterActivityType filterActivityType4 = FilterActivityType.TOPIC;
                if (filterActivityType3 == filterActivityType4) {
                    presentFragment(new FilterCreateActivity(null, null, filterActivityType4));
                } else if ((getMessagesController().dialogFilters.size() - 1 >= getMessagesController().dialogFiltersLimitDefault && !getUserConfig().isPremium()) || getMessagesController().dialogFilters.size() >= getMessagesController().dialogFiltersLimitPremium) {
                    showDialog(new LimitReachedBottomSheet(this, context, 3, this.currentAccount));
                } else {
                    presentFragment(new FilterCreateActivity());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(Boolean bool) {
        dismissCurrentDialog();
        ContextExtKt.toast(LocaleController.getInternalString(bool.booleanValue() ? C3301R.string.topics_catalog_updated : C3301R.string.topics_catalog_update_not_found));
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.topicsDidLoad) {
            this.topics = getTopicsController().getAllTopicsNotEmpty();
            updateRows(true);
        } else if (i == NotificationCenter.dialogFiltersUpdated) {
            if (this.ignoreUpdates) {
                return;
            }
            int i3 = this.rowCount;
            updateRows(false);
            if (i3 != this.rowCount) {
                this.adapter.notifyDataSetChanged();
            } else {
                this.adapter.notifyItemRangeChanged(0, i3);
            }
        } else if (i == NotificationCenter.suggestedFiltersLoaded) {
            updateRows(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.FiltersSetupActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK) {
                int adapterPosition2 = viewHolder.getAdapterPosition();
                if (adapterPosition2 == FiltersSetupActivity.this.filterTabsSettingsAtBottomRow || adapterPosition2 == FiltersSetupActivity.this.filterTabsSettingsRememberLastFilterTab) {
                    return FiltersSetupActivity.this.getTotalTabsCount() > 0;
                } else if (adapterPosition2 == FiltersSetupActivity.this.filterFiltersFirstRow) {
                    return FiltersSetupActivity.this.getSortingTabsCount() > 0;
                }
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_SETTINGS && ((adapterPosition = viewHolder.getAdapterPosition()) == FiltersSetupActivity.this.filterTabsSettingsNotificationModeRow || adapterPosition == FiltersSetupActivity.this.filterTabsSettingsWidthTabsRow || adapterPosition == FiltersSetupActivity.this.filterSortingAllChatsTabRow)) {
                return FiltersSetupActivity.this.getTotalTabsCount() > 0;
            }
            return (itemViewType == 3 || itemViewType == 0 || itemViewType == 5 || itemViewType == 1) ? false : true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return FiltersSetupActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            TextSettingsCell textSettingsCell;
            if (i == IdFabric$ViewTypes.TEXT_CHECK) {
                View textCheckCell = new TextCheckCell(this.mContext);
                textCheckCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                textSettingsCell = textCheckCell;
            } else if (i == IdFabric$ViewTypes.TEXT_SETTINGS) {
                TextSettingsCell textSettingsCell2 = new TextSettingsCell(this.mContext);
                textSettingsCell2.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                textSettingsCell2.setCanDisable(true);
                textSettingsCell = textSettingsCell2;
            } else if (i == IdFabric$ViewTypes.TEXT) {
                View textCell = new org.telegram.p048ui.Cells.TextCell(this.mContext);
                textCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                textSettingsCell = textCell;
            } else if (i == IdFabric$ViewTypes.NOTIFICATION_CHECK) {
                View notificationsCheckCell = new NotificationsCheckCell(this.mContext);
                notificationsCheckCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                textSettingsCell = notificationsCheckCell;
            } else if (i == 0) {
                View headerCell = new HeaderCell(this.mContext);
                headerCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                textSettingsCell = headerCell;
            } else if (i == 1) {
                View hintInnerCell = new HintInnerCell(FiltersSetupActivity.this, this.mContext);
                hintInnerCell.setBackgroundDrawable(Theme.getThemedDrawable(this.mContext, C3301R.C3303drawable.greydivider_top, "windowBackgroundGrayShadow"));
                textSettingsCell = hintInnerCell;
            } else if (i == 2) {
                final FilterCell filterCell = new FilterCell(this.mContext);
                filterCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                filterCell.setOnReorderButtonTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        boolean lambda$onCreateViewHolder$0;
                        lambda$onCreateViewHolder$0 = FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$0(filterCell, view, motionEvent);
                        return lambda$onCreateViewHolder$0;
                    }
                });
                filterCell.setOnOptionsClick(new View.OnClickListener() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$5(view);
                    }
                });
                textSettingsCell = filterCell;
            } else if (i == 3) {
                textSettingsCell = new ShadowSectionCell(this.mContext);
            } else if (i == 4) {
                View textCell2 = new TextCell(this.mContext);
                textCell2.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                textSettingsCell = textCell2;
            } else {
                final SuggestedFilterCell suggestedFilterCell = new SuggestedFilterCell(this.mContext);
                suggestedFilterCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                suggestedFilterCell.setAddOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$7(suggestedFilterCell, view);
                    }
                });
                textSettingsCell = suggestedFilterCell;
            }
            return new RecyclerListView.Holder(textSettingsCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onCreateViewHolder$0(FilterCell filterCell, View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                FiltersSetupActivity.this.itemTouchHelper.startDrag(FiltersSetupActivity.this.listView.getChildViewHolder(filterCell));
                return false;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$5(View view) {
            FilterCell filterCell = (FilterCell) view.getParent();
            final TopicModel currentTopic = filterCell.getCurrentTopic();
            final MessagesController.DialogFilter currentFilter = filterCell.getCurrentFilter();
            AlertDialog.Builder builder = new AlertDialog.Builder(FiltersSetupActivity.this.getParentActivity());
            TextPaint textPaint = new TextPaint(1);
            textPaint.setTextSize(AndroidUtilities.m50dp(20));
            if (FiltersSetupActivity.this.type == FilterActivityType.TOPIC) {
                if (currentTopic.isUserTopic()) {
                    builder.setTitle(Emoji.replaceEmoji(currentTopic.getName(), textPaint.getFontMetricsInt(), AndroidUtilities.m50dp(20), false));
                } else if (currentTopic.isAutoTopic()) {
                    builder.setTitle(LocaleController.getInternalString(TopicExtKt.info(currentTopic.getIcon()).getTitleResId()));
                }
            } else {
                builder.setTitle(Emoji.replaceEmoji(currentFilter.name, textPaint.getFontMetricsInt(), AndroidUtilities.m50dp(20), false));
            }
            builder.setItems(new CharSequence[]{LocaleController.getString("FilterEditItem", C3301R.string.FilterEditItem), LocaleController.getString("FilterDeleteItem", C3301R.string.FilterDeleteItem)}, new int[]{C3301R.C3303drawable.msg_edit, C3301R.C3303drawable.msg_delete}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$4(currentTopic, currentFilter, dialogInterface, i);
                }
            });
            AlertDialog create = builder.create();
            FiltersSetupActivity.this.showDialog(create);
            create.setItemColor(1, Theme.getColor("dialogTextRed"), Theme.getColor("dialogRedIcon"));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$4(final TopicModel topicModel, final MessagesController.DialogFilter dialogFilter, DialogInterface dialogInterface, int i) {
            if (i == 0) {
                FilterActivityType filterActivityType = FiltersSetupActivity.this.type;
                FilterActivityType filterActivityType2 = FilterActivityType.TOPIC;
                if (filterActivityType == filterActivityType2) {
                    FiltersSetupActivity.this.presentFragment(new FilterCreateActivity(topicModel, null, filterActivityType2));
                } else if (dialogFilter.locked) {
                    FiltersSetupActivity filtersSetupActivity = FiltersSetupActivity.this;
                    FiltersSetupActivity filtersSetupActivity2 = FiltersSetupActivity.this;
                    filtersSetupActivity.showDialog(new LimitReachedBottomSheet(filtersSetupActivity2, this.mContext, 3, ((BaseFragment) filtersSetupActivity2).currentAccount));
                } else {
                    FiltersSetupActivity.this.presentFragment(new FilterCreateActivity(dialogFilter));
                }
            } else if (i == 1) {
                AlertDialog.Builder builder = new AlertDialog.Builder(FiltersSetupActivity.this.getParentActivity());
                builder.setTitle(LocaleController.getString("FilterDelete", C3301R.string.FilterDelete));
                builder.setMessage(LocaleController.getString("FilterDeleteAlert", C3301R.string.FilterDeleteAlert));
                if (FiltersSetupActivity.this.type == FilterActivityType.TOPIC) {
                    builder.setTitle(LocaleController.getInternalString(C3301R.string.topics_remove));
                    builder.setMessage(LocaleController.getInternalString(C3301R.string.topics_remove_alert));
                }
                builder.setNegativeButton(LocaleController.getString("Cancel", C3301R.string.Cancel), null);
                builder.setPositiveButton(LocaleController.getString("Delete", C3301R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface2, int i2) {
                        FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$3(topicModel, dialogFilter, dialogInterface2, i2);
                    }
                });
                AlertDialog create = builder.create();
                FiltersSetupActivity.this.showDialog(create);
                TextView textView = (TextView) create.getButton(-1);
                if (textView != null) {
                    textView.setTextColor(Theme.getColor("dialogTextRed"));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$3(TopicModel topicModel, final MessagesController.DialogFilter dialogFilter, DialogInterface dialogInterface, int i) {
            if (FiltersSetupActivity.this.type == FilterActivityType.TOPIC) {
                FiltersSetupActivity.this.getTopicsController().removeTopicFilterDialogs(topicModel);
                return;
            }
            final AlertDialog alertDialog = null;
            if (FiltersSetupActivity.this.getParentActivity() != null) {
                alertDialog = new AlertDialog(FiltersSetupActivity.this.getParentActivity(), 3);
                alertDialog.setCanCancel(false);
                alertDialog.show();
            }
            TLRPC$TL_messages_updateDialogFilter tLRPC$TL_messages_updateDialogFilter = new TLRPC$TL_messages_updateDialogFilter();
            tLRPC$TL_messages_updateDialogFilter.f1611id = dialogFilter.f1440id;
            FiltersSetupActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_updateDialogFilter, new RequestDelegate() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda7
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$2(alertDialog, dialogFilter, tLObject, tLRPC$TL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$2(final AlertDialog alertDialog, final MessagesController.DialogFilter dialogFilter, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$1(alertDialog, dialogFilter);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$1(AlertDialog alertDialog, MessagesController.DialogFilter dialogFilter) {
            if (alertDialog != null) {
                try {
                    alertDialog.dismiss();
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
            int indexOf = FiltersSetupActivity.this.getMessagesController().dialogFilters.indexOf(dialogFilter);
            if (indexOf >= 0) {
                indexOf += FiltersSetupActivity.this.filtersStartRow;
            }
            if (!FiltersSetupActivity.this.showAllChats) {
                indexOf--;
            }
            FiltersSetupActivity.this.ignoreUpdates = true;
            FiltersSetupActivity.this.getMessagesController().removeFilter(dialogFilter);
            FiltersSetupActivity.this.getMessagesStorage().deleteDialogFilter(dialogFilter);
            FiltersSetupActivity.this.ignoreUpdates = false;
            int i = FiltersSetupActivity.this.createFilterRow;
            int i2 = FiltersSetupActivity.this.recommendedHeaderRow;
            FiltersSetupActivity.this.updateRows(indexOf == -1);
            if (indexOf != -1) {
                if (FiltersSetupActivity.this.filtersStartRow == -1) {
                    FiltersSetupActivity.this.adapter.notifyItemRangeRemoved(indexOf - 3, 4);
                    FiltersSetupActivity.this.adapter.notifyItemChanged(FiltersSetupActivity.this.filterTabsSettingsAtBottomRow);
                    FiltersSetupActivity.this.adapter.notifyItemChanged(FiltersSetupActivity.this.filterTabsSettingsNotificationModeRow);
                    FiltersSetupActivity.this.adapter.notifyItemChanged(FiltersSetupActivity.this.filterTabsSettingsWidthTabsRow);
                    FiltersSetupActivity.this.adapter.notifyItemChanged(FiltersSetupActivity.this.filterTabsSettingsRememberLastFilterTab);
                } else {
                    FiltersSetupActivity.this.adapter.notifyItemRemoved(indexOf);
                    FiltersSetupActivity.this.adapter.notifyItemRangeChanged(FiltersSetupActivity.this.filtersStartRow, (FiltersSetupActivity.this.filtersEndRow + 1) - FiltersSetupActivity.this.filtersStartRow);
                }
                FiltersSetupActivity.this.adapter.notifyItemChanged(FiltersSetupActivity.this.filterSortingAllChatsTabRow);
                if (i2 == -1 && FiltersSetupActivity.this.recommendedHeaderRow != -1) {
                    FiltersSetupActivity.this.adapter.notifyItemRangeInserted(i2, (FiltersSetupActivity.this.recommendedSectionRow - FiltersSetupActivity.this.recommendedHeaderRow) + 1);
                }
                if (i != -1 || FiltersSetupActivity.this.createFilterRow == -1) {
                    return;
                }
                FiltersSetupActivity.this.adapter.notifyItemInserted(FiltersSetupActivity.this.createFilterRow);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$7(SuggestedFilterCell suggestedFilterCell, View view) {
            final TLRPC$TL_dialogFilterSuggested suggestedFilter = suggestedFilterCell.getSuggestedFilter();
            final MessagesController.DialogFilter dialogFilter = new MessagesController.DialogFilter();
            dialogFilter.name = suggestedFilter.filter.title;
            dialogFilter.f1440id = 2;
            while (FiltersSetupActivity.this.getMessagesController().dialogFiltersById.get(dialogFilter.f1440id) != null) {
                dialogFilter.f1440id++;
            }
            dialogFilter.unreadCount = -1;
            dialogFilter.pendingUnreadCount = -1;
            int i = 0;
            while (i < 2) {
                TLRPC$DialogFilter tLRPC$DialogFilter = suggestedFilter.filter;
                ArrayList<TLRPC$InputPeer> arrayList = i == 0 ? tLRPC$DialogFilter.include_peers : tLRPC$DialogFilter.exclude_peers;
                ArrayList<Long> arrayList2 = i == 0 ? dialogFilter.alwaysShow : dialogFilter.neverShow;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    TLRPC$InputPeer tLRPC$InputPeer = arrayList.get(i2);
                    long j = tLRPC$InputPeer.user_id;
                    if (j == 0) {
                        long j2 = tLRPC$InputPeer.chat_id;
                        j = j2 != 0 ? -j2 : -tLRPC$InputPeer.channel_id;
                    }
                    arrayList2.add(Long.valueOf(j));
                }
                i++;
            }
            TLRPC$DialogFilter tLRPC$DialogFilter2 = suggestedFilter.filter;
            if (tLRPC$DialogFilter2.groups) {
                dialogFilter.flags |= MessagesController.DIALOG_FILTER_FLAG_GROUPS;
            }
            if (tLRPC$DialogFilter2.bots) {
                dialogFilter.flags |= MessagesController.DIALOG_FILTER_FLAG_BOTS;
            }
            if (tLRPC$DialogFilter2.contacts) {
                dialogFilter.flags |= MessagesController.DIALOG_FILTER_FLAG_CONTACTS;
            }
            if (tLRPC$DialogFilter2.non_contacts) {
                dialogFilter.flags |= MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS;
            }
            if (tLRPC$DialogFilter2.broadcasts) {
                dialogFilter.flags |= MessagesController.DIALOG_FILTER_FLAG_CHANNELS;
            }
            if (tLRPC$DialogFilter2.exclude_archived) {
                dialogFilter.flags |= MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED;
            }
            if (tLRPC$DialogFilter2.exclude_read) {
                dialogFilter.flags |= MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ;
            }
            if (tLRPC$DialogFilter2.exclude_muted) {
                dialogFilter.flags |= MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_MUTED;
            }
            FiltersSetupActivity.this.ignoreUpdates = true;
            FilterCreateActivity.saveFilterToServer(dialogFilter, dialogFilter.flags, dialogFilter.name, dialogFilter.alwaysShow, dialogFilter.neverShow, dialogFilter.pinnedDialogs, true, true, true, true, false, FiltersSetupActivity.this, new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$6(suggestedFilter, dialogFilter);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$6(TLRPC$TL_dialogFilterSuggested tLRPC$TL_dialogFilterSuggested, MessagesController.DialogFilter dialogFilter) {
            FiltersSetupActivity.this.getNotificationCenter().postNotificationName(NotificationCenter.dialogFiltersUpdated, new Object[0]);
            FiltersSetupActivity.this.ignoreUpdates = false;
            ArrayList<TLRPC$TL_dialogFilterSuggested> arrayList = FiltersSetupActivity.this.getMessagesController().suggestedFilters;
            int indexOf = arrayList.indexOf(tLRPC$TL_dialogFilterSuggested);
            if (indexOf != -1) {
                boolean z = FiltersSetupActivity.this.filtersStartRow == -1;
                arrayList.remove(indexOf);
                int i = indexOf + FiltersSetupActivity.this.recommendedStartRow;
                int i2 = FiltersSetupActivity.this.createFilterRow;
                int i3 = FiltersSetupActivity.this.recommendedHeaderRow;
                int i4 = FiltersSetupActivity.this.recommendedSectionRow;
                FiltersSetupActivity.this.updateRows(false);
                if (i2 != -1 && FiltersSetupActivity.this.createFilterRow == -1) {
                    FiltersSetupActivity.this.adapter.notifyItemRemoved(i2);
                }
                if (i3 == -1 || FiltersSetupActivity.this.recommendedHeaderRow != -1) {
                    FiltersSetupActivity.this.adapter.notifyItemRemoved(i);
                } else {
                    FiltersSetupActivity.this.adapter.notifyItemRangeRemoved(i3, (i4 - i3) + 1);
                }
                if (z) {
                    FiltersSetupActivity.this.adapter.notifyItemInserted(FiltersSetupActivity.this.filtersHeaderRow);
                }
                int i5 = 0;
                for (int i6 = 0; i6 < FiltersSetupActivity.this.getMessagesController().dialogFilters.size(); i6++) {
                    if (dialogFilter.f1440id == FiltersSetupActivity.this.getMessagesController().dialogFilters.get(i6).f1440id) {
                        i5 = i6;
                    }
                }
                if (!FiltersSetupActivity.this.getUserConfig().isPremium()) {
                    i5--;
                }
                FiltersSetupActivity.this.adapter.notifyItemInserted(FiltersSetupActivity.this.filtersStartRow + (i5 >= 0 ? i5 : 0));
                return;
            }
            FiltersSetupActivity.this.updateRows(true);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String internalString;
            boolean z = getItemViewType(i + 1) != getItemViewType(FiltersSetupActivity.this.createSectionRow);
            if (i != FiltersSetupActivity.this.topicsCatalogUpdateAutoRow) {
                if (i != FiltersSetupActivity.this.topicsCatalogUpdateManuallyRow && i != FiltersSetupActivity.this.filterSortingTabsRow) {
                    if (i != FiltersSetupActivity.this.topicsSettingsHeaderRow && i != FiltersSetupActivity.this.topicsCatalogHeaderRow && i != FiltersSetupActivity.this.filterTabsSettingsHeaderRow && i != FiltersSetupActivity.this.filterSortingHeaderRow) {
                        if (i != FiltersSetupActivity.this.topicsBarEnableRow && i != FiltersSetupActivity.this.topicsSettingsBarAtBottomRow && i != FiltersSetupActivity.this.filterTabsSettingsAtBottomRow && i != FiltersSetupActivity.this.filterTabsSettingsRememberLastFilterTab && i != FiltersSetupActivity.this.filterHideFiltersRow && i != FiltersSetupActivity.this.filterFiltersFirstRow) {
                            if (i == FiltersSetupActivity.this.filterTabsSettingsNotificationModeRow || i == FiltersSetupActivity.this.filterTabsSettingsWidthTabsRow || i == FiltersSetupActivity.this.filterSortingAllChatsTabRow) {
                                TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                                textSettingsCell.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
                                if (i != FiltersSetupActivity.this.filterTabsSettingsNotificationModeRow) {
                                    if (i == FiltersSetupActivity.this.filterSortingAllChatsTabRow) {
                                        boolean z2 = FiltersSetupActivity.this.getTotalTabsCount() > 0;
                                        if (z2 && !FiltersSetupActivity.this.getFiltersController().isAllChatsTabEnabled()) {
                                            internalString = LocaleController.getInternalString(C3301R.string.common_off);
                                        } else {
                                            internalString = LocaleController.getInternalString(C3301R.string.common_on);
                                        }
                                        textSettingsCell.setTextAndValue(LocaleController.getInternalString(C3301R.string.folder_tabs_all_chats_tab_settings_item_title), internalString, z);
                                        textSettingsCell.setEnabled(z2);
                                        return;
                                    } else if (i == FiltersSetupActivity.this.filterTabsSettingsWidthTabsRow) {
                                        textSettingsCell.setTextAndValue(LocaleController.getInternalString(C3301R.string.folder_tabs_width_mode_item_title), LocaleController.getInternalString(SharedConfig.selectedFilterTabWidthMode.getTitleResId()), z);
                                        textSettingsCell.setEnabled(FiltersSetupActivity.this.getTotalTabsCount() > 0, null);
                                        return;
                                    } else {
                                        return;
                                    }
                                }
                                textSettingsCell.setTextAndValue(LocaleController.getInternalString(C3301R.string.folder_tabs_notification_mode_item_title), LocaleController.getInternalString(SharedConfig.selectedFilterTabsNotificationMode.getTitleResId()), z);
                                textSettingsCell.setEnabled(FiltersSetupActivity.this.getTotalTabsCount() > 0, null);
                                return;
                            }
                            int itemViewType = viewHolder.getItemViewType();
                            if (itemViewType == 0) {
                                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                                if (i == FiltersSetupActivity.this.filtersHeaderRow) {
                                    if (FiltersSetupActivity.this.type == FilterActivityType.TOPIC) {
                                        headerCell.setText(LocaleController.getInternalString(C3301R.string.topics));
                                        return;
                                    } else {
                                        headerCell.setText(LocaleController.getString("Filters", C3301R.string.Filters));
                                        return;
                                    }
                                } else if (i == FiltersSetupActivity.this.recommendedHeaderRow) {
                                    headerCell.setText(LocaleController.getString("FilterRecommended", C3301R.string.FilterRecommended));
                                    return;
                                } else {
                                    return;
                                }
                            } else if (itemViewType == 2) {
                                FilterCell filterCell = (FilterCell) viewHolder.itemView;
                                if (FiltersSetupActivity.this.type == FilterActivityType.TOPIC) {
                                    filterCell.setTopic((TopicModel) FiltersSetupActivity.this.topics.get(i - FiltersSetupActivity.this.filtersStartRow), true);
                                    return;
                                }
                                int i2 = i - FiltersSetupActivity.this.filtersStartRow;
                                if (!FiltersSetupActivity.this.showAllChats) {
                                    i2++;
                                }
                                filterCell.setFilter(FiltersSetupActivity.this.getMessagesController().dialogFilters.get(i2), true);
                                return;
                            } else if (itemViewType == 3) {
                                if (i == FiltersSetupActivity.this.createSectionRow) {
                                    viewHolder.itemView.setBackgroundDrawable(Theme.getThemedDrawable(this.mContext, C3301R.C3303drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                                    return;
                                } else {
                                    viewHolder.itemView.setBackgroundDrawable(Theme.getThemedDrawable(this.mContext, C3301R.C3303drawable.greydivider, "windowBackgroundGrayShadow"));
                                    return;
                                }
                            } else if (itemViewType != 4) {
                                if (itemViewType != 5) {
                                    return;
                                }
                                ((SuggestedFilterCell) viewHolder.itemView).setFilter(FiltersSetupActivity.this.getMessagesController().suggestedFilters.get(i - FiltersSetupActivity.this.recommendedStartRow), FiltersSetupActivity.this.recommendedStartRow != FiltersSetupActivity.this.recommendedEndRow - 1);
                                return;
                            } else {
                                TextCell textCell = (TextCell) viewHolder.itemView;
                                MessagesController.getNotificationsSettings(((BaseFragment) FiltersSetupActivity.this).currentAccount);
                                if (i == FiltersSetupActivity.this.createFilterRow) {
                                    Drawable drawable = this.mContext.getResources().getDrawable(C3301R.C3303drawable.poll_add_circle);
                                    Drawable drawable2 = this.mContext.getResources().getDrawable(C3301R.C3303drawable.poll_add_plus);
                                    drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor("switchTrackChecked"), PorterDuff.Mode.MULTIPLY));
                                    drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor("checkboxCheck"), PorterDuff.Mode.MULTIPLY));
                                    CombinedDrawable combinedDrawable = new CombinedDrawable(drawable, drawable2);
                                    if (FiltersSetupActivity.this.type == FilterActivityType.TOPIC) {
                                        textCell.setTextAndIcon(LocaleController.getInternalString(C3301R.string.topics_create_new), combinedDrawable, false);
                                        return;
                                    } else {
                                        textCell.setTextAndIcon(LocaleController.getString("CreateNewFilter", C3301R.string.CreateNewFilter), combinedDrawable, false);
                                        return;
                                    }
                                }
                                return;
                            }
                        }
                        TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                        textCheckCell.setDrawSwitchDivider(i == FiltersSetupActivity.this.filterTabsSettingsRememberLastFilterTab);
                        if (i == FiltersSetupActivity.this.topicsBarEnableRow) {
                            textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.topics_settings_enable), FiltersSetupActivity.this.newTopicsBarEnabled, z);
                            return;
                        } else if (i == FiltersSetupActivity.this.topicsSettingsBarAtBottomRow) {
                            textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.topics_settings_topics_bar_at_bottom), FiltersSetupActivity.this.newTopicsBarAtBottom, z);
                            return;
                        } else if (i == FiltersSetupActivity.this.filterTabsSettingsAtBottomRow) {
                            textCheckCell.setEnabled(FiltersSetupActivity.this.getTotalTabsCount() > 0, null);
                            textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.folder_tabs_at_bottom_enable_item_title), SharedConfig.isFilterTabsAtBottomEnabled, z);
                            return;
                        } else if (i == FiltersSetupActivity.this.filterTabsSettingsRememberLastFilterTab) {
                            textCheckCell.setEnabled(FiltersSetupActivity.this.getTotalTabsCount() > 0, null);
                            textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.folder_tabs_remember_last_filter_tab_item_title), SharedConfig.isRememberLastFilterTabEnabled, z);
                            return;
                        } else if (i != FiltersSetupActivity.this.filterHideFiltersRow) {
                            textCheckCell.setEnabled(FiltersSetupActivity.this.getSortingTabsCount() > 0, null);
                            textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.folder_tabs_settings_folders_first), FiltersSetupActivity.this.getFiltersController().isFoldersFirstEnabled(), z);
                            return;
                        } else {
                            textCheckCell.setEnabled(true, null);
                            textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.folder_tabs_settings_hide_folders), FiltersSetupActivity.this.getFiltersController().isHideFoldersEnabled(), z);
                            return;
                        }
                    }
                    HeaderCell headerCell2 = (HeaderCell) viewHolder.itemView;
                    if (i != FiltersSetupActivity.this.topicsSettingsHeaderRow) {
                        if (i != FiltersSetupActivity.this.topicsCatalogHeaderRow) {
                            if (i == FiltersSetupActivity.this.filterTabsSettingsHeaderRow) {
                                headerCell2.setText(LocaleController.getInternalString(C3301R.string.folder_tabs_settings_header));
                                return;
                            } else {
                                headerCell2.setText(LocaleController.getInternalString(C3301R.string.folder_tabs_sorting_settings_item_title));
                                return;
                            }
                        }
                        headerCell2.setText(LocaleController.getInternalString(C3301R.string.topics_catalog));
                        return;
                    }
                    headerCell2.setText(LocaleController.getString("Settings", C3301R.string.Settings));
                    return;
                }
                org.telegram.p048ui.Cells.TextCell textCell2 = (org.telegram.p048ui.Cells.TextCell) viewHolder.itemView;
                if (i == FiltersSetupActivity.this.topicsCatalogUpdateManuallyRow) {
                    textCell2.setText(LocaleController.getInternalString(C3301R.string.topics_catalog_update_manually), z);
                    return;
                } else {
                    textCell2.setText(LocaleController.getInternalString(C3301R.string.folder_tabs_sorting_settings), z);
                    return;
                }
            }
            NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) viewHolder.itemView;
            String internalString2 = LocaleController.getInternalString(C3301R.string.topics_catalog_update_auto);
            if (FiltersSetupActivity.this.getTopicsController().isAutoUpdateTopicsCatalogEnabled()) {
                notificationsCheckCell.setTextAndValueAndCheck(internalString2, LocaleController.getInternalString(FiltersSetupActivity.this.getTopicsController().getSelectedAutoUpdateTopicsCatalogInterval().getNameResId()), true, z);
            } else {
                notificationsCheckCell.setTextAndValueAndCheck(internalString2, LocaleController.getInternalString(C3301R.string.common_off), false, z);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i != FiltersSetupActivity.this.topicsBarEnableRow && i != FiltersSetupActivity.this.topicsSettingsBarAtBottomRow && i != FiltersSetupActivity.this.filterTabsSettingsAtBottomRow && i != FiltersSetupActivity.this.filterTabsSettingsRememberLastFilterTab && i != FiltersSetupActivity.this.filterHideFiltersRow && i != FiltersSetupActivity.this.filterFiltersFirstRow) {
                if (i != FiltersSetupActivity.this.filterTabsSettingsNotificationModeRow && i != FiltersSetupActivity.this.filterTabsSettingsWidthTabsRow && i != FiltersSetupActivity.this.filterSortingAllChatsTabRow) {
                    if (i != FiltersSetupActivity.this.topicsCatalogUpdateManuallyRow && i != FiltersSetupActivity.this.filterSortingTabsRow) {
                        if (i != FiltersSetupActivity.this.topicsCatalogUpdateAutoRow) {
                            if (i == FiltersSetupActivity.this.topicsSettingsHeaderRow || i == FiltersSetupActivity.this.topicsCatalogHeaderRow || i == FiltersSetupActivity.this.filterTabsSettingsHeaderRow || i == FiltersSetupActivity.this.filterSortingHeaderRow || i == FiltersSetupActivity.this.filtersHeaderRow || i == FiltersSetupActivity.this.recommendedHeaderRow) {
                                return 0;
                            }
                            if (i == FiltersSetupActivity.this.filterHelpRow) {
                                return 1;
                            }
                            if (i < FiltersSetupActivity.this.filtersStartRow || i >= FiltersSetupActivity.this.filtersEndRow) {
                                if (i == FiltersSetupActivity.this.topicsSettingsSectionRow || i == FiltersSetupActivity.this.topicsCatalogSectionRow || i == FiltersSetupActivity.this.filterTabsSettingsSectionRow || i == FiltersSetupActivity.this.filterSortingSectionRow || i == FiltersSetupActivity.this.createSectionRow || i == FiltersSetupActivity.this.recommendedSectionRow) {
                                    return 3;
                                }
                                return i == FiltersSetupActivity.this.createFilterRow ? 4 : 5;
                            }
                            return 2;
                        }
                        return IdFabric$ViewTypes.NOTIFICATION_CHECK;
                    }
                    return IdFabric$ViewTypes.TEXT;
                }
                return IdFabric$ViewTypes.TEXT_SETTINGS;
            }
            return IdFabric$ViewTypes.TEXT_CHECK;
        }

        public void swapElements(int i, int i2) {
            int i3 = i - FiltersSetupActivity.this.filtersStartRow;
            int i4 = i2 - FiltersSetupActivity.this.filtersStartRow;
            int i5 = FiltersSetupActivity.this.filtersEndRow - FiltersSetupActivity.this.filtersStartRow;
            if (FiltersSetupActivity.this.type == FilterActivityType.FILTER && !FiltersSetupActivity.this.showAllChats) {
                i3++;
                i4++;
                i5++;
            }
            if (i3 < 0 || i4 < 0 || i3 >= i5 || i4 >= i5) {
                return;
            }
            if (FiltersSetupActivity.this.type == FilterActivityType.TOPIC) {
                FiltersSetupActivity.this.getTopicsController().swapTopics(((TopicModel) FiltersSetupActivity.this.topics.get(i3)).getTopicId(), ((TopicModel) FiltersSetupActivity.this.topics.get(i4)).getTopicId());
                Collections.swap(FiltersSetupActivity.this.topics, i3, i4);
                notifyItemMoved(i, i2);
                FiltersSetupActivity.this.orderChanged = true;
                return;
            }
            ArrayList<MessagesController.DialogFilter> arrayList = FiltersSetupActivity.this.getMessagesController().dialogFilters;
            MessagesController.DialogFilter dialogFilter = arrayList.get(i3);
            MessagesController.DialogFilter dialogFilter2 = arrayList.get(i4);
            int i6 = dialogFilter.order;
            dialogFilter.order = dialogFilter2.order;
            dialogFilter2.order = i6;
            arrayList.set(i3, dialogFilter2);
            arrayList.set(i4, dialogFilter);
            FiltersSetupActivity.this.orderChanged = true;
            notifyItemMoved(i, i2);
        }

        public void moveElementToStart(int i) {
            int i2;
            int i3 = FiltersSetupActivity.this.filtersEndRow - FiltersSetupActivity.this.filtersStartRow;
            if (FiltersSetupActivity.this.showAllChats) {
                i2 = i;
            } else {
                i2 = i + 1;
                i3++;
            }
            if (i2 < 0 || i2 >= i3) {
                return;
            }
            ArrayList<MessagesController.DialogFilter> arrayList = FiltersSetupActivity.this.getMessagesController().dialogFilters;
            arrayList.add(0, arrayList.remove(i));
            for (int i4 = 0; i4 <= i; i4++) {
                arrayList.get(i4).order = i4;
            }
            FiltersSetupActivity.this.orderChanged = true;
            notifyItemMoved(FiltersSetupActivity.this.filtersStartRow + i, FiltersSetupActivity.this.filtersStartRow);
        }
    }

    /* renamed from: org.telegram.ui.FiltersSetupActivity$TouchHelperCallback */
    /* loaded from: classes5.dex */
    public class TouchHelperCallback extends ItemTouchHelper.Callback {
        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        }

        public TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            if (FiltersSetupActivity.this.type != FilterActivityType.TOPIC && !FiltersSetupActivity.this.getUserConfig().isPremium()) {
                View view = viewHolder.itemView;
                if (view instanceof FilterCell) {
                    ((FilterCell) view).currentFilter.isDefault();
                }
            }
            if (viewHolder.getItemViewType() != 2) {
                return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (FiltersSetupActivity.this.type != FilterActivityType.TOPIC && !FiltersSetupActivity.this.getUserConfig().isPremium()) {
                View view = viewHolder2.itemView;
                if (view instanceof FilterCell) {
                    ((FilterCell) view).currentFilter.isDefault();
                }
            }
            if (viewHolder.getItemViewType() == viewHolder2.getItemViewType()) {
                FiltersSetupActivity.this.adapter.swapElements(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
                return true;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void resetDefaultPosition() {
            if (UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
                return;
            }
            ArrayList<MessagesController.DialogFilter> arrayList = FiltersSetupActivity.this.getMessagesController().dialogFilters;
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i).isDefault() && i != 0) {
                    FiltersSetupActivity.this.adapter.moveElementToStart(i);
                    FiltersSetupActivity.this.listView.scrollToPosition(0);
                    FiltersSetupActivity.this.onDefaultTabMoved();
                    return;
                }
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (i != 0) {
                FiltersSetupActivity.this.listView.cancelClickRunnables(false);
                viewHolder.itemView.setPressed(true);
            } else {
                AndroidUtilities.cancelRunOnUIThread(new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$TouchHelperCallback$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FiltersSetupActivity.TouchHelperCallback.this.resetDefaultPosition();
                    }
                });
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$TouchHelperCallback$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FiltersSetupActivity.TouchHelperCallback.this.resetDefaultPosition();
                    }
                }, 320L);
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            super.clearView(recyclerView, viewHolder);
            viewHolder.itemView.setPressed(false);
        }
    }

    protected void onDefaultTabMoved() {
        try {
            this.fragmentView.performHapticFeedback(3, 1);
        } catch (Exception unused) {
        }
        BulletinFactory.m27of(this).createSimpleBulletin(C3301R.C3306raw.filter_reorder, AndroidUtilities.replaceTags(LocaleController.formatString("LimitReachedReorderFolder", C3301R.string.LimitReachedReorderFolder, LocaleController.getString(C3301R.string.FilterAllChats))), LocaleController.getString("PremiumMore", C3301R.string.PremiumMore), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS, new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FiltersSetupActivity.this.lambda$onDefaultTabMoved$5();
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDefaultTabMoved$5() {
        showDialog(new PremiumFeatureBottomSheet(this, 9, true));
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, TextSettingsCell.class, org.telegram.p048ui.Cells.TextCell.class, NotificationsCheckCell.class}, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrack"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteValueText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{FilterCell.class}, new String[]{"iconView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "chats_actionBackground"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{org.telegram.p048ui.Cells.TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrack"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, TextCell.class, FilterCell.class, SuggestedFilterCell.class}, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundGray"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{FilterCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{FilterCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{FilterCell.class}, new String[]{"moveImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "stickers_menu"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{FilterCell.class}, new String[]{"optionsImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "stickers_menu"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{FilterCell.class}, new String[]{"optionsImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "stickers_menuSelector"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueText2"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "checkboxCheck"));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        return arrayList;
    }
}
