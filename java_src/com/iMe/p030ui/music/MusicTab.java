package com.iMe.p030ui.music;

import com.iMe.p030ui.dialogs.EmptyCellType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
/* compiled from: MusicTab.kt */
/* renamed from: com.iMe.ui.music.MusicTab */
/* loaded from: classes3.dex */
public enum MusicTab {
    ALBUMS(C3632R.string.music_albums_tab, EmptyCellType.MUSIC_ALBUMS),
    CHANNELS(C3632R.string.music_channels_tab, EmptyCellType.MUSIC_CHANNELS),
    BOTS(C3632R.string.music_bots_tab, EmptyCellType.MUSIC_BOTS),
    DEVICE(C3632R.string.music_device_tab, EmptyCellType.MUSIC_DEVICE);
    
    public static final Companion Companion = new Companion(null);
    private final EmptyCellType emptyCellType;
    private final int titleResId;

    MusicTab(int i, EmptyCellType emptyCellType) {
        this.titleResId = i;
        this.emptyCellType = emptyCellType;
    }

    public final EmptyCellType getEmptyCellType() {
        return this.emptyCellType;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    /* compiled from: MusicTab.kt */
    /* renamed from: com.iMe.ui.music.MusicTab$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MusicTab mapNameToEnum(String str) {
            MusicTab musicTab;
            MusicTab[] values = MusicTab.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    musicTab = null;
                    break;
                }
                musicTab = values[i];
                if (Intrinsics.areEqual(musicTab.name(), str)) {
                    break;
                }
                i++;
            }
            return musicTab == null ? MusicTab.ALBUMS : musicTab;
        }
    }
}
