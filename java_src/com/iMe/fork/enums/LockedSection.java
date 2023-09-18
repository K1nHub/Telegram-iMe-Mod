package com.iMe.fork.enums;

import org.telegram.messenger.C3473R;
/* compiled from: LockedSection.kt */
/* loaded from: classes4.dex */
public enum LockedSection {
    ARCHIVE(C3473R.string.settings_section_passcode_archive, C3473R.C3475drawable.msg_archive),
    CLOUD(C3473R.string.settings_section_passcode_cloud, C3473R.C3475drawable.fork_filter_icon_cloud);
    
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
