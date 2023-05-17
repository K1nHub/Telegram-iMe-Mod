package com.iMe.fork.enums;

import org.telegram.messenger.C3290R;
/* compiled from: LockedSection.kt */
/* loaded from: classes3.dex */
public enum LockedSection {
    ARCHIVE(C3290R.string.settings_section_passcode_archive, C3290R.C3292drawable.msg_archive),
    CLOUD(C3290R.string.settings_section_passcode_cloud, C3290R.C3292drawable.fork_filter_icon_cloud);
    
    private final int iconResId;
    private final int nameResId;

    LockedSection(int i, int i2) {
        this.nameResId = i;
        this.iconResId = i2;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final int getNameResId() {
        return this.nameResId;
    }
}
