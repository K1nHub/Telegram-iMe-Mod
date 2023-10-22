package com.iMe.fork.enums;

import android.graphics.PorterDuff;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum MEMBERS uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: MultiPanelButton.kt */
/* loaded from: classes3.dex */
public final class MultiPanelButton {
    private static final /* synthetic */ MultiPanelButton[] $VALUES;
    public static final MultiPanelButton ADD_TO_TOPIC;
    public static final MultiPanelButton CACHE;
    public static final Companion Companion;
    public static final MultiPanelButton MEDIA;
    public static final MultiPanelButton MEMBERS;
    public static final MultiPanelButton PINS;
    public static final MultiPanelButton RECENT_ACTIONS;
    public static final MultiPanelButton STOP_BOT;
    public static final MultiPanelButton SUBSCRIBERS;
    private final int iconId;
    private final boolean isEnabledByDefault;
    private final PorterDuff.Mode porterDuffMode;
    private final int titleId;
    public static final MultiPanelButton MUTE = new MultiPanelButton("MUTE", 0, C3630R.C3632drawable.msg_mute, PorterDuff.Mode.MULTIPLY, C3630R.string.multi_panel_settings_button_mute_item_title, false, 8, null);
    public static final MultiPanelButton SEARCH = new MultiPanelButton("SEARCH", 1, C3630R.C3632drawable.msg_search, PorterDuff.Mode.MULTIPLY, C3630R.string.multi_panel_settings_button_search_item_title, false, 8, null);

    private static final /* synthetic */ MultiPanelButton[] $values() {
        return new MultiPanelButton[]{MUTE, SEARCH, MEMBERS, SUBSCRIBERS, MEDIA, RECENT_ACTIONS, CACHE, STOP_BOT, ADD_TO_TOPIC, PINS};
    }

    public static MultiPanelButton valueOf(String str) {
        return (MultiPanelButton) Enum.valueOf(MultiPanelButton.class, str);
    }

    public static MultiPanelButton[] values() {
        return (MultiPanelButton[]) $VALUES.clone();
    }

    private MultiPanelButton(String str, int i, int i2, PorterDuff.Mode mode, int i3, boolean z) {
        this.iconId = i2;
        this.porterDuffMode = mode;
        this.titleId = i3;
        this.isEnabledByDefault = z;
    }

    /* synthetic */ MultiPanelButton(String str, int i, int i2, PorterDuff.Mode mode, int i3, boolean z, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, i2, mode, i3, (i4 & 8) != 0 ? true : z);
    }

    public final int getIconId() {
        return this.iconId;
    }

    public final PorterDuff.Mode getPorterDuffMode() {
        return this.porterDuffMode;
    }

    public final int getTitleId() {
        return this.titleId;
    }

    public final boolean isEnabledByDefault() {
        return this.isEnabledByDefault;
    }

    static {
        int i = C3630R.C3632drawable.fork_ic_contacts_24;
        MEMBERS = new MultiPanelButton("MEMBERS", 2, i, PorterDuff.Mode.SRC_IN, C3630R.string.multi_panel_settings_button_members_item_title, false, 8, null);
        SUBSCRIBERS = new MultiPanelButton("SUBSCRIBERS", 3, i, PorterDuff.Mode.SRC_IN, C3630R.string.multi_panel_settings_button_subscribers_item_title, false, 8, null);
        MEDIA = new MultiPanelButton("MEDIA", 4, C3630R.C3632drawable.msg_photos, PorterDuff.Mode.MULTIPLY, C3630R.string.multi_panel_settings_button_shared_content_item_title, false, 8, null);
        RECENT_ACTIONS = new MultiPanelButton("RECENT_ACTIONS", 5, C3630R.C3632drawable.msg_log, PorterDuff.Mode.MULTIPLY, C3630R.string.multi_panel_settings_button_recent_actions_item_title, false, 8, null);
        CACHE = new MultiPanelButton("CACHE", 6, C3630R.C3632drawable.msg2_data, PorterDuff.Mode.MULTIPLY, C3630R.string.multi_panel_settings_button_cache_item_title, false, 8, null);
        STOP_BOT = new MultiPanelButton("STOP_BOT", 7, C3630R.C3632drawable.msg_block, PorterDuff.Mode.MULTIPLY, C3630R.string.multi_panel_settings_button_stop_bot_item_title, false, 8, null);
        ADD_TO_TOPIC = new MultiPanelButton("ADD_TO_TOPIC", 8, C3630R.C3632drawable.fork_topic_select_24, PorterDuff.Mode.SRC_IN, C3630R.string.topics_select, false);
        PINS = new MultiPanelButton("PINS", 9, C3630R.C3632drawable.msg_pin, PorterDuff.Mode.MULTIPLY, C3630R.string.multi_panel_settings_button_pins_item_title, false);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    /* compiled from: MultiPanelButton.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MultiPanelButton map(String name) {
            MultiPanelButton[] values;
            Intrinsics.checkNotNullParameter(name, "name");
            for (MultiPanelButton multiPanelButton : MultiPanelButton.values()) {
                if (Intrinsics.areEqual(multiPanelButton.name(), name)) {
                    return multiPanelButton;
                }
            }
            return null;
        }
    }
}
