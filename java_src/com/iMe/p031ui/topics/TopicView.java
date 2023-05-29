package com.iMe.p031ui.topics;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.iMe.fork.enums.DialogType;
import com.iMe.model.common.FilterItem;
import com.iMe.storage.data.repository.topics.Topic;
import com.iMe.storage.domain.model.topics.TopicModel;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.model.topic.TopicExtKt;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
/* compiled from: TopicView.kt */
/* renamed from: com.iMe.ui.topics.TopicView */
/* loaded from: classes3.dex */
public class TopicView extends FrameLayout {
    private final int iconSize;
    private final Lazy iconView$delegate;
    private boolean isActive;
    private final Lazy nameTextView$delegate;
    private final Lazy ovalLayout$delegate;
    public int position;
    private TopicModel topic;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TopicView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ TopicView(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 24 : i2);
    }

    public final int getIconSize() {
        return this.iconSize;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        this.iconSize = i2;
        lazy = LazyKt__LazyJVMKt.lazy(new TopicView$ovalLayout$2(this));
        this.ovalLayout$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new TopicView$iconView$2(this));
        this.iconView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new TopicView$nameTextView$2(this));
        this.nameTextView$delegate = lazy3;
        setClipToPadding(false);
        init();
    }

    public final TopicModel getTopic() {
        return this.topic;
    }

    public final void setTopic(TopicModel topicModel) {
        this.topic = topicModel;
    }

    private final LinearLayout getOvalLayout() {
        return (LinearLayout) this.ovalLayout$delegate.getValue();
    }

    private final ImageView getIconView() {
        return (ImageView) this.iconView$delegate.getValue();
    }

    private final TextView getNameTextView() {
        return (TextView) this.nameTextView$delegate.getValue();
    }

    public final void setFilterItem(FilterItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        setTopic(TopicModel.Companion.createMockupWithTitle(item.getTitle()), item.isSelected());
    }

    public final void setActive(boolean z) {
        this.isActive = z;
        updateColors();
    }

    public final void setTopic(TopicModel topic, boolean z) {
        Intrinsics.checkNotNullParameter(topic, "topic");
        this.topic = topic;
        this.isActive = z;
        if (topic.getTopicId() == -2) {
            TextView nameTextView = getNameTextView();
            String internalString = LocaleController.getInternalString(C3295R.string.topics_title_notopic);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.string.topics_title_notopic)");
            String upperCase = internalString.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            nameTextView.setText(upperCase);
            ViewExtKt.gone$default(getIconView(), false, 1, null);
        } else if (topic.isUserTopic()) {
            getNameTextView().setText(Emoji.replaceEmoji(topic.getName(), getNameTextView().getPaint().getFontMetricsInt(), AndroidUtilities.m54dp(15), false));
            if (topic.getIcon() == null) {
                ViewExtKt.gone$default(getIconView(), false, 1, null);
            } else {
                ViewExtKt.visible$default(getIconView(), false, 1, null);
                ImageView iconView = getIconView();
                Topic icon = topic.getIcon();
                Intrinsics.checkNotNull(icon);
                iconView.setImageResource(TopicExtKt.info(icon).getIconResId());
            }
        } else if (topic.isAutoTopic()) {
            Topic icon2 = topic.getIcon();
            Intrinsics.checkNotNull(icon2);
            TopicInfo info = TopicExtKt.info(icon2);
            int component2 = info.component2();
            int component3 = info.component3();
            if (component2 != 0) {
                TextView nameTextView2 = getNameTextView();
                String internalString2 = LocaleController.getInternalString(component2);
                Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(title)");
                String upperCase2 = internalString2.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                nameTextView2.setText(upperCase2);
            }
            if (topic.getTopicId() == -2) {
                ViewExtKt.gone$default(getIconView(), false, 1, null);
            } else {
                ViewExtKt.visible$default(getIconView(), false, 1, null);
                getIconView().setImageResource(component3);
            }
        }
        updateColors();
    }

    public final void setDialogType(DialogType dialogType, boolean z) {
        Intrinsics.checkNotNullParameter(dialogType, "dialogType");
        this.isActive = z;
        TextView nameTextView = getNameTextView();
        String internalString = LocaleController.getInternalString(dialogType.getNameResId());
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(dialogType.nameResId)");
        String upperCase = internalString.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        nameTextView.setText(upperCase);
        getIconView().setImageResource(dialogType.getIconResId());
        updateColors();
    }

    public final void setArchive(boolean z, boolean z2) {
        int i;
        int i2;
        this.isActive = z2;
        TextView nameTextView = getNameTextView();
        if (z) {
            i = C3295R.string.folder_fab_settings_fab_archive;
        } else {
            i = C3295R.string.main_list;
        }
        String internalString = LocaleController.getInternalString(i);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(\n     …tring.main_list\n        )");
        String upperCase = internalString.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        nameTextView.setText(upperCase);
        ImageView iconView = getIconView();
        if (z) {
            i2 = C3295R.C3297drawable.fork_custom_forward_switch_archive;
        } else {
            i2 = C3295R.C3297drawable.fork_custom_forward_switch_main;
        }
        iconView.setImageResource(i2);
        updateColors();
    }

    public final void setMessagesContextMenu(boolean z, boolean z2) {
        int i;
        this.isActive = z2;
        String title = z ? LocaleController.getInternalString(C3295R.string.settings_interface_message_header) : LocaleController.getString(C3295R.string.MediaTab);
        TextView nameTextView = getNameTextView();
        Intrinsics.checkNotNullExpressionValue(title, "title");
        String upperCase = title.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        nameTextView.setText(upperCase);
        ImageView iconView = getIconView();
        if (z) {
            i = C3295R.C3297drawable.fork_settings_chat;
        } else {
            i = C3295R.C3297drawable.fork_cloud_filter_image;
        }
        iconView.setImageResource(i);
        updateColors();
    }

    public final void updateColors() {
        LinearLayout ovalLayout = getOvalLayout();
        Drawable createRoundRectDrawable = Theme.createRoundRectDrawable(AndroidUtilities.m54dp(24), this.isActive ? Theme.getColor(Theme.key_chats_actionBackground) : Theme.getColor(Theme.key_chats_unreadCounterMuted));
        createRoundRectDrawable.setAlpha(this.isActive ? 255 : 110);
        ovalLayout.setBackground(createRoundRectDrawable);
        getNameTextView().setTextColor(Theme.getColor(this.isActive ? Theme.key_chats_actionIcon : Theme.key_windowBackgroundWhiteBlackText));
        getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(this.isActive ? Theme.key_chats_actionIcon : Theme.key_windowBackgroundWhiteBlackText), PorterDuff.Mode.SRC_IN));
        invalidate();
    }

    private final void init() {
        setWillNotDraw(false);
        getOvalLayout().setPadding(AndroidUtilities.m54dp(10), 0, AndroidUtilities.m54dp(14), 0);
        LinearLayout ovalLayout = getOvalLayout();
        ImageView iconView = getIconView();
        int i = this.iconSize;
        ovalLayout.addView(iconView, LayoutHelper.createLinear(i, i, 16));
        getOvalLayout().addView(getNameTextView(), LayoutHelper.createLinear(-2, this.iconSize, 16, 4, 0, 0, 0));
        addView(getOvalLayout(), LayoutHelper.createFrame(-2, 24, 16, 8, 0, 8, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initOvalLayout() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setGravity(16);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initIconView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initNameTextView() {
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setSingleLine(true);
        textView.setIncludeFontPadding(false);
        textView.setLetterSpacing(0.1f);
        textView.setTextSize(1, 12.0f);
        return textView;
    }

    /* compiled from: TopicView.kt */
    /* renamed from: com.iMe.ui.topics.TopicView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
