package com.smedialink.p031ui.topics;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.common.TelegramThemeKeys$Common;
import com.smedialink.common.TelegramThemeKeys$Dialog;
import com.smedialink.model.common.FilterItem;
import com.smedialink.storage.data.repository.topics.Topic;
import com.smedialink.storage.domain.model.topics.TopicModel;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.model.topic.TopicExtKt;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.enums.DialogType;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: TopicView.kt */
/* renamed from: com.smedialink.ui.topics.TopicView */
/* loaded from: classes3.dex */
public class TopicView extends LinearLayout {
    private Boolean archive;
    private final Paint backgroundPaint;
    private DialogType dialogType;
    private final int iconSize;
    private final Lazy iconView$delegate;
    private boolean isActive;
    private Boolean isFilter;
    private Boolean messagesContextMenu;
    private final Lazy nameTextView$delegate;
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
        Intrinsics.checkNotNullParameter(context, "context");
        this.iconSize = i2;
        lazy = LazyKt__LazyJVMKt.lazy(new TopicView$iconView$2(this));
        this.iconView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new TopicView$nameTextView$2(this));
        this.nameTextView$delegate = lazy2;
        this.backgroundPaint = new Paint(1);
        setGravity(17);
        setClipToPadding(false);
        init();
    }

    public final TopicModel getTopic() {
        return this.topic;
    }

    public final void setTopic(TopicModel topicModel) {
        this.topic = topicModel;
    }

    private final ImageView getIconView() {
        return (ImageView) this.iconView$delegate.getValue();
    }

    private final TextView getNameTextView() {
        return (TextView) this.nameTextView$delegate.getValue();
    }

    public final void setFilterItem(FilterItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.isFilter = Boolean.TRUE;
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
            String internalString = LocaleController.getInternalString(C3158R.string.topics_title_notopic);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.string.topics_title_notopic)");
            String upperCase = internalString.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            nameTextView.setText(upperCase);
            ViewExtKt.gone(getIconView());
        } else if (topic.isUserTopic()) {
            getNameTextView().setText(Emoji.replaceEmoji(topic.getName(), getNameTextView().getPaint().getFontMetricsInt(), AndroidUtilities.m50dp(15), false));
            if (topic.getIcon() == null) {
                ViewExtKt.gone(getIconView());
            } else {
                ViewExtKt.visible(getIconView());
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
                ViewExtKt.gone(getIconView());
            } else {
                ViewExtKt.visible(getIconView());
                getIconView().setImageResource(component3);
            }
        }
        updateColors();
    }

    public final void setDialogType(DialogType dialogType, boolean z) {
        Intrinsics.checkNotNullParameter(dialogType, "dialogType");
        this.dialogType = dialogType;
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
        this.archive = Boolean.valueOf(z);
        this.isActive = z2;
        TextView nameTextView = getNameTextView();
        if (z) {
            i = C3158R.string.folder_fab_settings_fab_archive;
        } else {
            i = C3158R.string.main_list;
        }
        String internalString = LocaleController.getInternalString(i);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(\n     …tring.main_list\n        )");
        String upperCase = internalString.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        nameTextView.setText(upperCase);
        ImageView iconView = getIconView();
        if (z) {
            i2 = C3158R.C3160drawable.fork_custom_forward_switch_archive;
        } else {
            i2 = C3158R.C3160drawable.fork_custom_forward_switch_main;
        }
        iconView.setImageResource(i2);
        updateColors();
    }

    public final void setMessagesContextMenu(boolean z, boolean z2) {
        int i;
        this.messagesContextMenu = Boolean.valueOf(z);
        this.isActive = z2;
        String title = z ? LocaleController.getInternalString(C3158R.string.settings_interface_message_header) : LocaleController.getString(C3158R.string.MediaTab);
        TextView nameTextView = getNameTextView();
        Intrinsics.checkNotNullExpressionValue(title, "title");
        String upperCase = title.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        nameTextView.setText(upperCase);
        ImageView iconView = getIconView();
        if (z) {
            i = C3158R.C3160drawable.fork_settings_chat;
        } else {
            i = C3158R.C3160drawable.fork_cloud_filter_image;
        }
        iconView.setImageResource(i);
        updateColors();
    }

    public final void updateColors() {
        int color;
        if (this.messagesContextMenu != null || this.archive != null || this.isFilter != null) {
            color = Theme.getColor("chats_actionBackground");
        } else {
            DialogType dialogType = this.dialogType;
            if (dialogType != null) {
                Intrinsics.checkNotNull(dialogType);
                color = Theme.getColor(TelegramThemeKeys$Common.buildDialogTypeActiveBackgroundKey(dialogType));
            } else {
                TopicModel topicModel = this.topic;
                boolean z = false;
                if (topicModel != null && topicModel.getTopicId() == -2) {
                    z = true;
                }
                if (!z) {
                    TopicModel topicModel2 = this.topic;
                    if ((topicModel2 == null ? null : Boolean.valueOf(topicModel2.isUserTopic())) != null) {
                        color = Theme.getColor("iMe_dialogs_userTopicActiveBackground");
                    } else {
                        TopicModel topicModel3 = this.topic;
                        if ((topicModel3 == null ? null : Boolean.valueOf(topicModel3.isAutoTopic())) == null) {
                            return;
                        }
                        TopicModel topicModel4 = this.topic;
                        Topic icon = topicModel4 != null ? topicModel4.getIcon() : null;
                        Intrinsics.checkNotNull(icon);
                        color = Theme.getColor(TelegramThemeKeys$Dialog.buildTopicActiveBackgroundKey(icon));
                    }
                } else if (Theme.isCurrentThemeDefault()) {
                    color = ContextCompat.getColor(getContext(), C3158R.C3159color.fork_color);
                } else {
                    color = Theme.getColor("chats_actionBackground");
                }
            }
        }
        Paint paint = this.backgroundPaint;
        if (!this.isActive) {
            color = Theme.getColor("iMe_dialogs_topicInactiveBackground");
        }
        paint.setColor(color);
        getNameTextView().setTextColor(this.isActive ? Theme.getColor("iMe_dialogs_topicActiveText") : -1);
        getIconView().setColorFilter(new PorterDuffColorFilter(this.isActive ? Theme.getColor("iMe_dialogs_topicActiveText") : -1, PorterDuff.Mode.SRC_IN));
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.drawRoundRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight(), AndroidUtilities.m50dp(this.iconSize), AndroidUtilities.m50dp(this.iconSize), this.backgroundPaint);
    }

    private final void init() {
        setPadding(AndroidUtilities.m50dp(10), 0, AndroidUtilities.m50dp(14), 0);
        setWillNotDraw(false);
        ImageView iconView = getIconView();
        int i = this.iconSize;
        addView(iconView, LayoutHelper.createLinear(i, i));
        addView(getNameTextView(), LayoutHelper.createLinear(-2, this.iconSize, 17, 4, 0, 0, 0));
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
    /* renamed from: com.smedialink.ui.topics.TopicView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
