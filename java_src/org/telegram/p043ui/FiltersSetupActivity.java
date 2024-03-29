package org.telegram.p043ui;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
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
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.controller.ForkTopicsController;
import com.iMe.fork.enums.FilterActivityType;
import com.iMe.fork.enums.FilterTabNotificationMode;
import com.iMe.fork.enums.FilterTabWidthMode;
import com.iMe.fork.p023ui.fragment.AllChatsTabSettingsActivity;
import com.iMe.fork.p023ui.fragment.SortingFilterSettingsActivity;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.p030ui.base.mvp.JavaMvpFragment;
import com.iMe.p030ui.topics.TopicInfo;
import com.iMe.storage.domain.model.topics.TopicModel;
import com.iMe.utils.extentions.model.topic.TopicExtKt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.NotificationsCheckCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.FolderBottomSheet;
import org.telegram.p043ui.Components.ItemOptions;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.p043ui.Components.LoadingDrawable;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p043ui.Components.ProgressButton;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.UndoView;
import org.telegram.p043ui.FilterCreateActivity;
import org.telegram.p043ui.FiltersSetupActivity;
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
    private int filtersSectionEnd;
    private int filtersSectionStart;
    private int filtersStartPosition;
    private boolean ignoreUpdates;
    private ItemTouchHelper itemTouchHelper;
    private ArrayList<ItemInner> items;
    private RecyclerListView listView;
    private boolean newTopicsBarAtBottom;
    private boolean newTopicsBarEnabled;
    private ArrayList<ItemInner> oldItems;
    private boolean orderChanged;
    private List<TopicModel> topics;
    private final FilterActivityType type;
    private UndoView undoView;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onFragmentDestroy$2(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    public FiltersSetupActivity() {
        this(FilterActivityType.FILTER);
    }

    public FiltersSetupActivity(FilterActivityType filterActivityType) {
        this.oldItems = new ArrayList<>();
        this.items = new ArrayList<>();
        this.filtersSectionStart = -1;
        this.filtersSectionEnd = -1;
        this.type = filterActivityType;
        if (isTopicType()) {
            this.newTopicsBarEnabled = getTopicsController().isTopicsBarEnabled();
            this.newTopicsBarAtBottom = getTopicsController().isTopicsBarAtBottomEnabled();
            this.topics = getTopicsController().getAllTopicsNotEmpty();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isTopicType() {
        return this.type == FilterActivityType.TOPIC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFilterTabsCount() {
        return (getMessagesController().dialogFilters.size() - 1) - getFiltersController().getHiddenFiltersCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSortingTabsCount() {
        return getFiltersController().getActiveSortingTabsCount(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTotalTabsCount() {
        return (getFiltersController().isFoldersHidden() ? 0 : getFilterTabsCount()) + getSortingTabsCount();
    }

    private void showHintDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setMessage(str);
        builder.setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), null);
        showDialog(builder.create());
    }

    private void showWidthModeDialog() {
        int ordinal = SharedConfig.selectedFilterTabWidthMode.ordinal();
        String internalString = LocaleController.getInternalString(C3632R.string.folder_tabs_width_mode_item_title);
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
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
    }

    private void showNotificationModeDialog() {
        int ordinal = SharedConfig.selectedFilterTabsNotificationMode.ordinal();
        String internalString = LocaleController.getInternalString(C3632R.string.folder_tabs_notification_mode_item_title);
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
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
    }

    /* renamed from: org.telegram.ui.FiltersSetupActivity$TextCell */
    /* loaded from: classes5.dex */
    public class TextCell extends FrameLayout {
        private ImageView imageView;
        private SimpleTextView textView;

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (FiltersSetupActivity.this.isTopicType()) {
                canvas.drawLine(BitmapDescriptorFactory.HUE_RED, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
            }
        }

        public TextCell(Context context) {
            super(context);
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.textView = simpleTextView;
            simpleTextView.setTextSize(16);
            this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
            SimpleTextView simpleTextView2 = this.textView;
            int i = Theme.key_windowBackgroundWhiteBlueText2;
            simpleTextView2.setTextColor(Theme.getColor(i));
            this.textView.setTag(Integer.valueOf(i));
            addView(this.textView);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            addView(this.imageView);
            if (FiltersSetupActivity.this.isTopicType()) {
                setWillNotDraw(false);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            AndroidUtilities.m107dp(48);
            this.textView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m107dp(94), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(20), 1073741824));
            this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(50), 1073741824));
            setMeasuredDimension(size, AndroidUtilities.m107dp(50));
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int m107dp;
            int i5 = i3 - i;
            int textHeight = ((i4 - i2) - this.textView.getTextHeight()) / 2;
            if (LocaleController.isRTL) {
                m107dp = (getMeasuredWidth() - this.textView.getMeasuredWidth()) - AndroidUtilities.m107dp(this.imageView.getVisibility() != 0 ? 23 : 64);
            } else {
                m107dp = AndroidUtilities.m107dp(this.imageView.getVisibility() != 0 ? 23 : 64);
            }
            SimpleTextView simpleTextView = this.textView;
            simpleTextView.layout(m107dp, textHeight, simpleTextView.getMeasuredWidth() + m107dp, this.textView.getMeasuredHeight() + textHeight);
            int m107dp2 = (!LocaleController.isRTL ? AndroidUtilities.m107dp(20) : (i5 - this.imageView.getMeasuredWidth()) - AndroidUtilities.m107dp(20)) + AndroidUtilities.m107dp(LocaleController.isRTL ? 2 : -2);
            ImageView imageView = this.imageView;
            imageView.layout(m107dp2, 0, imageView.getMeasuredWidth() + m107dp2, this.imageView.getMeasuredHeight());
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
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            this.textView.setTextSize(1, 16.0f);
            this.textView.setLines(1);
            this.textView.setMaxLines(1);
            this.textView.setSingleLine(true);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
            addView(this.textView, LayoutHelper.createFrame(-2, -2, LocaleController.isRTL ? 5 : 3, 22, 10, 22, 0));
            TextView textView2 = new TextView(context);
            this.valueTextView = textView2;
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
            this.valueTextView.setTextSize(1, 13.0f);
            this.valueTextView.setLines(1);
            this.valueTextView.setMaxLines(1);
            this.valueTextView.setSingleLine(true);
            this.valueTextView.setEllipsize(TextUtils.TruncateAt.END);
            this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            addView(this.valueTextView, LayoutHelper.createFrame(-2, -2, LocaleController.isRTL ? 5 : 3, 22, 35, 22, 0));
            ProgressButton progressButton = new ProgressButton(context);
            this.addButton = progressButton;
            progressButton.setText(LocaleController.getString("Add", C3632R.string.Add));
            this.addButton.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
            this.addButton.setProgressColor(Theme.getColor(Theme.key_featuredStickers_buttonProgress));
            this.addButton.setBackgroundRoundRect(Theme.getColor(Theme.key_featuredStickers_addButton), Theme.getColor(Theme.key_featuredStickers_addButtonPressed));
            addView(this.addButton, LayoutHelper.createFrameRelatively(-2.0f, 28.0f, 8388661, BitmapDescriptorFactory.HUE_RED, 18.0f, 14.0f, BitmapDescriptorFactory.HUE_RED));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m107dp(64));
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

        public HintInnerCell(FiltersSetupActivity filtersSetupActivity, Context context, int i, CharSequence charSequence) {
            super(context);
            this.imageView = new RLottieImageView(context);
            if (filtersSetupActivity.isTopicType()) {
                this.imageView.setAnimation(C3632R.raw.fork_topics, 110, 110);
            } else {
                this.imageView.setAnimation(i, 90, 90);
            }
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.playAnimation();
            this.imageView.setImportantForAccessibility(2);
            if (filtersSetupActivity.isTopicType()) {
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
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
            this.messageTextView.setTextSize(1, 14.0f);
            this.messageTextView.setGravity(17);
            this.messageTextView.setText(charSequence);
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
        private TextView hiddenTextView;
        private final AppCompatImageView iconView;
        private final ImageView moveImageView;
        private boolean needDivider;
        private final ImageView optionsImageView;
        float progressToLock;
        private final ImageView shareImageView;
        private boolean shareLoading;
        private final LoadingDrawable shareLoadingDrawable;
        private final SimpleTextView textView;
        private final TextView valueTextView;

        public void setTopic(TopicModel topicModel, boolean z) {
            this.currentTopic = topicModel;
            if (topicModel.isUserTopic()) {
                if (topicModel.getIcon() != null) {
                    this.iconView.setVisibility(0);
                    this.iconView.setImageResource(TopicExtKt.info(topicModel.getIcon()).getIconResId());
                } else {
                    this.iconView.setVisibility(8);
                }
                this.textView.setText(Emoji.replaceEmoji((CharSequence) topicModel.getName(), this.textView.getPaint().getFontMetricsInt(), AndroidUtilities.m107dp(20), false));
            } else if (topicModel.isAutoTopic()) {
                TopicInfo info = TopicExtKt.info(topicModel.getIcon());
                this.iconView.setVisibility(0);
                this.iconView.setImageResource(info.getIconResId());
                this.textView.setText(LocaleController.getInternalString(info.getTitleResId()));
            }
            if (!topicModel.component8().isEmpty()) {
                topicModel.component8().size();
            } else if (!topicModel.component7().isEmpty()) {
                topicModel.component7().size();
            }
            if (this.iconView.getVisibility() == 0) {
                this.textView.setPadding(AndroidUtilities.m107dp(FilterActivityType.TOPIC.getIconSize()), 0, 0, 0);
            } else {
                this.textView.setPadding(0, 0, 0, 0);
            }
            if (topicModel.isHidden()) {
                this.hiddenTextView.setText(LocaleController.getInternalString(C3632R.string.common_hidden).toUpperCase());
                this.hiddenTextView.setVisibility(0);
            } else {
                this.hiddenTextView.setVisibility(8);
            }
            this.needDivider = z;
        }

        public TopicModel getCurrentTopic() {
            return this.currentTopic;
        }

        public FilterCell(Context context) {
            super(context);
            this.shareLoading = false;
            setWillNotDraw(false);
            ImageView imageView = new ImageView(context);
            this.moveImageView = imageView;
            imageView.setFocusable(false);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(C3632R.C3634drawable.list_reorder);
            int i = Theme.key_stickers_menu;
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
            imageView.setContentDescription(LocaleController.getString("FilterReorder", C3632R.string.FilterReorder));
            imageView.setClickable(true);
            addView(imageView, LayoutHelper.createFrame(48, 48, (LocaleController.isRTL ? 5 : 3) | 16, 6, 0, 6, 0));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.textView = simpleTextView;
            simpleTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            simpleTextView.setTextSize(16);
            simpleTextView.setMaxLines(1);
            simpleTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            Drawable drawable = ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.other_lockedfolders2);
            drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
            simpleTextView.setRightDrawable(drawable);
            boolean z = LocaleController.isRTL;
            addView(simpleTextView, LayoutHelper.createFrame(-1, -2, (z ? 5 : 3) | 16, z ? 80 : 64, 0, z ? 64 : 80, 0));
            TextView textView = new TextView(context);
            this.valueTextView = textView;
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
            textView.setTextSize(1, 13.0f);
            textView.setGravity(LocaleController.isRTL ? 5 : 3);
            textView.setLines(1);
            textView.setMaxLines(1);
            textView.setSingleLine(true);
            textView.setPadding(0, 0, 0, 0);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            boolean z2 = LocaleController.isRTL;
            addView(textView, LayoutHelper.createFrame(-2, -2, (z2 ? 5 : 3) | 48, z2 ? 80 : 64, 35, z2 ? 64 : 80, 0));
            textView.setVisibility(8);
            LoadingDrawable loadingDrawable = new LoadingDrawable();
            this.shareLoadingDrawable = loadingDrawable;
            loadingDrawable.setAppearByGradient(true);
            loadingDrawable.setGradientScale(2.0f);
            int i2 = Theme.key_listSelector;
            int color = Theme.getColor(i2);
            loadingDrawable.setColors(Theme.multAlpha(color, 0.4f), Theme.multAlpha(color, 1.0f), Theme.multAlpha(color, 0.9f), Theme.multAlpha(color, 1.7f));
            int m107dp = AndroidUtilities.m107dp(1);
            loadingDrawable.strokePaint.setStrokeWidth(m107dp);
            loadingDrawable.setRadiiDp(40.0f);
            ImageView imageView2 = new ImageView(context, FiltersSetupActivity.this, m107dp) { // from class: org.telegram.ui.FiltersSetupActivity.FilterCell.1
                final /* synthetic */ int val$stroke;

                {
                    this.val$stroke = m107dp;
                }

                @Override // android.widget.ImageView, android.view.View
                protected void onDraw(Canvas canvas) {
                    super.onDraw(canvas);
                    if (FilterCell.this.shareLoading) {
                        LoadingDrawable loadingDrawable2 = FilterCell.this.shareLoadingDrawable;
                        int i3 = this.val$stroke;
                        loadingDrawable2.setBounds(i3 / 2, i3 / 2, getWidth() - (this.val$stroke / 2), getHeight() - (this.val$stroke / 2));
                        FilterCell.this.shareLoadingDrawable.draw(canvas);
                    }
                }

                @Override // android.widget.ImageView, android.view.View
                protected boolean verifyDrawable(Drawable drawable2) {
                    return drawable2 == FilterCell.this.shareLoadingDrawable || super.verifyDrawable(drawable2);
                }
            };
            this.shareImageView = imageView2;
            loadingDrawable.setCallback(imageView2);
            imageView2.setFocusable(false);
            imageView2.setScaleType(ImageView.ScaleType.CENTER);
            imageView2.setBackground(Theme.createSelectorDrawable(color));
            imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
            imageView2.setContentDescription(LocaleController.getString("FilterShare", C3632R.string.FilterShare));
            imageView2.setVisibility(8);
            imageView2.setImageResource(C3632R.C3634drawable.msg_link_folder);
            imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
            boolean z3 = LocaleController.isRTL;
            addView(imageView2, LayoutHelper.createFrame(40, 40, (z3 ? 3 : 5) | 16, z3 ? 52 : 6, 0, z3 ? 6 : 48, 0));
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FiltersSetupActivity$FilterCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FiltersSetupActivity.FilterCell.this.lambda$new$1(view);
                }
            });
            ImageView imageView3 = new ImageView(context);
            this.optionsImageView = imageView3;
            imageView3.setFocusable(false);
            imageView3.setScaleType(ImageView.ScaleType.CENTER);
            imageView3.setBackgroundDrawable(Theme.createSelectorDrawable(Theme.getColor(i2)));
            imageView3.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
            imageView3.setImageResource(C3632R.C3634drawable.msg_actions);
            imageView3.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions));
            addView(imageView3, LayoutHelper.createFrame(40, 40, (LocaleController.isRTL ? 3 : 5) | 16, 6, 0, 6, 0));
            TextView textView2 = new TextView(context);
            this.hiddenTextView = textView2;
            textView2.setTextSize(14.0f);
            this.hiddenTextView.setTextColor(Theme.getColor(i));
            this.hiddenTextView.setGravity(17);
            this.hiddenTextView.setMaxLines(1);
            this.hiddenTextView.setVisibility(8);
            addView(this.hiddenTextView, LayoutHelper.createFrame(-2, -2, 21, 0, 0, 52, 0));
            AppCompatImageView appCompatImageView = new AppCompatImageView(context);
            this.iconView = appCompatImageView;
            appCompatImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            appCompatImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_actionBackground), PorterDuff.Mode.SRC_IN));
            addView(appCompatImageView, LayoutHelper.createFrame(FiltersSetupActivity.this.type.getIconSize(), FiltersSetupActivity.this.type.getIconSize(), 51, FiltersSetupActivity.this.type.getIconLeftMargin() + 48, (50 - FiltersSetupActivity.this.type.getIconSize()) / 2, 0, 0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            if ((!this.shareLoading || this.shareLoadingDrawable.isDisappeared()) && this.currentFilter != null) {
                this.shareLoading = true;
                this.shareLoadingDrawable.reset();
                this.shareLoadingDrawable.resetDisappear();
                this.shareImageView.invalidate();
                FilterCreateActivity.FilterInvitesBottomSheet.show(FiltersSetupActivity.this, this.currentFilter, new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$FilterCell$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        FiltersSetupActivity.FilterCell.this.lambda$new$0();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            this.shareLoadingDrawable.disappear();
            this.shareImageView.invalidate();
            FiltersSetupActivity.this.updateRows(true);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(50), 1073741824));
        }

        /* JADX WARN: Removed duplicated region for block: B:60:0x00e4  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0105  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0120  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x015f  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0180  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x01a9  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x01bb  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x01c1  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void setFilter(org.telegram.messenger.MessagesController.DialogFilter r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 458
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.FiltersSetupActivity.FilterCell.setFilter(org.telegram.messenger.MessagesController$DialogFilter, boolean):void");
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
                canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.m107dp(62), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m107dp(62) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        updateRows(false);
        if (isTopicType()) {
            getNotificationCenter().addObserver(this, NotificationCenter.topicsDidLoad);
            return super.onFragmentCreate();
        }
        getMessagesController().loadDialogs(1, 1, 1000, false);
        getMessagesController().loadDialogs(0, 1, 1000, false);
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
        this.oldItems.clear();
        this.oldItems.addAll(this.items);
        this.items.clear();
        ArrayList<TLRPC$TL_dialogFilterSuggested> arrayList = getMessagesController().suggestedFilters;
        ArrayList<MessagesController.DialogFilter> dialogFilters = getMessagesController().getDialogFilters();
        this.items.add(ItemInner.asHint());
        this.items.add(ItemInner.asHeader(LocaleController.getString("Settings", C3632R.string.Settings)));
        if (this.type == FilterActivityType.FILTER) {
            this.items.add(new ItemInner(IdFabric$ViewTypes.FILTERS_SETTINGS_ALL_CHATS_TAB));
            this.items.add(new ItemInner(IdFabric$ViewTypes.FILTERS_SETTINGS_SORTING));
            this.items.add(new ItemInner(IdFabric$ViewTypes.FILTERS_SETTINGS_NOTIFICATION_MODE));
            this.items.add(new ItemInner(IdFabric$ViewTypes.FILTERS_SETTINGS_WIDTH_MODE));
            this.items.add(new ItemInner(IdFabric$ViewTypes.FILTERS_SETTINGS_REMEMBER_LAST_TAB));
            this.items.add(new ItemInner(IdFabric$ViewTypes.FILTERS_SETTINGS_PANEL_AT_BOTTOM));
            this.items.add(new ItemInner(IdFabric$ViewTypes.FILTERS_SETTINGS_FOLDERS_FIRST));
            this.items.add(new ItemInner(IdFabric$ViewTypes.FILTERS_SETTINGS_HIDE_FOLDERS));
        } else {
            this.items.add(new ItemInner(IdFabric$ViewTypes.TOPICS_SETTINGS_PANEL));
            this.items.add(new ItemInner(IdFabric$ViewTypes.TOPICS_SETTINGS_PANEL_AT_BOTTOM));
            this.items.add(ItemInner.asShadow(null));
            this.items.add(ItemInner.asHeader(LocaleController.getInternalString(C3632R.string.topics_catalog)));
            this.items.add(new ItemInner(IdFabric$ViewTypes.TOPICS_SETTINGS_CATALOG_UPDATE));
        }
        this.items.add(ItemInner.asShadow(null));
        int i = 0;
        if (!arrayList.isEmpty() && dialogFilters.size() < 10) {
            this.items.add(ItemInner.asHeader(LocaleController.getString("FilterRecommended", C3632R.string.FilterRecommended)));
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                this.items.add(ItemInner.asSuggested(arrayList.get(i2)));
            }
            this.items.add(ItemInner.asShadow(null));
        }
        if ((!dialogFilters.isEmpty() && ((dialogFilters.size() > 1 || !dialogFilters.get(0).isDefault()) && this.type == FilterActivityType.FILTER)) || (isTopicType() && !this.topics.isEmpty())) {
            this.filtersSectionStart = this.items.size();
            this.items.add(ItemInner.asHeader(isTopicType() ? LocaleController.getInternalString(C3632R.string.topics) : LocaleController.getString("Filters", C3632R.string.Filters)));
            if (isTopicType()) {
                this.items.add(ItemInner.asButton(LocaleController.getInternalString(C3632R.string.topics_create_new)));
            }
            this.filtersStartPosition = this.items.size();
            while (true) {
                if (i >= (isTopicType() ? this.topics.size() : dialogFilters.size())) {
                    break;
                }
                if (this.type != FilterActivityType.FILTER || !dialogFilters.get(i).isDefault()) {
                    this.items.add(ItemInner.asFilter(isTopicType() ? null : dialogFilters.get(i), isTopicType() ? this.topics.get(i) : null));
                }
                i++;
            }
            this.filtersSectionEnd = this.items.size();
            if (isTopicType()) {
                this.filtersSectionEnd--;
            }
        } else {
            if (isTopicType()) {
                this.items.add(ItemInner.asButton(LocaleController.getInternalString(C3632R.string.topics_create_new)));
            }
            this.filtersSectionEnd = -1;
            this.filtersSectionStart = -1;
        }
        if (this.type == FilterActivityType.FILTER && dialogFilters.size() < getMessagesController().dialogFiltersLimitPremium) {
            this.items.add(ItemInner.asButton(LocaleController.getString("CreateNewFilter", C3632R.string.CreateNewFilter)));
        }
        this.items.add(ItemInner.asShadow(null));
        ListAdapter listAdapter = this.adapter;
        if (listAdapter != null) {
            if (z) {
                listAdapter.setItems(this.oldItems, this.items);
            } else {
                listAdapter.notifyDataSetChanged();
            }
        }
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        if (isTopicType()) {
            getNotificationCenter().removeObserver(this, NotificationCenter.topicsDidLoad);
            ForkTopicsController topicsController = getTopicsController();
            if (this.orderChanged || this.newTopicsBarEnabled != topicsController.isTopicsBarEnabled() || this.newTopicsBarAtBottom != topicsController.isTopicsBarAtBottomEnabled()) {
                topicsController.setTopicsBarEnabled(this.newTopicsBarEnabled);
                topicsController.setTopicsBarAtBottomEnabled(this.newTopicsBarAtBottom);
                topicsController.saveConfig();
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.topicsSettingsChanged, new Object[0]);
            }
            super.onFragmentDestroy();
            return;
        }
        NotificationCenter notificationCenter = getNotificationCenter();
        int i = NotificationCenter.dialogFiltersUpdated;
        notificationCenter.removeObserver(this, i);
        getNotificationCenter().removeObserver(this, NotificationCenter.suggestedFiltersLoaded);
        if (this.orderChanged) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i, new Object[0]);
            getMessagesStorage().saveDialogFiltersOrder();
            TLRPC$TL_messages_updateDialogFiltersOrder tLRPC$TL_messages_updateDialogFiltersOrder = new TLRPC$TL_messages_updateDialogFiltersOrder();
            ArrayList<MessagesController.DialogFilter> dialogFilters = getMessagesController().getDialogFilters();
            int size = dialogFilters.size();
            for (int i2 = 0; i2 < size; i2++) {
                tLRPC$TL_messages_updateDialogFiltersOrder.order.add(Integer.valueOf(dialogFilters.get(i2).f1538id));
            }
            getConnectionsManager().sendRequest(tLRPC$TL_messages_updateDialogFiltersOrder, new RequestDelegate() { // from class: org.telegram.ui.FiltersSetupActivity$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    FiltersSetupActivity.lambda$onFragmentDestroy$2(tLObject, tLRPC$TL_error);
                }
            });
        }
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        super.createView(context);
        this.actionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        if (isTopicType()) {
            this.actionBar.setTitle(LocaleController.getInternalString(C3632R.string.topics));
        } else {
            this.actionBar.setTitle(LocaleController.getString("Filters", C3632R.string.Filters));
        }
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.FiltersSetupActivity.1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    FiltersSetupActivity.this.finishFragment();
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        FrameLayout frameLayout2 = frameLayout;
        frameLayout2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.listView = new C62502(context);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
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
                FiltersSetupActivity.this.lambda$createView$4(context, view, i, f, f2);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.FiltersSetupActivity$2 */
    /* loaded from: classes5.dex */
    public class C62502 extends RecyclerListView {
        C62502(Context context) {
            super(context);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        FiltersSetupActivity.C62502.this.lambda$onTouchEvent$0();
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
        @Override // org.telegram.p043ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            if (FiltersSetupActivity.this.filtersSectionStart != -1 && FiltersSetupActivity.this.filtersSectionEnd != -1) {
                drawSectionBackground(canvas, FiltersSetupActivity.this.filtersSectionStart, FiltersSetupActivity.this.filtersSectionEnd, Theme.getColor(Theme.key_windowBackgroundWhite));
            }
            super.dispatchDraw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(Context context, View view, int i, float f, float f2) {
        ItemInner itemInner;
        if (i < 0 || i >= this.items.size() || !AndroidUtilities.isActivityRunning(getParentActivity()) || view == null || !view.isEnabled() || (itemInner = this.items.get(i)) == null) {
            return;
        }
        int i2 = itemInner.viewType;
        if (i2 == IdFabric$ViewTypes.FILTERS_SETTINGS_PANEL_AT_BOTTOM) {
            ((TextCheckCell) view).toggleCheckBox();
            SharedConfig.setFilterTabsAtBottomEnabled(!SharedConfig.isFilterTabsAtBottomEnabled);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.filterTabsAtBottomUpdated, new Object[0]);
        } else if (i2 == IdFabric$ViewTypes.FILTERS_SETTINGS_NOTIFICATION_MODE) {
            showNotificationModeDialog();
        } else if (i2 == IdFabric$ViewTypes.FILTERS_SETTINGS_WIDTH_MODE) {
            showWidthModeDialog();
        } else if (i2 == IdFabric$ViewTypes.FILTERS_SETTINGS_REMEMBER_LAST_TAB) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            if (textCheckCell.isInSwitch(f)) {
                textCheckCell.toggleCheckBox();
                SharedConfig.setRememberLastFilterTabEnabled(!SharedConfig.isRememberLastFilterTabEnabled);
                return;
            }
            showHintDialog(LocaleController.getInternalString(C3632R.string.folder_tabs_remember_last_filter_tab_hint));
        } else if (i2 == IdFabric$ViewTypes.FILTERS_SETTINGS_ALL_CHATS_TAB) {
            presentFragment(new AllChatsTabSettingsActivity());
        } else if (i2 == IdFabric$ViewTypes.FILTERS_SETTINGS_HIDE_FOLDERS) {
            ((TextCheckCell) view).toggleCheckBox();
            getFiltersController().setFoldersHidden(!getFiltersController().isFoldersHidden());
            getFiltersController().saveConfig();
            if ((!getFiltersController().isFoldersHidden() && !getMessagesController().dialogFilters.isEmpty()) || (getFiltersController().getActiveSortingTabsCount(false) > 0 && SharedConfig.getChatSwipeAction(this.currentAccount) != 5)) {
                SharedConfig.updateChatListSwipeSetting(5);
            }
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        } else if (i2 == IdFabric$ViewTypes.FILTERS_SETTINGS_FOLDERS_FIRST) {
            ((TextCheckCell) view).toggleCheckBox();
            getFiltersController().setFoldersFirstEnabled(!getFiltersController().isFoldersFirstEnabled());
            getFiltersController().saveConfig();
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        } else if (i2 == IdFabric$ViewTypes.FILTERS_SETTINGS_SORTING) {
            presentFragment(new SortingFilterSettingsActivity());
        } else if (i2 == IdFabric$ViewTypes.TOPICS_SETTINGS_PANEL) {
            ((TextCheckCell) view).toggleCheckBox();
            this.newTopicsBarEnabled = !this.newTopicsBarEnabled;
        } else if (i2 == IdFabric$ViewTypes.TOPICS_SETTINGS_PANEL_AT_BOTTOM) {
            ((TextCheckCell) view).toggleCheckBox();
            this.newTopicsBarAtBottom = !this.newTopicsBarAtBottom;
        } else if (i2 == IdFabric$ViewTypes.TOPICS_SETTINGS_CATALOG_UPDATE) {
            showDialog(new AlertDialog(getParentActivity(), 3));
            getTopicsController().updateCatalog(new Callbacks$Callback1() { // from class: org.telegram.ui.FiltersSetupActivity$$ExternalSyntheticLambda2
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    FiltersSetupActivity.this.lambda$createView$3((Boolean) obj);
                }
            });
        } else if (i2 == 2) {
            if (isTopicType()) {
                presentFragment(new FilterCreateActivity(itemInner.topic, null, FilterActivityType.TOPIC));
                return;
            }
            MessagesController.DialogFilter dialogFilter = itemInner.filter;
            if (dialogFilter == null || dialogFilter.isDefault()) {
                return;
            }
            if (dialogFilter.locked) {
                showDialog(new LimitReachedBottomSheet(this, context, 3, this.currentAccount, null));
            } else {
                presentFragment(new FilterCreateActivity(dialogFilter));
            }
        } else if (i2 == 4) {
            if (isTopicType()) {
                presentFragment(new FilterCreateActivity(null, null, FilterActivityType.TOPIC));
                return;
            }
            int size = getMessagesController().getDialogFilters().size();
            if ((size - 1 >= getMessagesController().dialogFiltersLimitDefault && !getUserConfig().isPremium()) || size >= getMessagesController().dialogFiltersLimitPremium) {
                showDialog(new LimitReachedBottomSheet(this, context, 3, this.currentAccount, null));
            } else {
                presentFragment(new FilterCreateActivity());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(Boolean bool) {
        dismissCurrentDialog();
        BulletinFactory.m65of(this).createSimpleBulletin(C3632R.raw.info, LocaleController.getInternalString(bool.booleanValue() ? C3632R.string.topics_catalog_updated : C3632R.string.topics_catalog_update_not_found)).show();
    }

    public UndoView getUndoView() {
        if (getContext() == null) {
            return null;
        }
        if (this.undoView == null) {
            UndoView undoView = new UndoView(getContext());
            this.undoView = undoView;
            ((FrameLayout) this.fragmentView).addView(undoView, LayoutHelper.createFrame(-1, -2, 83, 8, 0, 8, 8));
        }
        return this.undoView;
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
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
            updateRows(true);
        } else if (i == NotificationCenter.suggestedFiltersLoaded) {
            updateRows(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.FiltersSetupActivity$ItemInner */
    /* loaded from: classes5.dex */
    public static class ItemInner extends AdapterWithDiffUtils.Item {
        MessagesController.DialogFilter filter;
        TLRPC$TL_dialogFilterSuggested suggested;
        CharSequence text;
        private TopicModel topic;

        public ItemInner(int i) {
            super(i, false);
        }

        public static ItemInner asHeader(CharSequence charSequence) {
            ItemInner itemInner = new ItemInner(0);
            itemInner.text = charSequence;
            return itemInner;
        }

        public static ItemInner asHint() {
            return new ItemInner(1);
        }

        public static ItemInner asShadow(CharSequence charSequence) {
            ItemInner itemInner = new ItemInner(3);
            itemInner.text = charSequence;
            return itemInner;
        }

        public static ItemInner asFilter(MessagesController.DialogFilter dialogFilter, TopicModel topicModel) {
            ItemInner itemInner = new ItemInner(2);
            itemInner.filter = dialogFilter;
            itemInner.topic = topicModel;
            return itemInner;
        }

        public static ItemInner asButton(CharSequence charSequence) {
            ItemInner itemInner = new ItemInner(4);
            itemInner.text = charSequence;
            return itemInner;
        }

        public static ItemInner asSuggested(TLRPC$TL_dialogFilterSuggested tLRPC$TL_dialogFilterSuggested) {
            ItemInner itemInner = new ItemInner(5);
            itemInner.suggested = tLRPC$TL_dialogFilterSuggested;
            return itemInner;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof ItemInner) {
                ItemInner itemInner = (ItemInner) obj;
                int i = itemInner.viewType;
                int i2 = this.viewType;
                if (i != i2) {
                    return false;
                }
                if ((i2 == 0 || i2 == 4 || i2 == 3) && !TextUtils.equals(this.text, itemInner.text)) {
                    return false;
                }
                if (this.viewType == 2) {
                    TopicModel topicModel = this.topic;
                    if ((topicModel == null) != (itemInner.topic == null)) {
                        return false;
                    }
                    if (topicModel != null && topicModel.getTopicId() != itemInner.topic.getTopicId()) {
                        return false;
                    }
                    MessagesController.DialogFilter dialogFilter = this.filter;
                    boolean z = dialogFilter == null;
                    MessagesController.DialogFilter dialogFilter2 = itemInner.filter;
                    if (z != (dialogFilter2 == null)) {
                        return false;
                    }
                    if (dialogFilter != null && dialogFilter.f1538id != dialogFilter2.f1538id) {
                        return false;
                    }
                }
                if (this.viewType == 5) {
                    TLRPC$TL_dialogFilterSuggested tLRPC$TL_dialogFilterSuggested = this.suggested;
                    boolean z2 = tLRPC$TL_dialogFilterSuggested == null;
                    TLRPC$TL_dialogFilterSuggested tLRPC$TL_dialogFilterSuggested2 = itemInner.suggested;
                    if (z2 != (tLRPC$TL_dialogFilterSuggested2 == null)) {
                        return false;
                    }
                    if (tLRPC$TL_dialogFilterSuggested != null && tLRPC$TL_dialogFilterSuggested.filter.f1609id != tLRPC$TL_dialogFilterSuggested2.filter.f1609id) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.FiltersSetupActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends AdapterWithDiffUtils {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType;
            return (!viewHolder.itemView.isEnabled() || (itemViewType = viewHolder.getItemViewType()) == 3 || itemViewType == 0 || itemViewType == 5 || itemViewType == 1) ? false : true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return FiltersSetupActivity.this.items.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            TextSettingsCell textSettingsCell;
            if (i == IdFabric$ViewTypes.TOPICS_SETTINGS_PANEL || i == IdFabric$ViewTypes.TOPICS_SETTINGS_PANEL_AT_BOTTOM || i == IdFabric$ViewTypes.FILTERS_SETTINGS_PANEL_AT_BOTTOM || i == IdFabric$ViewTypes.FILTERS_SETTINGS_REMEMBER_LAST_TAB || i == IdFabric$ViewTypes.FILTERS_SETTINGS_HIDE_FOLDERS || i == IdFabric$ViewTypes.FILTERS_SETTINGS_FOLDERS_FIRST) {
                View textCheckCell = new TextCheckCell(this.mContext);
                textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                textSettingsCell = textCheckCell;
            } else if (i == IdFabric$ViewTypes.FILTERS_SETTINGS_NOTIFICATION_MODE || i == IdFabric$ViewTypes.FILTERS_SETTINGS_WIDTH_MODE || i == IdFabric$ViewTypes.FILTERS_SETTINGS_ALL_CHATS_TAB) {
                TextSettingsCell textSettingsCell2 = new TextSettingsCell(this.mContext);
                textSettingsCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                textSettingsCell2.setCanDisable(true);
                textSettingsCell = textSettingsCell2;
            } else if (i == IdFabric$ViewTypes.TOPICS_SETTINGS_CATALOG_UPDATE || i == IdFabric$ViewTypes.FILTERS_SETTINGS_SORTING) {
                View textCell = new org.telegram.p043ui.Cells.TextCell(this.mContext);
                textCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                textSettingsCell = textCell;
            } else if (i == 0) {
                View headerCell = new HeaderCell(this.mContext);
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                textSettingsCell = headerCell;
            } else if (i == 1) {
                FiltersSetupActivity filtersSetupActivity = FiltersSetupActivity.this;
                View hintInnerCell = new HintInnerCell(filtersSetupActivity, this.mContext, C3632R.raw.filters, filtersSetupActivity.isTopicType() ? LocaleController.getInternalString(C3632R.string.topic_new_info) : AndroidUtilities.replaceTags(LocaleController.formatString("CreateNewFilterInfo", C3632R.string.CreateNewFilterInfo, new Object[0])));
                hintInnerCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C3632R.C3634drawable.greydivider_top, Theme.key_windowBackgroundGrayShadow));
                textSettingsCell = hintInnerCell;
            } else if (i == 2) {
                final FilterCell filterCell = new FilterCell(this.mContext);
                filterCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                filterCell.setOnReorderButtonTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        boolean lambda$onCreateViewHolder$0;
                        lambda$onCreateViewHolder$0 = FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$0(filterCell, view, motionEvent);
                        return lambda$onCreateViewHolder$0;
                    }
                });
                filterCell.setOnOptionsClick(new View.OnClickListener() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$8(filterCell, view);
                    }
                });
                textSettingsCell = filterCell;
            } else if (i == 3) {
                textSettingsCell = new ShadowSectionCell(this.mContext);
            } else if (i == 4) {
                View textCell2 = new TextCell(this.mContext);
                textCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                textSettingsCell = textCell2;
            } else {
                final SuggestedFilterCell suggestedFilterCell = new SuggestedFilterCell(this.mContext);
                suggestedFilterCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                suggestedFilterCell.setAddOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$10(suggestedFilterCell, view);
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
        public /* synthetic */ void lambda$onCreateViewHolder$8(FilterCell filterCell, View view) {
            FilterCell filterCell2 = (FilterCell) view.getParent();
            final MessagesController.DialogFilter currentFilter = filterCell2.getCurrentFilter();
            final TopicModel currentTopic = filterCell.getCurrentTopic();
            ItemOptions makeOptions = ItemOptions.makeOptions(FiltersSetupActivity.this, filterCell2);
            makeOptions.add(C3632R.C3634drawable.msg_edit, FiltersSetupActivity.this.isTopicType() ? LocaleController.getInternalString(C3632R.string.topic_edit) : LocaleController.getString("FilterEditItem", C3632R.string.FilterEditItem), new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$1(currentTopic, currentFilter);
                }
            });
            final boolean isHidden = FiltersSetupActivity.this.isTopicType() ? currentTopic.isHidden() : FiltersSetupActivity.this.getFiltersController().getSettings(currentFilter.f1538id).isHidden();
            makeOptions.add(isHidden ? C3632R.C3634drawable.msg_stories_views : C3632R.C3634drawable.msg_stories_stealth, isHidden ? LocaleController.getInternalString(C3632R.string.hidden_chats_unhide_chats) : LocaleController.getString("HideOnTop", C3632R.string.HideOnTop), new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$2(currentTopic, isHidden, currentFilter);
                }
            });
            makeOptions.add(C3632R.C3634drawable.msg_delete, (CharSequence) (FiltersSetupActivity.this.isTopicType() ? LocaleController.getInternalString(C3632R.string.topics_remove) : LocaleController.getString("FilterDeleteItem", C3632R.string.FilterDeleteItem)), true, new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$7(currentFilter, currentTopic, isHidden);
                }
            });
            if (LocaleController.isRTL) {
                makeOptions.setGravity(3);
            }
            makeOptions.show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$1(TopicModel topicModel, MessagesController.DialogFilter dialogFilter) {
            if (FiltersSetupActivity.this.isTopicType()) {
                FiltersSetupActivity.this.presentFragment(new FilterCreateActivity(topicModel, null, FilterActivityType.TOPIC));
            } else if (dialogFilter.locked) {
                FiltersSetupActivity filtersSetupActivity = FiltersSetupActivity.this;
                FiltersSetupActivity filtersSetupActivity2 = FiltersSetupActivity.this;
                filtersSetupActivity.showDialog(new LimitReachedBottomSheet(filtersSetupActivity2, this.mContext, 3, ((BaseFragment) filtersSetupActivity2).currentAccount, null));
            } else {
                FiltersSetupActivity.this.presentFragment(new FilterCreateActivity(dialogFilter));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$2(TopicModel topicModel, boolean z, MessagesController.DialogFilter dialogFilter) {
            if (FiltersSetupActivity.this.isTopicType()) {
                FiltersSetupActivity.this.getTopicsController().setHidden(topicModel.getTopicId(), !z);
            } else {
                FiltersSetupActivity.this.getFiltersController().setHidden(dialogFilter.f1538id, !z);
            }
            FiltersSetupActivity.this.updateRows(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$7(final MessagesController.DialogFilter dialogFilter, final TopicModel topicModel, final boolean z) {
            if (dialogFilter != null && dialogFilter.isChatlist()) {
                FolderBottomSheet.showForDeletion(FiltersSetupActivity.this, dialogFilter.f1538id, new Utilities.Callback() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda9
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$3((Boolean) obj);
                    }
                });
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(FiltersSetupActivity.this.getParentActivity());
            builder.setTitle(FiltersSetupActivity.this.isTopicType() ? LocaleController.getInternalString(C3632R.string.topics_remove) : LocaleController.getString("FilterDelete", C3632R.string.FilterDelete));
            builder.setMessage(FiltersSetupActivity.this.isTopicType() ? LocaleController.getInternalString(C3632R.string.topics_remove_alert) : LocaleController.getString("FilterDeleteAlert", C3632R.string.FilterDeleteAlert));
            builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
            builder.setPositiveButton(LocaleController.getString("Delete", C3632R.string.Delete), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$6(topicModel, z, dialogFilter, dialogInterface, i);
                }
            });
            AlertDialog create = builder.create();
            FiltersSetupActivity.this.showDialog(create);
            TextView textView = (TextView) create.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$3(Boolean bool) {
            FiltersSetupActivity.this.updateRows(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$6(TopicModel topicModel, boolean z, final MessagesController.DialogFilter dialogFilter, DialogInterface dialogInterface, int i) {
            if (FiltersSetupActivity.this.isTopicType()) {
                FiltersSetupActivity.this.getTopicsController().removeTopicFilterDialogs(topicModel);
                return;
            }
            if (z) {
                FiltersSetupActivity.this.getFiltersController().setHidden(dialogFilter.f1538id, false);
            }
            final AlertDialog alertDialog = null;
            if (FiltersSetupActivity.this.getParentActivity() != null) {
                alertDialog = new AlertDialog(FiltersSetupActivity.this.getParentActivity(), 3);
                alertDialog.setCanCancel(false);
                alertDialog.show();
            }
            TLRPC$TL_messages_updateDialogFilter tLRPC$TL_messages_updateDialogFilter = new TLRPC$TL_messages_updateDialogFilter();
            tLRPC$TL_messages_updateDialogFilter.f1718id = dialogFilter.f1538id;
            FiltersSetupActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_updateDialogFilter, new RequestDelegate() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda10
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$5(alertDialog, dialogFilter, tLObject, tLRPC$TL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$5(final AlertDialog alertDialog, final MessagesController.DialogFilter dialogFilter, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$4(alertDialog, dialogFilter);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$4(AlertDialog alertDialog, MessagesController.DialogFilter dialogFilter) {
            if (alertDialog != null) {
                try {
                    alertDialog.dismiss();
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
            }
            FiltersSetupActivity.this.getMessagesController().removeFilter(dialogFilter);
            FiltersSetupActivity.this.getMessagesStorage().deleteDialogFilter(dialogFilter);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$10(SuggestedFilterCell suggestedFilterCell, View view) {
            final TLRPC$TL_dialogFilterSuggested suggestedFilter = suggestedFilterCell.getSuggestedFilter();
            MessagesController.DialogFilter dialogFilter = new MessagesController.DialogFilter();
            dialogFilter.name = suggestedFilter.filter.title;
            dialogFilter.f1538id = 2;
            while (FiltersSetupActivity.this.getMessagesController().dialogFiltersById.get(dialogFilter.f1538id) != null) {
                dialogFilter.f1538id++;
            }
            dialogFilter.order = FiltersSetupActivity.this.getMessagesController().getDialogFilters().size();
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
            FilterCreateActivity.saveFilterToServer(dialogFilter, dialogFilter.flags, dialogFilter.name, dialogFilter.alwaysShow, dialogFilter.neverShow, dialogFilter.pinnedDialogs, true, true, true, true, true, FiltersSetupActivity.this, new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    FiltersSetupActivity.ListAdapter.this.lambda$onCreateViewHolder$9(suggestedFilter);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$9(TLRPC$TL_dialogFilterSuggested tLRPC$TL_dialogFilterSuggested) {
            FiltersSetupActivity.this.getMessagesController().suggestedFilters.remove(tLRPC$TL_dialogFilterSuggested);
            FiltersSetupActivity.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String internalString;
            ItemInner itemInner = (ItemInner) FiltersSetupActivity.this.items.get(i);
            if (itemInner == null) {
                return;
            }
            int i2 = i + 1;
            boolean z = i2 < FiltersSetupActivity.this.items.size() && ((ItemInner) FiltersSetupActivity.this.items.get(i2)).viewType != 3;
            int i3 = itemInner.viewType;
            int i4 = IdFabric$ViewTypes.TOPICS_SETTINGS_CATALOG_UPDATE;
            if (i3 == i4 || i3 == IdFabric$ViewTypes.FILTERS_SETTINGS_SORTING) {
                org.telegram.p043ui.Cells.TextCell textCell = (org.telegram.p043ui.Cells.TextCell) viewHolder.itemView;
                if (i3 == i4) {
                    textCell.setText(LocaleController.getInternalString(C3632R.string.topics_catalog_update_manually), z);
                    return;
                } else {
                    textCell.setText(LocaleController.getInternalString(C3632R.string.folder_tabs_sorting_settings), z);
                    return;
                }
            }
            int i5 = IdFabric$ViewTypes.TOPICS_SETTINGS_PANEL;
            if (i3 == i5 || i3 == IdFabric$ViewTypes.TOPICS_SETTINGS_PANEL_AT_BOTTOM || i3 == IdFabric$ViewTypes.FILTERS_SETTINGS_PANEL_AT_BOTTOM || i3 == IdFabric$ViewTypes.FILTERS_SETTINGS_REMEMBER_LAST_TAB || i3 == IdFabric$ViewTypes.FILTERS_SETTINGS_HIDE_FOLDERS || i3 == IdFabric$ViewTypes.FILTERS_SETTINGS_FOLDERS_FIRST) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                int i6 = IdFabric$ViewTypes.FILTERS_SETTINGS_REMEMBER_LAST_TAB;
                textCheckCell.setDrawSwitchDivider(i3 == i6);
                int i7 = itemInner.viewType;
                if (i7 == i5) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3632R.string.topics_settings_enable), FiltersSetupActivity.this.newTopicsBarEnabled, z);
                    return;
                } else if (i7 == IdFabric$ViewTypes.TOPICS_SETTINGS_PANEL_AT_BOTTOM) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3632R.string.topics_settings_topics_bar_at_bottom), FiltersSetupActivity.this.newTopicsBarAtBottom, z);
                    return;
                } else if (i7 == IdFabric$ViewTypes.FILTERS_SETTINGS_PANEL_AT_BOTTOM) {
                    textCheckCell.setEnabled(FiltersSetupActivity.this.getTotalTabsCount() > 0, null);
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3632R.string.folder_tabs_at_bottom_enable_item_title), SharedConfig.isFilterTabsAtBottomEnabled, z);
                    return;
                } else if (i7 == i6) {
                    textCheckCell.setEnabled(FiltersSetupActivity.this.getTotalTabsCount() > 0, null);
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3632R.string.folder_tabs_remember_last_filter_tab_item_title), SharedConfig.isRememberLastFilterTabEnabled, z);
                    return;
                } else if (i7 == IdFabric$ViewTypes.FILTERS_SETTINGS_HIDE_FOLDERS) {
                    textCheckCell.setEnabled(FiltersSetupActivity.this.getFilterTabsCount() > 0, null);
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3632R.string.folder_tabs_settings_hide_folders), FiltersSetupActivity.this.getFiltersController().isFoldersHidden(), z);
                    return;
                } else {
                    textCheckCell.setEnabled(FiltersSetupActivity.this.getSortingTabsCount() > 0, null);
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3632R.string.folder_tabs_settings_folders_first), FiltersSetupActivity.this.getFiltersController().isFoldersFirstEnabled(), z);
                    return;
                }
            }
            int i8 = IdFabric$ViewTypes.FILTERS_SETTINGS_NOTIFICATION_MODE;
            if (i3 == i8 || i3 == IdFabric$ViewTypes.FILTERS_SETTINGS_ALL_CHATS_TAB || i3 == IdFabric$ViewTypes.FILTERS_SETTINGS_WIDTH_MODE) {
                TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                textSettingsCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
                int i9 = itemInner.viewType;
                if (i9 == i8) {
                    textSettingsCell.setTextAndValue(LocaleController.getInternalString(C3632R.string.folder_tabs_notification_mode_item_title), LocaleController.getInternalString(SharedConfig.selectedFilterTabsNotificationMode.getTitleResId()), z);
                    textSettingsCell.setEnabled(FiltersSetupActivity.this.getTotalTabsCount() > 0, null);
                    return;
                } else if (i9 == IdFabric$ViewTypes.FILTERS_SETTINGS_ALL_CHATS_TAB) {
                    if (FiltersSetupActivity.this.getTotalTabsCount() <= 0 || (!FiltersSetupActivity.this.getFiltersController().isAllChatsTabEnabled() && FiltersSetupActivity.this.getTotalTabsCount() <= 1)) {
                        r1 = false;
                    }
                    if (!r1 || FiltersSetupActivity.this.getFiltersController().isAllChatsTabEnabled()) {
                        internalString = LocaleController.getInternalString(C3632R.string.common_on);
                    } else {
                        internalString = LocaleController.getInternalString(C3632R.string.common_off);
                    }
                    textSettingsCell.setTextAndValue(LocaleController.getInternalString(C3632R.string.folder_tabs_all_chats_tab_settings_item_title), internalString, z);
                    textSettingsCell.setEnabled(r1, null);
                    return;
                } else {
                    textSettingsCell.setTextAndValue(LocaleController.getInternalString(C3632R.string.folder_tabs_width_mode_item_title), LocaleController.getInternalString(SharedConfig.selectedFilterTabWidthMode.getTitleResId()), z);
                    textSettingsCell.setEnabled(FiltersSetupActivity.this.getTotalTabsCount() > 0, null);
                    return;
                }
            }
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                ((HeaderCell) viewHolder.itemView).setText(itemInner.text);
            } else if (itemViewType == 2) {
                FilterCell filterCell = (FilterCell) viewHolder.itemView;
                if (FiltersSetupActivity.this.isTopicType()) {
                    filterCell.setTopic(itemInner.topic, z);
                } else {
                    filterCell.setFilter(itemInner.filter, z);
                }
            } else if (itemViewType == 3) {
                viewHolder.itemView.setBackground(Theme.getThemedDrawableByKey(this.mContext, z ? C3632R.C3634drawable.greydivider : C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
            } else if (itemViewType != 4) {
                if (itemViewType != 5) {
                    return;
                }
                ((SuggestedFilterCell) viewHolder.itemView).setFilter(itemInner.suggested, z);
            } else {
                Drawable drawable = this.mContext.getResources().getDrawable(C3632R.C3634drawable.poll_add_circle);
                Drawable drawable2 = this.mContext.getResources().getDrawable(C3632R.C3634drawable.poll_add_plus);
                drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_switchTrackChecked), PorterDuff.Mode.MULTIPLY));
                drawable2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_checkboxCheck), PorterDuff.Mode.MULTIPLY));
                ((TextCell) viewHolder.itemView).setTextAndIcon(((Object) itemInner.text) + "", new CombinedDrawable(drawable, drawable2), false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            ItemInner itemInner;
            if (i < 0 || i >= FiltersSetupActivity.this.items.size() || (itemInner = (ItemInner) FiltersSetupActivity.this.items.get(i)) == null) {
                return 3;
            }
            return itemInner.viewType;
        }

        public void swapElements(int i, int i2) {
            MessagesController.DialogFilter dialogFilter;
            MessagesController.DialogFilter dialogFilter2;
            if (i < FiltersSetupActivity.this.filtersStartPosition || i2 < FiltersSetupActivity.this.filtersStartPosition) {
                return;
            }
            ItemInner itemInner = (ItemInner) FiltersSetupActivity.this.items.get(i);
            ItemInner itemInner2 = (ItemInner) FiltersSetupActivity.this.items.get(i2);
            if (FiltersSetupActivity.this.isTopicType()) {
                if (itemInner == null || itemInner2 == null || itemInner.topic == null || itemInner2.topic == null) {
                    return;
                }
                FiltersSetupActivity.this.getTopicsController().swapTopics(itemInner.topic, itemInner2.topic);
                Collections.swap(FiltersSetupActivity.this.topics, i - FiltersSetupActivity.this.filtersStartPosition, i2 - FiltersSetupActivity.this.filtersStartPosition);
                FiltersSetupActivity.this.orderChanged = true;
                FiltersSetupActivity.this.updateRows(true);
            }
            if (itemInner == null || itemInner2 == null || (dialogFilter = itemInner.filter) == null || (dialogFilter2 = itemInner2.filter) == null) {
                return;
            }
            int i3 = dialogFilter.order;
            dialogFilter.order = dialogFilter2.order;
            dialogFilter2.order = i3;
            ArrayList<MessagesController.DialogFilter> arrayList = FiltersSetupActivity.this.getMessagesController().dialogFilters;
            try {
                arrayList.set((i - FiltersSetupActivity.this.filtersStartPosition) + 1, itemInner2.filter);
                arrayList.set((i2 - FiltersSetupActivity.this.filtersStartPosition) + 1, itemInner.filter);
            } catch (Exception unused) {
            }
            FiltersSetupActivity.this.orderChanged = true;
            FiltersSetupActivity.this.updateRows(true);
        }

        public void moveElementToStart(int i) {
            ArrayList<MessagesController.DialogFilter> arrayList = FiltersSetupActivity.this.getMessagesController().dialogFilters;
            if (i < 0 || i >= arrayList.size()) {
                return;
            }
            arrayList.add(0, arrayList.remove(i));
            for (int i2 = 0; i2 <= i; i2++) {
                arrayList.get(i2).order = i2;
            }
            FiltersSetupActivity.this.orderChanged = true;
            FiltersSetupActivity.this.updateRows(true);
        }
    }

    /* renamed from: org.telegram.ui.FiltersSetupActivity$TouchHelperCallback */
    /* loaded from: classes5.dex */
    public class TouchHelperCallback extends ItemTouchHelper.Callback {
        private RecyclerView.ViewHolder selectedViewHolder;

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        }

        public TouchHelperCallback() {
        }

        private void clearSelectedViewHolder() {
            RecyclerView.ViewHolder viewHolder = this.selectedViewHolder;
            if (viewHolder == null) {
                return;
            }
            View view = viewHolder.itemView;
            this.selectedViewHolder = null;
            view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            ObjectAnimator.ofFloat(view, "elevation", BitmapDescriptorFactory.HUE_RED).setDuration(150L).start();
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() != 2) {
                return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (viewHolder.getItemViewType() != viewHolder2.getItemViewType()) {
                return false;
            }
            FiltersSetupActivity.this.adapter.swapElements(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
            View view = viewHolder.itemView;
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(FiltersSetupActivity.this.filtersStartPosition - 1);
            RecyclerView.ViewHolder findViewHolderForAdapterPosition2 = recyclerView.findViewHolderForAdapterPosition(FiltersSetupActivity.this.filtersSectionEnd + (FiltersSetupActivity.this.isTopicType() ? 1 : 0));
            if ((findViewHolderForAdapterPosition != null && view.getTop() <= findViewHolderForAdapterPosition.itemView.getBottom() && f2 < BitmapDescriptorFactory.HUE_RED) || (findViewHolderForAdapterPosition2 != null && view.getBottom() >= findViewHolderForAdapterPosition2.itemView.getTop() && f2 > BitmapDescriptorFactory.HUE_RED)) {
                f2 = 0.0f;
            }
            view.setTranslationX(f);
            view.setTranslationY(f2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void resetDefaultPosition() {
            if (UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
                return;
            }
            ArrayList<MessagesController.DialogFilter> dialogFilters = FiltersSetupActivity.this.getMessagesController().getDialogFilters();
            for (int i = 0; i < dialogFilters.size(); i++) {
                if (dialogFilters.get(i).isDefault() && i != 0) {
                    FiltersSetupActivity.this.adapter.moveElementToStart(i);
                    FiltersSetupActivity.this.listView.scrollToPosition(0);
                    FiltersSetupActivity.this.onDefaultTabMoved();
                    return;
                }
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            clearSelectedViewHolder();
            if (i != 0) {
                this.selectedViewHolder = viewHolder;
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
            clearSelectedViewHolder();
            viewHolder.itemView.setPressed(false);
        }
    }

    protected void onDefaultTabMoved() {
        try {
            this.fragmentView.performHapticFeedback(3, 1);
        } catch (Exception unused) {
        }
        BulletinFactory.m65of(this).createSimpleBulletin(C3632R.raw.filter_reorder, AndroidUtilities.replaceTags(LocaleController.formatString("LimitReachedReorderFolder", C3632R.string.LimitReachedReorderFolder, LocaleController.getString(C3632R.string.FilterAllChats))), LocaleController.getString("PremiumMore", C3632R.string.PremiumMore), DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS, new Runnable() { // from class: org.telegram.ui.FiltersSetupActivity$$ExternalSyntheticLambda3
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        int i = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, TextSettingsCell.class, org.telegram.p043ui.Cells.TextCell.class, NotificationsCheckCell.class}, null, null, null, i));
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        int i3 = Theme.key_switchTrack;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        int i4 = Theme.key_switchTrackChecked;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{FilterCell.class}, new String[]{"iconView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_actionBackground));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{org.telegram.p043ui.Cells.TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        int i5 = Theme.key_windowBackgroundWhiteGrayText2;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, TextCell.class, FilterCell.class, SuggestedFilterCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        C3704ActionBar c3704ActionBar = this.actionBar;
        int i6 = ThemeDescription.FLAG_BACKGROUND;
        int i7 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(c3704ActionBar, i6, null, null, null, null, i7));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i7));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{FilterCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{FilterCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        int i8 = Theme.key_stickers_menu;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{FilterCell.class}, new String[]{"moveImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i8));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{FilterCell.class}, new String[]{"optionsImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i8));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{FilterCell.class}, new String[]{"optionsImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_stickers_menuSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkboxCheck));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        return arrayList;
    }
}
