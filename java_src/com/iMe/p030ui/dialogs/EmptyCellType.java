package com.iMe.p030ui.dialogs;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.telegram.messenger.C3632R;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum ARCHIVE_ALBUMS uses external variables
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
/* compiled from: EmptyCellType.kt */
/* renamed from: com.iMe.ui.dialogs.EmptyCellType */
/* loaded from: classes3.dex */
public final class EmptyCellType {
    private static final /* synthetic */ EmptyCellType[] $VALUES;
    public static final EmptyCellType ALBUMS;
    public static final EmptyCellType ARCHIVE;
    public static final EmptyCellType ARCHIVE_ALBUMS;
    public static final Companion Companion;
    public static final EmptyCellType DRAFTS;
    public static final int FORK_TYPE_EXTRA = 100;
    public static final EmptyCellType HIDDEN_CHATS;
    public static final EmptyCellType MUSIC_ALBUMS;
    public static final EmptyCellType MUSIC_BOTS;
    public static final EmptyCellType MUSIC_CHANNELS;
    public static final EmptyCellType MUSIC_DEVICE;
    private final int iconResId;
    private final int subtitleResId;
    private final int titleResId;

    private static final /* synthetic */ EmptyCellType[] $values() {
        return new EmptyCellType[]{ARCHIVE_ALBUMS, ARCHIVE, ALBUMS, MUSIC_ALBUMS, MUSIC_CHANNELS, MUSIC_BOTS, MUSIC_DEVICE, DRAFTS, HIDDEN_CHATS};
    }

    public static EmptyCellType valueOf(String str) {
        return (EmptyCellType) Enum.valueOf(EmptyCellType.class, str);
    }

    public static EmptyCellType[] values() {
        return (EmptyCellType[]) $VALUES.clone();
    }

    private EmptyCellType(String str, int i, int i2, int i3, int i4) {
        this.iconResId = i2;
        this.titleResId = i3;
        this.subtitleResId = i4;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final int getSubtitleResId() {
        return this.subtitleResId;
    }

    static {
        int i = C3632R.raw.filter_no_chats;
        int i2 = C3632R.string.cloud_albums_empty_title;
        ARCHIVE_ALBUMS = new EmptyCellType("ARCHIVE_ALBUMS", 0, i, i2, C3632R.string.cloud_albums_empty_subtitle_archibe);
        ARCHIVE = new EmptyCellType("ARCHIVE", 1, i, C3632R.string.archive_empty_title, C3632R.string.archive_empty_subtitle);
        ALBUMS = new EmptyCellType("ALBUMS", 2, i, i2, C3632R.string.cloud_albums_empty_subtitle);
        MUSIC_ALBUMS = new EmptyCellType("MUSIC_ALBUMS", 3, i, C3632R.string.music_albums_empty_title, C3632R.string.music_albums_empty_subtitle);
        MUSIC_CHANNELS = new EmptyCellType("MUSIC_CHANNELS", 4, i, C3632R.string.music_channels_empty_title, C3632R.string.music_channels_empty_subtitle);
        MUSIC_BOTS = new EmptyCellType("MUSIC_BOTS", 5, i, C3632R.string.music_bots_empty_title, C3632R.string.music_bots_empty_subtitle);
        MUSIC_DEVICE = new EmptyCellType("MUSIC_DEVICE", 6, i, C3632R.string.music_device_empty_title, C3632R.string.music_device_empty_subtitle);
        DRAFTS = new EmptyCellType("DRAFTS", 7, i, C3632R.string.chat_drafts_empty, C3632R.string.chat_drafts_empty_subtitle);
        HIDDEN_CHATS = new EmptyCellType("HIDDEN_CHATS", 8, i, C3632R.string.hidden_chats_empty, C3632R.string.hidden_chats_empty_title);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    /* renamed from: id */
    public final int m1012id() {
        return ordinal() + 100;
    }

    /* compiled from: EmptyCellType.kt */
    /* renamed from: com.iMe.ui.dialogs.EmptyCellType$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
